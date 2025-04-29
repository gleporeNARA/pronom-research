"""
Module for compiling NYRR race resuts.
"""

import datetime
import logging
import re
import urllib.request
import warnings

from lxml import etree

from .common import RaceResults


class NewYorkRR(RaceResults):
    """
    Handles race results from New York Road Runners website.
    """
    def __init__(self, membership_list=None, verbose='INFO',
                 output_file=None, **kwargs):
        """
        Parameters
        ----------
        membership_list : str
            CSV membership list
        verbose : str
            How much verbosity.
        """
        RaceResults.__init__(self, membership_list=membership_list,
                             output_file=output_file, verbose=verbose)
        self.__dict__.update(**kwargs)

        # Need to remember the current URL.
        self.downloaded_url = None

        self.cookie_jar = None

        # This URL is used in a regular expression that teases out the URLs
        # for all of the results.
        self.result_url_base = "http://web2.nyrrc.org/cgi-bin/start.cgi/"
        self.result_url_base += "aes-programs/results/startup.html"

    def run(self):
        """
        This page has the URLs for the recent results.
        """
        self.initialize_output_file()

        url = 'http://web2.nyrrc.org'
        url += '/cgi-bin/start.cgi/aes-programs/results/resultsarchive.htm'

        local_file = 'resultsarchive.html'
        self.download_file(url, local_file)

        # There are two forms used for searches.  The one that we want (list
        # all the results for an entire year) is the 2nd on that this regex
        # retrieves.
        with open(local_file) as fptr:
            html = fptr.read()
        regex = re.compile(r"""<form
                               \s+name="(?P<name>\w+)"
                               \s+method=post
                               \s+action=(?P<action>\S+)
                               .*\s""", re.VERBOSE)
        lst = regex.findall(html)
        if len(lst) != 2:
            msg = "resultsarchive did not yield right number of results."
            raise RuntimeError(msg)
        url = lst[0][1]

        # The page for POSTing the search needs POST params.
        post_params = {}
        post_params['NYRRYEAR'] = str(self.start_date.year)
        post_params['AESTIVACVNLIST'] = 'NYRRYEAR'
        data = urllib.parse.urlencode(post_params)
        data = data.encode()

        # Download the race list page for the specified year
        local_file = 'nyrrraces.html'
        self.download_file(url, local_file, data)

        # This is not valid HTML.  Need to get rid of some bad FORMs,
        # none of which are needed.
        with open(local_file, 'r', encoding='utf-8') as fptr:
            html = fptr.read()
        html = html.replace('form', 'div')
        with open(local_file, 'w') as fptr:
            fptr.write(html)

        self.local_tidy(local_file)

        # Parse out the list of races.  They are all in a
        # particular table.
        with open(local_file, 'r') as fptr:
            markup = fptr.read()

        pattern = r"""<a\shref="(?P<url>{0}         # This part too long
                      \?result.id=
                      (?P<result_id>[0-9a-z]*)&amp; # Unique for each result.
                      result.year=\d\d\d\d)">       # End of URL
                      (?P<race_name>.*?)            # Name of the race.
                      </a>\s*                       # End of anchor.
                      (?P<month>\d\d)/
                      (?P<day>\d\d)/
                      (?P<year>\d\d)"""             # Race date.
        pattern = pattern.format(self.result_url_base)
        regex = re.compile(pattern, re.VERBOSE | re.DOTALL)
        for matchobj in regex.finditer(markup):

            url = matchobj.group('url')
            url = re.sub('&amp;', '&', url)

            # Get rid of leading and trailing white space in the race name.
            race_name = matchobj.group('race_name')
            race_name = re.sub(r'^\s*', '', race_name)
            race_name = re.sub(r'\s*$', '', race_name)

            race_date = datetime.date(int(matchobj.group('year')) + 2000,
                                      int(matchobj.group('month')),
                                      int(matchobj.group('day')))

            if self.start_date <= race_date and race_date <= self.stop_date:
                self.logger.info("Keeping {0}".format(race_name))
                self.process_event(url)
            else:
                self.logger.info("Skipping %s" % race_name)

    def process_event(self, url):
        """We have the URL of a single event.  The URL does not lead to the
        results, however, it leads to a search page.
        """
        local_file = 'event_search.html'
        self.download_file(url, local_file)

        try:
            with open(local_file, 'r', encoding='utf-8') as fptr:
                markup = fptr.read()
        except UnicodeDecodeError:
            with open(local_file, 'r', encoding='latin1') as fptr:
                markup = fptr.read()

        # There should be a single form.
        regex = re.compile(r"""<form\s*
                               method=post\s*
                               action=(?P<action>.*?)\s*
                               >""", re.VERBOSE | re.DOTALL)
        matchobj = regex.search(markup)
        if matchobj is None:
            warnings.warn("Unable to match the expected form.")
        url = matchobj.group('action')

        # The page for POSTing the search needs POST params.
        # Provide all the search parameters for this race.  This includes, most
        # importantly, the team code, i.e. RARI for Raritan Valley Road
        # Runners.
        post_params = {}
        post_params['search.method'] = 'search.team'
        post_params['input.lname'] = ''
        post_params['input.fname'] = ''
        post_params['input.bib'] = ''
        post_params['overalltype'] = 'All'
        post_params['input.agegroup.m'] = '12 to 19'
        post_params['input.agegroup.f'] = '12 to 19'
        post_params['teamgender'] = ''
        post_params['team_code'] = self.team
        post_params['items.display'] = '500'
        post_params['AESTIVACVNLIST'] = 'overalltype,input.agegroup.m,'
        post_params['AESTIVACVNLIST'] += 'input.agegroup.f,teamgender'
        post_params['AESTIVACVNLIST'] += 'team_code'
        data = urllib.parse.urlencode(post_params)
        data = data.encode()

        local_file = 'nyrrresult.html'
        self.download_file(url, local_file, data)
        self.local_tidy(local_file)

        # If there were no results for the specified team, then the html will
        # contain some red text to the effect of "Your search returns no
        # match."
        with open(local_file, 'r', encoding='utf-8') as fptr:
            html = fptr.read()
        if re.search("Your search returns no match.", html) is not None:
            return

        # So now we have a result.  Parse it for the result table.
        parser = etree.HTMLParser()
        tree = etree.parse(local_file, parser)
        root = tree.getroot()

        # 3rd table is the one we want.
        pattern = './/table'
        tables = root.findall(pattern)

        if len(tables) < 3:
            return

        div = self.webify_results(tables)
        self.insert_race_results(div)

    def webify_results(self, tables):
        """Turn the results into the output form that we want.
        """

        # maybe abstract this into a webify function.
        div = etree.Element('div')
        div.set('class', 'race')
        hr = etree.Element('hr')
        hr.set('class', 'race_header')
        div.append(hr)

        # Append the race metadata.
        tds = tables[1].findall('.//td')
        td = tds[2]
        race_meta = etree.Element('div')

        # race name
        h1 = etree.Element('h1')
        elts = td.findall('.//span')
        h1.text = elts[0].text
        race_meta.append(h1)
        race_meta.append(etree.Element('br'))

        # list by team
        race_meta.append(elts[1])
        race_meta.append(etree.Element('br'))

        # distance, race time, location
        race_meta.append(elts[2])
        div.append(race_meta)

        # Append the URL from whence we came..
        pdiv = etree.Element('div')
        pdiv.set('class', 'provenance')
        span = etree.Element('span')
        span.text = 'Results courtesy of '
        pdiv.append(span)
        anchor = etree.Element('a')
        anchor.set('href', 'http://www.nyrr.org')
        anchor.text = 'New York Road Runners'
        pdiv.append(anchor)
        span = etree.Element('span')
        span.text = '.'
        pdiv.append(span)
        div.append(pdiv)

        # The table we want is the 3rd one.  We need
        # to sanitize it, though.
        table = self.sanitize_table(tables[3])
        div.append(table)
        return div

    def sanitize_table(self, old_table):
        """The table as-is has a few links that we need to remove.
        """
        new_table = etree.Element('table')
        new_table.set('cellpadding', '3')
        new_table.set('cellspacing', '0')
        new_table.set('border', '1')

        new_tr = etree.Element('tr')
        new_tr.set('bgcolor', '#EEEEEE')

        trs = old_table.getchildren()
        tr = trs[0]
        old_tds = tr.getchildren()

        # 1st two TD elements need to be replaced.
        td = etree.Element('td')
        td.text = old_tds[1].getchildren()[0].text
        new_tr.append(td)

        # 1st two TD elements need to be replaced.
        td = etree.Element('td')
        td.text = old_tds[2].getchildren()[0].text
        new_tr.append(td)

        # Append the rest of the TD elements in the first row.
        for td in old_tds[3:]:
            new_tr.append(td)
        new_table.append(new_tr)

        # And append the race results as-is.
        for tr in trs[1:]:
            new_table.append(tr)

        return(new_table)
