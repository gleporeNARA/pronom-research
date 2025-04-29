import datetime
import os
import pkg_resources
import re
import shutil
import sys
import tempfile
import unittest
from xml.etree import cElementTree as ET

import rr


class TestSuite(unittest.TestCase):
    """
    Test parsing results from CoolRunning.
    """
    def setUp(self):

        # This file isn't parseable by ElementTree.
        self.brookline_flag_day = tempfile.NamedTemporaryFile(suffix=".shtml")
        relfile = "data/Sep14_Brookl_set1.shtml"
        filename = pkg_resources.resource_filename(__name__, relfile)
        shutil.copyfile(filename, self.brookline_flag_day.name)

        # Create other fixtures that are easy to clean up later.
        self.membership_file = tempfile.NamedTemporaryFile(suffix=".txt")
        self.racelist_file = tempfile.NamedTemporaryFile(suffix=".txt")
        self.results_file = tempfile.NamedTemporaryFile(suffix=".txt")

    def tearDown(self):
        self.membership_file.close()
        self.racelist_file.close()
        self.results_file.close()

    def populate_membership_file(self, lst=None):
        """
        Put some names into a faux membership file.
        """
        with open(self.membership_file.name, 'w') as fp:
            for name_line in lst:
                fp.write(name_line)

    def populate_racelist_file(self, race_files):
        """
        Put a test race into a racelist file.
        """
        with open(self.racelist_file.name, 'w') as fp:
            for racefile in race_files:
                fp.write(racefile + '\n')
            fp.flush()

    def test_richard_nangle(self):
        """
        Richard Nangle showed up in one race because he lives in Chestnut Hill
        and the membership list has a Richard Hill.
        """
        self.populate_membership_file('Hill,Richard')
        self.populate_racelist_file([self.brookline_flag_day.name])
        sys.argv = [
                '',
                '--verbose', 'critical',
                '--ml', self.membership_file.name,
                '--rl', self.racelist_file.name,
                '-o', self.results_file.name]
        rr.command_line.run_coolrunning()

        with open(self.results_file.name, 'r') as f:
            html = f.read()
            self.assertFalse('Hill' in html)
            self.assertFalse('Richard' in html)

if __name__ == "__main__":
    unittest.main()
