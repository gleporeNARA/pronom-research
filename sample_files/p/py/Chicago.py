import requests
from collections import namedtuple
from bs4 import BeautifulSoup
from datetime import date

RESULTS_URL_TEMPLATE = "http://results.chicagomarathon.com/{year}/"
year = date.today().year
url = RESULTS_URL_TEMPLATE.format(year=year)

# Basic data model for a finisher record.
fields = (
  'name_location',
  'city_state',
  'age',
  'finish',
  'gender',
)

Record = namedtuple("Record", fields)
genders = ('M', 'W')

# CSV headers
print (','.join(fields))

for gender in genders:
  p = 1
  while True:
    params = {
      'page': p,
      'event': 'MAR',
      'lang': 'EN_CAP',
      'num_results': 1000,
      'pid': 'list',
      'search[sex]': gender
    }

    r = requests.get(url, params=params)
    soup = BeautifulSoup(r.text, "lxml")
    rows = soup.select("tbody tr")

    # Remove right-pointing double angle quotation mark from the name_location field.
    raquo_symbol = u'\u00BB'

    for row in rows:
      # NOTE: This is the fragile part, as other than the text in headers, there is no metadata identifying these columns.
      cells = row.select("td")
      if 'MD' in cells[4].text.strip():
        d = {
            # Need to make the format strings unicode since the arguments might contain unicode.
            'name_location': u'"{}"'.format(cells[3].text.replace(raquo_symbol, '').strip()),
            'city_state': u'"{}"'.format(cells[4].text.strip()),
            'age': cells[7].text.strip(),
            'finish': cells[9].text.strip(),
            'gender': gender,
        }
        record = Record(**d)
        output = (','.join(record))
        print (output)

    # Determine if there is a next page, i.e. more records.
    last_nav_link = soup.select("div.pages a")
    more_pages = (last_nav_link and '>' in last_nav_link[-1].text)

    if more_pages:
      p += 1
    else:
      break

