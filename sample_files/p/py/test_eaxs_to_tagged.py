#!/usr/bin/env python3

# import modules.
import sys; sys.path.append("..")
import unittest
import logging
import tempfile
import warnings
from lxml import etree
from tomes_tool.lib.eaxs_to_tagged import *

# enable logging.
logging.basicConfig(level=logging.DEBUG)


class Test_EAXSToTagged(unittest.TestCase):

    
    def setUp(self):

        # set attributes.
        self.sample_file = "sample_files/sampleEAXS.xml"

        # set namespace attributes.
        self.ncdcr_prefix = "ncdcr"
        self.ncdcr_uri = "http://www.archives.ncdcr.gov/mail-account"

    
    def test__tagged(self):
        """ Can I create a tagged EAXS and verify that each message was tagged? """

        # dr run functions.
        def_html = lambda x: "HTML"
        def_nlp = lambda x: etree.Element("NLP")

        # make temporary file, save the filename, then delete the file.
        tagged_handle, tagged_path = tempfile.mkstemp(dir=".", suffix=".xml")
        os.close(tagged_handle)
        os.remove(tagged_path)

        # make tagged EAXS and suppress ResourceWarning in unittest.
        e2t = EAXSToTagged(def_html, def_nlp)
        with warnings.catch_warnings():
            warnings.simplefilter("ignore")
            e2t.write_tagged(self.sample_file, tagged_path)
        
        # count total <Message> and <TaggedContent> elements in @tagged_path.
        message_count, tagged_count = 0, 0
        for event, element in etree.iterparse(tagged_path, events=("end",)):
            if element.tag == "{" + self.ncdcr_uri + "}Message":
                message_count += 1
            if element.tag == "{" + self.ncdcr_uri + "}TaggedContent":
                tagged_count += 1
            element.clear()
        os.remove(tagged_path)

        # check if each <Message> element has been tagged.
        self.assertTrue(message_count == tagged_count) 


# CLI.
def main(eaxs_file: "source EAXS file", tagged_file: "tagged EAXS destination"):
    
    "Converts EAXS document to tagged EAXS (dry run).\
    \nexample: `py -3 test__eaxs_to_tagged.py sample_files/sampleEAXS.xml out.xml`"

    # write tagged EAXS to file.
    def_html = lambda x: "HTML"
    def_nlp = lambda x: etree.Element("NLP")
    e2t = EAXSToTagged(def_html, def_nlp)
    e2t.write_tagged(eaxs_file, tagged_file)


if __name__ == "__main__":

    import plac
    plac.call(main)

