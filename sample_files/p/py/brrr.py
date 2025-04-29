"""
Module for BestRace.
"""
import logging
import re
import urllib

from lxml import etree

from .common import RaceResults


class BestRace(RaceResults):
    """
    Process races found on BestRace.com.

    Attributes
    ----------
    start_date, stop_date:  datetime.datetime
        date range to restrict race searches
    memb_list:  membership list
    race_list:  file containing list of races
    output_file:  str
        final race results file
    logger: handles verbosity of program execution
    downloaded_url:  If a race retrieved from a URL has results for anyone
            in the membership list, then we want to record that URL in the
            output.
    """

    def __init__(self, verbose='INFO', membership_list=None, output_file=None,
                 **kwargs):
        """
        Parameters
        ----------
        membership_list : str
            CSV membership list
        verbose : str
            Level of verbosity
        output_file : str
            All race results written to this file
        """
        RaceResults.__init__(self, verbose=verbose,
                             membership_list=membership_list,
                             output_file=output_file)
        self.__dict__.update(**kwargs)

    def compile_web_results(self):
        """
        Download the requested results and compile them.
        """
        self.download_master_file()
        self.process_master_file()

    def process_master_file(self):
        """
        Compile results for the specified state.
        """
        pattern = 'http://www.bestrace.com/results/{}/{}{}'
        pattern = pattern.format(self.start_date.strftime('%y'),
                                 self.start_date.strftime('%y'),
                                 self.start_date.strftime('%m'))

        day_range = '('
        for day in range(self.start_date.day, self.stop_date.day):
            day_range += "%02d|" % day
        day_range += '%02d)' % self.stop_date.day

        pattern += day_range

        pattern += r"\w+\.HTM"
        self.logger.debug('pattern is "%s"' % pattern)

        matchiter = re.finditer(pattern, self.html)
        urls = [matchobj.group() for matchobj in matchiter]

        for url in urls:
            self.logger.info('Downloading %s...' % url)
            try:
                self.download_race(url)
            except urllib.error.HTTPError as e:
                print(e)
                print("Going on to next race...")
                continue
            self.compile_race_results()

    def webify_results(self, results_lst):
        """
        Take the list of results and turn it into output HTML.
        """
        div = etree.Element('div')
        div.set('class', 'race')
        hr_elt = etree.Element('hr')
        hr_elt.set('class', 'race_header')
        div.append(hr_elt)

        # Get the title, but don't bother with the date information.
        # <title>  Purple Stride 5K     - November 10, 2013   </title>
        regex = re.compile(r"""<title>\s*
                               (?P<the_title>.*)-\s+
                               \w*\s\d+,\s+\d\d\d\d\s*
                               </title>""", re.VERBOSE | re.IGNORECASE)
        matchobj = regex.search(self.html)
        if matchobj is None:
            raise RuntimeError("Could not find the title.")

        h1_elt = etree.Element('h1')
        h1_elt.text = matchobj.group('the_title')
        div.append(h1_elt)

        # Append the URL if possible.
        if self.downloaded_url is not None:
            div.append(self.construct_source_url_reference('BestRace'))

        pre = etree.Element('pre')
        pre.set('class', 'actual_results')

        # Parse out the banner.
        regex = re.compile(r"""<b>
                               (?P<mixed_content_1>[^<>]*)
                               <u>(?P<mixed_content_2>[^<>]*)</u>
                               </b>""",
                           re.VERBOSE | re.IGNORECASE)
        matchobj = regex.search(self.html)
        if matchobj is None:
            raise RuntimeError("Could not parse out the banner.")

        # Construct the banner as mixed content XML.  Difficult to do this
        # any other way and still get this to look right.
        text = '<pre class="actual_results">\n'
        text += matchobj.group()
        text += '\n' + '\n'.join(results_lst)
        text += '</pre>'

        # Replace any singleton ampersand.
        text = text.replace(' & ', ' and ')
        pre = etree.fromstring(text)

        div.append(pre)

        return div

    def download_master_file(self):
        """Download results for the specified state.

        The URL will have the pattern

        http://www.bestrace.com/YYYYschedule.shtml

        """
        fmt = 'http://www.bestrace.com/%sschedule.html'
        url = fmt % self.start_date.strftime('%Y')
        self.logger.info('Downloading %s.' % url)
        self.download_file(url)

    def download_race(self, url):
        """
        Download a race URL to a local file.
        """
        name = url.split('/')[-1]
        self.logger.info('Downloading %s...' % name)
        self.download_file(url)
        self.downloaded_url = url
