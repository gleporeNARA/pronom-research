#############################################################
# 2016-09-22: HeaderType.py
# Author: Jeremy M. Gibson (State Archives of North Carolina)
#
# Description: Implementation of EAXS header-type
##############################################################
from collections import OrderedDict

from lxml.ElementInclude import etree

from xml_help.CommonMethods import CommonMethods


class Header:
    """"""

    def __init__(self, name, value, cdata=False):
        """Constructor for Header"""
        self.cdata = cdata
        self.name = name  # type: str
        self.value = value # type: str

    def render(self, parent):
        """
         :type parent: xml.etree.ElementTree.Element
         :param parent:
         :return:
         """
        child = etree.SubElement(parent, "Header")
        child1 = etree.SubElement(child, "Name")
        child1.text = self.name
        child2 = etree.SubElement(child, "Value")
        try:
            child2.text = CommonMethods.cdata_wrap(self.value)
        except ValueError as ve:
            pass
        except TypeError as te:
            pass

    def render_json(self):
        header = OrderedDict()
        header['name'] = self.name
        header['value'] = self.value
        return header
