#############################################################
# 2016-09-22: Render.py
# Author: Jeremy M. Gibson (State Archives of North Carolina)
#
# Description: Renders a single Element and its children
##############################################################
from xml.etree.ElementTree import Element
from xml.etree.ElementTree import SubElement
from xml.etree.ElementTree import tostring
from xml.dom import minidom
import xml.parsers.expat


class Render:
    """"""

    def __init__(self, root, children=None):
        """Constructor for Render
        @type root: str
        @type children: dict
        """
        self.root = Element(root)  # type: Element
        self.children = children
        self._build_element()

    def _build_element(self):
        if self.children:
            for e_type, value in self.children.items():
                child = SubElement(self.root, e_type)
                child.text = value

    def render(self):
        rough = tostring(self.root, 'utf-8')
        try:
            reparsed = minidom.parseString(rough)
            text = reparsed.toprettyxml(indent="  ")
            return text
        except xml.parsers.expat.ExpatError as e:
            # This is a potential problem where the binary is not actually base64 encoded
            # TODO: Write corrupted bytes to a file.
            self.children['Content'] = "ERROR: original attachment is corrupted"
            self.root = Element('ExternalBodyPart')
            self._build_element()
            return self.render()


    def add_child(self, name, value):
        child = SubElement(self.root, name)
        child.text = value
