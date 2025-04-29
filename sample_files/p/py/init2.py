#!/usr/bin/env python3

import sys
import argparse
import sqlite3
import txt
import html_parse
import csv
import re
from functools import reduce
from nicknames import NameDenormalizer
from collections import Counter
from urllib.parse import urlparse
from os.path import basename

print ("\n\n*********\n\nSTEP 1: DOWNLOAD HCS MEMBERSHIP DATABASE, LAST NAME, FIRST NAME, CITY, AGE.\nSTEP 2: SORT AND UNIQ MEMBERSHIP FILE\nSTEP 3: DELETE OLD SQLITE3 FILE AND RUN MAKE_STRIDERS_DB. \nSTEP 4: RUN INIT AGAINST URL.\n\n*********\n\n")

NAME_AGE_CITY =  1 # fullname, age, city
NICK_AGE_CITY =  2 # nickname, age, city
NAME_AGE      =  4 # fullname, age
NICK_AGE      =  8 # nickname, age
NAME_CITY     = 16 # fullname, city
NAME          = 32 # fullname
NICK          = 64 # nickname
MATCH_NAMES = {1: 'NAME_AGE_CITY', 2: 'NICK_AGE_CITY', 3: 'NAME_AGE',
               4: 'NICK_AGE', 5: 'NAME_CITY', 6: 'NAME', 7: 'NICK'}
NICK_QUERIES = {k for k,v in MATCH_NAMES.items() if 'NICK' in v} 

def parse_url(url):
    """A function to parse the race url. We want to pull out the last part of
    the path (basename), which sometimes gets used to determine how to parse the
    page. We'll also build a filename for a csv file, if we want to output all
    race results to a csv."""   
    
def main():
    DESC = 'Extract Striders race results from a web page of results.'
    parser = argparse.ArgumentParser(description = DESC)
    parser.add_argument('-v', '--verbose', help='verbose output', action = 'store_true')
    parser.add_argument('-s', '--sparse', help='sparse output (name and time only)', action = 'store_true')
    parser.add_argument('-q', '--query', default = '1,2,3,4,5,6,7', 
                        help='''db queries (comma-separated numbers, in quotes).
                             1: NAME_AGE_CITY, 2: NICK_AGE_CITY, 3: NAME_AGE, 4: NICK_AGE, 5: NAME_CITY, 6: NAME, 7: NICK.
                             Eg '-q 1' or '-q "1,2,4"' (Default = "1,2,3,4,5,6,7")''')
    parser.add_argument('-d', '--db', default = 'striders.sqlite3', 
                        help='Path of sqlite3 database of Striders info (default: striders.sqlite3')
    parser.add_argument('link', help='URL of race results')
    
    args = parser.parse_args()
    link = args.link
    race =  parse_url(link)
    db = args.db
    if args.verbose and args.sparse:
        parser.error("For verbose and sparse, please choose one, or neither, but not both")
    
    # Handle which db queries are given on command line. Make a list of ints
    # We'll pass this list to record.is_strider()
    query_vals = [int(num) for num in args.query.split(',')]
    # Check to make sure all query values are legal
    if not all([v in MATCH_NAMES for v in query_vals]):
        parser.error("Only the following query values are allowed: {}. Values given: {}".\
                      format(sorted(list(MATCH_NAMES.keys())), query_vals))
    
    # If we're doing any nickname queries, make a nickfinder object
    if any(val in NICK_QUERIES for val in query_vals):
        nickfinder = NameDenormalizer()
    else:
        nickfinder = None
    
    # Connect to the Striders database     
    conn = sqlite3.connect(db)
    cursor = conn.cursor()

    records = []
    pages = []
    pages.append(link)
    records = html_parse.main(pages)

    if not args.sparse:
        print("Striders")
        print("========")
        print ("{:30s} {:3s} {:2s} {:20s} {:22s}".format("NAME", "AGE", "S", "TIME", "CITY"))
    record_count = 0
    match_count = 0
    match_type = Counter()

    for record in records:
        record_count +=1
        match_result, test = record.is_strider(cursor, queries = query_vals, nickfinder=nickfinder)
        if match_result:
            match_count +=1
            match_type[test] += 1
            if args.verbose:
                print("{}   {:14s}  Matching Strider: {}".format(record, MATCH_NAMES[test], match_result[0]))
            elif not args.sparse:
                print(record)
            else:
                print(record.sparse_output().title())
                
    print("========\n")
    print ("Sparse results\n")
    for record in records:
        match_result, test = record.is_strider(cursor, queries = query_vals, nickfinder=nickfinder)
        if match_result:
            print(record.sparse_output().title())
                
    if args.verbose:
        print("Processed {:5d} records".format(record_count))
        print("Identified {:4d} matches (= {:6.2f}%)".format(match_count, 100 * match_count / record_count))
        print()
        for mtype, count in sorted(match_type.items()):
            print("{:5d} matches of type {}  (= {:6.2f}%)".format(count, MATCH_NAMES[mtype], 100 * count/match_count))
    
    #csv_file = open(csv_name, 'w')
    #writer = csv.writer(csv_file,
                        #delimiter='|',
                        #quotechar='|',
                        #quoting=csv.QUOTE_MINIMAL)
    #for record in records:
        #writer.writerow((record.name, record.age, record.gender, record.time, record.city, ))


if __name__ == '__main__':
    main()
