import urllib.request as url
from bs4 import BeautifulSoup
from Entry import Entry
import nltk

#########TEST URLS##############
####PRE TAGS###    https://www.annapolisstriders.org/result/2017-valentines-5k-results/    ##########
####PLAIN TEXT#### http://www.mdtiming.com/2018/LadyBay2018-Results.TXT    #############
####TABLE#####     http://www.brrc.com/gunpowder-keg-ultra-trail-races-7     #####

log = False

def main(pages, race):
    entries = []
    race_type = ""

    for page in pages:
        req = url.Request(page,  headers={'User-Agent': 'Mozilla/5.0'})
        result = url.urlopen(req).read()
        read_url_as_text = result.decode(encoding="cp1252").splitlines()
        result_as_text = result.decode(encoding="cp1252")
      
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
                print ("FOUND TABLE AND PRE RESULTS, TABLE RESULTS ARE LARGER")
                
                rows = table.find_all("tr")
                table_contents = []   # store your table here
                for tr in rows:
                    if rows.index(tr) == 0 : 
                        row_cells = [ th.getText().strip() for th in tr.find_all('th') if th.getText().strip() != '' ]  
                    else : 
                        row_cells = ([ tr.find('th').getText() ] if tr.find('th') else [] ) + [ td.getText().strip() for td in tr.find_all('td') if td.getText().strip() != '' ] 
                    if len(row_cells) > 1 : 
                        table_contents += [ row_cells ]
                        
                print (table_contents)
                race_type = "table_type"
                print ("END TABLE RESULTS")
                

            #IF THE PRE SECTION IS LARGER THAN ANY TABLE ON THE PAGE (OR NO TABLE)
            elif pre and pre_bytes_length > table_bytes_length:
                print ("FOUND PRE TAG")
                #print ("######RAW DATA#####")
                #print (type(pre))
                #print (pre)
                pre_as_str = pre.get_text().strip()
               
                f= open("temp.txt","w+")
                f.write(pre_as_str)
                f.close
                
                cut_line =  get_line_number("Place","temp.txt")
                print ("Cutting first " + str(cut_line) + " lines.")
                cut_line = cut_line - 1
                results = '\n'.join(pre_as_str.split('\n')[cut_line:])
                #print ("results is \n" + results)
                pre_decoded =  results.splitlines()
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
                                
            elif '.txt' in str(pages) or '.TXT' in str(pages):
                print ("FOUND TXT OUTPUT") 
                
                print (result_as_text)
                print ("######################")
                #print (read_url_as_text)
                for j, line in enumerate(result_as_text, 1):
                    if "Place" in line:
                        return j
                print (j)
                
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
                #print (parsed)
                print ("END TXT OUTPUT")
                race_type = "txt_type"
                
            else:
                print ("Could not locate and results on this page")
                            
    
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

def findStart(pre_as_str):
    for line in pre_as_str:
         if "=" in line:
            return pre_as_str.index(line)
            
    return -1

def get_line_number(phrase, file_name):
    with open(file_name) as g:
         for j, line in enumerate(g, 1):
            if phrase in line:
                return j





