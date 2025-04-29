#############################################################
# 2016-09-22: MboxWalker.py
# Author: Jeremy M. Gibson (State Archives of North Carolina)
#
# Description:
##############################################################
import os
import mailbox
import logging
import re
import email
import gc
import json
from email.message import Message

from eaxs.MessageType import DmMessage
from xml_help.CommonMethods import CommonMethods
from eaxs.Account import Account
from eaxs.FolderType import Folder


class MboxWalker:
    """"""

    def __init__(self, root_level, xml_dir, account_name):
        """Constructor for DirectoryWalker"""
        self.mbx = None  # type: mailbox.mbox
        self.root = root_level
        self.folders = {}
        self.messages = []
        self.current_relpath = None  # type: str
        self.xml_dir = xml_dir
        self.account = Account(account_name, xml_dir)
        self.logger = logging.getLogger("MboxWalker")
        self.total_messages_processed = 0  # type: int
        self.chunks = CommonMethods.get_chunksize()  # type: int
        self.tracking_pos = 0  # type: int
        self.messages_in_folder = 0  # type: int
        self.messages_no_start_fldr = 0  # type: int
        self.message_no_end_flder = 0  # type: int
        self.new_account = True
        self.mboxes = []  # type: list
        self.new_folder = False
        self.mesg_begin = re.compile('^From((\s(\"|.+).+\@)|(\s(\".+\")\s))')
        self.json_folders = []
        if CommonMethods.get_store_json():
            self.json_write = CommonMethods.get_json_directory()

    def _gather_mboxes(self):
        for root, dirs, files in os.walk(self.root, topdown=True):
            if len(files) == 0:
                continue
            for f in files:
                nf = os.path.join(root, f)
                if os.path.getsize(nf) == 0:
                    continue
                self.mboxes.append(nf)

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

    def _fldr_render(self, path):
        fldr = Folder(self.current_relpath, path)
        fldr.messages = self.messages
        fldr.render()
        if CommonMethods.get_store_json():
            fh = open(os.path.join(self.json_write, fldr.name + ".json"), 'w', encoding='utf-8')
            fh.write(',')
            jsn = fldr.render_json()
            json.dump(jsn, fh)
            fh.close()
        self.logger.info('Wrote folder of size {} bytes'.format(fldr.mbox_size))
        self.logger.info('Messages processed: {}'.format(self.total_messages_processed))
        fldr = None
        self.messages = []
        gc.collect()

    def do_walk(self):
        self.start_account()
        for path in self.mboxes:
            self.current_relpath = self.get_rel_path(path)
            self.logger.info('Processing folder found at: {}'.format(path))
            self.new_folder = False
            self.mbx = None
            self.message_generator(path)
            self._fldr_render_continue(path)
        self.close_account()
        if CommonMethods.get_stitch():
            self.account.stitch_account()

    def message_generator(self, path):
        """
        This is the main method that extracts email messages from an mbox.
        :type path: str
        :param path:
        :return:
        """
        b_mark = None
        buff = []

        with open(path, 'rb') as fh:
            # Open the mbox found at path
            while True:
                line = CommonMethods.sanitize(fh.readline())
                if len(line) == 0:
                    # Clunky ass way to find end of file, but whatevs. write the final message and clear
                    # buffer.
                    self._transform_buffer(buff, path)
                    buff = []
                    break
                if re.search(b'^From((\s(\"|.+).+\@)|(\s(\".+\")\s))', line):
                    # Per RFC 
                    if b_mark is None:
                        # Found the beginning of a message
                        # set the beginning bit, and put everything else, until the next 'From ' block,
                        # into a buffer.
                        b_mark = 1
                    else:
                        # Process the buffered message into an email.message.Message object
                        b_mark = None
                        if CommonMethods.get_chunksize() != 0 and CommonMethods.get_chunksize() == self.chunks:
                            # Render the folder and reopen
                            self._fldr_render_reopen(path)
                            self.chunks = 0
                        self._transform_buffer(buff, path, fh.tell())
                        buff = []
                buff.append(line)

    def _transform_buffer(self, buff, path, file_loc):
        try:
            mes = email.message_from_bytes(b''.join(buff))  # type: Message
            if mes.get("Message-ID") == "":
                self.logger.info("Missing Message-ID")
            self.logger.info("Processing Message-ID {} at {}".format(mes.get("Message-ID"), str(file_loc)))
            self._process_message(mes, path)
            self.total_messages_processed += 1
            self.chunks += 1
        except MemoryError:
            self.logger.info("Memory Error: {}".format("Process has run out of memory. Consider chunking or using fewer"
                                                       "chunks."))

    def _process_message(self, mes, path):
        e_msg = DmMessage(self.get_rel_path(path), CommonMethods.increment_local_id(), mes)
        e_msg.message = None
        self.messages.append(e_msg)

    def get_rel_path(self, path):
        if self.root == path:
            return "."
        common = os.path.commonprefix([self.root, path])
        common = path.replace(common, '.')
        return os.path.split(common)[0]

    def start_account(self):
        self.account.start_account()
        self.account.write_global_id()
        self.new_account = False

    def close_account(self):
        self.account.close_account()
        self.new_account = True