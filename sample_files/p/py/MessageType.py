#############################################################
# 2016-09-22: MessageType.py
# Author: Jeremy M. Gibson (State Archives of North Carolina)
#
# Description: Implements the EAXS message-type
##############################################################
import sys
from collections import OrderedDict
from email.message import Message
import email
import logging

from lxml.ElementInclude import etree

from eaxs.HashType import Hash
from eaxs.HeaderType import Header
from eaxs.IncompleteParseType import IncompleteParse
from eaxs.MultiBodyType import MultiBody
from eaxs.SingleBodyType import SingleBody
from xml_help.CommonMethods import CommonMethods
from eaxs_helpers.MessageProcessor import MessageProcessor as MPros

status = {'RO': 'Seen',
          'O': 'Unseen',
          'A': 'Answered',
          'D': 'Deleted',
          '': None}


class DmMessage:
    """"""

    def __init__(self, rel_path, local_id, message, fn=None):
        """Constructor for Message"""
        self.logger = logging.getLogger("MessageType")
        self.message = message  # type: Message
        self.fn = fn
        # First parts of the schema message-type
        self.relative_path = rel_path  # type: str
        self.local_id = local_id
        self.message_id = CommonMethods.cdata_wrap(self.message.get("Message-ID"))  # type: str
        if self.message_id == '' or self.message_id is None:
            self.message_id = 'No Message-ID supplied'
        self.mime_version = CommonMethods.cdata_wrap(self.message.get("MIME-Version"))  # type: str
        self.incomplete = []  # type: list[IncompleteParse]

        # xm:message-headers
        xml_d = CommonMethods.tup_to_xml_date(CommonMethods.parsedate_tz(self.message.get("Date")))
        self.orig_date = xml_d  # type: str
        self.m_from = CommonMethods.cdata_wrap(self.message.get("From"))  # type: str
        self.sender = CommonMethods.cdata_wrap(self.message.get("Sender"))  # type: str
        try:
            self.m_to = CommonMethods.cdata_wrap(self.message.get("To"))  # type: str
        except TypeError as te:
            self.logger.error("{}".format(te))
            self.incomplete.append(IncompleteParse('TypeError parsing To Header', te))
        self.cc = CommonMethods.cdata_wrap(self.message.get("Cc"))  # type: str
        self.bcc = CommonMethods.cdata_wrap(self.message.get("Bcc"))  # type: str
        self.in_reply_to = CommonMethods.cdata_wrap(self.message.get("In-Reply-To"))
        self.references = CommonMethods.cdata_wrap(self.message.get("References"))  # type: str
        self.comments = CommonMethods.cdata_wrap(self.message.get("Comments"))  # type: str
        self.keywords = CommonMethods.cdata_wrap(self.message.get("Keywords"))  # type: str
        try:
            self.subject = CommonMethods.cdata_wrap(self.message.get("Subject"))  # type: str
        except TypeError as te:
            self.logger.error("{}".format(te))
            self.incomplete.append(IncompleteParse('TypeError parsing Subject line', te))
        try:
            self.status_flag = status.get(self.message.get("Status"))  # type: str
        except Exception as e:
            self.incomplete.append(IncompleteParse('TypeError parsing Status', e))

        self.headers = []  # type: list[Header]
        self.single_body = []  # type: list[SingleBody]
        self.multiple_body = []  # type: list[MultiBody]

        try:
            self.eol = CommonMethods.get_eol(self.message.as_string(policy=self.message.policy.clone(utf8=True)))  # type: str
        except KeyError as e:
            self.logger.error("Inspect Message: KeyError {}".format(self.message.get("Message-ID")))
            self.incomplete.append(IncompleteParse('KeyError parsing EOL', e))
        except UnicodeEncodeError as ue:
            print(sys.gettrace())
            self.logger.error("Inspect Message: UnicodeEncodeError {}".format(self.message.get("Message-ID")))
            self.incomplete.append(IncompleteParse('UnicodeEncodeError parsing EOL', ue))
        except LookupError as le:
            self.logger.error("Inspect Message: LookupError {}".format(self.message.get("Message-ID")))
            self.incomplete.append(IncompleteParse('LookupError parsing EOL', le))
        except Exception as er:
            self.incomplete.append(IncompleteParse('LookupError parsing EOL', er))
        finally:
            self.eol = 'LF'

        self.hash = CommonMethods.get_hash(self.message.as_bytes())  # type: Hash

        self._process_headers()
        self._process_payload()

    def _process_headers(self):
        if self.fn:
            fake_h = Header("X-TOMES-ID", self.fn)
            self.headers.append(fake_h)
        for key, value in self.message.items():
            if type(value) is email.header.Header:
                value = value.__str__()
            h = Header(key, value)
            self.headers.append(h)

    def _process_payload(self):
        message_processor = MPros(self.message, self.relative_path)
        self.multiple_body = message_processor.process_payloads()

    def render(self, parent=None):
        """
        :type parent: Element

        :param parent:
        :return:
        """
        if parent is not None:
            self.local_id = str(self.local_id)
            message = etree.SubElement(parent, "Message")
            for key, value in CommonMethods.get_messagetype_map().items():
                if self.__getattribute__(key) is not None:
                    if isinstance(self.__getattribute__(key), list):
                        #TODO: Handle this
                        for item in self.__getattribute__(key):
                            if isinstance(item, Header):
                                item.render(message)
                            if isinstance(item, MultiBody):
                                item.render(message)
                        continue
                    if isinstance(self.__getattribute__(key), Hash):
                        self.__getattribute__(key).render(message)
                        continue
                    if isinstance(self.__getattribute__(key), MultiBody):
                        self.__getattribute__(key).render(message)
                        continue
                    child = etree.SubElement(message, value)
                    child.text = self.__getattribute__(key)

    def _get_message_id(self):
        if isinstance(self.message_id, etree.CDATA):
            return CommonMethods.cdata_unwrap(self.message_id)
        return self.message_id

    def _get_from(self):
        if isinstance(self.m_from, etree.CDATA):
            return CommonMethods.cdata_unwrap(self.m_from)
        return self.m_from

    def _get_to(self):
        if isinstance(self.m_to, etree.CDATA):
            return CommonMethods.cdata_unwrap(self.m_to)
        return self.m_to

    def _get_cc(self):
        if isinstance(self.cc, etree.CDATA):
            return CommonMethods.cdata_unwrap(self.cc)
        return self.cc

    def _get_bcc(self):
        if isinstance(self.bcc, etree.CDATA):
            return CommonMethods.cdata_unwrap(self.bcc)
        return self.bcc

    def _get_sender(self):
        if isinstance(self.sender, etree.CDATA):
            return CommonMethods.cdata_unwrap(self.sender)
        return self.sender

    def _get_in_reply_to(self):
        if isinstance(self.in_reply_to, etree.CDATA):
            return CommonMethods.cdata_unwrap(self.in_reply_to)
        return self.in_reply_to

    def _get_subject(self):
        if isinstance(self.subject, etree.CDATA):
            return CommonMethods.cdata_unwrap(self.subject)
        return self.subject

    def _get_headers(self):
        if len(self.headers) > 0:
            return [x.render_json() for x in self.headers]
        return None

    def _get_single_bodies(self):
        if len(self.single_body) > 0:
            return [x.render_json() for x in self.single_body]
        return None

    def _get_multibody(self):
        if isinstance(self.multiple_body, list):
            return [x.render_json() for x in self.multiple_body]
        elif isinstance(self.multiple_body, MultiBody):
            return self.multiple_body.render_json()
        return []

    def _get_incomplete(self):
        if isinstance(self.incomplete, IncompleteParse):
            return self.incomplete.render_json()
        return None

    def _get_references(self):
        if isinstance(self.references, etree.CDATA):
            return CommonMethods.cdata_unwrap(self.references)
        return self.references

    def _get_comments(self):
        if isinstance(self.comments, etree.CDATA):
            return CommonMethods.cdata_unwrap(self.comments)
        return self.comments

    def _get_keywords(self):
        if isinstance(self.keywords, etree.CDATA):
            return CommonMethods.cdata_unwrap(self.keywords)
        return self.keywords

    def render_json(self):
        message = OrderedDict()
        message['relpath'] = self.relative_path
        message['message_id'] = self._get_message_id()
        message['mime_version'] = self.mime_version
        message['incomplete'] = self._get_incomplete()
        message['orig_date'] = self.orig_date
        message['from'] = self._get_from()
        message['to'] = self._get_to()
        message['sender'] = self._get_sender()
        message['cc'] = self._get_cc()
        message['bcc'] = self._get_bcc()
        message['in_reply_to'] = self._get_in_reply_to()
        message['subject'] = self._get_subject()
        message['references'] = self._get_references()
        message['comments'] = self._get_comments()
        message['keywords'] = self._get_keywords()
        message['status_flag'] = self.status_flag
        message['headers'] = self._get_headers()
        message['single_body'] = self._get_single_bodies()
        message['multi_body'] = self._get_multibody()
        message['eol'] = self.eol
        message['hash'] = self.hash.render_json()
        return OrderedDict({k: v for k, v in message.items() if v not in CommonMethods.empties})

