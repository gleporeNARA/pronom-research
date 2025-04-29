#############################################################
# 2016-09-22: FolderType.py
# Author: Jeremy M. Gibson (State Archives of North Carolina)
#
# Description: Implements the EAXS folder-type complex type
##############################################################
import os
from collections import OrderedDict

from lxml.ElementInclude import etree

from eaxs.MessageType import DmMessage
from xml_help.CommonMethods import CommonMethods


class Folder:
    """"""

    def __init__(self, relpath, mbox_path):
        """Constructor for Folder"""
        if CommonMethods.is_eml_struct():
            self.name = relpath.split(os.path.sep)[-1]
            self.relpath = relpath
        else:
            self.name = mbox_path.split(os.sep)[-2]  # type: str
            self.relpath = relpath
        self.messages = []  # type: list[DmMessage]
        self.folders = []  # type: list[Folder]
        self.mbox_size = os.path.getsize(mbox_path)

    def add_folder(self, name, relpath):
        fold = Folder(name, relpath)
        self.folders.append(fold)

    def get_folder(self, i):
        return self.folders[i]

    def render(self):
        folder = etree.Element("Folder")
        name = etree.SubElement(folder, "Name")
        name.text = self.name
        if len(self.messages) > 0:
            for mes in self.messages:
                """
                :type mes: DmMessage
                """
                try:
                    mes.render(folder)
                except AttributeError as e:
                    pass
        outfile = open(CommonMethods.get_eaxs_filename(), "ab")
        etree.ElementTree(folder).write(outfile, encoding="utf-8", pretty_print=True)
        folder = None

    def render_json(self):
        folders = OrderedDict()
        folders['name'] = self.name
        folders['relpath'] = self.relpath
        folders['messages'] = [x.render_json() for x in self.messages]
        folders['folders'] = [x.render_json() for x in self.folders]
        return OrderedDict({k: v for k, v in folders.items() if v not in CommonMethods.empties})
