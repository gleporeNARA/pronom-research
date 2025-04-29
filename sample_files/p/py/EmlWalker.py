#############################################################
# 2017-04-03: EmlWalker.py
# Author: Jeremy M. Gibson (State Archives of North Carolina)
#
# Description: A walker class to build email messages into an
#              EAXS schema from eml files.  Test data provided
#              by the Utah State Archives
##############################################################
import os
import logging
import email
import gc
import json
from collections import OrderedDict
from email.message import Message

from eaxs.MessageType import DmMessage
from xml_help.CommonMethods import CommonMethods
from eaxs.Account import Account
from eaxs.FolderType import Folder


class DefaultListOrderedDict(OrderedDict):
    def __missing__(self, k):
        self[k] = []
        return self[k]


class EmlWalker:
    def __init__(self, acct_directory, xml_dir, acct_name):
        self.account_name = acct_name
        self.account_directory = acct_directory
        self.xml_dir = xml_dir
        self.account = Account(acct_name, xml_dir)
        self.current_folder = None
        self.messages = []
        self.current_relpath = None  # type: str
        self.total_messages_processed = 0
        self.logger = logging.getLogger("EmlWalker")
        self.message_pack = DefaultListOrderedDict()
        self.account.start_account()
        self.account.write_global_id()
        self.chunks = 0
        self.new_account = True
        self.from_tomes = CommonMethods.get_tomes_tool()
        self.data_dir = os.path.join(CommonMethods.get_process_paths(), "mboxes")
        self.folder_map = {}
        self.expanded_path = str
        self.new_dir = True
        self.cur_fn = str

    def do_walk(self):
        """
        do_walk is the main function of the module.

        :return:
        """
        # If this is a TOMES_TOOL Struct use the folder_map
        if self.from_tomes:
            self.account_directory = os.path.join(self.data_dir, self.account_name)
            # Did someone make a mistake? Check to make sure folder_map is there
            if os.path.exists(os.path.join(self.account_directory, "folder_map.tsv")):
                self._build_folder_map(os.path.join(self.account_directory, "folder_map.tsv"))
            else:
                CommonMethods.set_from_tomes(False)

        print("Scanning data structure for emails.")
        for root, dirs, files in os.walk(self.account_directory):
            for f in files:
                if root not in self.message_pack:
                    self.message_pack[root] = []
                if f.endswith("eml"):
                    self.message_pack[root].append(f)
        self.process_folders()

    def _build_folder_map(self, path_to_map):
        with open(os.path.join(path_to_map)) as fh:
            for line in fh.readlines():
                s = line.strip().split("\t")
                self.folder_map[s[0]] = s[1]

    def process_folders(self):
        for path, files in self.message_pack.items():
            self.current_relpath = self.get_rel_path(path)
            for f in files:
                if CommonMethods.get_chunksize() != 0 and CommonMethods.get_chunksize() == self.chunks:
                    # Render the folder and reopen
                    self._fldr_render_reopen(path)
                    self.chunks = 0
                self.cur_fn = f
                self.message_generator(os.path.join(path, f))
            self._fldr_render(path)
        self.account.close_account()
        if CommonMethods.get_stitch():
            self.account.stitch_account()

    def message_generator(self, path):
        """
        This is the main method that extracts email messages from an mbox.
        :type path: str
        :param path:
        :return:
        """
        mes = None
        with open(path, 'rb') as fh:
            mes = email.message_from_binary_file(fh)
        try:
            self.logger.info("Processing Message-ID {}".format(mes.get("Message-ID")))
            self._process_message(mes)
            self.total_messages_processed += 1
            self.chunks += 1
        except MemoryError as me:
            # TODO: Write to a file or error log with file_id or message id
            raise MemoryError
        mes = None

    def _transform_buffer(self, buff, path):
        pass

    def _process_message(self, mes):
        if CommonMethods.get_tomes_tool():
            e_msg = DmMessage(self.expand_path_from_map(self.current_relpath), CommonMethods.increment_local_id(), mes,
                              self.cur_fn)
        else:
            e_msg = DmMessage(self.current_relpath, CommonMethods.increment_local_id(), mes,
                              self.cur_fn)
        e_msg.message = None
        self.messages.append(e_msg)

    def expand_path_from_map(self, cur_relpath: str):
        if self.new_dir:
            s = cur_relpath.split(os.path.sep)
            self.expanded_path = self.folder_map[s[-1]]
            self.new_dir = False
        return self.expanded_path

    def get_rel_path(self, path):
        if self.account_directory == path:
            return "."
        common = os.path.commonpath([self.account_directory, path])
        rel = os.path.basename(path)
        start = len(self.account_directory.split(os.path.sep))
        end = len(path.split(os.path.sep))
        group = path.split(os.path.sep)[start:end]
        self.new_dir = True
        return os.path.join('.', os.path.sep.join(group))

    def _set_current_relpath(self, path):
        if path == self.current_folder:
            return True
        elif len(self.messages) > 0:
            self._fldr_render(path)
            self.current_folder = path
        else:
            self.current_folder = path

    def _fldr_render(self, path):
        if len(self.messages) == 0:
            return
        s = self.expanded_path.split(os.path.sep)
        fldr = Folder(self.current_relpath, path)
        if len(s) > 1:
            fldr.name = s[-1]
        fldr.messages = self.messages
        fldr.render()
        self.logger.info('Wrote folder of size {} bytes'.format(fldr.mbox_size))
        self.logger.info('Messages processed: {}'.format(self.total_messages_processed))
        fldr = None
        self.messages = []
        gc.collect()

    def _fldr_render_reopen(self, path):
        self._fldr_render(path)
        self.close_account()
        self.start_account()
        self.chunks = 0
        self.tracking_pos = 0
        gc.collect()

    def _fldr_render_continue(self, path):
        self._fldr_render(path)
        gc.collect()

    def start_account(self):
        self.account.start_account()
        self.account.write_global_id()
        self.new_account = False

    def close_account(self):
        self.account.close_account()
        self.new_account = True
