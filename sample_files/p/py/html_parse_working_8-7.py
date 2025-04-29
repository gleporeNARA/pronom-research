import urllib.request as url
import urllib.parse
from bs4 import BeautifulSoup
from Entry import Record
from configs import json as json
import json as json2
from collections import namedtuple
import codecs
import requests
# import pdftables_api
import re
import string
import datetime
import pandas as pd
import numpy as np
from numpy import nan as Nan
import csv
from datetime import date

log = False
finalResults = []
columnLocations = []

### RUN: ./init.py -v https://www.mcrrc.org/race-results/2018/06/mcrrc-suds-soles-5k/###

### SUGGESTIONS FOR FIXES AND IMPROVEMENTS ###

### ADD ERROR DETECTION AND REPORTING ###
### SET MINIMUM LENGTH TO ALL PARSING (THIS WILL AVOID TRYING TO PARSE RANDOM PRE AND TABLE SECTIONS) ###
### ADD SECTIONS TO PARSE CHRONOTRACKS AND ATHLINKS PAGES ###
### IF NECESSARY, ADD HEURISTIC DETECTION OF COLUMNS WHICH AREN'T TITLED NORMALLY (I'VE GOT THIS ROUGHED IN) ###
### MAYBE ADD TIMEOUT TO HTTP REQUESTS? ###

def main(pages):
    page_records = []
    records = []
    race_type = ""
    keep_header = ""
    
    for page in pages:
        if 'pdf' in str(page) or 'PDF' in str(page):
            print ("FOUND PDF RESULTS, DOWNLOADING FILE")
            pdf_results = []
            
            #https://pdftables.com/api?key=8wsgwbxr1upf&format=csv ### my key to pdftables. I bought 500 page conversions, over 400 pages are left.
            #curl https://pdftables.com/api/remaining?key=8wsgwbxr1upf&format=csv ### to check remaining balance.
            with urllib.request.urlopen(page) as response, open('temp_pdf.pdf', 'wb') as out_file:
                data = response.read() # a `bytes` object
                out_file.write(data)
            #############################################
            ###UNCOMMENT NEXT TWO LINES TO PROCESS PDF###
            #############################################
            # c = pdftables_api.Client('8wsgwbxr1upf')
            # c.csv('temp_pdf.pdf', 'output.csv')
            
            print ("CONVERTING FILE")
            with open('output.csv', encoding="utf-8", errors="ignore") as f:
                for line in f:
                    if keep_header == "":
                        if re.match(r"^Div.*$|^Place.*$",line): ### FIND HEADER
                            keep_header = line
                            pdf_results.append(keep_header.strip())
                            
                    if re.match(r"^\d+.*$",line):
                        if not re.match(r".*Management.*|.*Page.*of.*$",line): ### SKIP LINES WITH "RACE MANAGED BY..." AND "PAGE 1 OF 2"
                            pdf_results.append(line.strip())
            pdf_results = [[i] for i in pdf_results]        
            print (pdf_results)
            race_type = "pdf"
            break
            
        else:
            req = url.Request(page,  headers={'User-Agent': 'Mozilla/5.0'})
            result = url.urlopen(req).read()        
            read_url_as_text = result.decode(encoding="cp1252", errors="ignore").splitlines()
            result_as_text = result.decode(encoding="cp1252", errors="ignore")      
            soup = BeautifulSoup(result, 'html.parser')
            
        print ("##############################################")
        print ("ANALYZING " + str(pages))
            
        table = find_largest_table(soup)    ###FIND LARGEST TABLE ON PAGE
        table_bytes_length = len(str(table))###LENGTH OF LARGEST TABLE
        pre = find_largest_pre(soup)        ###FIND LARGEST PRE SECTION
        pre_bytes_length = len(str(pre))    ###LENGTH OF LARGEST PRE
        
        iframe = soup.find_all('iframe')    ###IF THERE'S AN IFRAME EMBEDDED, SEARCH FOR CHRONOTRACK OR WRRC LINK
        for iframe_results in iframe:
            if 'chronotrack' in str(iframe_results):
                print ("CHRONOTRACK IFRAME FOUND")
            
            if 'comp' in str(iframe_results):
                print ("WRRC (WIX) IFRAME FOUND")    
                for each_iframe in iframe:
                    print ("Searching for iframe results.")                    
                    response = url.urlopen(each_iframe.attrs['data-src'])
                    iframe_soup = BeautifulSoup(response,features="lxml")
                    for line in str(iframe_soup).splitlines():
                        if 'csvUrl' in str(line):
                            #print ("FOUND CSVURL at " + str(line))
                            a = 'csvUrl":'
                            b = ','
                            results_url = str(line).split(a)[-1].split(b)[0]
                            results_url = results_url.replace("\"", "")
                            results_url = results_url.replace("}", "")
                            df = pd.read_csv((results_url))
                            page_records = [df.columns.values.tolist()] + df.values.tolist()
                            page_results = identifyColumns(page_records)
                            records = [Record(*result) for result in page_results[2:]]
                            return records                             
                
        if 'Chronotrack' in str(pages) or 'chronotrack' in str(pages):
            print ("FOUND CHRONOTRACK RESULTS")
            #PUSH TO CHRONOTRAK RESULTS PULLER
            race_type = "chronotrack_type"
            
        elif 'Athlinks' in str(pages) or 'athlinks' in str(pages):
            print ("FOUND ATHLINKS RESULTS")
            #PUSH TO ATHLINKS RESULTS PULLER                
            race_type = "athlinks_type"
            athlinks_url=str(pages)
            print (athlinks_url)
            
        elif 'Sporthive' in str(pages) or 'sporthive' in str(pages):
            ### THIS COULD BE CLEANED UP QUITE A BIT, IF MD IN CITY ONLY PUSH MD RESULTS, OFFSET + COUNT, ETC.
            ### RACE ID FROM URL (http://results.sporthive.com/events/6375357357228396544/races/427167/)  NEED 6375357357228396544 AND 427167 IN ARGV
            print ("FOUND SPORTHIVE RESULTS")
            sporthive_results = []
            header = ('Name', 'Age', 'Gender', 'Time', 'City')
            sporthive_results.append(header)
            input_url = ', '.join(map(str, pages))
            sporthive_url = (input_url.replace('results.sporthive.com', 'eventresults-api.sporthive.com/api'))
            check_runners = urllib.request.urlopen(str(sporthive_url))
            string2 = check_runners.read().decode('utf-8')
            read_json_obj=json2.loads(string2)
            number_of_runners = str((read_json_obj['race']['classificationsCount']))
            count=100
            offset=0
            total_pages_to_pull = round(int(number_of_runners)/100-1)
            #total_pages_to_pull = 2
            print ("Downloading " + str(total_pages_to_pull) + " pages of results.")

            for x in range(0,total_pages_to_pull):

                cb_url = sporthive_url + '/classifications/search?count=' + str(count) + '&offset=' + str(offset)
                print ("Downloading results from page " + str(x) + ".")
                data= urllib.request.urlopen(cb_url)
                string = data.read().decode('utf-8')
                json_obj = json2.loads(string)
                
                for x in range(0, 100):
                    name = (json_obj['fullClassifications'][x]['athlete']['name'])
                    age = (json_obj['fullClassifications'][x]['classification']['ageDuringEvent'])
                    gender = (json_obj['fullClassifications'][x]['classification']['gender'])
                    if str(gender) == '1':
                        gender = 'M'
                    else:
                        gender = 'F'
                    time = (json_obj['fullClassifications'][x]['classification']['chipTime'])
                    
                    is_city = (json_obj['fullClassifications'][x]['classification']['customValues'])
                    if 'city' in json_obj['fullClassifications'][x]['classification']:
                        #print ("using city as city value.")
                        city = (json_obj['fullClassifications'][x]['classification']['city'])
                    elif 'MD' in str(is_city):
                        #print ("FOUND MD IN " + str(is_city))
                        for x in range(0,len(is_city)):
                            if 'MD' in is_city[x]:
                                #print ("using " + is_city[x] + " as city value.")
                                city = (json_obj['fullClassifications'][x]['classification']['customValues'][x])                    
                    else:
                        city = ''
                        
                    athlete_data =  (name, age, gender, time, city)
                    sporthive_results.append(athlete_data)
                        
                offset += 100
            #print (sporthive_results)
            records = [Record(*result) for result in sporthive_results[2:]]
            #print (records)
            return records
            #race_type = "sporthive_type"  
            
        elif 'charmcity' in str(pages):
                                                                    
            for a in soup.find_all('a', title=True, href=True):     ### FIND LAST PAGE FROM LAST PAGE LINK ON RESULTS PAGE
                if 'last' in a['title']:
                    str1 = ''.join(str(a['href']))
                    last_page = int(str1.split("=")[1])
                else:
                    last_page = 0
            dfs=[]
            print ("FOUND CHARM CITY RESULTS.")
            cc_url = (", ".join(pages)) + "?page={}"
            for i in range (0,int(last_page)):                 ### UNDO FOR REAL PARSING, JUST THREE PAGES PULLED FOR TESTING
            #for i in range (0,3):
                print ("Downloading page " + str(i) + " from Charm City.")
                dframe = pd.read_html(cc_url.format(i))[0]
                dfs.append(dframe)
                
            if dfs:
                finaldf = pd.concat(dfs)
            else:
                finaldf=pd.read_html(cc_url.format(0))[0]
                
            full_name = finaldf['First Name'] + " " + finaldf['Last Name']
            
            if 'Gun Time' and 'Chip Time' in finaldf.columns.values.tolist():
                finaldf = finaldf.drop(columns=['Gun Time'])
                finaldf = finaldf.rename({'Chip Time':'Time'}, axis=1)
            elif 'Gun Time' and not 'Chip Time' in finaldf.columns.values.tolist():
                finaldf = finaldf.rename({'Gun Time':'Time'}, axis=1)
                
            finaldf = finaldf.drop(columns=['First Name','Last Name','Place','Bib No','Age Group','Total Pace'])          
            finaldf.insert(0, 'Full Name', full_name)
            finaldf.insert(3, 'Gender', '')
            finaldf = finaldf[['Full Name', 'Age', 'Gender', 'Time', 'City']]
            to_drop = ['Age']
            finaldf[~finaldf['Age'].isin(to_drop)]
            
            page_records = [finaldf.columns.values.tolist()] + finaldf.values.tolist()
            records = [Record(*result) for result in page_records[2:]]
            return records
            
        elif 'active' in str(pages):
            print ("PUSHING TO ACTIVE PARSER")
            ##### EC5K and EC10K - active.com - https://resultscui.active.com/events/NEWEllicottCity5K10K PARTIALLY IMPLEMENTED
            link = page[0:(len(page)-18)]
            link1 = link + "offset=0&limit=100"
            link2 = link + "offset=100&limit=100"
            results_pages = []
            results_pages.append(link1)
            results_pages.append(link2)
            print (type(results_pages))
            page_records = json.main(results_pages, "EC 10k")
        
        elif 'baa.org' in str(pages): ### LAUNCH PROGRAM WITH http://baa.org AS ARGUMENT - 'init.py http://baa.org'
            print ("Downloading Boston Marathon results.")
            current_year = date.today().year
            baa_csv = "http://registration.baa.org/" + str(current_year) + "/cf/Media/Runners_all_results.csv"
            df = pd.read_csv((baa_csv), usecols=[1,3,4,5,6,13], encoding = "ISO-8859-1", names=["FullName", "AgeOnRaceDay", "Gender", "City", "StateAbbrev", "OfficialTime"])
            df = df[df['StateAbbrev'].str.match('MD', na=False)] 
            df = df.drop(columns=['StateAbbrev'])
            page_records = [df.columns.values.tolist()] + df.values.tolist()
            #print (page_records)
            records = [Record(*result) for result in page_records[2:]]
            #print (records)
            return records
                
        elif 'philly' in str(pages): ### LAUNCH PROGRAM WITH http://philly AS ARGUMENT - 'init.py http://philly'
                                     ### NEED TO ADD LAST PAGE FINDER
                                     ### WILL NEED TO CHANGE EVENTID NEXT YEAR, POSSIBLY ADD ARGPARSE FOR PHILLY TO GET EVENTID
            print ("Downloading Philly Half Marathon results.")
            dfs = []

            philly_url = 'http://www.runrocknroll.com/finisher-zone/search-and-results/?resultspage={}&eventid=56&subevent_id=1&yearid=&firstname=&lastname=&bib=&gender=&division=&state=MD&city=&perpage=250'
            for i in range(1,3):  
                print ("downloading " + philly_url.format(i))
                dframe = pd.read_html(philly_url.format(i), header=-1)[0]           
                dfs.append(dframe)

            finaldf = pd.concat(dfs)  
            finaldf = finaldf.drop(columns=['Bib', 'Overall'])       
            finaldf.insert(1, 'Age', '')
            finaldf.insert(2, 'Gender', '')
            finaldf.insert(4, 'City', '')
            page_records = [finaldf.columns.values.tolist()] + finaldf.values.tolist()
            records = [Record(*result) for result in page_records[1:]]
            return records
        
        elif 'chicago' in str(pages):### LAUNCH PROGRAM WITH http://chicago AS ARGUMENT - 'init.py http://chicago'
            print ("Found Chicago Marathon. Listing results to check for Striders.")
            chicago_results = [('NAME', 'AGE', 'GENDER', 'TIME', 'CITY')]
            RESULTS_URL_TEMPLATE = "http://results.chicagomarathon.com/{year}/"
            year = date.today().year
            chicago_url = RESULTS_URL_TEMPLATE.format(year=year)
            genders = ('M', 'W')

            for gender in genders:
                p = 1
                while True:
                    params = {'page': p,'event': 'MAR','lang': 'EN_CAP','num_results': 1000,'pid': 'list','search[sex]': gender}

                    r = requests.get(chicago_url, params=params)
                    soup = BeautifulSoup(r.text, "lxml")
                    rows = soup.select("tbody tr")

                    for row in rows:
                    # NOTE: This is the fragile part, as other than the text in headers, there is no metadata identifying these columns.
                        cells = row.select("td")
                        if 'MD' in cells[4].text.strip():
                            #print ("#")
                            name = cells[3].text.replace(u'\u00BB', '').strip()
                            name = name.replace(' (USA)','')
                            name2 = ' '.join(name.split(',')[::-1]).lstrip(' ')
                            city = cells[4].text.strip()
                            city = city.replace (', MD','')
                            output =  (name2 + "," + (cells[7].text.strip()) + "," + (gender)  + "," + (cells[9].text.strip())  + "," + city)
                            print (output)
                            output2 = tuple(output.split(','))
                            chicago_results.append(output2)

                    # Determine if there is a next page, i.e. more records.
                    last_nav_link = soup.select("div.pages a")
                    more_pages = (last_nav_link and '>' in last_nav_link[-1].text)

                    if more_pages:
                        p += 1
                    else:
                        break
            
            records = [Record(*result) for result in chicago_results[2:]]
            print (records)
            return records
        
        elif 'xacte' in str(pages):
            xacte_results = []
            #### MARINE CORPS MARATHON
            ### SEE SCREENSHOTS IN CONFIGS TO FIGURE OUT HOW TO FIND EVENTID, THEN CALL AS BELOW
            ####http://results.xacte.com/json/agegroup?eventId=1896&subeventId=4592&categoryId=6571&sex=-1&agegroupId=-1&tagcode=undefined&callback=jQuery18300022684731016224813_1533557704664&sEcho=1&iColumns=11&sColumns=&iDisplayStart=0&iDisplayLength=1"
            print ("PUSHING TO MCM PARSER")
            input_url = ', '.join(map(str, pages))
            check_runners = urllib.request.urlopen(str(input_url))
            string2 = check_runners.read().decode('utf-8')
            string3 = string2[44:]
            string4 = string3.replace("}]});", "}]}")         
            json_obj=json2.loads(string4)
            
            number_of_runners = str((json_obj['iTotalRecords']))
            print (number_of_runners)
            display_length = 1000
            display_start = 0
            total_pages_to_pull = round(int(number_of_runners)/1000-1)
            #total_pages_to_pull = 3
            print ("Downloading " + str(total_pages_to_pull) + " pages of results.")

            for x in range(0,total_pages_to_pull):

                input_url = ', '.join(map(str, pages))
                url_to_use = input_url[:-18] + str(display_start) + "&iDisplayLength=" + str(display_length)
              
                print ("Downloading results from page " + url_to_use + ".")
                data= urllib.request.urlopen(url_to_use)
                string2 = data.read().decode('utf-8')
                string3 = string2[44:]
                string4 = string3.replace("}]});", "}]}")  
                print (string4)
                json_obj=json2.loads(string4)               
                
                for x in range(0, 1000):
                    firstname = (json_obj['aaData'][x]['firstname'])
                    lastname = (json_obj['aaData'][x]['lastname'])
                    age = (json_obj['aaData'][x]['age'])
                    gender = (json_obj['aaData'][x]['sex'])
                    time = "0"
                    time_ms = (json_obj['aaData'][x]['splits']['13890']['delta_net'])
                    time = str(datetime.timedelta(milliseconds=time_ms))[:-7]
                    city = (json_obj['aaData'][x]['city'])
                    state = (json_obj['aaData'][x]['state'])
                    if "MD" in state:
                        fullname = firstname + " " + lastname
                        print ("Found " + fullname + " from Maryland.")
                        athlete_data =  (fullname, age, gender, time, city)
                        xacte_results.append(athlete_data)
                        
                display_start += 1000
                display_length += 1000
            print (xacte_results)
            records = [Record(*result) for result in xacte_results[2:]]
            return records            

        elif 'Army' in str(pages): 

            print ("Downloading Army 10 Miler results.")
            dfs = []
            use_tn = 0            
            
            for i in range(1,2): 
                army_url = "http://tools.marathonguide.com/ArmyTenMiler/results/searchable-results.cfm?Page="+str(i)+"&Year=2017"
                print ("downloading " + army_url)
                req = url.Request(army_url)
                result = url.urlopen(req).read()        
                print (result)
                read_url_as_text = result.decode(encoding="cp1252", errors="ignore").splitlines()
                result_as_text = result.decode(encoding="cp1252", errors="ignore")      
                soup = BeautifulSoup(result, 'html.parser')
                print (soup)
                results_table = soup.find_all("div", class_="row results-table")
                print ("rt is " + str(results_table))
                print ("downloading "  + army_url.format(i))
                dframe = pd.read_html(results_table)
                dfs.append(dframe)

            finaldf = pd.concat(dfs)  
            finaldf = finaldf.drop(columns=['PLACE', 'BIB', '10K SPLIT', 'CLOCK TIME', 'PACE', 'DIV PLACE', 'SEX PLACE', 'DIVISION' , 'Unnamed: 12']) 
            finaldf['SEX'] = finaldf['SEX-AGE'].str[:1]
            finaldf['AGE'] = finaldf['SEX-AGE'].str[1:3]
            finaldf = finaldf.drop(columns=['SEX-AGE'])
            finaldf = finaldf[['NAME', 'AGE', 'SEX', 'NET TIME', 'HOMETOWN']]
            #finaldf.insert(4, 'City', '')
            page_records = [finaldf.columns.values.tolist()] + finaldf.values.tolist()
            records = [Record(*result) for result in page_records[1:]]
            return records
        
        elif 'ultrasignup' in str(pages):
            hat_results=[]
            print ("Pulling HatRun results.")
            did = str(pages)[-7:]
            did2 = did.replace("']", "")
            #hat_url = "https://ultrasignup.com/results_event.aspx?did=51102"
            hat_url = "https://ultrasignup.com/service/events.svc/results/"+ did2 + "/json"
            data= urllib.request.urlopen(hat_url)
            data2 = data.read().decode('utf-8')
            json_obj=json2.loads(data2)
            #print (len(json_obj))
            for i in range(1,len(json_obj)): 
                firstname = (json_obj[i]['firstname'])
                lastname = (json_obj[i]['lastname'])
                age = (json_obj[i]['age'])
                gender = (json_obj[i]['gender'])
                time = (json_obj[i]['formattime'])
                city = (json_obj[i]['city'])
                state = (json_obj[i]['state'])
                if "MD" in state and '0' not in time:
                    fullname = firstname + " " + lastname
                    athlete_data =  (fullname, age, gender, time, city)
                    hat_results.append(athlete_data)
            records = [Record(*result) for result in hat_results[2:]]
            return records  

##### RACES WE NEED PARSERS FOR AND THEIR LOCATIONS #####
##### Army 10 Miler - marathonguide - http://tools.marathonguide.com/ArmyTenMiler/results/searchable-results.cfm
##### Baltimore Marathon - rmraces.live - http://www.thebaltimoremarathon.com/results-2017/

##### RACES I'VE TRIED AND FAILED TO GET RESULTS
##### Frederick Half - athlinks - https://www.athlinks.com/event/28522/results/Event/733402/Results
##### Baltimore 10 Miler - athlinks - https://www.athlinks.com/event/5321/results/Event/715072/Results
##### NYC Marathon - own site - https://results.nyrr.org/event/M2017/finishers
##### Maryland Half - racinemultisports - http://racinemultisports.com/results-mdhalfand5k-2018/#/race/6KQ3mS/1/
                            
        #IF THE LARGEST TABLE ON THE PAGE IS LARGER THAN THE PRE SECTION (OR THERE IS NO PRE SECTION)
        elif table is not None and table_bytes_length > pre_bytes_length:
            print ("FOUND TABLE AND PRE TAGS, TABLE RESULTS ARE LARGER")
            table_contents = pd.read_html(result)[0]
            #print (table_contents)
            header_as_text = [str(x) for x in table_contents]
            for value in header_as_text:
                if value == 'Place' or value == "Name" or value == "Age":
                    parsed = [table_contents.columns.values.tolist()] + table_contents.values.tolist()
                    break
                else:
                    parsed = table_contents.values.tolist()
            race_type = "table_type"
            try:
                page_results = identifyColumns(parsed)
                page_records = [Record(*result) for result in page_results[2:]]
            except:
                print ("Error, could not identify columns.")
            
        #IF text IN FILENAME, OR IF THE PRE SECTION IS LARGER THAN ANY TABLE ON THE PAGE (OR NO TABLE)
        if ('.txt' in str(pages) or '.TXT' in str(pages) or pre and pre_bytes_length > table_bytes_length):
            if '.txt' in str(pages) or '.TXT' in str(pages):
                print ("FOUND TEXT RESULTS")
                pre_as_str = result_as_text.strip()
            if pre and pre_bytes_length > table_bytes_length:
                print ("FOUND PRE RESULTS")
                pre_as_str = pre.get_text().strip()
                
            length = len(pre_as_str.splitlines())
            lineCount = 0
            ### SEARCH FOR THE WORD "Place" AND REMOVE EVERYTHING BEFORE THAT ###
            for line in pre_as_str.splitlines():
                lineCount += 1
                if "Place" in line.rstrip(): 
                    print("Found word 'Place' in file, cutting lines before line "+ str(lineCount) + ".")
                    cut_line = lineCount       
                    break
                else:
                    cut_line = 0
            if cut_line != None:
                cut_line = cut_line - 1
            results = '\n'.join(line for line in pre_as_str.split('\n')[cut_line:])
            ### SEARCH FOR WORD "Awards", SPLIT TEXT INTO SECTIONS BY DOUBLE LINE BREAKS, THEN TAKE THE LARGEST SECTION, WHICH SHOULD BE RESULTS
            if "Awards" in results:
                print ("Found word 'Awards' in file, removing awards section.")
                myarray = results.split('\r\n\r\n') 
                #print (max(myarray, key=len))
                results=(max(myarray, key=len))
            #print (results)
            #if "AGE GROUP" in results:
                #print ("Found word 'age group' in results, removing awards section.")
                #myarray = results.split('\r\n\r\n') 
                #print (myarray[0])
                ##print (max(myarray, key=len))
                #results=(max(myarray, key=len))      
                
                
            ###############################
            ### DELETE BLANK LINES AND EXTRA "PLACE" LINES HERE (NCR HALF FIX)
            keep_first_line = results.splitlines()[0]
            remove_blank_lines =  ("".join([s for s in results.strip().splitlines(True) if s.strip("\r\n").strip()]))
            text1 = '\n'.join(line for line in remove_blank_lines.split('\n') if 'Gun' not in line)
            text2 = '\n'.join(line for line in text1.split('\n') if 'Place' not in line)
            results2=(keep_first_line + text2)
           
            pre_decoded =  results2.splitlines()
            indexes= detect_column_indexes( pre_decoded )
            parsed= [split_line_by_indexes(indexes, line) for line in pre_decoded] 
            parsed = [[x.strip() for x in y] for y in parsed]
            try:
                page_results = identifyColumns(parsed)
                page_records = [Record(*result) for result in page_results[2:]]
            except:
                print ("Error, could not identify columns.")
                continue
        if log:
            for result in results:
                print(result)
    
    #print (page_results)
    # Add the new records from this page into the total
    records = page_records
# Finally, return the list of all records from all pages
    return records

def find_largest_table(soup):
    largest = None
    largest_size = 0
    for table in soup.find_all('table'):
        table_size = len(str(table))
        if table_size >= largest_size:
            largest = table
            largest_size = table_size
    return largest

def find_largest_pre(soup):
    largest = None
    largest_size = 0
    for pre in soup.find_all('pre'):
        pre_size = len(str(pre))
        if pre_size >= largest_size:
            largest = pre
            largest_size = pre_size
    return largest

def detect_column_indexes( list_of_lines ):
    indexes=[0]
    transitions= [col.count(' ')==len(list_of_lines) for col in zip(*list_of_lines)]
    last=False
    for i, x in enumerate(transitions):
        if not x and last:
            indexes.append(i)
        last=x
    indexes.append( len(list_of_lines[0])+1 )
    return indexes
            
def split_line_by_indexes( indexes, line ):
    tokens=[]
    for i1,i2 in zip(indexes[:-1], indexes[1:]): #pairs
        tokens.append( line[i1:i2].rstrip() )
    return tokens

def identifyColumns(parsed):
    
    col_name = parsed[0]
    findRecognizedCol(parsed)
    df = pd.DataFrame.from_dict(parsed)
    df.dropna(0,'any') ### SHOULD DROP ANY EMPTY ROWS
    for x in columnLocations:
        if x != 'None':
            finalResults.append(df[x])    
        if x == 'None':
            df[x] = np.nan
            finalResults.append(df[x])
    
    if columnLocations[0] != 'None' and columnLocations[1] != 'None':
        #print ("found both fname and lname, combining")
        df['combined'] = df[columnLocations[0]].map(str) + " " + df[columnLocations[1]].map(str)
        del finalResults[:3]
        finalResults.insert(0,df['combined'])
        #print (finalResults)
        
    elif columnLocations[2] != 'None':
        del finalResults[:2]
        #print ("Found name column only, deleting first two entries in row.")
    
    finalResults2 = list(zip(*finalResults))
    #print (finalResults2)
    return finalResults2 # Return the list of all new records from this page
    
def findRecognizedCol(parsed):
    
    foundFName = 0
    foundLName = 0
    foundName = 0
    foundAge = 0
    foundGender = 0
    foundTime = 0
    foundgunTime = 0
    foundchipTime = 0
    foundCity = 0
    #print ("#######STARTING FIRST ROW IDENTIFICATION###########")
    fname_list =['First', 'FIRST', 'Fname', 'First Name', 'FIRSTNAME', 'FirstName']
    lname_list = ['Last', 'LAST', 'Lname', 'Last Name', 'LASTNAME', 'LastName']
    name_list = ['Name', 'name', 'NAME', 'Fname        Lname', 'Fname           Lname', 'Name     Last_name', ' Name', '  Name', '   Name']
    age_list = ['Ag', 'Age', 'age', 'AGE']
    gender_list = ['Sex', 'S', 'Gender', 'GENDER']
    gun_time_list = ['Gun Time', 'GunTime','Gun', 'Gun Tim', 'Gun T']
    chip_time_list = ['Chip', 'ChipTime', 'Chip Tim', 'Chip T', 'Chip Ti']
    time_list = ['Net Time', 'NetTime', 'Finish', 'Time','Results','Net Tim','5k','Net T', 'TIME']
    city_list = ['City', 'Town', 'City                 St','Hometown']
    
    try:
        
        for fname_option in fname_list:
            #print ("searching first line for " + fname_option)
            if fname_option in parsed[0]:
                #print ("found Fname \'" + fname_option + "\' at location " + str(parsed[0].index(fname_option)))
                FnameColumn = parsed[0].index(fname_option)
                foundFName = 1
                continue
        
        for lname_option in lname_list:
            #print ("searching first line for " + lname_option)
            if lname_option in parsed[0]:
                #print ("found Lname \'" + lname_option + "\' at location " + str(parsed[0].index(lname_option)))
                LnameColumn = parsed[0].index(lname_option)
                foundLName = 1
                continue
        
        for name_option in name_list:
            #print ("searching first line for " + name_option)
            if name_option in parsed[0]:
                #print ("found name \'" + name_option + "\' at location " + str(parsed[0].index(name_option)))
                nameColumn = parsed[0].index(name_option)
                foundName = 1
                continue
        
        if foundName == 1:
            #print ("found name column only")
            columnLocations.append("None")
            columnLocations.append("None")
            columnLocations.append(nameColumn)
        elif foundFName == 1 and foundLName == 1:
            combinedNames = 1
            columnLocations.append(FnameColumn)
            columnLocations.append(LnameColumn)
            columnLocations.append("None")
            
        for age_option in age_list:
            #print ("searching first line for " + age_option)
            if age_option in parsed[0]:
                #print ("found age \'" +  age_option + "\' at location " + str(parsed[0].index(age_option)))
                ageColumn = parsed[0].index(age_option)
                columnLocations.append(ageColumn)
                foundAge = 1
                continue
        if foundAge == 0:
            columnLocations.append("None")
        
        for gender_option in gender_list:
            #print ("searching first line for " + gender_option)
            if gender_option in parsed[0]:
                #print ("found gender \'" + gender_option + "\' at location " + str(parsed[0].index(gender_option)))
                genderColumn = parsed[0].index(gender_option)
                columnLocations.append(genderColumn)               
                if parsed[0] != 'St':
                    foundGender = 1
                    continue
        if foundGender == 0:              
                columnLocations.append("None")
        
        for time_option in time_list:
            #print ("searching " + str(parsed[0]) + " for " + time_option)
            if time_option in parsed[0]:
                #print ("found time \'" +  time_option + "\' at location " + str(parsed[0].index(time_option)))
                timeColumn = parsed[0].index(time_option)
                foundTime = 1
                continue
        
        for gun_time_option in gun_time_list:
            #print ("searching " + str(parsed[0]) + " for " + gun_time_option)
            if gun_time_option in parsed[0]:
                #print ("found gun time \'" +  gun_time_option + "\' at location " + str(parsed[0].index(gun_time_option)))
                guntimeColumn = parsed[0].index(gun_time_option)
                foundgunTime = 1
                continue
        
        #print (columnLocations)    
        for chip_time_option in chip_time_list:
            #print ("searching " + str(parsed[0]) + " for " + chip_time_option)
            if chip_time_option in parsed[0]:
                #print ("found chip time \'" +  chip_time_option + "\' at location " + str(parsed[0].index(chip_time_option)))
                chiptimeColumn = parsed[0].index(chip_time_option)
                foundchipTime = 1
                continue
            
            #### DECIDE WHICH TIME TO USE ####
        if foundTime == 1: #'Net Time', 'NetTime', 'Finish', 'Time','Results','Net Tim'
            columnLocations.append(timeColumn) 
        elif foundchipTime == 1 and foundgunTime == 1:
            #print ("found both chip and gun time, using chip")
            columnLocations.append(chiptimeColumn) 
        elif foundchipTime == 1 and foundgunTime ==0:
            #print ("found chip and no gun time, using chip")
            columnLocations.append(chiptimeColumn) 
        elif foundchipTime == 0 and foundgunTime ==1:
            #print ("found gun time and no chip time, using gun")
            columnLocations.append(guntimeColumn) 
        else:
            columnLocations.append("None") 
        for city_option in city_list:
            #print ("searching first line for " + city_option)
            if city_option in parsed[0]:
                #print ("found city \'" +  city_option + "\' at location " + str(parsed[0].index(city_option)))
                cityColumn = parsed[0].index(city_option)
                columnLocations.append(cityColumn) 
                foundCity = 1
        if foundCity == 0:
            columnLocations.append("None")            
                
    except ValueError:
        print ("error")
        return ''
    
