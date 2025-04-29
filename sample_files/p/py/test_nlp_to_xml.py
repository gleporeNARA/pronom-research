#!/usr/bin/env python3

# import modules.
import sys; sys.path.append("..")
import logging
import unittest
from lxml import etree
from tomes_tool.lib.nlp_to_xml import *

# enable logging.
logging.basicConfig(level=logging.DEBUG)


class Test_NLPToXML(unittest.TestCase):
	
	
    def setUp(self):
		
        # set attributes.
        self.n2x = NLPToXML()
       
    
    def test__authorities(self):
        """ Does the authority splitter work for an NER tag? """
        
        # combine and then split authority and NER tag.
        data_in = "0001", "ncdcr.gov", "PII.email_address"
        data_out = self.n2x._split_entity("{}::{}::{}".format(data_in[0], data_in[1],
            data_in[2]))

        # check if result is as expected.
        self.assertTrue(data_in, data_out)


    def test__validation(self):
        """ Is the sample tagged XML snippet valid? """
        
        # validate XML.
        ner = [("Jane", "stanford.edu/PERSON", " "), ("Doe", "stanford.edu/PERSON", "")]
        xdoc = self.n2x.get_xml(ner)
        is_valid = self.n2x.validate_xml(xdoc)
        
        # check if result is as expected.
        self.assertTrue(is_valid)

    def test__append_to_blocktext(self):
        """ If a series of whitespace only token groups exist and one contains an illegal XML
        character, can we avoid a TypeError? For more info, see:
        "http://blog.humaneguitarist.org/?p=6760/". """
        
        elem = self.n2x.get_xml([("","","\v"),("first TOKEN element","",""),("","","\v"),
            ("","","\f")])
        logging.debug(etree.tostring(elem))           
        is_valid = self.n2x.validate_xml(elem)

        # check if result is as expected.
        self.assertTrue(is_valid)


# CLI.
def main(CSV_NER="Jane,stanford.edu/PERSON,|Doe,stanford.edu/PERSON,"):
    
    "Prints tagged message version of CSV-style NER text (line ending = '|'). \
    \nexample: `py -3 test__nlp_to_xml.py 'Jane,PERSON, |Doe,PERSON,'`"

    # convert @CSV_NER to list of tuples.
    ner_data = [tuple(t.split(",")) for t in CSV_NER.split("|")]

    # convert @ner_data to XML.
    n2x = NLPToXML()
    xdoc = n2x.get_xml(ner_data)
    xdoc = etree.tostring(xdoc).decode()
    
    print(xdoc)


if __name__ == "__main__":
    
    import plac
    plac.call(main)

