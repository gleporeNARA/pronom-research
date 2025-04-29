#############################################################
# 2016-09-22: Account.py
# Author: Jeremy M. Gibson (State Archives of North Carolina)
#
# Description: The parent for the xml representation of a an
# account.  Based on the E-Mail Account XML Schema
##############################################################
import codecs
import os
import logging

from lxml.ElementInclude import etree

from xml_help.CommonMethods import CommonMethods
from eaxs.FolderType import Folder


class Account(object):
    """"""
    
    def __init__(self, account_name, xml_dir):
        """Constructor for Account"""
        self.email_address = []
        self.global_id = account_name  # type: str
        self.reference_account = []  # type: list[ReferenceAccount]
        self.folders = []  # type: list[Folder]
        self.xml_loc = xml_dir  # type: str
        self.xml_name = "{}.xml".format(self.global_id)
        self.account = self.get_root_element_attributes()
        self.element_doc = None  # type: etree.Element
        self.logger = logging.getLogger("Account")
        self.current_eaxs_file = None  # type: str
        self.files = []  # type: list

    def write_global_id(self):
        try:
            fh = codecs.open(CommonMethods.get_eaxs_filename(), "ab", "utf-8")
            fh.write(self.get_id())
            fh.close()
            CommonMethods.set_eaxs_file(CommonMethods.get_eaxs_filename())
        except FileNotFoundError as e:
            self.logger.error("{}: {}".format(e, CommonMethods.get_eaxs_filename()))

    @staticmethod
    def get_root_element_attributes():
        return '<?xml version="1.0" encoding="UTF-8"?>\n' \
               '<Account {}="{}" {}="{}" {}="{}">\n'.\
            format("xmlns", "http://www.archives.ncdcr.gov/mail-account",
                            "xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance",
                            "xsi:schemaLocation", "http://www.archives.ncdcr.gov/mail-account\n"
                            "http://www.history.ncdcr.gov/SHRAB/ar/emailpreservation/mail-account/mail-account.xsd")

    def get_id(self):
        return '<GlobalId>{}</GlobalId>\n'.format(self.global_id)

    def start_account(self):
        if CommonMethods.get_chunksize() != 0:
            self._start_account_chunks()
            return
        self.current_eaxs_file = os.path.join(self.xml_loc, self.xml_name)
        self._write_file()

    def close_account(self):
        try:
            fh = codecs.open(os.path.join(self.current_eaxs_file), "a", "utf-8")
            fh.write("</Account>\n")
            fh.close()
        except FileNotFoundError as e:
            self.logger.error("{}: {}".format(e, os.path.join(self.current_eaxs_file)))

    def _write_file(self):
        try:
            fh = codecs.open(self.current_eaxs_file, "ab", "utf-8")
            fh.write(self.get_root_element_attributes())
            fh.close()
            CommonMethods.set_eaxs_file(self.current_eaxs_file)
        except FileNotFoundError as e:
            self.logger.error("{}: {}".format(e, self.current_eaxs_file))

    def _start_account_chunks(self):
        fn = '{}_{}_{}.xml'.format(self.xml_name, "LID", CommonMethods.get_current_local_id())
        self.files.append(fn)
        self.current_eaxs_file = os.path.join(self.xml_loc, fn)
        self._write_file()

    def stitch_account(self):
        print("Stitching the {} account.".format(self.global_id))
        fh = open(os.path.join(self.xml_loc, '{}.xml'.format(self.global_id)), 'w+', encoding='utf-8')
        fh.write(self.get_root_element_attributes())
        fh.write(self.get_id())
        for fn in self.files:
            acc_part = open(os.path.join(self.xml_loc, fn), 'r', encoding='utf-8')
            x = 0
            for line in acc_part.readlines():
                if x < 4:
                    x += 1
                    continue
                if line == '</Account>\n':
                    continue
                fh.write(line)
            acc_part.close()
            os.remove(os.path.join(self.xml_loc, fn))
        fh.write('</Account>')

    def render_json(self):
        acct = {}
        acct['gid'] = self.global_id
        acct['email'] = self.email_address
        acct['ref_account'] = self.reference_account
        acct['folders'] = self.folders
        return acct



