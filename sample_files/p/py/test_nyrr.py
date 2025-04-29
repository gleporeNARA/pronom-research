import datetime
import os
import sys
import tempfile
import unittest

import rr


class TestNYRR(unittest.TestCase):

    def setUp(self):
        self.results_file = tempfile.NamedTemporaryFile(suffix=".txt")

    def tearDown(self):
        pass

    def test_web_download(self):
        """
        Verify that we can get results from the web.
        """
        start_date = datetime.date(2012, 12, 14)
        stop_date = datetime.date(2012, 12, 15)
        sys.argv = [
                '',
                '--verbose', 'critical',
                '-o', self.results_file.name,
                '-y', '2012',
                '-m', '12',
                '-d', '12', '15']
        rr.command_line.run_nyrr()

        with open(self.results_file.name, 'r') as f:
            html = f.read()
            self.assertTrue("Petit" in html)
            self.assertTrue("Ron" in html)


if __name__ == "__main__":
    unittest.main()
