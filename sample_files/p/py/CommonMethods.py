import re
import hashlib
import logging
from collections import OrderedDict
import unicodedata

from lxml.ElementInclude import etree
from lxml.etree import CDATA
import ftfy
import ftfy.bad_codecs

from eaxs.HashType import Hash


global __LOCALID__
global __ROOTPATH__
global __RELPATH__


# ACCOUNT-REF-TYPE
PREVIOUS_CONTENT = "PreviousContent"
SUBSEQUENT_CONTENT = "SubsequentContent"
SUPPLEMENTAL = "Supplemental"
SEE_ALSO = "SeeAlso"
SEE_INSTEAD = "SeeInstead"

# EOL-TYPE
CR = "CR"
LF = "LF"
CRLF = "CRLF"

# HASH-FUNCTION-=TYPE
MD5 = "MD5"
SHA1 = "SHA1"
SHA224 = "SHA224"
SHA256 = "SHA256"
SHA384 = "SHA384"
SHA512 = "SHA512"
RIPEMD160 = "RIPEMD160"
WHIRLPOOL = "WHIRLPOOL"

# MESSAGE-STATUS-FLAG
SEEN = "Seen"
ANSWERED = "Answered"
FLAGGED = "Flagged"
DELETED = "Deleted"
DRAFT = "Draft"
RECENT = "Recent"

__LOCALID__= 0  # type: int
logger = logging.getLogger("CommonMethods")

printable = frozenset({'Lu', 'Ll', 'Lt', 'Lm', 'Lo', 'Mn', 'Mc', 'Me',
                       'Nd', 'Nl', 'No', 'Pc', 'Pd', 'Ps', 'Pe', 'Pi',
                       'Pf', 'Po', 'Sm', 'Sc', 'Sk', 'So', 'Zs', 'Zl',
                       'Zp', 'Cc', 'Cf', 'Cs', 'Co', 'Cn'})


_monthnames = ['jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul',
               'aug', 'sep', 'oct', 'nov', 'dec',
               'january', 'february', 'march', 'april', 'may', 'june', 'july',
               'august', 'september', 'october', 'november', 'december']
_daynames = ['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun']


_timezones = {'UT':0, 'UTC':0, 'GMT':0, 'Z':0,
              'AST': -400, 'ADT': -300,  # Atlantic (used in Canada)
              'EST': -500, 'EDT': -400,  # Eastern
              'CST': -600, 'CDT': -500,  # Central
              'MST': -700, 'MDT': -600,  # Mountain
              'PST': -800, 'PDT': -700   # Pacific
              }


class CommonMethods:
    globals()["__STITCH__"] = False
    globals()["__STOREJSON__"] = False
    empties = ['', None, []]
    PACK_TYPE_MBOX = 0
    PACK_TYPE_EML = 1

    @staticmethod
    def set_devel(d: bool):
        globals()["__DEVEL__"] = d

    @staticmethod
    def get_process_paths():
        if globals()["__DEVEL__"]:
            return "E:\\RESOURCES\\TEST_RESOURCES\\tomes\\data"
        else:
            return "/home/tomes/data"

    @staticmethod
    def set_from_tomes(tt: bool):
        globals()["__TOMES_TOOL__"] = tt

    @staticmethod
    def get_tomes_tool():
        return globals()["__TOMES_TOOL__"]

    @staticmethod
    def set_package_type(pt: int):
        globals()["__PACK_TYPE__"] = pt

    @staticmethod
    def is_eml_struct() -> bool:
        if globals()["__PACK_TYPE__"] == CommonMethods.PACK_TYPE_EML:
            return True
        return False

    @staticmethod
    def init_hash_dict():
        globals()["__HASH_LIST__"] = {}

    @staticmethod
    def set_chunk_size(size=None):
        try:
            assert type(size) == int
            globals()["__CHUNKS__"] = size
        except AssertionError:
            globals()["__CHUNKS__"] = int(size)

    @staticmethod
    def get_chunksize():
        return globals()["__CHUNKS__"]

    @staticmethod
    def set_stitch(stitch):
        """
        :type stitch: bool
        :param stitch:
        :return:
        """
        globals()["__STITCH__"] = stitch

    @staticmethod
    def get_stitch():
        """"
        :return bool:
        """
        return globals()["__STITCH__"]

    @staticmethod
    def get_messagetype_map():
        return OrderedDict([
            ("relative_path", "RelPath"),
            ("local_id", "LocalId"),
            ("message_id", "MessageId"),
            ("mime_version", "MimeVersion"),
            ("orig_date", "OrigDate"),
            ("m_from", "From"),
            ("sender", "Sender"),
            ("m_to", "To"),
            ("cc", "Cc"),
            ("bcc", "Bcc"),
            ("in_reply_to", "InReplyTo"),
            ("references", "References"),
            ("subject", "Subject"),
            ("comments", "Comments"),
            ("keywords", "Keywords"),
            ("headers", "Header"),
            ("status_flag", "StatusFlag"),
            ("single_body", "SingleBody"),
            ("multiple_body", "MultiBody"),
            ("incomplete", "Incomplete"),
            ("eol", "Eol"),
            ("hash", "Hash")])

    @staticmethod
    def get_singlebody_map():
        return OrderedDict([
            ("content_type", "ContentType"),
            ("charset", "Charset"),
            ("content_name", "ContentName"),
            ("content_type_comments", "ContentTypeComments"),
            ("content_type_param", "ContentTypeParam"),
            ("transfer_encoding", "TransferEncoding"),
            ("transfer_encoding_comments", "TransferEncodingComments"),
            ("content_id", "ContentId"),
            ("content_id_comments", "ContentIdComments"),
            ("description", "Description"),
            ("description_comments", "DescriptionComments"),
            ("disposition", "Disposition"),
            ("disposition_file_name", "DispositionFileName"),
            ("disposition_comments", "DispositionComments"),
            ("disposition_params", "DispositionParams"),
            ("other_mime_header", "OtherMimeHeader"),
            ("body_content", "BodyContent"),
            ("ext_body_content", "ExtBodyContent"),
            ("child_message", "ChildMessage"),
            ("phantom_body", "Phantom_Body")
        ])

    @staticmethod
    def get_multibody_map():
        return OrderedDict([
            ("content_type", "ContentType"),
            ("charset", "Charset"),
            ("content_name", "ContentName"),
            ("boundary_string", "BoundaryString"),
            ("content_type_comments", "ContentTypeComments"),
            ("content_type_param", "ContentTypeParam"),
            ("transfer_encoding", "TransferEncoding"),
            ("transfer_encoding_comments", "TransferEncodingComments"),
            ("content_id", "ContentId"),
            ("content_id_comments", "ContentIdComments"),
            ("description", "Description"),
            ("description_comments", "DescriptionComments"),
            ("disposition", "Disposition"),
            ("disposition_file_name", "DispositionFileName"),
            ("disposition_comments", "DispositionComments"),
            ("disposition_params", "DispositionParam"),
            ("other_mime_header", "OtherMimeHeader"),
            ("preamble", "Preamble"),
            ("single_bodies", "SingleBody"),
            ("multi_bodies", "MultiBody"),
            ("epilogue", "Epilogue"),
        ])

    @staticmethod
    def cdata_wrap(text):
        if text is None:
            return None

        try:
            if re.search("[<>\'\"]", text) is not None:
                return CDATA(text)
                pass
            return text
        except ValueError as ve:
            raise
        except TypeError as te:
            raise

    @staticmethod
    def cdata_unwrap(obj):
        """
        :type obj: etree.CDATA
        :param obj:
        :return:
        """
        el = etree.Element("root")
        el.text = obj
        return el.text


    @staticmethod
    def sanitize(text):
        '''
        :type text: bytes
        :param text:
        :return:
        '''
        try:
            return text.decode('utf-8', 'strict').encode('utf-8')
        except UnicodeDecodeError as e:
            test = ftfy.fix_encoding(text.decode('utf-8', 'replace'))
            return test.encode('utf-8', 'strict')
        except Exception as e:
            print(e)
            return ''

    @staticmethod
    def sanitize_string(text):
        '''

        :param text: str
        :return:
        '''

        try:
            return ftfy.fix_encoding(text)
        except Exception as e:
            print(e)
            return ''

    @staticmethod
    def remove_control_chars(s):
        return "".join(ch for ch in s if unicodedata.category(ch)[0] != "C")

    @staticmethod
    def get_content_type(content_type):
        '''
        :param content_type:
        :type content_type : str
        :return: tuple:
        '''

        if re.search(';', content_type) is not None:
            # has a secondary component
            mime = []
            try:
                mime = content_type.split(";")
                key, value = re.split("=", mime[1], maxsplit=1)
            except ValueError as ve:
                if mime[1] == "":
                    return [content_type]
                else:
                    raise
            return [mime[0], key.strip(), value.strip("\"")]
        else:
            # is only a mime type
            return [content_type]

    @staticmethod
    def increment_local_id():
        globals()["__LOCALID__"] += 1
        return globals()["__LOCALID__"]

    @staticmethod
    def get_current_local_id():
        return globals()["__LOCALID__"]

    @staticmethod
    def get_eol(message):
        """
        :param message
        :type message : str
        :return:
        """
        try:
            if message[-2:] == "\r\n": return CRLF
            if message[-1:] == "\r": return CR
            if message[-1:] == "\n" and message[-2:] != "\r\n": return LF
        except KeyError as ke:
            return LF

    @staticmethod
    def get_hash(message):
        '''
        Defaulting to SHA256 in this version of the tool.  Future versions give options.
        :return:
        '''
        hsh = hashlib.md5()
        hsh.update(CommonMethods.sanitize(message))
        return Hash(hsh.hexdigest(), MD5)

    @staticmethod
    def set_base_path(path):
        globals()["__ROOTPATH__"] = path

    @staticmethod
    def get_base_path():
        return globals()["__ROOTPATH__"]

    @staticmethod
    def set_attachment_dir(folder='attachments'):
        globals()["__ATTACHMENTS__"] = folder

    @staticmethod
    def get_attachment_directory():
        return globals()["__ATTACHMENTS__"]

    @staticmethod
    def set_rel_attachment_dir(s):
        globals()["__REL_ATTACHMENTS__"] = s

    @staticmethod
    def get_rel_attachment_dir():
        return globals()["__REL_ATTACHMENTS__"]

    @staticmethod
    def set_xml_dir(folder='eaxs_xml'):
        globals()["__EAXS_XML__"] = folder

    @staticmethod
    def get_xml_directory():
        return globals()["__EAXS_XML__"]

    @staticmethod
    def set_json_directory(folder):
        globals()["__EAXS_JSON__"] = folder

    @staticmethod
    def get_json_directory():
        return globals()["__EAXS_JSON__"]

    @staticmethod
    def set_store_json():
        globals()["__STOREJSON__"] = True

    @staticmethod
    def get_store_json():
        return globals()["__STOREJSON__"]

    @staticmethod
    def set_store_rtf_body(val=False):
        globals()["__STORE_RTF_BODY__"] = val

    @staticmethod
    def store_rtf_body():
        return globals()["__STORE_RTF_BODY__"]

    @staticmethod
    def set_eaxs_file(file_name):
        globals()["__EAXS_FILE__"] = file_name

    @staticmethod
    def get_eaxs_filename():
        return globals()["__EAXS_FILE__"]

    @staticmethod
    def set_ext_hash(gid, hash):
        hash_list = globals()["__HASH_LIST__"]  # type: dict
        if hash.value not in hash_list:
            hash_list[hash.value] = gid
            return True
        return False

    @staticmethod
    def get_ext_gid(hash):
        hash_list = globals()["__HASH_LIST__"]  # type: dict
        return hash_list[hash]

    @staticmethod
    def set_dedupe(val=True):
        globals()["__DEDUPE__"] = val

    @staticmethod
    def get_dedupe():
        return globals()["__DEDUPE__"]

    @staticmethod
    def parsedate_tz(data):
        """Convert a date string to a time tuple.

        Accounts for military timezones.
        """
        if not data:
            return None
        data = data.split()
        if data[0][-1] in (',', '.') or data[0].lower() in _daynames:
            # There's a dayname here. Skip it
            del data[0]
        else:
            # no space after the "weekday,"?
            i = data[0].rfind(',')
            if i >= 0:
                data[0] = data[0][i+1:]
        if len(data) == 3: # RFC 850 date, deprecated
            stuff = data[0].split('-')
            if len(stuff) == 3:
                data = stuff + data[1:]
        if len(data) == 4:
            s = data[3]
            i = s.find('+')
            if i > 0:
                data[3:] = [s[:i], s[i+1:]]
            else:
                data.append('') # Dummy tz
        if len(data) < 5:
            return None
        data = data[:5]
        [dd, mm, yy, tm, tz] = data
        mm = mm.lower()
        if not mm in _monthnames:
            dd, mm = mm, dd.lower()
            if not mm in _monthnames:
                return None
        mm = _monthnames.index(mm)+1
        if mm > 12: mm = mm - 12
        if dd[-1] == ',':
            dd = dd[:-1]
        i = yy.find(':')
        if i > 0:
            yy, tm = tm, yy
        if yy[-1] == ',':
            yy = yy[:-1]
        if not yy[0].isdigit():
            yy, tz = tz, yy
        if tm[-1] == ',':
            tm = tm[:-1]
        tm = tm.split(':')
        if len(tm) == 2:
            [thh, tmm] = tm
            tss = '0'
        elif len(tm) == 3:
            [thh, tmm, tss] = tm
        else:
            return None
        try:
            yy = int(yy)
            dd = int(dd)
            thh = int(thh)
            tmm = int(tmm)
            tss = int(tss)
        except ValueError:
            return None
        tzoffset = None
        tz = tz.upper()
        if tz in _timezones:
            tzoffset = _timezones[tz]
        else:
            try:
                tzoffset = int(tz)
            except ValueError:
                pass
        # Convert a timezone offset into seconds ; -0500 -> -18000
        if tzoffset:
            if tzoffset < 0:
                tzsign = -1
                tzoffset = -tzoffset
            else:
                tzsign = 1
            tzoffset = tzsign * ( (tzoffset//100)*3600 + (tzoffset % 100)*60)
        return (yy, mm, dd, thh, tmm, tss, 0, 1, 0, tzoffset)

    @staticmethod
    def tup_to_xml_date(tup):
        d = "{}-{}-{}T{}:{}:{}Z"
        try:
            return d.format(str(tup[0]).zfill(4),
                            str(tup[1]).zfill(2),
                            str(tup[2]).zfill(2),
                            str(tup[3]).zfill(2),
                            str(tup[4]).zfill(2),
                            str(tup[5]).zfill(2))
        except TypeError as e:
            return d.format("1900", "01", "01", "12", "00", "00")

    @staticmethod
    def valid_xml_char_ordinal(c):
        codepoint = ord(c)
        # conditions ordered by presumed frequency
        return (
            0x20 <= codepoint <= 0xD7FF or
            codepoint in (0x9, 0xA, 0xD) or
            0xE000 <= codepoint <= 0xFFFD or
            0x10000 <= codepoint <= 0x10FFFF
        )