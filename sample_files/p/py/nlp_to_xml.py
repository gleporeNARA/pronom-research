#!/usr/bin/env python3

""" This module converts a list of NER tuples (token, NER tag, trailing whitespace) to XML 
per the tagged message schema, nlp_to_xml.xsd. """

# import modules.
import logging
import unicodedata
from lxml import etree


class NLPToXML():
    """ A class for converting a list of NER tuples (token, NER tag, trailing whitespace) to
    XML per the tagged message schema, nlp_to_xml.xsd. 
    
    Example:
        >>> ner = [("Jane", "stanford.edu/PERSON", " "), ("Doe", "stanford.edu/PERSON", "")]
        >>> n2x = NLPToXML()
        >>> n2x.get_xml(ner) # etree._Element.
    """


    def __init__(self):
        """ Sets instance attributes. """

        # set logger; suppress logging by default. 
        self.logger = logging.getLogger(__name__)
        self.logger.addHandler(logging.NullHandler())
        
        # get XSD filepath and parse XSD.
        self.xsd_file = __file__.replace(".py", ".xsd")
        self.xsd = etree.parse(self.xsd_file)
        
        # set namespace attributes.
        self.ns_uri = "http://www.archives.ncdcr.gov/mail-account"
        self.ns_map  = {None: self.ns_uri}


    @staticmethod
    def _legalize_xml_text(xtext):
        """ A static method that alters @xtext by replacing vertical tabs and form feeds with
        line breaks and removing control characters except for carriage returns and tabs. This
        is so that @xtext can be written to XML without raising a ValueError.
        
        Args:
            - xtext (str): The text to alter.

        Returns:
            str: The return value.
        """

        # legalize @xtext.
        for ws in ["\f","\r","\v"]:
            xtext = xtext.replace(ws, "\n")
        xtext = "".join([char for char in xtext if unicodedata.category(char)[0] != "C" or
            char in ("\t", "\n")])
        
        return xtext


    def _split_entity(self, entity_tag):
        """ Splits @entity_tag into the match pattern identifier, the authority domain, and
        the actual NER tag for the entity.

        Args:
            - entity_tag (str): The double-colon concatenated NER tag consisted of the three
            parts, above.

        Returns:
            tuple: The return value.
            The first item is a string, i.e. the match pattern identifier.
            The second item is a string, i.e the authority domain.
            The third item is a string, i.e. the NER tag.
        """

        # verify @entity_tag is a string.
        if not isinstance(entity_tag, str):
            self.logger.error("Entity should be a string, got '{}' instead.".format(
                type(entity_tag).__name__))
            self.logger.warning("Falling back to empty values.")
            return ("", "", "")

        # split @entity_tag into its parts.
        entity_parts = entity_tag.split("::")
        
        # if too few or too many parts exist, fallback to assuming only a raw tag exists.
        if len(entity_parts) != 3:
            entity_tag = entity_tag.replace("::", "_")
            entity_parts = ("", "", entity_tag)
        
        return entity_parts


    def validate_xml(self, xdoc):
        """ Determines if @xdoc is valid or not per @self.xsd_file.

        Args:
            - xdoc (str): The lxml.etree._Element to validate.

        Returns:
            bool: The return value. True for valid, otherwise False.
        """

        # validate @xdoc.
        validator = etree.XMLSchema(self.xsd)
        is_valid = validator.validate(xdoc)

        return is_valid


    def get_xml(self, ner_data, validate=False):
        """ Converts @ner_data to XML, i.e. a tagged XML message.
        
        Args:
            - ner_data (list): The NER data to convert to XML. Each item in the list is 
            expected to be a tuple with three string values: a text token, its NER tag, and 
            its trailing space.
            - validate (bool): If True, the resultant lxml.etree._Element will be validated 
            against @self.xsd_file. If False, no validation is attempted.

        Returns:
            lxml.etree._Element: The return value.
        """

        self.logger.info("Converting NER list to a tagged XML message.")

        # create root element.
        tagged_el = etree.Element("{" + self.ns_uri + "}Tokens",
                nsmap=self.ns_map)
        tagged_el.text = ""
        
        # start tracking NER tag groups.
        tag_group = 0
        current_tag = None

        # verify that @ner_data is not empty.
        if len(ner_data) == 0:
            self.logger.warning("NER tag data is empty.")
            tagged_el.append(etree.Comment("WARNING: NER tag data was empty."))

        # iterate through @ner_data; append sub-elements to root.
        for token_group in ner_data:

            # verify that @token_group is a tuple.
            if not isinstance(token_group, tuple):
                self.logger.error("Token group is not a tuple; got {} instead.".format(
                    type(token_group).__name__))
                self.logger.warning("Skipping token group.")
                continue
            
            # verify that tuple's length is correct.
            if len(token_group) != 3:
                self.logger.error("Token group contains {} items, not 3.".format(
                    len(token_group)))
                self.logger.warning("Skipping token group.")
                continue

            # unpack tuple, and write to @tagged_el.
            try:
                text, tag, tspace = token_group
            except ValueError as err:
                self.logger.error(err)
                self.logger.warning("Can't unpack token group; skipping token group.")
                continue

            # add whitespace-only items to tree and continue.
            if text == "":
                
                # if a child exists, append whitespace to its tail.
                children = tagged_el.getchildren()
                if len(children) != 0:
                    
                    # capture current value of element tail and ensure it's a string.
                    # Why? see: "http://blog.humaneguitarist.org/?p=6760".
                    saved_tail = children[-1].tail
                    if saved_tail is None:
                        saved_tail = ""
                    try:
                        children[-1].tail += tspace
                    except ValueError as err:
                        self.logger.error(err)
                        msg = "Cleaning whitespace to append to existing <BlockText> element."
                        self.logger.info(msg)
                        saved_tail += self._legalize_xml_text(tspace)
                        children[-1].tail = saved_tail
                    continue

                # otherwise, create a new <BlockText> element to contain the whitespace.
                else:
                    block_el = etree.SubElement(tagged_el, "{" + self.ns_uri + "}BlockText", 
                        nsmap=self.ns_map)
                    try:
                        block_el.text = tspace
                    except ValueError as err:
                        self.logger.error(err)
                        self.logger.info("Cleaning whitespace for new <BlockText> element.")
                        block_el.text = self._legalize_xml_text(tspace)
                    continue

            # if @tag is new, set new @current_tag value and increase group value.
            if tag != current_tag:
                current_tag = tag
                if tag != "":
                    tag_group += 1
        
            # create sub-element for token.
            token_el = etree.SubElement(tagged_el, "{" + self.ns_uri + "}Token",
                    nsmap=self.ns_map)
            
            # if NER tag exists, add attributes to token sub-element.
            if tag != "":

                tag_pattern, tag_authority, tag_value = self._split_entity(tag)
                
                # set "entity" attribute.
                try:
                    token_el.set("entity", tag_value)
                except ValueError as err:
                    self.logger(err)
                    self.logger.info("Cleaning @entity attribute value.")
                    token_el.set("entity", self._legalize_xml_text(tag_value))
                    
                # set "group" attribute.
                token_el.set("group", str(tag_group))

                # write "pattern" attribute if it exists.
                if tag_pattern != "":
                    try:
                        token_el.set("pattern", tag_pattern)
                    except ValueError as err:
                        self.logger(err)
                        self.logger.info("Cleaning @pattern attribute value.")
                        token_el.set("pattern", self._legalize_xml_text(tag_pattern))

                # write "authority" attribute if it exists.
                if tag_authority != "": 
                    try:
                        token_el.set("authority", tag_authority)
                    except ValueError as err:
                        self.logger(err)
                        self.logger.info("Cleaning @authority attribute value.")
                        token_el.set("authority", self._legalize_xml_text(tag_authority))
            
            # set token sub-element's text value and append whitespace.
            try:
                token_el.text = text
            except ValueError as err:
                self.logger.error(err)
                self.logger.info("Cleaning text for <Token> element.")
                token_el.text = self._legalize_xml_text(text)
            try:
                token_el.tail = tspace
            except ValueError as err:
                self.logger.error(err)
                self.logger.info("Cleaning element tail for <Token> element.")
                token_el.tail = self._legalize_xml_text(tspace)

        # if requested, validate tagged message.
        if validate:
            is_valid = self.validate_xml(tagged_el) 
            if not is_valid:
                self.logger.warning("Tagged message XML is not valid per '{}'.".format(
                    self.xsd.file))

        return tagged_el


if __name__ == "__main__":
    pass

