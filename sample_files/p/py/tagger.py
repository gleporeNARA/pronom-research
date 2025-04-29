#!/usr/bin/env python3

""" This module contains a class to convert an EAXS file to a tagged EAXS document. """

# import modules.
import sys
import logging
import logging.config
import os
import requests
import yaml
import socket
from lib.eaxs_to_tagged import EAXSToTagged
from lib.html_to_text import HTMLToText, ModifyHTML
from lib.nlp_to_xml import NLPToXML
from lib.text_to_nlp import TextToNLP

try:
    CORENLP = socket.gethostbyname('corenlp-server')
except socket.gaierror as e:
    CORENLP = "192.168.99.100"

class Tagger:
    """ A class to convert an EAXS file to a tagged EAXS document.

    Example:
        >>> # write tagged EAXS version of EAXS file.
        >>> sample = "../tests/sample_files/sampleEAXS.xml"
        >>> tagger = Tagger(host="http://localhost:9003")
        >>> tagger.write_tagged(sample, "tagged.xml")
    """

    def __init__(self, host, check_host=False, charset="UTF-8"): 
        """ Sets instance attributes.
        
        Args:
            - host (str): The URL for the CoreNLP server (ex: "http://localhost:9003").
            - check_host (bool): Use True to test if @host is active. Otherwise, use False.
            - charset (str): Optional encoding for the tagged EAXS.
        """
    
        # set logging.
        self.logger = logging.getLogger(__name__)        
        self.logger.addHandler(logging.NullHandler())

        # suppress third party logging that is not a warning or higher.
        # per: https://stackoverflow.com/a/11029841
        logging.getLogger("requests").setLevel(logging.WARNING)
        logging.getLogger("urllib3").setLevel(logging.WARNING)

        # set attributes.
        self.host = host
        self.check_host = check_host
        self.charset = charset

        # if specified, verify host is active before creating instances of modules.
        if self.check_host:
            self._ping_host()

        # compose instances.
        self.h2t = HTMLToText()
        self.t2n = TextToNLP(self.host)
        self.n2x = NLPToXML()
        self.e2t = EAXSToTagged(self._html_convertor, self._text_tagger, self.charset)


    def _ping_host(self):
        """ Makes a test request to @self.host.
        
        Returns:
            None
            
        Raises:
            - ConnectionError: If a connection can't be made to @self.host.
        """

        self.logger.info("Testing if NLP server at '{}' exists.".format(self.host))
        try:
            requests.get(self.host)
            self.logger.info("Connection to server was successful.")
        except requests.exceptions.ConnectionError as err:
            self.logger.error(err)
            msg = "Can't connect to NLP server at: {}".format(self.host)
            self.logger.error(msg)
            raise ConnectionError(msg)

        return


    def _html_convertor(self, html):
        """ Converts @html string to a plain text.
        
        Args:
            - html (str): The HTML to convert.

        Returns:
            str: The return value.
        """

        # alter DOM.
        html = ModifyHTML(html)
        html.shift_links()
        html.remove_images()
        html = html.raw()
        
        # convert HTML to text.
        text = self.h2t.get_text(html, is_raw=True)
        return text


    def _text_tagger(self, text):
        """ Converts plain @text to NLP-tagged, TOMES-specific XML.
        
        Args:
            - text (str): The text to convert to NLP-tagged XML.

        Returns:
            str: The return value.
        """

        # get NLP; convert to XML.
        nlp = self.t2n.get_NER(text)
        nlp = self.n2x.get_xml(nlp)
        return nlp

    
    def write_tagged(self, eaxs_file, tagged_eaxs_file, *args, **kwargs):
        """ Writes tagged version of @eaxs_file to @tagged_eaxs_file.
        This is a wrapper around tomes_tool.lib.eaxs_to_tagged.EAXSToTagged.write_tagged(). 
        For more information do "help(tagger.EAXSToTagged.write_tagged)".
        
        Args:
            - eaxs_file (str): The filepath for the EAXS file.
            - tagged_eaxs_file (str): The filepath to which the tagged EAXS document will be
            written to.

        Returns:
            dict: The return value.

        Raises:
            Exception: If an exception was raised.
        """

        self.logger.info("Attempting to tag EAXS file: {}".format(eaxs_file))

        # create tagged EAXS.
        results = {}
        try:
            results = self.e2t.write_tagged(eaxs_file, tagged_eaxs_file, *args, **kwargs)
            self.logger.info("Created file: {}".format(tagged_eaxs_file)) 
        except Exception as err:
            self.logger.error(err)
            raise err
        
        return results

# CLI.
def main(eaxs_file: ("source EAXS file"), 
        tagged_eaxs_file: ("tagged EAXS destination"),
        silent: ("disable console logs", "flag", "s"),
        host: ("NLP server URL", "option")="http://localhost:9003"):

    "Converts EAXS document to tagged EAXS.\
    \nexample: `py -3 tagger.py ../tests/sample_files/sampleEAXS.xml tagged.xml`"

    # make sure logging directory exists.
    logdir = "log"
    if not os.path.isdir(logdir):
        os.mkdir(logdir)

    # get absolute path to logging config file.
    config_dir = os.path.dirname(os.path.abspath(__file__))
    config_file = os.path.join(config_dir, "logger.yaml")
    
    # load logging config file.
    with open(config_file) as cf:
        config = yaml.safe_load(cf.read())
    if silent:
        config["handlers"]["console"]["level"] = 100
    logging.config.dictConfig(config)
    
    # make tagged version of EAXS.
    logging.info("Running CLI: " + " ".join(sys.argv))
    try:
        tagger = Tagger(host, check_host=True)
        results = tagger.write_tagged(eaxs_file, tagged_eaxs_file)
        logging.info("Results: {}".format(results))
        logging.info("Done.")
        sys.exit()
    except Exception as err:
        logging.critical(err)
        sys.exit(err.__repr__())


def docker_run(source: str, dest: str, silent=False):
    host = "http://{}:9003".format(CORENLP)
    main(source, dest, silent, host)


if __name__ == "__main__":
    docker_run(sys.argv[1], sys.argv[2])
