import datetime
import os
import tempfile
import unittest

import rr

@unittest.skip('blah')
class TestLMSports(unittest.TestCase):

    def setUp(self):
        self.membership_list = ['DOUGHERTY,FRANK\n', 'PAGANO,TIM\n']
        self.results_file = tempfile.NamedTemporaryFile(suffix=".txt")
        self.membership_file = tempfile.NamedTemporaryFile(suffix=".txt")

    def tearDown(self):
        self.membership_file.close()
        self.results_file.close()

    def populate_membership_file(self, membership_list):
        """
        Put some names into a faux membership file.
        """
        with open(self.membership_file.name, 'w') as fp:
            fp.writelines(membership_list)
            fp.flush()

    def test_web_download(self):
        """
        Verify that we can get results from the web.
        """
        self.populate_membership_file(self.membership_list)
        start_date = datetime.date(2013, 11, 16)
        stop_date = datetime.date(2013, 11, 16)
        o = rr.LMSports(verbose='critical',
                        output_file=self.results_file.name,
                        memb_list=self.membership_file.name,
                        start_date=start_date,
                        stop_date=stop_date)
        o.run()

        with open(self.results_file.name, 'r') as f:
            html = f.read()
            self.assertTrue("FRANK DOUGHERTY" in html)


if __name__ == "__main__":
    unittest.main()

