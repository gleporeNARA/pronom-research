#############################################################
# 2016-09-26: ExtBodyContentType.py
# Author: Jeremy M. Gibson (State Archives of North Carolina)
#
# Description: Implementation of ExtBodyContentType
##############################################################
import uuid
import os
import codecs
import logging
from collections import OrderedDict

from lxml.ElementInclude import etree

from eaxs.HashType import Hash
from eaxs_helpers.Render import Render
from xml_help.CommonMethods import CommonMethods


class ExtBodyContent:
    """"""

    def __init__(self):
        """Constructor for ExtBodyContent"""
        self.attachment_folder = CommonMethods.get_attachment_directory()
        self.attachment_directory = os.path.join(CommonMethods.get_attachment_directory(), self.attachment_folder)
        self.rel_path = None  # type: str
        self.char_set = None  # type: str
        self.transfer_encoding = None  # type: str
        self.local_id = None  # type: int
        self.xml_wrapped = True  # type: bool
        self.eol = None  # type: Eol
        self.hash = None  # type: Hash
        self.body_content = None  # type: str
        self.gid = uuid.uuid4()  # type: uuid
        self.logger = logging.getLogger("ExtBodyContent")

    def set_hash(self, hdigest, ht='SHA256'):
        self.hash = Hash(hdigest, ht)

    def write_ext_body(self, xml):
        if self.xml_wrapped:
            try:
                fn = '{}.xml'.format(self.gid)
                self.rel_path = ".{}".format(os.path.join(CommonMethods.get_rel_attachment_dir(), fn))
                fh = codecs.open(os.path.join(self.attachment_directory, fn), "w", "utf-8")
                fh.write(xml)
                fh.close()
            except UnicodeDecodeError as e:
                self.logger.error(e)
            except UnicodeEncodeError as e:
                self.logger.error(e)

    def build_xml_file(self, children):
        """
        :type children : OrderedDict
        :param children:
        :return:
        """
        if CommonMethods.get_dedupe():
            self._build_dedup(children)
        else:
            self._build_nodedup(children)

    def render(self, parent):
        """
        :type parent: xml.etree.ElementTree.Element
        :param parent:
        :return:
        """
        self.local_id = str(self.local_id)
        self.xml_wrapped = str(self.xml_wrapped)

        ext_bdy_head = etree.SubElement(parent, "ExtBodyContent")
        child1 = etree.SubElement(ext_bdy_head, "RelPath")
        child1.text = self.rel_path
        child2 = etree.SubElement(ext_bdy_head, "CharSet")
        child2.text = self.char_set
        child3 = etree.SubElement(ext_bdy_head, "TransferEncoding")
        child3.text = self.transfer_encoding
        child4 = etree.SubElement(ext_bdy_head, "LocalId")
        child4.text = self.local_id
        child5 = etree.SubElement(ext_bdy_head, "XMLWrapped")
        child5.text = str(self.xml_wrapped).lower()
        if self.eol is not None:
            child6 = etree.SubElement(ext_bdy_head, "Eol")
            child6.text = self.eol
        self.hash.render(ext_bdy_head)

    def render_json(self):
        extbody = OrderedDict()
        extbody['local_id'] = self.local_id
        extbody['rel_path'] = self.rel_path
        extbody['charset'] = self.char_set
        extbody['transfer_encoding'] = self.transfer_encoding
        extbody['xml_wrapped'] = self.xml_wrapped
        extbody['eol'] = self.eol
        extbody['hash'] = self.hash.render_json()
        return OrderedDict({k: v for k, v in extbody.items() if v not in CommonMethods.empties})

    def _build_dedup(self, children):
        """
       :type children : OrderedDict
       :param children:
       :return:
       """
        if CommonMethods.set_ext_hash(self.gid, self.hash):
            chillen = OrderedDict()
            chillen["LocalUniqueID"] = self.gid.__str__()
            for k, v in children.items():
                chillen[k] = str(v).strip("\"")
            chillen["Content"] = self.body_content
            rend = Render("ExternalBodyPart", chillen)
            text = rend.render()
            self.write_ext_body(text)
            self.body_content = None
        else:
            self.gid = CommonMethods.get_ext_gid(self.hash.value)
            self.rel_path = ".{}{}{}{}.xml".format(os.sep, CommonMethods.get_rel_attachment_dir(), os.sep, self.gid.__str__())
            self.body_content = None
            self.logger.info("Duplicate Attachment: {}".format(self.gid.__str__()))

    def _build_nodedup(self, children):
            """
           :type children : OrderedDict
           :param children:
           :return:
           """
            chillen = OrderedDict()
            chillen["LocalUniqueID"] = self.gid.__str__()
            for k, v in children.items():
                chillen[k] = v
            chillen["Content"] = self.body_content
            rend = Render("ExternalBodyPart", chillen)
            self.write_ext_body(rend.render())
            self.body_content = None

