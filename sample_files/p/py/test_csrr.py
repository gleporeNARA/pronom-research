import datetime
import os
import pkg_resources
import re
import shutil
import sys
import tempfile
import unittest
import warnings

import rr


class TestCompuscore(unittest.TestCase):
    """
    Test parsing results from Compuscore.
    """
    def setUp(self):

        # Make test data files into fixtures.  We need to do it before
        # changing directories.
        self.redcross_file = tempfile.NamedTemporaryFile(suffix=".htm")
        relfile = "test/testdata/redcross.htm"
        filename = pkg_resources.resource_filename(rr.__name__, relfile)
        shutil.copyfile(filename, self.redcross_file.name)

        self.xc_file = tempfile.NamedTemporaryFile(suffix=".htm")
        relfile = "test/testdata/joxc.htm"
        filename = pkg_resources.resource_filename(rr.__name__, relfile)
        shutil.copyfile(filename, self.xc_file.name)

        # Write test version of the membership file.
        self.membership_file = tempfile.NamedTemporaryFile(suffix=".txt")

        # We need a file to use for a list of race files.
        self.racelist_file = tempfile.NamedTemporaryFile(suffix=".txt")

        # We need a file to use for writing race results.
        self.results_file = tempfile.NamedTemporaryFile(suffix=".txt")

        # Generic membership list
        self.membership_list = ['FITZGERALD,ROBERT\n', 'STEVENS,JOANNA\n']
        self.joxc_membership_list = ['FOSTER,BILLY\n', 'FOSTER,JAIME\n']

    def tearDown(self):
        self.membership_file.close()
        self.racelist_file.close()
        self.redcross_file.close()
        self.xc_file.close()
        self.results_file.close()

    def populate_racelist_file(self, race_files):
        """
        Put test races into a racelist file.
        """
        with open(self.racelist_file.name, 'w') as fp:
            for race_file in race_files:
                fp.write(race_file)
            fp.flush()

    def populate_membership_file(self, membership_list):
        """
        Put some names into a faux membership file.
        """
        with open(self.membership_file.name, 'w') as fp:
            fp.writelines(membership_list)
            fp.flush()

    @unittest.skip('blah')
    def test_racelist(self):
        """
        Verify that we can correctly parse race results when given a list of
        race files.
        """
        self.populate_membership_file(self.membership_list)
        self.populate_racelist_file([self.redcross_file.name])
        sys.argv = [
                '',
                '--verbose', 'critical',
                '--ml', self.membership_file.name,
                '-y', str(datetime.datetime.now().year),
                '-m', str(datetime.datetime.now().month),
                '-d', str(datetime.datetime.now().day), 
                str(datetime.datetime.now().day)]
        rr.command_line.run_compuscore()

        with open(self.results_file.name, 'r') as f:
            html = f.read()
            self.assertTrue("Robert Fitzgerald" in html)

    def test_consecutive_newlines(self):
        """
        Verify that we don't get two consecutive newlines in the
        race results, which makes them look bad.

        See Issue 33
        """
        self.populate_membership_file(self.membership_list)
        self.populate_racelist_file([self.redcross_file.name])
        sys.argv = [
                '',
                '--verbose', 'critical',
                '--ml', self.membership_file.name,
                '--rl', self.racelist_file.name]
        rr.command_line.run_compuscore()

        with open(self.results_file.name, 'r') as f:
            html = f.read()
            self.assertTrue("Robert Fitzgerald" in html)
            # There should not be a single case of \n\n.
            self.assertEqual(html.find('\n\n'), -1)

    @unittest.skip("Must await CompuScore refactoring.")
    def test_xcountry_banner(self):
        """
        Verify that our output file has the correct banner.  The race file is
        produced by USATF-NJ Junior Olympics.
        """
        self.populate_membership_file(self.joxc_membership_list)
        self.populate_racelist_file([self.xc_file])
        obj = rr.CompuScore(verbose='critical',
                            memb_list=self.membership_file,
                            race_list=self.racelist_file,
                            output_file=self.results_file)
        obj.run()
        tree = ET.parse(self.results_file)
        root = tree.getroot()

        # The organization of the race result should be
        #
        # <body>
        #   <div>
        #     <hr/>
        #     <h1> blah </h1>
        #     <p class="provenance>  </p>
        #     <div class="banner>  </div>
        #     <pre class="actual_results>  </pre>
        #   </div>
        # </body>
        #
        root = obj.remove_namespace(root)
        div = root.findall('.//div/div')
        self.assertEqual(len(div), 1)
        self.assertEqual(div[0].get('class'), 'banner')

    def test_web_download(self):
        """
        Verify that we can get results from the web.
        """
        self.populate_membership_file(self.membership_list)
        sys.argv = [
                '',
                '--verbose', 'critical',
                '-y', '2012',
                '-m', '1',
                '-d', '1', '28',
                '--ml', self.membership_file.name,
                '-o', self.results_file.name]
        rr.command_line.run_compuscore()

        with open(self.results_file.name, 'r') as f:
            html = f.read()
            self.assertTrue("Joanna Stevens" in html)

    def test_empty_results_because_of_date(self):
        """
        Verify that if there are no results in the given date range, the output
        file will have no results.

        This is issue 15.

        Billy Foster is in results for the 1st, in the CJRRC Hangover 5K Run.
        """
        self.populate_membership_file(['FOSTER,BILLY\n'])
        sys.argv = [
                '',
                '-y', '2013',
                '-m', '1',
                '-d', '1', '2',
                '--ml', self.membership_file.name,
                '-o', self.results_file.name]

        # "no results" means that the body of the output file is empty.
        with open(self.results_file.name, 'r') as f:
            html = f.read()
            regex = re.compile(r"""(<body>\s*</body> | <body/>)""", re.VERBOSE)
            self.assertRegex(html, regex)
