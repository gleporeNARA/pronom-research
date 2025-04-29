import urllib.request as url
from bs4 import BeautifulSoup
from Entry import Entry

log = False


def main(pages, race):
    entries = []
    for page in pages:
        req = url.Request(page,  headers={'User-Agent': 'Mozilla/5.0'})
        result = url.urlopen(req).read()
        soup = BeautifulSoup(result, 'html.parser')

        # self, name, gender, age, city, time
        if race == "Cherry Pit":
            body = soup.find_all('tbody')
            result = body[0].find_all('tr')

            for r in result:
                entry = r.find_all('td')
                new_entry = Entry(str(entry[1].text) + " " + str(entry[2].text), entry[4].text, entry[5].text, None, entry[3].text)
                entries.append(new_entry)

        if race == "Rock n Roll":
            result = soup.find_all('tr')

            for r in result:
                entry = r.find_all('td')
                if len(entry) > 2:
                    name = entry[2].a.text
                    time = entry[3].text
                    new_entry = Entry(name, None, None, None, time)
                    entries.append(new_entry)

        if race == "Shamrock" or race == 'Maryland Half':
            body = soup.find_all('tbody')
            result = body[0].find_all('tr')
            for r in result:
                entry = r.find_all('td')
                if len(entry) >= 7:
                    name = entry[1].text.strip() + " " + entry[2].text.strip()
                    city = entry[3].text.strip()
                    age = entry[5].text.strip()
                    gender = entry[6].text.split()[1].strip()
                    time = entry[7].text.strip()
                    entries.append(Entry(name, gender, age, city, time))

        if race == "Germantown":
            body = soup.find_all('tbody')
            result = body[0].find_all('tr')
            for r in result:
                entry = r.find_all('td')
                if (len(entry) >= 11):
                    name = entry[4].text.strip()
                    city = entry[8].text.strip()
                    age = entry[6].text.strip()
                    gender = entry[5].text.strip()
                    time = entry[11].text.strip()
                    entries.append(Entry(name, gender, age, city, time))

        if race == "Dawsons":
            body = soup.find_all('tbody')
            result = body[0].find_all('tr')
            for r in result:
                entry = r.find_all('td')
                if (len(entry) >= 5):
                    name = entry[1].text.strip() + " " + entry[2].text.strip()
                    city = ""
                    age = entry[5].text.strip()
                    gender = entry[4].text.strip()
                    time = entry[3].text.strip()
                    entries.append(Entry(name, gender, age, city, time))

        if race == "Pikes":
            body = soup.find_all('tbody')
            result = body[0].find_all('tr')
            for r in result:
                entry = r.find_all('td')
                if len(entry) >= 5:
                    name = entry[4].text.strip()
                    city = ""
                    age = entry[6].text.strip()
                    gender = entry[5].text.strip()
                    time = entry[9].text.strip()
                    entries.append(Entry(name, gender, age, city, time))

        if "Gettysburg" in race:
            table = soup.find_all('table')
            if len(table) >= 1:
                result = table[0].find_all('tr')
                for r in result:
                    entry = r.find_all('td')
                    if len(entry) >= 5:
                        raw_name = entry[2].text.strip()
                        name = raw_name[0:raw_name.find("(")]
                        city = ""
                        age = entry[6].text.strip()
                        gender = entry[4].text.strip()
                        time = entry[10].text.strip()
                        entries.append(Entry(name, gender, age, city, time))

        if race == 'Baltimore':
            body = soup.find_all('tbody')
            result = body[0].find_all('tr')
            for r in result:
                entry = r.find_all('td')
                if len(entry) >= 11:
                    name = entry[2].text.strip()
                    city = entry[3].text.strip()
                    age = entry[5].text.strip()
                    gender = entry[6].text.strip()
                    time = entry[11].text.strip()
                    entries.append(Entry(name, gender, age, city, time))

        if race == "Frederick":
            body = soup.find_all('tbody')
            result = body[0].find_all('tr')
            for r in result:
                entry = r.find_all('td')
                if len(entry) >= 9:
                    name = entry[2].a.text.strip()
                    city = entry[6].text.strip()
                    age = entry[3].text.strip()
                    gender = entry[4].text.strip()
                    time = entry[8].text.strip()
                    entries.append(Entry(name, gender, age, city, time))

        if race == "Boston":
            body = soup.find_all('tbody')
            result = body[0].find_all('tr')
            for r in result:
                entry = r.find_all('td')
                if len(entry) >= 5:
                    name = entry[1].a.text.strip()
                    city = entry[2].text.strip()
                    age = entry[3].text.strip()
                    gender = ""
                    time = entry[4].text.strip()
                    entries.append(Entry(name, gender, age, city, time))


        # if race == "Hat":
        #     table = soup.find_all('table')
        #     result = table[1].find_all('tr')
        #     for r in result:
        #         print(r)
        #         entry = r.find_all('td')
        #         if len(entry) >= 9:
        #             name = entry[2].text.strip() + " " + entry[3].text.strip()
        #             city = entry[4].text.strip()
        #             age = entry[6].text.strip()
        #             gender = entry[7].text.strip()
        #             time = entry[9].text.strip()
        #             entries.append(Entry(name, gender, age, city, time))

        if log:
            for entry in entries:
                print(entry)

    return entries










