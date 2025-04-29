####################################################################################
# 2016-09-21: DarcMailCLI.py
# Author: Jeremy M. Gibson (State Archives of North Carolina)
#
# Description:
#   This is a fork of Carl Schaefer's (Smithsonian Institution Archives)
#   CmdDArcMailXml.py.
####################################################################################
import os
import re
import argparse
import logging
import logging.config
import yaml
import sys
from dir_walker.MboxWalker import MboxWalker
from dir_walker.EmlWalker import EmlWalker
from xml_help.CommonMethods import CommonMethods


class DarcMailCLI(object):
    """Refactor of CmdDArcMailXml GetArgs"""
    XML_WRAP = True
    NO_CHUNK = 0
    NO_LIMIT = 0
    NO_LEVELS = 0
    LEVELS = 1
    LOG_NAME = 'dm_xml.log.txt'

    def __init__(self,
                 is_main=1,
                 base_directory=None,
                 account_directory=None,
                 account_name=None,
                 chunksize=0,
                 stitch=False,
                 from_eml=False,
                 ):
        """Constructor for GetArguments"""
        self.account_directory = account_directory
        self.account_name = account_name
        self.is_main = is_main
        self.folder_name = None
        self.folder_path = None
        self.chunksize = chunksize
        self.stitch = stitch
        self.levels = self.LEVELS
        self.max_internal = self.NO_LIMIT
        self.xml_wrap = self.XML_WRAP
        self.log_name = self.LOG_NAME
        self.data_dir = None
        self.base_dir = base_directory
        self.xml_dir = None
        self.mbox_structure = None
        self.eml_struct = from_eml
        self.mboxes = None
        self.eaxs = None
        self.emls = None
        self.psts = None

        self._initialize()

    def _initialize(self):
        if self.is_main is None:
            self._arg_parse()
        else:
            self._arg_parse()
        self._load_logger()
        self.logger = logging.getLogger("DarcMailCLI")

    def _load_logger(self):
        self.basic_logger_path = os.path.join(os.path.join(self.eaxs, self.account_name), 'basic_logger.yml')
        if not os.path.exists(self.basic_logger_path):
            self._build_basic_logger()

        f = open(self.basic_logger_path, 'r')
        config = yaml.safe_load(f.read())
        logging.config.dictConfig(config)

    def _build_basic_logger(self):
        self.logger_template_path = os.path.join(os.getcwd(), 'logger_template.yml')
        f = open(self.logger_template_path, 'r')
        yml = yaml.safe_load(f)
        f.close()
        yml['handlers']['error_file_handler']['filename'] = os.path.join(self.xml_dir, 'error.log')
        yml['handlers']['info_file_handler']['filename'] = os.path.join(self.xml_dir, 'info.log')
        fh = open(self.basic_logger_path, 'w')
        yaml.dump(yml, fh)
        fh.close()

    def _set_vars(self):
        CommonMethods.set_store_rtf_body(False)
        CommonMethods.init_hash_dict()
        CommonMethods.set_dedupe()
        CommonMethods.set_base_path(self.base_dir)
        self.eaxs = os.path.join(self.base_dir, 'eaxs')
        self.mboxes = os.path.join(self.base_dir, 'mboxes')
        self.emls = os.path.join(self.base_dir, 'emls')
        self.psts = os.path.join(self.base_dir, 'pst')

    def _build_paths(self):
        self._data_dir()

    def _data_dir(self, dir=None):
        if dir:
            base_path = os.path.join(self.eaxs, self.account_name)
            self.data_dir = os.path.normpath(os.path.abspath(os.path.join(base_path, dir)))
            self.xml_dir = os.path.normpath(os.path.abspath(os.path.join(base_path, "eaxs_xml")))

            os.makedirs(self.data_dir)
            os.makedirs(self.xml_dir)
            if CommonMethods.get_store_json():
                self.json_dir = os.path.normpath(os.path.abspath(os.path.join(base_path, "eaxs_json")))
                os.makedirs(self.json_dir)
                CommonMethods.set_json_directory(self.json_dir)

            CommonMethods.set_rel_attachment_dir(os.path.join(os.path.sep,
                                                              os.path.join(os.path.split(base_path)[-1], 'attachments')))
            CommonMethods.set_attachment_dir(self.data_dir)
            CommonMethods.set_xml_dir(self.xml_dir)
        else:
            base_path = os.path.join(self.eaxs, self.account_name)
            CommonMethods.set_base_path(base_path)
            CommonMethods.set_rel_attachment_dir(os.path.join(os.path.sep,
                                                              os.path.join(os.path.split(base_path)[-1], 'attachments')))
            self.data_dir = os.path.normpath(os.path.join(base_path, "data"))
            self.xml_dir = os.path.normpath(os.path.abspath(os.path.join(base_path, "eaxs_xml")))
            try:
                os.makedirs(self.data_dir)
                os.makedirs(self.xml_dir)
            except FileExistsError as e:
                print("An EAXS package for: ({}) already exists.".format(self.account_name))
                raise FileExistsError
            CommonMethods.set_attachment_dir(self.data_dir)
            CommonMethods.set_xml_dir(self.xml_dir)
            if CommonMethods.get_store_json():
                CommonMethods.set_json_directory(self.json_dir)
                os.makedirs(self.json_dir)
                self.json_dir = os.path.normpath(os.path.abspath(os.path.join(base_path, "eaxs_json")))

    def _set_chunksize(self):
        if self.chunksize is not None:
            print("Setting Stitch to True and Chunksize to {}".format(self.chunksize))
            CommonMethods.set_chunk_size(self.chunksize)
            CommonMethods.set_stitch(True)

    def _arg_parse(self):
        parser = argparse.ArgumentParser(description='Convert mbox into XML.')

        parser.add_argument('--account', '-a', dest='account_name', required=True,
                            help='email account name')

        parser.add_argument('--directory', '-d', dest='account_directory',
                            help='directory to hold all files for this account')

        parser.add_argument('--chunk', '-c', dest='chunk',
                            default=self.NO_CHUNK,
                            help='An approximate number of messages to put in one output XML file. '
                                 'NOTE: This this will be approximate because '
                                 'DarcMailCLI maintains the integrity of the Folder. A chunk test is made after a '
                                 'folder is processed. If the total number of processed messages is below the chunk '
                                 'size, the next folder will be added to the current XML file.  If it exceeds '
                                 'the chunk limit the a new file will be opened. Each file will have the '
                                 'starting LocalID as part of the filename.  default = no limit or all messages '
                                 'in one file.')

        parser.add_argument('--no_subdirectories', '-n', dest='no_subdirectories', action='store_true',
                            help='do NOT make subdirectories to hold external content'
                                 '(default = make subdirectories)')

        parser.add_argument('--data-dir', '-dd', dest='data_dir', type=str, default='attachments',
                            help='path to store the account attachments. DEFAULT: "attachments"')

        parser.add_argument('--from-eml', '-fe', dest='from_eml', help='The destination is a series of emls',
                            action='store_true')

        parser.add_argument('--stitch', '-st', dest='stitch', action='store_true',
                            help='Stitch can only be used in conjunction with the --chunk switch. The purpose is to '
                                 'reduce memory load.  If you find that DarcMailCLI is crashing on your email accounts'
                                 'due to memory errors, but you still want to have a single EAXS file, then chunk the '
                                 'process, which clears memory faster, and stitch will rebuild a single file at the end'
                                 'of the process')
        parser.add_argument('--tomes_tool', '-tt', dest='tomes_tool', action='store_true',
                            help='Indicates that the source tree is built from the Dockerized pst_extractor.')

        args = parser.parse_args()
        argdict = vars(args)
        for k, v in argdict.items():
            print("{}:{}".format(k, v))

        CommonMethods.set_base_path(CommonMethods.get_process_paths())

        self.account_name = argdict['account_name'].strip()
        self.account_directory = os.path.join(CommonMethods.get_base_path(), 'mboxes')
        if argdict['account_directory']:
            self.account_directory = os.path.normpath(os.path.abspath(argdict['account_directory'].strip()))


        # Initialize common features and common attributes

        CommonMethods.set_store_rtf_body(False)
        CommonMethods.init_hash_dict()
        CommonMethods.set_dedupe()

        self.eaxs = os.path.join(CommonMethods.get_base_path(), 'eaxs')
        self.mboxes = os.path.join(CommonMethods.get_base_path(), 'eaxs')
        self.emls = os.path.join(CommonMethods.get_base_path(), 'emls')
        self.psts = os.path.join(CommonMethods.get_base_path(), 'pst')

        if argdict['from_eml']:
            self.eml_struct = True

        CommonMethods.set_from_tomes(False)
        if argdict['tomes_tool']:
            CommonMethods.set_from_tomes(True)

        #TODO: Remove this maybe
        if 'max_internal' in argdict.keys():
            self.max_internal = int(argdict['max_internal'])

        if argdict['no_subdirectories']:
            self.levels = self.NO_LEVELS

        if argdict['data_dir']:
            self._data_dir(argdict['data_dir'])
        else:
            self._data_dir()

        if argdict['chunk']:
            self.chunksize = argdict['chunk']
            CommonMethods.set_chunk_size(1000)
            CommonMethods.set_stitch(argdict['stitch'])

    def validate(self):
        # TODO: Determine what constitutes a valid structure and what does not.  This basically follows assumptions made
        # TODO: by the original DarcMail, many of which are no longer valid in this context.
        vs = ValidateStructure(self)
        vs.validate()
        self.mbox_structure = vs.structure
        return vs.is_valid

    def convert(self):
        '''
        Runs the whole #!
        :return:
        '''
        wlk = MboxWalker(self.account_directory, self.xml_dir, self.account_name)
        wlk._gather_mboxes()
        wlk.do_walk()


class ValidateStructure(object):
    """
     This class is to validate the structure of the mbox hierarchy. Takes a DarcMailCLI object
    """

    def __init__(self, darcmail):
        """Constructor for ValidateStructure
        @type darcmail : DarcMailCLI
        """
        self.darcmail = darcmail
        self.logger = darcmail.logger
        self.folder_name = darcmail.folder_name
        self.folder_path = darcmail.folder_path
        self.account_directory = darcmail.account_directory
        self.structure = None
        self.is_valid = True

    def validate(self):
        """validate: The co-ordinating function. """
        mbox_inventory = []
        if not self.check_account_directory(self.account_directory):
            self.is_valid = False
            return

        self.find_mbox_files(mbox_inventory, self.account_directory)

        if not self.check_folder(mbox_inventory, self.folder_name):
            self.is_valid = False
            return

        if self.folder_name:
            hit = False
            for (fname, mname, dir) in mbox_inventory:
                if self.folder_name == fname:
                    hit = True
                    self.folder_path = os.path.join(dir, mname)
            if not hit:
                # should never get here; was already checked
                self.logger.info('no mbox file {}.mbox under account_directory'.format(self.folder_name))
        self.structure = mbox_inventory

    def check_account_directory(self, dir_path):
        if not os.path.exists(dir_path):
            self.logger.info('account directory {} does not exist'.format(dir_path))
            return False
        if not os.path.isdir(dir_path):
            self.logger.info('{}  is not a directory'.format(dir_path))
            return False
        return True

    def find_mbox_files(self, folder_data, parent):
        for f in os.listdir(parent):
            child = os.path.join(parent, f)
            if os.path.isdir(child):
                self.find_mbox_files(folder_data, child)
            else:
                m = re.match('.*\.mbox$', f)
                if re.match('mbox', f):
                    # This is a readpst mbox structure test to see if it's a placeholder
                    if f.__sizeof__() == 0:
                        self.find_mbox_files(folder_data, child)
                    else:
                        ##  Jeremy M. Gibson (State Archives of North Carolina)
                        ##  2016-06-16 added this section for readpst compatibility
                        head, tail = os.path.split(parent)
                        folder_name = tail
                        folder_mbox = os.path.basename(child)
                        folder_dir = os.path.dirname(child)
                        folder_data.append((folder_name, folder_mbox, folder_dir))
                if m:
                    folder_name = re.sub('\.mbox$', '', f)
                    folder_mbox = os.path.basename(child)
                    folder_dir = os.path.dirname(child)
                    folder_data.append((folder_name, folder_mbox, folder_dir))

    def check_folder(self, mbox_inventory, folder):
        if len(mbox_inventory) == 0:
            self.logger.info('There are no .mbox files located under the account directory')
            return False
        folder_count = {}
        for (folder_name, mbox_name, path) in mbox_inventory:
            if folder_name in folder_count.keys():
                folder_count[folder_name] = folder_count[folder_name] + 1
            else:
                folder_count[folder_name] = 1
        multiple = 0
        duplicate_folders = []
        for folder_name in folder_count.keys():
            if folder_count[folder_name] > 1:
                multiple += 1
                # Jeremy M. Gibson (State Archives of North Carolina)
                # 2016-07-12 find the index of the duplicate folders and store as a list of lists
                duplicate_folders.append([i for i, v in enumerate(mbox_inventory) if v[0] == folder_name])
                self.logger.info('There are {} folders named {} under the account directory'
                                 .format(str(folder_count[folder_name]), folder_name))
        if multiple:
            # Jeremy M. Gibson (State Archives of North Carolina)
            # 2016-07-12 Rename the duplicate .mbox's to make them unique
            # Pattern is [<filename>.mbox, <filename>_001.mbox, <filename>_002.mbox]
            self.rename_dups(duplicate_folders, mbox_inventory)
            return True
        elif folder and folder not in folder_count.keys():
            self.logger.info('File {}.mbox cannot be found under the account directory'.format(folder))
            return False
        return True

    def rename_dups(self, duplicate_list, inventory):
        """ Automatically rename duplicate folders
        # Jeremy M. Gibson (State Archives of North Carolina)
        # 2016-07-12 Rename the duplicate .mbox's to make them unique

        @type duplicate_list: list
        @type inventory: list
        """
        for l in duplicate_list:
            # remove first item from the list
            i = l.pop(0)
            ind = 1
            for fldr in l:
                tup = inventory[fldr]
                original = os.path.join(tup[2], tup[1])
                renamed = os.path.join(tup[2], "{}_{:03d}{}".format(tup[0], ind,'.mbox'))
                renamed_mbox = "{}_{:03d}{}".format(tup[0], ind,'.mbox')
                renamed_fldr = "{}_{:03d}".format(tup[0], ind)
                inventory[fldr] = (renamed_fldr, renamed_mbox, tup[2])
                os.rename(original, renamed)
                ind += 1


class BuildEmlDarcmail(object):
    def __init__(self, darcmail):
        self.logger = logging.getLogger("Main_Eml")
        self.account_directory = darcmail.account_directory
        self.account_name = darcmail.account_name
        self.xml_dir = darcmail.xml_dir
        emwalk = EmlWalker(self.account_directory, self.xml_dir, self.account_name)
        self.logger.info("XML dir is {}".format(self.xml_dir))
        self.logger.info("Processing {} \n to {}".format(self.account_directory, self.xml_dir))
        emwalk.do_walk()


if __name__ == "__main__":
    CommonMethods.set_devel(False)
    dmcli = DarcMailCLI()

    if dmcli.eml_struct:
        CommonMethods.set_package_type(CommonMethods.PACK_TYPE_EML)
        beml = BuildEmlDarcmail(dmcli)
        exit()

    CommonMethods.set_package_type(CommonMethods.PACK_TYPE_MBOX)
    if dmcli.validate():
        dmcli.convert()

    else:
        print("Invalid Folder Structure")