import datetime
import os
import pkg_resources
import tempfile
import time
import unittest

#from rr import Active


@unittest.skip("active not supported at the moment")
class TestActive(unittest.TestCase):
    """
    Test parsing results from Active.
    """
    def setUp(self):
        self.membership_file = tempfile.NamedTemporaryFile(suffix=".txt")
        self.racelist_file = tempfile.NamedTemporaryFile(suffix=".txt")
        self.results_file = tempfile.NamedTemporaryFile(suffix=".html")

    def tearDown(self):
        self.membership_file.close()
        self.racelist_file.close()
        self.results_file.close()

    def populate_membership_file(self, membership_list):
        """
        Put some names into a faux membership file.
        """
        with open(self.membership_file.name, 'w') as fp:
            fp.writelines(membership_list)
            fp.flush()

    def test_web_csv_download(self):
        """
        Verify that we can get CSV results from the web.
        """
        self.populate_membership_file(['KENNEDY,JASON'])
        start_date = datetime.date(2013, 1, 6)
        stop_date = datetime.date(2013, 1, 6)
        o = Active(verbose='critical',
                   output_file=self.results_file.name,
                   location="New Brunswick, NJ",
                   radius="100",
                   memb_list=self.membership_file.name,
                   start_date=start_date,
                   stop_date=stop_date)
        o.run()

        with open(self.results_file.name, 'r') as f:
            html = f.read()
            self.assertTrue("Jason Kennedy" in html)

    def test_raw_file_download(self):
        """
        Verify that we get results that are embedded raw.
        """
        self.populate_membership_file(['HIMBERGER,PAUL'])
        start_date = datetime.date(2012, 12, 2)
        stop_date = datetime.date(2012, 12, 2)
        o = Active(verbose='critical',
                   output_file=self.results_file.name,
                   memb_list=self.membership_file.name,
                   location="Boston, MA",
                   radius="100",
                   start_date=start_date,
                   stop_date=stop_date)
        o.run()

        with open(self.results_file.name, 'r') as f:
            html = f.read()
            self.assertTrue("PAUL HIMBERGER" in html)


if __name__ == "__main__":
    unittest.main()
