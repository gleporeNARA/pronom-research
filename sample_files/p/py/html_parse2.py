import urllib.request as url
import urllib.parse
from bs4 import BeautifulSoup
from Entry import Entry, Record, FULLNAME, NICKNAME
import codecs
import requests
# import pdftables_api
import re
import datetime
import pandas as pd
import numpy as np
from numpy import nan as Nan
import csv

log = False
finalResults = []
columnLocations = []

### RUN: python3 init.py https://www.mcrrc.org/race-results/2018/06/mcrrc-suds-soles-5k/ test ###

### SUGGESTIONS FOR FIXES AND IMPROVEMENTS ###

### FIX THE PRE AND TEXT SECTIONS TO REMOVE WRITING TO FILE AND READING BACK ###
### ADD ERROR DETECTION AND REPORTING ###
### SET MINIMUM LENGTH TO ALL PARSING (THIS WILL AVOID TRYING TO PARSE RANDOM PRE AND TABLE SECTIONS) ###

### TODO ###
### ADD SECTIONS TO PARSE CHRONOTRACKS, ATHLINKS, AND SPORTHIVE PAGES TO LIST CALLED parsed ###
### IF NECESSARY, ADD HEURISTIC DETECTION OF COLUMNS WHICH AREN'T TITLED NORMALLY (I'VE GOT THIS ROUGHED IN) ###


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
            #c = pdftables_api.Client('8wsgwbxr1upf')
            #c.csv('temp_pdf.pdf', 'output.csv')
            
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
            read_url_as_text = result.decode(encoding="cp1252").splitlines()
            result_as_text = result.decode(encoding="cp1252")      
            soup = BeautifulSoup(result, 'html.parser')
            
        print ("ANALYZING " + str(pages))
            
        table = find_largest_table(soup)    ###FIND LARGEST TABLE ON PAGE
        table_bytes_length = len(str(table))###LENGTH OF LARGEST TABLE
        pre = find_largest_pre(soup)        ###FIND LARGEST PRE SECTION
        pre_bytes_length = len(str(pre))    ###LENGTH OF LARGEST PRE
        
        iframe = soup.find_all('iframe')    ###IF THERE'S AN IFRAME EMBEDDED, SEARCH FOR CHRONOTRACK LINK
        for iframe_results in iframe:
            if 'chronotrack' in str(iframe_results):
                print ("CHRONOTRACK IFRAME FOUND")
                
        if 'Chronotrack' in str(pages) or 'chronotrack' in str(pages):
            print ("FOUND CHRONOTRACK RESULTS")
            #PUSH TO CHRONOTRAK RESULTS PULLER
            race_type = "chronotrack_type"
            
        elif 'Athlinks' in str(pages) or 'athlinks' in str(pages):
            print ("FOUND ATHLINKS RESULTS")
            #PUSH TO ATHLINKS RESULTS PULLER                
            race_type = "athlinks_type"
            
        elif 'Sporthive' in str(pages) or 'sporthive' in str(pages):
            print ("FOUND SPORTHIVE RESULTS")
            #PUSH TO SPORTHIVE RESULTS PULLER                
            race_type = "sporthive_type"  
                            
        
        #IF THE LARGEST TABLE ON THE PAGE IS LARGER THAN THE PRE SECTION (OR THERE IS NO PRE SECTION)
        elif table is not None and table_bytes_length > pre_bytes_length:
            print ("FOUND TABLE AND PRE TAGS, TABLE RESULTS ARE LARGER")

            table_contents = pd.read_html(str(table))
            parsed = table_contents[0].values.tolist()
            #print (parsed)
            race_type = "table_type"
            page_results = identifyColumns(parsed)
            
            page_records = [Record(*result) for result in page_results[2:]]
            #print (page_records)
        #IF THE PRE SECTION IS LARGER THAN ANY TABLE ON THE PAGE (OR NO TABLE)
        elif pre and pre_bytes_length > table_bytes_length:
            print ("FOUND PRE RESULTS")
            pre_as_str = pre.get_text().strip()
            
            f= codecs.open("pre_temp.txt","w+", "ISO-8859-1")
            f.write(pre_as_str)
            f.close()
            
            for j, line2 in enumerate(pre_as_str, 1):
                if "Place" in line2:
                    return j
            
            ### SEARCH FOR THE WORD "Place" AND REMOVE EVERYTHING BEFORE THAT ###
            cut_line =  get_line_number("Place","pre_temp.txt")
            #print ("cut_line is " + str(cut_line))
            if cut_line != None:
                #print ("Cutting first " + str(cut_line) + " lines.")
                cut_line = cut_line - 1
            results = '\n'.join(pre_as_str.split('\n')[cut_line:])
            
            ### START LOOKING FOR AN AWARDS SECTION AND REMOVING IT ###
            results2=""
            awards_line =  get_line_number("Awards","pre_temp.txt")
            #if awards_line:
                #print ("Awards line starts at " + str(awards_line)+ ".")
            if awards_line != None:
                #print ("Cutting awards lines from " + str(awards_line) + " to the end.")
                awards_line = awards_line - 14
                results2 = '\n'.join(results.split('\n')[:awards_line])
            else:
                results2=results
            pre_decoded =  results2.splitlines()

            indexes= detect_column_indexes( pre_decoded )
            parsed= [split_line_by_indexes(indexes, line) for line in pre_decoded] 
            parsed = [[x.strip() for x in y] for y in parsed]
            print ("END PRE RESULTS")
            race_type = "pre_type"
            page_results = identifyColumns(parsed)
            #print (page_results)
            
            page_records = [Record(*result) for result in page_results[1:]]
            #print (page_records)
        #IF THE RESULTS ARE IN TEXT FILE FORMAT (MDTIMING.COM) 
        elif '.txt' in str(pages) or '.TXT' in str(pages):
            print ("FOUND TXT RESULTS") 
            
            pre_as_str = result_as_text.strip()
            
            f= codecs.open("text_temp.txt","w+", "utf-8")
            f.write(pre_as_str)
            f.close
            
            ### SEARCH FOR THE WORD "Place" AND REMOVE EVERYTHING BEFORE THAT ###
            cut_line =  get_line_number("Place","text_temp.txt")
            #print ("Cutting first " + str(cut_line) + " lines.")
            cut_line = cut_line - 1
            results = '\n'.join(pre_as_str.split('\n')[cut_line:])
            pre_decoded =  results.splitlines()

            indexes= detect_column_indexes( pre_decoded )
            parsed= [split_line_by_indexes(indexes, line) for line in pre_decoded] 
            parsed = [[x.strip() for x in y] for y in parsed]
            #print ("END TXT RESULTS")                
            race_type = "txt_type"
            page_results = identifyColumns(parsed)
            #print (page_results)
            # Now convert these into Record() instances
            page_records = [Record(*result) for result in page_results[2:]]

        else:
            print ("Could not locate any results on this page.")
                            
    if log:
        for result in results:
            print(result)
    
    # Add the new records from this page into the total
    records = page_records
    #records = records.extend(page_records)
    #print (records)

# Finally, return the list of all records from all pages
    ####return records UNDO UNDO
    
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

def get_line_number(phrase, file_name):
    with open(file_name, encoding="utf-8", errors="ignore") as g:
        for j, line2 in enumerate(g, 1):
            if phrase in line2:
                return j

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
       
    for x in columnLocations:
        if x != 'None':
            finalResults.append(df[x])    
        if x == 'None':
            df[x] = np.nan
            finalResults.append(df[x])
        
    if columnLocations[0] != 'None' and columnLocations[1] != 'None':
        print ("found both fname and lname, combining")
        df['combined'] = list(zip(df[columnLocations[0]] + " " + df[columnLocations[1]]))
        df['combined'] = df['combined'].astype(str)
        del finalResults[:3]
        df['combined'] = df['combined'].str.replace('(', '')
        df['combined'] = df['combined'].str.replace(')', '')
        df['combined'] = df['combined'].str.replace(',', '')
        df['combined'] = df['combined'].str.replace('\'', '')
        finalResults.insert(0,df['combined'])
        #print (finalResults)
        
    elif columnLocations[3] != 'None':
        del finalResults[:2]
        #print ("Found name column only")
    
    finalResults2 = list(zip(*finalResults))
    #print (type(finalResults2))
    
    print (finalResults2)
    
    ###PRETTY PRINT THE RESULTS###
    #row_format = '{:<25}' * len(finalResults)
    #for t in zip(*finalResults):
        #print(row_format.format(*t))  
    
    #c = csv.writer(open("results.csv","w"), delimiter="|")
    #c.writerows(finalResults2)
    
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
    fname_list =['First', 'FIRST', 'Fname', 'First Name']
    lname_list = ['Last', 'LAST', 'Lname', 'Last Name']
    name_list = ['Name', 'name', 'NAME', 'Fname        Lname', 'Fname           Lname']
    age_list = ['Ag', 'Age', 'age', 'AGE']
    gender_list = ['Sex', 'S', 'Gender']
    gun_time_list = ['Gun Time', 'GunTime','Gun', 'Gun Tim', 'Gun T']
    chip_time_list = ['Chip', 'ChipTime', 'Chip Tim', 'Chip T']
    time_list = ['Net Time', 'NetTime', 'Finish', 'Time','Results','Net Tim','5k', '5K','Net T']
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
            columnLocations.append(chiptimeColumn) 
        elif foundchipTime == 1 and foundgunTime ==0:
            columnLocations.append(chiptimeColumn) 
        elif foundchipTime == 0 and foundgunTime ==1:
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
    
    
##########MULTIPLE TIME COLUMNS TEST URLS#########
####https://www.mcrrc.org/race-results/2018/06/mcrrc-suds-soles-5k/ #### 3 times
####http://www.mdtiming.com/2018/BRRC-FF2018results.TXT #### 2 times


#########TEST URLS##############
####PRE TAGS   https://www.mcrrc.org/race-results/2018/06/mcrrc-suds-soles-5k/    ##########
####PLAIN TEXT http://www.mdtiming.com/2018/BRRC-FF2018results.TXT    #############
####TABLE      http://www.brrc.com/gunpowder-keg-ultra-trail-races-7     #####


### RESULTS WITH ISSUES ###
### http://www.mdtiming.com/2018/Resser2018-Results.TXT encoding issue? ###
### https://www.mcrrc.org/race-results/2018/04/lions-roar-kate-truax-5k-3/ encoding issue ###
### http://www.mdtiming.com/2018/MArksRun2018-Results.TXT encoding issue ###
### http://www.brrc.com/gps-cross-country-1 ?? ###


#DCRRC RESULTS

#https://www.dcroadrunners.org/races/race-results/2011-results/1854-2011-on-eagles-wings-10k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1584-2011-gar-williams-half-marathon.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1574-2011-bread-run-10k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1587-2011-bread-run-2m.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1569-2011-arthritis-foundation-jingle-bell-5k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1559-2011-st-ritas-2k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1558-2011-st-ritas-5k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/2366-2011-gtsi-charity-5k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1260-2011-cancer-prevention-5k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1252-2011-larry-noel-15k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1249-2011-steve-thompson-8k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1236-2011-paul-thurston-45-miler.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1232-2011-cross-country-3-miler.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1226-2011-rays-race.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1224-bluemont-5k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1218-2011-track-championchips.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1202-2011-bastille-day-4-miler.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1189-2011-hugh-jascourt-4-miler.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1184-2011-run-after-the-women.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1183-2011-womens-distance-festival.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1161-hb-woodlawn-trail-5k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1153-jeb-stewart-raider-run-5k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1142-2011-vienna-elementary-5k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1131-2011-spirit-of-reston-5k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1090-2011-fort-hunt-10k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1082-2011-burke-lake-12k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1067-2011-gw-marathon.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1057-2011-langley-8k.html
#https://www.dcroadrunners.org/races/race-results/2011-results/1032-2011-jfk-20k.html

#BRRC RESULTS

#http://www.brrc.com/meet-miles-13
#http://www.brrc.com/fathers-day-5k
#http://www.brrc.com/gunpowder-trail-race-14
#http://www.brrc.com/womens-distance-festival-12
#http://www.brrc.com/freeland-15k-1
#http://www.brrc.com/prettyboy-trail-race-12
#http://www.brrc.com/gunpowder-keg-ultra-trail-races-7
#http://www.brrc.com/baltimores-st-patricks-day-5k-0
#http://www.brrc.com/cupids-crush-2
#http://www.brrc.com/super-bowl-trail-race-6
#http://www.brrc.com/loch-raven-8-miler-0
#http://www.brrc.com/frozen-finger-5-miler-4
#http://www.brrc.com/masters-5k-and-social-0
#http://www.brrc.com/ncr-trail-marathon-relay-1
#http://www.brrc.com/ncr-trail-half-marathon
#http://www.brrc.com/little-gunpowder-trail-race-0
#http://www.brrc.com/gps-cross-country-1
#http://www.brrc.com/night-moves-trail-race-0

#MCRRC RESULTS

#https://www.mcrrc.org/race-results/2018/06/mcrrc-suds-soles-5k/
#https://www.mcrrc.org/race-results/2018/06/run-for-roses-5k-3/
#https://www.mcrrc.org/race-results/2018/05/jeremys-run-5k-10/
#https://www.mcrrc.org/race-results/2018/05/jeremys-run-10k-8/
#https://www.mcrrc.org/race-results/2018/05/memorial-day-4-mile-4/
#https://www.mcrrc.org/race-results/2018/05/defeat-dipg-superhero-6k-2/
#https://www.mcrrc.org/race-results/2018/05/germantown-5-miler-9/
#https://www.mcrrc.org/race-results/2018/05/hope-for-henry-5k/
#https://www.mcrrc.org/race-results/2018/05/run-aware-5k-xc/
#https://www.mcrrc.org/race-results/2018/05/wood-acres-jogfest-5k-5/
#https://www.mcrrc.org/race-results/2018/05/la-milla-de-mayo-1-mile/
#https://www.mcrrc.org/race-results/2018/05/bulldog-5k-7/
#https://www.mcrrc.org/race-results/2018/04/pikes-peek-10k-13/
#https://www.mcrrc.org/race-results/2018/04/lions-roar-kate-truax-5k-3/
#https://www.mcrrc.org/race-results/2018/04/azalea-classic-5k-9/
#https://www.mcrrc.org/race-results/2018/04/capital-for-a-day-5k-3/
#https://www.mcrrc.org/race-results/2018/04/trojan-family-breakfast-5k/
#https://www.mcrrc.org/race-results/2018/04/spirit-5k/
#https://www.mcrrc.org/race-results/2018/04/clarksburg-5k-11/
#https://www.mcrrc.org/race-results/2018/04/spin-in-the-woods-4m-xc/
#https://www.mcrrc.org/race-results/2018/03/piece-of-cake-5k-2018/
#https://www.mcrrc.org/race-results/2018/03/piece-of-cake-10k-2018/
#https://www.mcrrc.org/race-results/2018/02/kemp-mill-chills-10k/
#https://www.mcrrc.org/race-results/2018/02/kemp-mill-chills-5k/
#https://www.mcrrc.org/race-results/2018/01/country-road-5-miler/

#MDTIMING.COM RESULTS

#http://www.mdtiming.com/2018/BRRC-FF2018results.TXT
#http://www.mdtiming.com/2018/BRRC-8miler2018results.TXT
#http://www.mdtiming.com/2018/AS-Valentine2018Results.TXT
#http://www.mdtiming.com/2018/BRRC-CCawl2018-Results.TXT
#http://www.mdtiming.com/2018/OCShamrock2018-Results.TXT
#http://www.mdtiming.com/2018/Bolt2018-Results.TXT 
#http://www.mdtiming.com/2018/Resser2018-Results.TXT
#http://www.mdtiming.com/2018/Oldfield2018-results.TXT
#http://www.mdtiming.com/2018/WestMSM2018-REsults.TXT
#http://www.mdtiming.com/2018/LadyBay2018-Results.TXT
#http://www.mdtiming.com/2018/Fodd2018-Results.TXT
#http://www.mdtiming.com/2018/ThunderSpr2018-Results.TXT 
#http://www.mdtiming.com/2018/Belvoir2018-Results.TXT
#http://www.mdtiming.com/2018/Ship2018-Mile-Results.TXT
#http://www.mdtiming.com/2018/BRRC-WDF2018-Results.TXT
#http://www.mdtiming.com/2018/Chana2018-10k-Results.TXT
#http://www.mdtiming.com/2018/Chana2018-Walk-Results.TXT
#http://www.mdtiming.com/2018/HEroBoy2081-Results.TXT
#http://www.mdtiming.com/2018/ChambPov2018-Results.TXT
#http://www.mdtiming.com/2018/MArksRun2018-Results.TXT
#http://www.mdtiming.com/2018/SumSol2018-results.TXT

#HCS STRIDERS RESULTS
#http://www.striders.net/wp-content/uploads/2018/06/2018.wdf5k.results.overall.pdf
#http://www.striders.net/wp-content/uploads/2018/06/Centennial_Mile1_Results_06-19-18.pdf
#http://www.striders.net/wp-content/uploads/2016/07/2018-spring-hops-results.pdf




