import urllib.request as url
from bs4 import BeautifulSoup
from Entry import Entry


#########TEST URLS##############
####PRE TAGS###https://www.annapolisstriders.org/result/2017-valentines-5k-results/##########
####PLAIN TEXT####http://russellvets.org/ba.txt#############
####TABLE#####http://www.brrc.com/gunpowder-keg-ultra-trail-races-7#####

log = False

def main(pages, race):
    entries = []
    race_type = ""
        
    for page in pages:
        req = url.Request(page,  headers={'User-Agent': 'Mozilla/5.0'})
        result = url.urlopen(req).read()
        read_url_as_text = result.decode(encoding="cp1252").splitlines()
      
        soup = BeautifulSoup(result, 'html.parser')
     
        if race == "test":
            
            table = find_largest_table(soup)
            table_bytes_length = len(str(table))
            pre = find_largest_pre(soup)
            pre_bytes_length = len(str(pre))
            iframe = soup.find_all('iframe')
            for iframe_results in iframe:
                if 'chronotrack' in str(iframe_results):
                    print ("CHRONOTRACK IFRAME FOUND")
            
        #IF THE LARGEST TABLE ON THE PAGE IS LARGER THAN THE PRE SECTION (OR THERE IS NO PRE SECTION)
            if table is not None and table_bytes_length > pre_bytes_length:
                print ("FOUND TABLE AND PRE RESULTS, TABLE RESULTS ARE LARGER")
                #print (type(table))
                table_to_list = []
                ####NEED TO ADD TH DETECTION TO AVOID LOSING HEADERS, I.E. GERMANTOWN 5 MILER https://www.mcrrc.org/race-results/2018/05/germantown-5-miler-9/
                allrows = table.findAll('tr')
                for row in allrows:
                    #print (row)
                    table_to_list.append([])
                    allcols = row.findAll('td')
                    for col in allcols:
                        thestrings = [str(s) for s in col.findAll(text=True)]
                        thetext = ''.join(thestrings)
                        thetext = thetext.replace('\t', '')
                        thetext = thetext.replace('\n', '')
                        #print (type(thetext))
                        table_to_list[-1].append(thetext)
                print (table_to_list)
            
                race_type = "table_type"
                print ("END TABLE RESULTS")
                

        #IF THE PRE SECTION IS LARGER THAN ANY TABLE ON THE PAGE (OR NO TABLE)
            if pre and pre_bytes_length > table_bytes_length:
                print ("FOUND PRE TAG")
                #print ("######RAW DATA#####")
                #print (pre)
                pre_as_str = pre.get_text().strip()
                ####NEED TO LOCATE THE FIRST LINE OF RESULTS RATHER THAN JUST HACKING OFF 5 LINES. MAYBE FIND FIRST LINE WITH COLONS (IN TIMES) ON IT, AND BACK UP ONE LINE?
                pre_as_str2 = '\n'.join(pre_as_str.split('\n')[5:])
                pre_decoded =  pre_as_str2.splitlines()
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

                indexes= detect_column_indexes( pre_decoded )
                parsed= [split_line_by_indexes(indexes, line) for line in pre_decoded] 
                #print (indexes)
                #print ("#####OUTPUT####")
                print (parsed)
                #print (type(parsed))
                print ("END PRE")
                race_type = "pre_type"

                                
            if '.txt' in str(pages) or '.TXT' in str(pages):
                print ("FOUND TXT OUTPUT")  
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

                indexes= detect_column_indexes( read_url_as_text )
                parsed= [split_line_by_indexes(indexes, line) for line in read_url_as_text] 
                #print (indexes)
                print (parsed)
                print ("END TXT OUTPUT")
                race_type = "txt_type"
               
            if 'Chronotrack' in str(pages) or 'chronotrack' in str(pages):
                print ("FOUND CHRONOTRAcK RESULTS")
                #PUSH TO CHRONOTRAK RESULTS PULLER
                race_type = "chronotrack_type"
                
            if 'Athlinks' in str(pages) or 'athlinks' in str(pages):
                print ("FOUND ATHLINKS RESULTS")
                #PUSH TO ATHLINKS RESULTS PULLER                
                race_type = "athlinks_type"
                
            if 'Sporthive' in str(pages) or 'sporthive' in str(pages):
                print ("FOUND SPORTHIVE RESULTS")
                #PUSH TO SPORTHIVE RESULTS PULLER                
                race_type = "sporthive_type"                
    
        if log:
            for entry in entries:
                print(entry)
                
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












