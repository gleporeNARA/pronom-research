#!/usr/bin/env python3

# import modules.
import sys; sys.path.append("..")
import logging
import math
import unittest
from tomes_tool.lib.text_to_nlp import *

# enable logging.
logging.basicConfig(level=logging.DEBUG)


class Test_TextToNLP(unittest.TestCase):

	
    def setUp(self):
        
        # set attributes.
        self.host = "http://localhost:-1"
        self.t2n = TextToNLP(host=self.host)
    
 
    def test__failed_annotate(self):
        """ Since we can't connect to port -1, is a ConnectionError raised? """
        
        # call CoreNLP instance's annotator.
        try:
            self.t2n.corenlp.annotate("")
            is_connection_error = False
        except ConnectionError as err:
            is_connection_error = True
        
        # check if result is as expected.
        self.assertTrue(is_connection_error)


    def test__gets_empty_list(self):
        """ If we try and tag an empty string, is an empty list returned? """

        results = self.t2n.get_NER("")
        self.assertTrue(results == [])


# CLI.
def main(text="North Carolina.", host="http://localhost:9003"):

    "Prints list of NER results.\
    \nexample: `py -3 test__text_to_nlp.py 'Jane Doe'`"

    # get/print NER results.
    t2n = TextToNLP(host=host)
    ner = t2n.get_NER(text)
    print(ner)


if __name__ == "__main__":
    
    import plac
    plac.call(main)

