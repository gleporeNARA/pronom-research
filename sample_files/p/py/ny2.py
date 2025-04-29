import json

import requests

API_URL = 'http://results.nyrr.org/api/runners/finishers'
PAGE_SIZE = 51


def get_page(index):
    request = requests.post(API_URL, {
        'ageGroup': None,
        'city': None,
        'eventCode': "M2019",
        'gender': None,
        'handicap': None,
        'pageIndex': index,
        'pageSize': PAGE_SIZE,
        'runnerId': None,
        'searchString': None,
        'sortColumn': "finishTime",
        'sortDescending': False
    })
    data = json.loads(request.text).get('response', {})
    items = data.get('items', [])
    print (data)
    store(items)
    return len(items) > 0


def store(items):
    """Store items into database"""
    # Write your code to store the given items
    print(items)


page = 1
while get_page(page):
    page += 1
