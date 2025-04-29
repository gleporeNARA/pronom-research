#############################################################
# 2016-09-26: SingleBodyType.py 
# Author: Jeremy M. Gibson (State Archives of North Carolina)
# 
# Description: 
##############################################################
import sys
from urllib.parse import unquote
import logging
import re
from email.message import Message
from email.charset import Charset

import lxml.etree as etree
from collections import OrderedDict


from eaxs.HeaderType import Header
from eaxs.ChildMessageType import ChildMessage
from eaxs.ParameterType import Parameter
from eaxs.IntBodyContentType import IntBodyContent
from eaxs.ExtBodyContentType import ExtBodyContent
from xml_help.CommonMethods import CommonMethods


class SingleBody:
    """

    """
    
    def __init__(self, payload=None):
        """Constructor for SingleBody
        :type payload : Message
        """
        if payload is not None:
            self.payload = payload
            self.content_type = self.payload.get_content_type()  # type: str
            self.charset = self.payload.get_content_charset()  # type: str
            self.transfer_encoding = self.payload.get("Content-Transfer-Encoding")  # type: str
            self.content_id = self.payload.get("Content-ID")  # type: str
            self.disposition = self.payload.get_content_disposition()  # type: str
        else:
            self.payload = payload
            self.content_type = None  # type: str
            self.charset = None  # type: str
            self.transfer_encoding = None # type: str
            self.content_id = None  # type: str
            self.disposition = None  # type: str

        self.content_name = None  # type: str
        self.content_type_comments = None  # type: str
        self.content_type_param = []  # type: list[Parameter]
        self.transfer_encoding_comments = None  # type: str
        self.content_id_comments = None  # type: str
        self.description = None  # type: str
        self.description_comments = None  # type: str
        self.disposition_file_name = None  # type: str
        self.disposition_comments = None  # type: str
        self.disposition_params = []  # type: list[Parameter]
        self.other_mime_header = []  # type: list[Header]
        self.body_content = []  # type: list[IntBodyContent]
        self.ext_body_content = []  # type: list[ExtBodyContent]
        self.child_message = []  # type: list[ChildMessage]
        self.phantom_body = None  # type: str
        self.append_body = True
        self.logger = logging.getLogger("SingleBodyType")
        self.body_only = False
        self.soupify = False
        self.body_content_duplicate = False

    def process_headers(self):
        if isinstance(self.payload, str):
            self.body_content = self.payload
            self.body_only = True
            return

        for header, value in self.payload.items():

            if header == "Content-Type":
                expression = CommonMethods.get_content_type(value)
                if len(expression) > 1:
                    self.content_type = expression[0]
                    # Is this a charset identification
                    if expression[1] == 'charset':
                        self.charset = expression[2]
                    else:
                        self.content_type_param.append(Parameter(expression[1], expression[2]))
                    continue
                else:
                    self.content_type = expression[0]
                    continue
            if header == "Content-Transfer-Encoding":
                self.transfer_encoding = value
                continue
            if header == "Content-Disposition":
                try:
                    self.disposition = value.split(";")[0]
                    fn = value.split(";")[1].split("=")[1]
                    if len(fn.split("''")) > 1:
                        self.disposition_file_name = unquote(fn.split("''")[1])
                    else:
                        self.disposition_file_name = unquote(fn)
                    continue
                except IndexError as e:
                    self.other_mime_header.append(Header(header, value))

            if header == "Content-ID":
                self.content_id = CommonMethods.cdata_wrap(value)
                continue

            if header == "Content-Description":
                self.content_name = value
                continue

            self.other_mime_header.append(Header(header, value))

    def process_body(self):
        if not self._is_readable():
            # Content-type indicates this message not readable
            # Next check to see if we should store the body externally or discard because of
            # Duplication

            if not self._store_body():
                return
            if self.payload is not None:
                self._full_ext_body()
            else:
                self._simple_ext_body()
        else:
            # This is a plaintext BodyContent block
            # Strip HTML from the block and escape with cdata if necessary
            if self.body_only is False:
                self._process_plaintext_body()
            else:
                try:
                    intbody = IntBodyContent(self.body_content,
                                             self.transfer_encoding, self.charset)
                    if intbody.content is None:
                        return
                    if self.body_only:
                        self.body_content = []
                        self.body_content.append(intbody)
                        return
                    self.body_content.append(intbody)
                except AttributeError as e:
                    # This message is completely empty
                    self.body_content = []
                except ValueError as ve:
                    intbody = IntBodyContent(self.body_content, self.transfer_encoding, self.charset)

    def _full_ext_body(self):
        extbody = ExtBodyContent()
        extbody.char_set = self.charset
        extbody.local_id = CommonMethods.increment_local_id()
        extbody.gid = "{0:0>5}_{1}".format(extbody.local_id, extbody.gid)
        extbody.transfer_encoding = self.transfer_encoding
        extbody.eol = CommonMethods.get_eol(self.payload.get_payload())
        extbody.hash = CommonMethods.get_hash(self.payload.as_bytes())
        extbody.body_content = self.payload.get_payload()
        children = OrderedDict({
            "ContentType": self.content_type,
            "Disposition": self.disposition,
            "DispositionFileName": self.disposition_file_name,
            "ContentTransferEncoding": self.transfer_encoding
        })
        extbody.build_xml_file(children)
        self.ext_body_content.append(extbody)
        self.payload = None

    def _simple_ext_body(self):
        extbody = ExtBodyContent()
        extbody.local_id = CommonMethods.increment_local_id()
        extbody.transfer_encoding = self.transfer_encoding
        extbody.hash = CommonMethods.get_hash(bytes(self.body_content, encoding='utf-8'))
        children = OrderedDict({
            "ContentType": self.content_type,
            "Disposition": self.disposition,
            "DispositionFileName": self.disposition_file_name,
            "ContentTransferEncoding": self.transfer_encoding
        })
        extbody.build_xml_file(children)
        self.ext_body_content.append(extbody)
        self.payload = None
        self.body_content = None

    def _process_plaintext_body(self):
        t = ""
        if isinstance(self.payload, Message):
            t = re.sub("\[\[", "\\[\\[", self.payload.get_payload())
            t = re.sub("]]", "\]\]", t)
        elif isinstance(self.payload, str):
            t = re.sub("\[\[", "\\[\\[", self.payload)
            t = re.sub("]]", "\]\]", t)
        s = sys.getsizeof(t)
        if s > (1024 ** 2):
            # This is probably not a plaintext payload. Punt to external body.
            self._full_ext_body()
            return
        try:
            sbint = IntBodyContent(CommonMethods.cdata_wrap(t), self.transfer_encoding, self.charset)
            if sbint.content == '' or sbint is None:
                self.payload = None
                return
            self.body_content.append(sbint)
        except ValueError as ve:
            self.logger.error("{}".format(ve))
        self.payload = None

    def _store_body(self):
        # Checks to see if the ExtBody is a duplicate of the email body.
        # Remove and note in the ExtBody Disposition.
        if self.disposition_file_name != "rtf-body.rtf":
            return True
        if self.content_type.__contains__("richtext"):
            return True
        elif not CommonMethods.store_rtf_body():
            # Check to see if we have flagged to save body duplicates
            self.disposition_comments = "Attachment is duplicate of BodyContent: Not saved"
            return False
        return True

    def get_attributes(self):
       pass

    def _is_readable(self):
        if self.transfer_encoding == "base64":
            return False
        if self.content_type == "text/plain":
            return True
        if self.content_type == "text/html":
            return True
        if self.charset is not None:
            cs = Charset(self.charset)
        else:
            cs = Charset()
        if self.charset == "us-ascii":
            return True
        if cs.get_body_encoding() == "quoted-printable":
            return True
        if self.body_only:
            return True
        if self.charset is None:
            return False
        return False


    def render(self, parent):
        """
        :type parent: xml.etree.ElementTree.Element
        :param parent:
        :return:
        """
        single_child_head = etree.SubElement(parent, "SingleBody")
        for key, value in CommonMethods.get_singlebody_map().items():
            if self.__getattribute__(key) is not None:
                if isinstance(self.__getattribute__(key), list):
                    if len(self.__getattribute__(key)) == 0:
                        continue
                    if isinstance(self.__getattribute__(key)[0], ExtBodyContent):
                        for ebc in self.ext_body_content:
                            ebc.render(single_child_head)
                        continue
                    if isinstance(self.__getattribute__(key)[0], IntBodyContent):
                        for intb in self.body_content:
                            intb.render(single_child_head)
                        continue
                    continue
                child = etree.SubElement(single_child_head, value)
                try:
                    child.text = self.__getattribute__(key)
                except TypeError as e:
                    pass

    def _get_content_type(self):
        if self.content_type is not None:
            return self.content_type
        return str()

    def _get_charset(self):
        if self.charset is not None:
            return self.charset
        return str()

    def _get_content_name(self):
        if self.content_name is not None:
            return self.content_name
        return str()

    def _get_content_type_comments(self):
        if self.content_id_comments is not None:
            return self.content_id_comments
        return str()

    def _get_content_type_params(self):
        if len(self.content_type_param) > 0:
            return [x.render_json() for x in self.content_type_param]
        return []

    def _get_transfer_encoding(self):
        if self.transfer_encoding is not None:
            return self.transfer_encoding
        return str()

    def _get_te_comments(self):
        if self.transfer_encoding_comments is not None:
            return self.transfer_encoding_comments
        return str()

    def _get_content_id(self):
        if self.content_id is not None:
            if isinstance(self.content_id, etree.CDATA):
                return CommonMethods.cdata_unwrap(self.content_id)
            return self.content_id
        return str()

    def _get_content_id_comments(self):
        if self.content_id_comments is not None:
            return self.content_id_comments
        return str()

    def _get_description(self):
        if self.description is not None:
            return self.description
        return str()

    def _get_descrip_comments(self):
        if self.description_comments is not None:
            return self.description_comments
        return str()

    def _get_disposition(self):
        if self.disposition is not None:
            return self.disposition
        return str()

    def _get_disposition_comments(self):
        if self.disposition_comments is not None:
            return self.description_comments
        return str()

    def _get_disposition_filename(self):
        if self.disposition_file_name is not None:
            return self.disposition_file_name
        return str()

    def _get_disposition_params(self):
        if len(self.disposition_params) > 0:
            return [x.render_json() for x in self.disposition_params]
        return []

    def _get_other_mime_header(self):
        if len(self.other_mime_header) > 0:
            return [x.render_json() for x in self.other_mime_header]
        return []

    def _get_body_content(self):
        if self.body_content is not None and len(self.body_content) > 0:
            return [x.render_json() for x in self.body_content]
        return []

    def _get_ext_body_content(self):
        if len(self.ext_body_content) > 0:
            l = [x.render_json() for x in self.ext_body_content]
            return l
        return []

    def render_json(self):
        sbody = OrderedDict()
        sbody['content_type'] = self._get_content_type()
        sbody['charset'] = self._get_charset()
        sbody['content_name'] = self._get_content_name()
        sbody['content_type_comments'] = self._get_content_type_comments()
        sbody['content_type_param'] = self._get_content_type_params()
        sbody['transfer_encoding'] = self._get_transfer_encoding()
        sbody['transfer_encoding_comments'] = self._get_te_comments()
        sbody['content_id'] = self._get_content_id()
        sbody['content_id_comments'] = self._get_content_id_comments()
        sbody['description'] = self._get_description()
        sbody['description_comments'] = self._get_descrip_comments()
        sbody['disposition'] = self._get_disposition()
        sbody['disposition_comments'] = self._get_disposition_comments()
        sbody['disposition_file_name'] = self._get_disposition_filename()
        sbody['disposition_params'] = self._get_disposition_params()
        sbody['other_mime_header'] = self._get_other_mime_header()
        sbody['body_content'] = self._get_body_content()
        sbody['ext_body_content'] = self._get_ext_body_content()
        sbody['phantom_message'] = self.phantom_body
        return OrderedDict({k: v for k, v in sbody.items() if v not in CommonMethods.empties})