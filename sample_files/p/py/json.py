import urllib.request as url
from bs4 import BeautifulSoup
from Entry import Record
import json as j

def main(pages, race):
    records = [] # Jim's Class
    for page in pages:
        print (type(pages))
        print ("page is " + str(page))
        req = url.Request(page,  headers={'User-Agent': 'Mozilla/5.0'})
        result = url.urlopen(req)
        if race == "EC 5k" or race == "EC 10k":
            #  all = j.load(result)
            str_result = result.read().decode('utf-8')
            all = j.loads(str_result)
            results = all['items']
            for r in results:
                data = r['person']
                time = ""
                raw_time = r['finalResult']['chipTimeResult']
                raw_time = raw_time[2:]
                #print(raw_time)
                hours_idx = raw_time.find("H")
                if hours_idx != -1:
                    hours = raw_time[0:hours_idx]
                    time = hours + ":"
                minutes_idx = raw_time.find("M")
                if minutes_idx != -1:
                    minutes = raw_time[hours_idx+1:minutes_idx]
                    if (len(minutes)) == 1:
                        minutes = "0" + minutes
                    time = time + minutes + ":"
                elif minutes_idx == -1:
                    minutes_idx = hours_idx
                    time = time + "00:"
                seconds_idx = raw_time.find("S")
                decimal_idx = raw_time.find(".")
                if seconds_idx != -1:
                    seconds = raw_time[minutes_idx+1:decimal_idx]
                    if len(seconds) == 1:
                        seconds = "0" + seconds
                    if len(seconds) == 0:
                        seconds = "00" + seconds
                    time = time + seconds
                #print(time)
                name = data['firstName'] + " " + data['lastName']
                #print ("name is " + name)
                age = data['age']
                #print ("age is " + str(age))
                raw_gender = data['gender']
                gender = "M"
                if raw_gender == "Female":
                    gender = "F"
                #print ("gender is " + gender)
                city = "" ####TESTING TESTING
                new_record = Record(name, age, gender, time, city)
                #print (type(new_record))
                records.append(new_record)
                
        if race == 'Cherry':
            all = j.load(result)
            results = all['fullClassifications']
            for r in results:
                classification = r['classification']
                name = classification['name']
                time = classification['chipTime']
                gender = "M"
                gender_raw = classification['gender']
                if gender_raw == 2:
                    gender = "F"
                try:
                    city = classification['city']
                except(KeyError):
                    city = ""
                age = classification['ageDuringEvent']
                new_record = Record(name, age, gender, time, city)
                records.append(new_record)


    return records




# results = result.split("tr")

# cherry blossom
# https://eventresults-api.sporthive.com/api/events/6375357357228396544/races/427167/classifications/search?count=10&offset=0


# self, name, gender, age, city, time
'''
for result in output['fullClassifications']:
    entry = Entry(result['athlete']['name'], result['classification']['gender'], result['classification']['ageDuringEvent'],
                  None, result['classification']['gunTime'])
    entries.ap'''



