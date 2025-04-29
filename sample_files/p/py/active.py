"""
Module for parsing Active race results.
"""

import datetime
import logging
import re
import requests
import warnings

import lxml
from lxml import etree, html
from lxml import html

from .common import RaceResults

logging.basicConfig()

class ActiveRR(RaceResults):
    """
    Class for handling active results.

    Attributes
    ----------
    logger : logging.Logger
        Handles verbosity of program execution.  All is logged to standard
        output.
    states : list
        List of states in which to search. Default is ['NJ']
    """
    def __init__(self, date_range=None, membership_list=None,
                 output_file=None, states=None, verbose='INFO'):
        """
        Parameters
        ----------
        date_range : tuple
            starting date and ending date
        membership_list : str
            CSV file of members
        output_file : str
            Write results to this file.
        states : list
            List of states in which to search. Default is ['NJ']
        verbose : str
            Level of verbosity.
        """
        RaceResults.__init__(self, verbose=verbose,
                             membership_list=membership_list,
                             start_date=date_range[0],
                             stop_date=date_range[1],
                             output_file=output_file)

        # Need to remember the current URL.
        self.states = states
        self._downloaded_url = None

    def compile_web_results(self):
        """
        Download the requested results and compile them.
        """
        for state in self.states:
            url = 'http://results.active.com/search'
            params = {'search[source]': 'event',
                      'search[query]': state,
                      'search[start_date]': self.start_date.strftime('%Y-%m-%d'),
                      'search[end_date]': self.stop_date.strftime('%Y-%m-%d')}
            response = requests.get(url, params=params)
    
            # Go thru the list of events.  They are identified by DIV tags with
            # "result-rows" class.
            doc = html.document_fromstring(response.content)
            results = doc.find_class('result-row')
            for result in results:
                self.process_event(result)

    def process_event(self, event):
        """
        Parameters
        ----------
        event : lxml.html.HtmlElement
            Looks something like what's below

            <div class="result-row">
             <div class="result-icon">
              <a href="/events/95690">
                <img alt="Default_icon"
                     src="http://assets-results2.active.com/assets/default_icon.jpg"/></a>
              </div>
             <div class="result-title">
              <h5><a href="/events/95690">CPTC Holiday Classic 10K</a></h5>
              <div class="result-sub-location">
                New York City
              </div>
             </div>
             <div class="result-extras">
              <div class="result-extra date">
                <span class="title">Date:</span> 12/20/2014
              </div>
             </div>
            <br class="clear"/>
          </div>
   
        """
        name = event.cssselect('.result-title a')[0].text.strip()
        place = event.cssselect('.result-sub-location')[0].text.strip()
        date = event.cssselect('.result-extras .title')[0].tail.strip()
        print('Looking at {}, {}, {}'.format(name, place, date))

        link = event.cssselect('.result-title a[href]')[0].get('href')
        url = 'http://results.active.com' + link

        r = requests.get(url)
        if r.status_code != 200:
            raise RuntimeError("Could not retrieve {}".format(url))

        # Hopefully there is an "Overall Results" in there somewhere.
        #if "Overall Results" in r.text:
        #    doc = html.document_fromstring(r.content)
        #    elts = doc.cssselect('.event-nav a')
        #    elt = [x for x in elts if x.text == 'Overall Results'][0]
        #    url = 'http://results.active.com' + elt.get('href')
        #    self.process_results_page(url)
        #else:
        #msg = "Could not find overall results in {}.".format(url)
        #warnings.warn(msg)
        doc = html.document_fromstring(r.content)
        elts = doc.cssselect('.event-nav a')
        for elt in elts:
            if elt.text.startswith('Event Overview'):
                print('\tSkipping event overview')
                continue
            if elt.text.startswith('Searchable'):
                print('\tSkipping "Searchable"')
                continue
            if elt.text.startswith('Link for Official Results'):
                print('\tNo results here, just forget it')
                return
            if elt.text.startswith("Event's Website"):
                print('\tSkipping event overview')
                continue
            print('\tLooking at {}'.format(elt.text))
            url = 'http://results.active.com' + elt.get('href')
            self.process_results_page(url)
                

    def process_results_page(self, url):
        """
        Parameters
        ----------
        url : str
            URL of the lead-in results page
        """
        r = requests.get(url)
        if r.status_code != 200:
            raise RuntimeError("Could not retrieve {}".format(url))
        leadin_doc = html.document_fromstring(r.content)
        tables = leadin_doc.cssselect('.participant-list')

        # Get any following pages.
        links = leadin_doc.cssselect('.pagination a[rel]')
        while True:
            if len(links) == 0:
                break

            lst = [link for link in links if link.text.startswith('Next')]
            if len(lst) == 0:
                break

            anchor = lst[0]
            next_rel_url = anchor.get('href')
            print('\t\t{}'.format(next_rel_url))
            r = requests.get('http://results.active.com' + next_rel_url)
            doc = html.document_fromstring(r.content)
            table = doc.cssselect('.participant-list')[0]
            tables.append(table)

            links = doc.cssselect('.pagination a[rel]')

        # Search the tables.                
        lst = []
        for table in tables:
            trs = table.cssselect('tr')
            # first row has stuff we don't want
            for tr in trs[1:]:
                tds = tr.getchildren()
                if len(tds) < 2:
                    continue
                for regex in self.regex:
                    if regex.match(tds[2].text_content()):
                        lst.append(tr)

        if len(lst) > 0:
            # Ok we found some results.  Insert the header for the first table.
            header_row = tables[0].cssselect('tr')[0]
            lst.insert(0, header_row)
            self.webify_results(leadin_doc, lst, url)

    def webify_results(self, leadin_doc, lst, url):
        """
        Take the list of results and turn it into output HTML.

        Parameters
        ----------
        leadin_doc : 
        lst : list
            List of <TR> elements consisting of results.
        url : str
            URL of the lead-in results page
        """
        div = etree.Element('div')
        div.set('class', 'race')

        hr_elt = etree.Element('hr')
        hr_elt.set('class', 'race_header')
        div.append(hr_elt)

        # Append the race metadata.  Must clean it of embedded links first.
        h1 = leadin_doc.cssselect('.page-heading .headers h1')[0]
        h1_elt = etree.Element('h1')
        h1_elt.text = h1.text_content()
        div.append(h1_elt)

        src_elt = leadin_doc.cssselect('.page-heading .headers h3 time')[0]
        h3 = etree.Element('h3')
        h3.text = src_elt.text_content()
        div.append(h3)

        # Append the link back to the official results.
        attribution_div = etree.Element('div')
        p = etree.Element('p')
        span = etree.Element('span')
        span.text = 'Complete results '
        p.append(span)
        link = etree.Element('a')
        link.set('href', url)
        link.text = 'here'
        p.append(link)
        span = etree.Element('span')
        span.text = ' on Active.com'
        p.append(span)
        attribution_div.append(p)
        div.append(attribution_div)

        table = etree.Element('table')
        for tr in lst:
            tr_elt = etree.Element('tr')
            for td in tr.getchildren():
                td_elt = etree.Element('td')
                td_elt.text = td.text_content()
                tr_elt.append(td_elt)
            # We need to "clean" the row, i.e. remove any links.
            table.append(tr_elt)
        
        div.append(table)
        self.insert_race_results(div)
