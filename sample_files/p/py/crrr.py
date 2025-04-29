"""
Backend class for handling CoolRunning race results.
"""

import logging
import re
import tempfile
import warnings

import lxml
from lxml import etree

from .common import RaceResults


class CoolRunning(RaceResults):
    """
    Class for handling CoolRunning Race Results.

    Attributes
    ----------
    author : str
        Identifier for the authority or racing company that produced the
        results.
    """
    def __init__(self, verbose='INFO', states=None,
                 membership_list=None, output_file=None, **kwargs):
        """
        Parameters
        ----------
        base_url:
        memb_list:  membership list
        race_list:  file containing list of races
        output_file:  final race results file
        verbose : str
            Level of verbosity
        """
        RaceResults.__init__(self, verbose=verbose,
                             membership_list=membership_list,
                             output_file=output_file)
        self.__dict__.update(**kwargs)

        if states is None:
            states = ['ma']
        self.states = states

        self.base_url = 'http://www.coolrunning.com'

        self.author = None

    def compile_web_results(self):
        """
        Download the requested results and compile them.
        """
        for state in self.states:
            self.download_state_master_file(state)
            self.process_state_master_file(state)

    def construct_state_match_pattern(self, state):
        """
        Want to match strings like

        http://www.coolrunning.com/results/07/ma/Jan16_Coloni_set1.shtml

        So we construct a regular expression to match against
        all the dates in the specified range.
        """
        pattern = '/results/'
        pattern += self.start_date.strftime('%y')
        pattern += '/'
        pattern += state
        pattern += '/'
        pattern += self.start_date.strftime('%b')

        # continue with a regexp to match any of the days in the range.
        # It's a non-capturing group.
        day_range = '(?:'
        for day in range(self.start_date.day, self.stop_date.day):
            day_range += "%d_|" % day
        day_range += '%d_)' % self.stop_date.day

        pattern += day_range

        pattern += '.*shtml'
        self.logger.debug('Match pattern is %s' % pattern)
        regex = re.compile(pattern)
        return regex

    def process_state_master_file(self, state):
        """
        Compile results for the specified state.
        We assume that we have the state file stored locally.
        """
        local_state_file = state + '.shtml'
        regex = self.construct_state_match_pattern(state)

        with open(local_state_file, 'r') as fptr:
            markup = fptr.read()

        relative_urls = regex.findall(markup)

        for relative_url in relative_urls:

            top_level_url = 'http://www.coolrunning.com' + relative_url
            race_file = top_level_url.split('/')[-1]
            self.logger.info(top_level_url)
            self.download_file(top_level_url)
            self.compile_race_results()

            # Now collect any secondary result files.
            markup = self.html

            # construct the secondary pattern.  If the race name is something
            # like "TheRaceSet1.shtml", then the secondary races will be
            # "TheRaceSet[2345].shmtl" etc.
            parts = race_file.split('.')
            base = parts[-2][0:-1]
            pat = r'<a href="(?P<inner_url>\.\/' + base + r'\d+\.shtml)">'
            inner_regex = re.compile(pat)
            for matchobj in inner_regex.finditer(markup):

                relative_inner_url = matchobj.group('inner_url')
                if relative_inner_url in top_level_url:
                    # Already seen this one.
                    continue

                # Strip off the leading "./" to get the name we use for the
                # local file.
                race_file = relative_inner_url[2:]

                # Form the full inner url by swapping out the top level
                # url
                lst = top_level_url.split('/')
                lst[-1] = race_file
                inner_url = '/'.join(lst)
                self.logger.info(inner_url)
                self.download_file(inner_url)
                self.compile_race_results()

    def compile_vanilla_results(self):
        """
        Compile race results for vanilla CoolRunning races.
        """
        markup = self.html

        regex = re.compile(r"""<pre>              # banner follows the <pre>
                               (?P<race_text>.*?) # regex should NOT be greedy!
                               </pre>""",
                           re.VERBOSE | re.IGNORECASE | re.DOTALL)
        matchobj = regex.search(markup)
        if matchobj is None:
            warnings.warn('Vanilla CRRR regex did not match.')
            return []

        text = matchobj.group('race_text')
        results = []
        for line in text.split('\n'):
            if self.match_against_membership(line):
                results.append(line)

        return results

    def compile_ccrr_race_results(self):
        """
        This is the format generally used by Cape Cod
        Road Runners.

        Return value:
            List of <TR> elements, each row containing an individual result.
        """
        pattern = './/body/table/tr/td/table/tr/td/table/tr/td/div/table/tr'
        # Write it back out to a file, need to use the HTML parser to read
        # it back in.
        with tempfile.NamedTemporaryFile(suffix=".html", mode='wt') as tfile:
            tfile.write(self.html)
            tfile.flush()

            parser = etree.HTMLParser()
            tree = etree.parse(tfile.name, parser)

        root = tree.getroot()

        trs = root.findall(pattern)

        results = []
        for tr in trs:
            tds = tr.getchildren()

            if len(tds) < 3:
                continue

            runner_name = tds[1].text
            if runner_name is None:
                continue
            for idx in range(0, len(self.first_name_regex)):
                fregex = self.first_name_regex[idx]
                lregex = self.last_name_regex[idx]
                if fregex.search(runner_name) and lregex.search(runner_name):
                    results.append(tr)

        if len(results) > 0:
            # Prepend the header.
            results.insert(0, trs[0])

        return results

    def get_author(self):
        """
        Get the race company identifier.

        Example
        -------
            <meta name="Author" content="colonial" />
        """
        regex1 = re.compile(r"""<meta\s
                                name=\"Author\"\s
                                content=\"(?P<content>.*)\"\s*
                                \/?>""",  # Sometimes there's no /
                            re.VERBOSE | re.IGNORECASE)
        regex2 = re.compile(r"""<meta\s
                                content=\"(?P<content>.*)\"\s*
                                name=\"Author\"\s*
                                \/?>""",  # Sometimes there's no /
                            re.VERBOSE | re.IGNORECASE)

        matchobj = regex1.search(self.html)
        if matchobj is not None:
            self.author = matchobj.group('content')
            return

        matchobj = regex2.search(self.html)
        if matchobj is not None:
            self.author = matchobj.group('content')
        else:
            msg = "Could not parse the race company identifier"
            raise RuntimeError(msg)

    def compile_race_results(self):
        """
        Go through a race file and collect results.
        """
        html = None
        self.get_author()
        if self.author in ['CapeCodRoadRunners']:
            self.logger.debug('Cape Cod Road Runners pattern')
            results = self.compile_ccrr_race_results()
            if len(results) > 0:
                html = self.webify_ccrr_results(results)
                self.insert_race_results(html)
        elif self.author in ['ACCU', 'baystate', 'charlie', 'gstate',
                             'Harrier', 'netiming', 'JFRC', 'mmg1214',
                             'mooserd', 'Spitler', 'SWCL', 'yk']:
            # These cases are verified in the test suite.
            # "charlie" is "Last Mile"
            # "mmg1214" is "Wilbur Racing Systems"
            # "SWCL" is also "Wilbur Racing Systems"
            results = self.compile_vanilla_results()
            if len(results) > 0:
                html = self.webify_vanilla_results(results)
                self.insert_race_results(html)
        elif self.author in ['kick610', 'JB Race', 'ab-mac', 'FTO',
                             'NSTC', 'ndatrackxc', 'wcrc']:
            # Assume the usual coolrunning pattern.
            msg = '{0} ==> assuming vanilla Coolrunning pattern'
            self.logger.debug(msg.format(self.author))
            results = self.compile_vanilla_results()
            if len(results) > 0:
                html = self.webify_vanilla_results(results)
                self.insert_race_results(html)
        elif self.author in ['colonial', 'opportunity']:
            # 'colonial' is a local race series.  Gawd-awful
            # excel-to-bastardized-html.  The hell with it.
            #
            # 'opportunity' seems to be CMS 52 Week Series
            self.logger.info('Skipping {0} race series.'.format(self.author))
        elif self.author in ['Harriers']:
            self.logger.info('Skipping harriers (snowstorm classic?) series.')
        elif self.author in ['jalfano']:
            self.logger.info('Skipping CMS(?) series.')
        elif self.author in ['DavidWill', 'FFAST', 'lungne', 'northeastracers',
                             'sri']:
            msg = 'Skipping {0} pattern (unhandled XML pattern).'
            self.logger.info(msg.format(self.author))
        elif self.author in ['WCRCSCOTT']:
            msg = 'Skipping {0} XML pattern (looks like a race series).'
            self.logger.info(msg.format(self.author))
        else:
            msg = 'Unknown pattern (\"{0}\"), going to try vanilla CR parsing.'
            self.logger.warning(msg.format(self.author))
            results = self.compile_vanilla_results()
            if len(results) > 0:
                html = self.webify_vanilla_results(results)
                self.insert_race_results(html)

    def construct_common_div(self):
        """
        Construct an XHTML element to contain race results.
        """
        div = etree.Element('div')
        div.set('class', 'race')
        hr_elt = etree.Element('hr')
        hr_elt.set('class', 'race_header')
        div.append(hr_elt)

        markup = self.html

        # The H1 tag has the race name.  The H2 tag has the location and date.
        # Both are the only such tabs in the file.
        #
        # Use re.DOTALL since . must match across lines.
        regex = re.compile('<h1>(?P<h1>.*)</h1>.*<h2>(?P<h2>.*)</h2>',
                           re.DOTALL)
        matchobj = regex.search(markup)
        if matchobj is None:
            msg = "Could not find H1/H2 tags from {0}"
            msg = msg.format(self.downloaded_url)
            raise RuntimeError(msg)

        h1_elt = etree.Element('h1')
        h1_elt.text = matchobj.group('h1')
        div.append(h1_elt)

        h2_elt = etree.Element('h2')
        h2_elt.text = matchobj.group('h2')
        div.append(h2_elt)

        # Append the URL if possible.
        if self.downloaded_url is not None:
            div.append(self.construct_source_url_reference('Coolrunning'))

        return(div)

    def webify_ccrr_results(self, results):
        """
        Turn the list of results into full HTML.
        This works for Cape Cod Road Runners formatted results.

        Return value:
            "finished" HTML for the race.
        """
        div = self.construct_common_div()

        table = etree.Element('table')
        for tr_elt in results:
            if tr_elt is not None:
                table.append(tr_elt)

        div.append(table)
        return div

    def webify_vanilla_results(self, result_lst):
        """
        Insert CoolRunning results into the output file.
        """
        div = self.construct_common_div()

        banner_text = self.parse_banner()

        text = '<pre class="actual_results">\n'
        text += banner_text + '\n'.join(result_lst) + '\n'
        text += '</pre>'
        try:
            pre = etree.XML(text)
        except lxml.etree.XMLSyntaxError as error:
            pre = etree.Element('pre')
            pre.set('class', 'actual_results')
            pre.text = str(error)
        div.append(pre)

        return div

    def parse_banner(self):
        """
        Tease out the "banner" from the race file.

        This will usually be found following the <pre> tag that contains the
        results.
        """
        markup = self.html
        regex = re.compile(r"""<pre>             # banner text follows
                               (?P<banner>.*?\n) # regex should NOT be greedy!
                               \s*1\b            # stop matching upon 1st place
                               .*                # the results are here
                               </pre>""",        # stop here
                           re.VERBOSE | re.IGNORECASE | re.DOTALL)
        matchobj = regex.search(markup)
        if matchobj is None:
            msg = 'No banner found, authority is {}.'.format(self.author)
            warnings.warn(msg)
            return ''

        banner_text = matchobj.group('banner')

        # Clean it up if necessary.  Some of the clumsier race directors will
        # put ampersands into the text without making them XML entities.
        # regex = re.compile(r"""&                    # match the ampersand
        #                       (?!                  # negative lookahead
        #                         [A-Za-z]+[0-9]*;   # named entity
        #                        |
        #                         #[0-9]+;             # decimal entity
        #                        |
        #                         #x[0-9a-fA-F]+;)""", # hexidecimal entity
        #                   re.VERBOSE)
        banner_text = re.sub(r'&(?![A-Za-z]+[0-9]*;|#[0-9]+;|#x[0-9a-fA-F]+;)',
                             r'&amp;', banner_text)
        return banner_text

    def download_state_master_file(self, state):
        """
        Download results for the specified state.

        The URL will have the pattern

        http://www.coolrunning.com/results/[YY]/[STATE].shtml

        """
        self.logger.info('Processing %s...' % state)
        state_file = '{0}.shtml'.format(state)
        url = 'http://www.coolrunning.com/results/{0}/{1}'
        url = url.format(self.start_date.strftime('%y'), state_file)
        self.logger.info('Downloading {0}.'.format(url))
        self.download_file(url, local_file=state_file)
