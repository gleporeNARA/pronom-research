"""Parse race results.
"""
import csv
import datetime as dt
import http
import http.cookiejar
import logging
import re
import urllib
import xml.dom.minidom
import xml.etree.cElementTree as ET

from lxml import etree


class RaceResults:
    """
    Attributes
    ----------
    start_date, stop_date : datetime.datetime
        date range to restrict race searches
    memb_list:  membership list
    output_file : str
        All race results written to this file
    logger: handles verbosity of program execution.  All is logged to
            standard output.
    cookies : NYRR requires cookies
    html : str
            HTML from downloaded web page
    user_agent:  masquerade as browser because some sites do not like
            "Python-urllib"
    downloaded_url:  URL to a race that has been downloaded.  We link back
            to it in the resulting output.
    """

    def __init__(self, verbose='INFO', membership_list=None,
                 start_date=dt.datetime.now() - dt.timedelta(days=7),
                 stop_date=dt.datetime.now(),
                 output_file=None):
        """
        Parameters
        ----------
        start_date, stop_date : datetime.datetime
            Specifies time range in which to search for race results.
        verbose : str
            Level of verbosity
        """
        self.start_date = start_date
        self.stop_date = stop_date
        self.output_file = output_file

        # Set up a logger for relaying progress back to the user.
        self.logger = logging.getLogger('race_results')
        self.logger.setLevel(getattr(logging, verbose.upper()))

        if membership_list is not None:
            self.load_membership_list(membership_list)

        # This may be overridden by a subclass run time.
        self.downloaded_url = None

        # Not clear if this works or not.
        user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) "
        user_agent += "AppleWebKit/535.19 (KHTML, like Gecko) "
        user_agent += "Chrome/18.0.1025.45 "
        user_agent += "Safari/535.19"
        self.user_agent = user_agent

        self.html = None
        self.cookies = None

        self.first_name_regex = None
        self.last_name_regex = None

    def match_against_membership(self, line):
        """
        We have a line of text from the race file.  Match it against the
        membership list.
        """
        for regex in self.regex:
            if regex.search(line):
                return(True)
        return(False)

    def load_membership_list(self, csv_file):
        """
        Construct regular expressions for each person in the membership list.

        Parameters
        ----------
        membership_list : str
            CSV file of club membership
        """
        regex = []
        for last_name, first_name in self.parse_membership_list(csv_file):
            # Use word boundaries to prevent false positives, e.g. "Ed Ford"
            # does not cause every fricking person from "New Bedford" to
            # match.  Here's an example line to match.
            #   '60 Gene Gugliotta       North Plainfiel,NJ 53 M U '
            # The first and last names must be separated by just white space.
            pattern = ('\\b(?:' + first_name + '|' + last_name + ')'
                       + '\\s+(?:' + last_name + '|' + first_name + ')\\b')

            regex.append(re.compile(pattern, re.IGNORECASE))

        self.regex = regex

    def parse_membership_list(self, csv_file):
        """
        Assume a comma-delimited membership list, last name first,
        followed by the first name.

        Doe,Jane, ...
        Smith,Joe, ...

        Parameters
        ----------
        csv_file : str
            CSV file of membership
        """

        members = []
        with open(csv_file) as fptr:
            mlreader = csv.reader(fptr, delimiter=',')
            for row in mlreader:
                # members.append((lname, fname))
                members.append((row[0], row[1]))

        return members

    def run(self):
        """
        Either download the requested results or go through the
        provided list.
        """
        self.initialize_output_file()
        if self.race_list is None:
            self.compile_web_results()
        else:
            self.compile_local_results()

    def local_tidy(self, local_file=None):
        """
        Tidy up the HTML.
        """
        parser = etree.HTMLParser()
        tree = etree.parse(local_file, parser)
        root = tree.getroot()
        result = etree.tostring(root, pretty_print=True, method="html")
        with open(local_file, 'wb') as fptr:
            fptr.write(result)

    def insert_race_results(self, results):
        """
        Insert HTML-ized results into the output file.
        """
        parser = etree.HTMLParser()
        tree = etree.parse(self.output_file, parser)
        root = tree.getroot()
        body = root.findall('.//body')[0]
        body.append(results)

        result = etree.tostring(root, pretty_print=True, method="html")
        with open(self.output_file, 'wb') as fptr:
            fptr.write(result)
        self.local_tidy(local_file=self.output_file)

    def download_file(self, url, local_file=None, params=None):
        """
        Download a URL to a local file.

        Args
        ----
            url:  The URL to retrieve
            local_file:  Name of the file where we will store the web page.
            params:  POST parameters to supply
        """
        # Store the url in case we need it later.
        self.downloaded_url = url

        # cookie support needed for NYRR results.
        if self.cookies is None:
            self.cookies = http.cookiejar.LWPCookieJar()
        cookie_processor = urllib.request.HTTPCookieProcessor(self.cookies)
        opener = urllib.request.build_opener(cookie_processor)
        urllib.request.install_opener(opener)

        headers = {'User-Agent': self.user_agent}
        req = urllib.request.Request(url, None, headers)
        response = urllib.request.urlopen(req, params)
        html = response.readall()
        try:
            html = html.decode('utf-8')
        except UnicodeDecodeError:
            html = html.decode('latin1')

        if local_file is not None:
            with open(local_file, 'wb') as fptr:
                fptr.write(html.encode())
        else:
            self.html = html

    def construct_source_url_reference(self, source):
        """
        Construct HTML that references the source of the race information.

        Parameters
        ----------
        source : str
            Name for web site from which the information comes, such as
            "CoolRunning" or "Compuscore".
        """
        p = etree.Element('p')
        span = etree.Element('span')
        span.text = 'Complete results '
        p.append(span)
        a = etree.Element('a')
        a.set('href', self.downloaded_url)
        a.text = 'here'
        p.append(a)
        span = etree.Element('span')
        span.text = ' on {0}.'.format(source)
        p.append(span)
        return p

    def compile_race_results(self):
        """
        Go through a single race file and collect results.
        """
        results = []
        for line in self.html.split('\n'):
            if self.match_against_membership(line):
                results.append(line)

        if len(results) > 0:
            results = self.webify_results(results)
            self.insert_race_results(results)

    def compile_local_results(self):
        """Compile results from list of local files.
        """
        with open(self.race_list) as fptr:
            for line in fptr.readlines():
                filename = line.rstrip()
                with open(filename, 'rt') as fptr:
                    self.html = fptr.read()
                self.compile_race_results()

    def initialize_output_file(self):
        """
        Construct a skeleton of the results of parsing race results from
        BestRace.

        <html>
            <head>
                <link href="rr.css" type="text/css" />
            </head>
            <body>
                STUFF TO GO HERE
            </body>
        </html>
        """
        ofile = ET.Element('html')
        head = ET.SubElement(ofile, 'head')
        link = ET.SubElement(head, 'link')
        link.set('rel', 'stylesheet')
        link.set('href', 'rr.css')
        link.set('type', 'text/css')
        ET.SubElement(ofile, 'body')
        ET.ElementTree(ofile).write(self.output_file)
        pretty_print_xml(self.output_file)


def pretty_print_xml(xml_file):
    """
    Taken from StackOverflow
    """
    xml_string = xml.dom.minidom.parse(xml_file)
    pp_string = xml_string.toprettyxml()
    fptr = open(xml_file, 'w')
    fptr.write(pp_string)
    fptr.close()
