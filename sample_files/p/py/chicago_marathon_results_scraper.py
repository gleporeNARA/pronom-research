#!/usr/bin/env python

# Tested in Python 2.7.x
import requests
import argparse
import logging

from collections import namedtuple
from bs4 import BeautifulSoup

# For printing out unicode points outside of the ASCII range.
import codecs
import sys
sys.stdout = codecs.getwriter("utf-8")(sys.__stdout__) 

# TODO: PC: More kosher way of forming the URL?
RESULTS_URL_TEMPLATE = "http://results.chicagomarathon.com/{year}/"

# Argparse setup.
parser = argparse.ArgumentParser(
  description="Collect Chicago Marathon Results into a CSV format; prints to stdout. Typical usage will be to redirect to a file or tee.",
  add_help=True
)
parser.add_argument(
  'year',
  type=int,
  default=2013,
  help="The year of results to obtain.",
)
args = parser.parse_args()

# Logging configuration.
log_date_format = "%Y-%m-%d %H:%M:%S %Z"
logging.basicConfig(
  format="[%(levelname)s:%(asctime)s] %(message)s", 
  datefmt=log_date_format,

)
logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)

url = RESULTS_URL_TEMPLATE.format(year=args.year)

# Basic data model for a finisher record.
fields = (
  'name_location',
  'city_state',
  'age',
  'finish',
  'gender',
)

Record = namedtuple("Record", fields)

# Need to pull back the male/female records separately because there is not an explicit column indicating gender.
# Instead, the gender will be implied by searching first for male only, and then female only.
genders = ('M', 'W')

# CSV headers
print ','.join(fields)

for gender in genders:
  p = 1
  while True:
    params = {
      'page': p,
      'event': 'MAR',
      'lang': 'EN_CAP',
      'num_results': 100,
      'pid': 'list',
      'search[sex]': gender
    }

    # TODO: PC: Handle the timeouts/connection exceptions.
    r = requests.get(url, params=params)
    soup = BeautifulSoup(r.text, "lxml")
    rows = soup.select("tbody tr")

    # Remove right-pointing double angle quotation mark from the name_location field.
    raquo_symbol = u'\u00BB'

    for row in rows:
      # NOTE: This is the fragile part, as other than the text in headers, there is no metadata identifying these columns.
      cells = row.select("td")

      # Sanity check.
      if len(cells) < 11:
        logger.warn("Invalid row: {}".format(row))
        continue

      d = {
        # Need to make the format strings unicode since the arguments might contain unicode.
        'name_location': u'"{}"'.format(cells[3].text.replace(raquo_symbol, '').strip()),
        'city_state': u'"{}"'.format(cells[4].text.strip()),
        'age': cells[7].text.strip(),
        'finish': cells[9].text.strip(),
        'gender': gender,
      }
      record = Record(**d)
      print ','.join(record)

    # Determine if there is a next page, i.e. more records.
    last_nav_link = soup.select("div.pages a")
    more_pages = (last_nav_link and '>' in last_nav_link[-1].text)

    if more_pages:
      p += 1
    else:
      break
