#!/usr/bin/env python3

""" This module contains a class to extract tokens and their corresponding NER tags from a 
given text using Stanford's CoreNLP. It also contains a class to wrap pycorenlp 
(https://github.com/smilli/py-corenlp) and capture its exceptions more explicitly. 

Todo:
    * I think we want some way of explicitly handling timeouts. I've experience CoreNLP
    just hanging for several minutes. What can we do to address that situation? Obviously, we
    can set a timeout when starting CoreNLP, so the question is about what this module needs
    to do when a timeout happens.
"""

# import modules.
import json
import logging
import pycorenlp
import unicodedata
from textwrap import TextWrapper


class _CoreNLP():
    """ A class to wrap pycorenlp (https://github.com/smilli/py-corenlp) and capture its 
    exceptions more explicitly.
    
    Example:
        >>> tagger = CoreNLP(host="http://localhost:9003")
        >>> tagger.annotate("North Carolina")
    """

	
    def __init__(self, host, mapping_file="", tags_to_override=[], *args, **kwargs):
        """ Sets instance attributes.

        Args:
            - host (str): The URL for the CoreNLP server (ex: "http://localhost:9003").
            - mapping_file (str): The relative path for the regexNER mapping file. This must
            be located within the CoreNLP server's file directory.
            - tags_to_override (list): The CoreNLP NER tag values to override if they 
            conflict with a custom tag in @mapping_file. 
            -*args/**kwargs: Any additional, optional arguments to pass to pycorenlp.
        """

        # set logger; suppress logging by default. 
        self.logger = logging.getLogger(__name__)
        self.logger.addHandler(logging.NullHandler())

        # suppress third party logging that is not a warning or higher.
        # per: https://stackoverflow.com/a/11029841
        logging.getLogger("requests").setLevel(logging.WARNING)
        logging.getLogger("urllib3").setLevel(logging.WARNING)
        
        # set CoreNLP server location and options.
        self.host = host
        self.mapping_file = mapping_file
        self.tags_to_override = tags_to_override
        self.options = {"annotators": "tokenize, ssplit, pos, ner, regexner",
                "ner.useSUTime": "false", "ner.applyNumericClassifiers": "false", 
                "outputFormat": "json"}

        # if specified, add option to use mapping file.
        if self.mapping_file != "":
            self.options["regexner.mapping"] = self.mapping_file

        # if specified, add option to override default tags.
        if len(self.tags_to_override) > 0:
            self.options["regexner.backgroundSymbol"] = ",".join(self.tags_to_override)

        # compose instance of main pycorenlp class.
        self.nlp = pycorenlp.StanfordCoreNLP(self.host, *args, **kwargs)

   
    def annotate(self, text):
        """ Runs CoreNLP's NER tagger on @text.
        
        Args:
            - text (str): The text to send to CoreNLP's NER tagger.
            
        Returns:
            dict: The return value.
            The CoreNLP NER tagger results.

        Raises:
            - TypeError: If @text is not a string.
            - ConnectionError: If pycorenlp can't connect to the CoreNLP server.
        """

        # verify that @text is a string.
        if not isinstance(text, str):
            msg = "Argument @text must be a string, got '{}' instead.".format(
                    type(text).__name__)
            raise TypeError(msg)

        # get NER tag results.
        try:
            results = self.nlp.annotate(text, properties=self.options)
            return results
        except Exception as err:
            msg = "Can't connect to CoreNLP at: {}".format(self.host)
            raise ConnectionError(msg)


class TextToNLP():
    """ A class to extract tokens and their corresponding NER tags from a given text using
    Stanford's CoreNLP. 
    
    Example:
        >>> t2n = TextToNLP()
        >>> t2n.get_NER("North Carolina") # list.
    """


    def __init__(self, host="http://localhost:9003", chunk_size=50000, retry=True,
            mapping_file="regexner_TOMES/mappings.txt", tags_to_remove=["DATE", "DURATION",
                    "MISC", "MONEY", "NUMBER", "O", "ORDINAL", "PERCENT", "SET", "TIME"]):
        """ Sets instance attributes.

        Args:
            - host (str): The URL for the CoreNLP server (ex: "http://localhost:9003").
            - chunk_size (int): The maximum string length to send to CoreNLP at once. Increase
            it at your own risk.
            - retry (bool) : If True and the call to self.get_NER() is an empty list, one more
            attempt will be made to retrieve results. This is because occassional glitches in
            the CoreNLP server result in empty results.
            - mapping_file (str): See "help(CoreNLP)" for more info.
            - tags_to_remove (list): If CoreNLP returns one on these NER tags, the tag will be
            replaced with an empty string.
        """
        
        # set logger; suppress logging by default. 
        self.logger = logging.getLogger(__name__)
        self.logger.addHandler(logging.NullHandler())

        # set attributes.
        self.host = host
        self.chunk_size = chunk_size
        self.retry = retry
        self.mapping_file = mapping_file
        self.tags_to_remove = tags_to_remove
        self.stanford_tags = ["DATE", "DURATION", "LOCATION", "MISC", "MONEY", "NUMBER", "O",
                "ORDINAL", "ORGANIZATION", "PERCENT", "PERSON", "SET", "TIME"]
        
        # compose instance of CoreNLP wrapper class.
        self.corenlp = _CoreNLP(self.host, mapping_file=self.mapping_file, 
                tags_to_override=self.stanford_tags)


    @staticmethod
    def _get_outer_space(text):
        """ Returns the leading and trailing whitespace for a given @text. 
        
        Args:
            text (str): The string from which to extract leading and trailing whitespace.
            
        Returns:
            tuple: The return value.
            The first item (str) is @text's leading whitespace.
            The second item (str) is @text's trailing whitespace.
        """

        # assume values.
        leading_space, trailing_space = "", ""

        # get length of leading and trailing whitespace.
        leading_distance = len(text) - len(text.lstrip())
        trailing_distance = len(text) - len(text.rstrip())

        # if leading or trailing space exists, update return values.
        if leading_distance > 0 and leading_distance < len(text):
            leading_space = text[:leading_distance]
        if trailing_distance > 0 and trailing_distance < len(text):
            trailing_space = text[-trailing_distance:]

        return (leading_space, trailing_space)


    @staticmethod
    def _legalize_json_text(jtext):
        """ A static method that alters @jtext by replacing vertical tabs and form feeds with
        line breaks and removing control characters except for carriage returns and tabs. This
        is so that @jtext can be passed to json.loads() without raising a JSONDecodeError.
        
        Args:
            - jtext (str): The text to alter.

        Returns:
            str: The return value.
        """

        # legalize @jtext for use with json.loads().
        for ws in ["\f","\r","\v"]:
            jtext = jtext.replace(ws, "\n")
        jtext = "".join([char for char in jtext if unicodedata.category(char)[0] != "C" or
            char in ("\t", "\n")])
        
        return jtext


    def _encode_bad_response(self, response, charset="ascii", max_length=500):
        """ In the event CoreNLP returns an erroneous or unexpected @response; this function
        can convert that response to a string for logging purposes. The string will be encoded
        using @charset as the encoding. The returned value will be truncated if its length
        exceeds @max_length.

        Args:
            response (str): The response from CoreNLP.
            charset (str): The character encoding with which to encode @response.
            max_length (int): The maximum string length for the return value.

        Returns:
            str: The return value.
        """

        # verify @response is a string; decode @response.
        if not isinstance(response, str):
            response = str(response)
        response = response.encode(charset, errors="ignore").decode(charset, errors="ignore")
        
        # if needed, truncate @response.
        if len(response) > max_length:
            self.logger.debug("Response exceeds @max_length of '{}'; truncating.".format(
                max_length))
            response = response[:max_length] + "..."

        return response


    def __process_NER_requests(def__get_NER):
        """ A decorator for @def__get_NER that splits text into chunks if the string passed
        to @def__get_NER exceeds self.chunk_size in length. This is due to size limitations
        in terms of how much data should be sent to @def__get_NER. This decorator also makes
        one more call to @def__get_NER if @self.retry is True and @def__get_NER returns an
        empty list for a given chunk, such as in cases where the NLP server doesn't respond
        due to a temporary glitch.

        Args:
            - def__get_NER (function): An alias intended for self.get_NER().

        Returns:
            function: The return value.

        Raises:
            - TypeError: If @text passed to self.get_NER() is not a string.
        """

        def processor(self, text):

            # prepare output container.
            ner_output = []
            
            # verify that @text is a string.
            if not isinstance(text, str):
                self.logger.error("Argument @text must be a string, got: {}".format(
                    type(text).__name__))
                self.logger.warning("Falling back to empty output.")
                return []

            # verify @text is not empty.
            if len(text) == 0:
                self.logger.warning("Argument @text was empty.")
                self.logger.warning("Falling back to empty output.")
                return []

            # if needed, break @text into smaller chunks.
            if len(text) <= self.chunk_size:
                text_list = [text]
            else:
                self.logger.info("Text exceeds chunk size of: {}".format(self.chunk_size))
                try:
                    wrapper = TextWrapper(width=self.chunk_size, break_long_words=False, 
                        break_on_hyphens=False, drop_whitespace=False, 
                        replace_whitespace=False)
                    text_list = wrapper.wrap(text)
                except Exception as err:
                    self.logger.error(err)
                    self.logger.warning("Failed to chunk text; falling back to empty output.")
                    return []

            # get NER tags for each item in @text_list.
            i = 1
            total_chunks = len(text_list)
            
            for text_chunk in text_list:

                self.logger.info("Getting NER tags for chunk {} of {}.".format(i, 
                    total_chunks))
                try:
                    tokenized_tagged = def__get_NER(self, text_chunk)
                    if len(tokenized_tagged) == 0 and self.retry:
                        self.logger.error("Failed to get NER tags for chunk.")
                        self.logger.info("Making another attempt to get NER tags for chunk.")
                        tokenized_tagged = def__get_NER(self, text_chunk)
                except Exception as err:
                    self.logger.error(err)
                    tokenized_tagged = []
                
                # if no tokens were returned, report on giving up.
                if len(tokenized_tagged) == 0:
                    self.logger.warning("Falling back to empty output.")
                    return []
                
                # otherwise, if tokens were returned, add them to @ner_output.
                else:

                    # check for orphaned whitespace.
                    leading_space, trailing_space = self._get_outer_space(text_chunk)
                    
                    # if missing, add leading whitespace to @ner_output.
                    if leading_space != "":
                        ner_output += [("", "", leading_space)]
                    
                    # add tokens to @ner_output.
                    ner_output += tokenized_tagged
                    
                    # if missing, add trailing whitespace to @ner_output.
                    if trailing_space != "":
                        ner_output += [("", "", trailing_space)]
                
                i += 1

            return ner_output

        return processor


    @__process_NER_requests
    def get_NER(self, text):
        """ Performs tokenization and NER tagging on @text.
        
        Args:
            - text (str): The text to tokenize and tag.
       
        Returns:
            list: The return value.
            The NER tagger results as a list of tuples.
            The first item in the tuple is a token. The second and third items are the NER 
            tag value and the trailing whitespace, respectively. All items are strings.
        """
  
        # prepare output container.
        ner_output = []

        # get NER tags.
        results = {}
        try:
            results = self.corenlp.annotate(text)
        except ConnectionError as err:
            self.logger.error(err)
            return []

        # ensure @results is correct data type.
        if not isinstance(results, dict):
            result_type = type(results).__name__
            self.logger.warning("CoreNLP wrapper returned '{}', expected dict.".format(
                result_type))
            self.logger.info("Converting '{}' to dict.".format(result_type))            
            try:
                results = self._legalize_json_text(results)
                results = json.loads(results)
            except json.decoder.JSONDecodeError as err:
                self.logger.error(err)
                self.logger.warning("Failed to convert results to dict.")
                results_err = self._encode_bad_response(results)
                self.logger.debug("CoreNLP response: {}".format(results_err))
                return []

        # verify @results contains required key.
        if "sentences" not in results:
            self.logger.warning("CoreNLP response is missing required field 'sentences'.")
            results_err = self._encode_bad_response(results)
            self.logger.debug("CoreNLP response: {}".format(results_err))
            return []

        # get values to loop through.
        sentences = results["sentences"]

        # if @sentences is null, return tuple with @text value as last item.
        # Why? It appears CoreNLP will return a null when asked to tag only whitespace.
        if sentences == [] and text.strip() == "":
            ner_output.append(("", "", text))
            return ner_output

        # loop through data; append necessary values to @ner_output.
        for sentence in sentences:

            # verify @sentence contains required key.
            if "tokens" not in sentence:
                msg = "'tokens' field not found; nothing to append to output."
                self.logger.warning(msg)
                continue

            # get token values.
            tokens = sentence["tokens"]
            for token in tokens:

                # determine key to use for original text.
                text_key = "originalText"
                if text_key not in token:
                    text_key = "word"

                # get tuple values.
                try:
                    text, tag, tspace = token[text_key], token["ner"], token["after"]
                except KeyError as err:
                    self.logger.error(err)
                    self.logger.warning("Token data not found; nothing to append to output.")
                    continue
                
                # overwrite CoreNLP's use of "O" for a null NER tag.
                if tag in self.tags_to_remove:
                    tag = ""

                # if @tag is from Stanford, add null pattern plus .edu authority domain.
                if tag in self.stanford_tags:
                    tag = "::stanford.edu::" + tag

                # append final values to @ner_output.
                token_group = text, tag, tspace
                ner_output.append(token_group)

        return ner_output


if __name__ == "__main__":
    pass

