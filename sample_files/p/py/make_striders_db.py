#!/usr/bin/env python3

import sys
import argparse
import sqlite3
import csv
import os
from collections import Counter

def make_db(csv_file, db_file, delim=',', header = False):
    """Make a sqlite3 database of Striders from a provided
    csv file. By default the csv delimiter is the comma and
    there is no file header with column names."""
    members = [] # List for info from each members (will be list of tuples)
    with open(csv_file) as f:
        reader = csv.reader(f, delimiter=delim)
        for i, row in enumerate(reader):
            if i == 0 and header:
                continue # skip the header row
            members.append(tuple(row))
    
    # Now create an empty sqlite3 database
    conn = sqlite3.connect(db_file)
    c = conn.cursor()
    # Make a table for the data
    c.execute("""CREATE TABLE IF NOT EXISTS members (lname TEXT NOT NULL, fname TEXT NOT NULL, city TEXT, age INTEGER)""")
    # Now add the member data into the table
    c.executemany('INSERT INTO members VALUES (?, ?, ?, ?)', members)
    # A little cleanup
    c.execute('CREATE INDEX fullname ON members (lname, fname)')
    conn.commit()
    conn.close()


def main():
    usage = "%(prog)s [options] input_csv output_db"
    desc = "A program to create a sqlite3 database of Striders members. "\
            "The program expects a csv file (default delimiter is ',') with "\
            "data in the following order: FirstName, LastName, City, Age"
    parser = argparse.ArgumentParser(usage=usage, description = desc)
    parser.add_argument('-v', '--verbose', action='store_true',
                      help='Print output verbosely')
    parser.add_argument('-d', '--delim', default = ',', 
                      help='Delimiter for csv (default = ",")')
    parser.add_argument('-i', '--includes-header', action='store_true',
                      help="The csv file contains a one-line header to be skipped (default: it doesn't)")
    parser.add_argument('input_csv', help='name of input csv file')
    parser.add_argument('output_db', help='name of output sqlite3 db file')
 
    args = parser.parse_args()    

    # If sqlite3 file already exists, ask if we want to add to existing db
    db_exists = os.access(args.output_db, os.F_OK)
    if db_exists:
        print("Database file already exists. Contnuing will ADD csv contents to this database.")
        print("This is usually NOT what we want, since we don't want duplicate entries in the database.")
        print("Do you want to continue and add additional data to this database?")
        resp = input("Type 'Y' to continue, anything else to quit: ")
        if resp.upper() != 'Y':
            sys.exit()
    
    # Call the code to build database
    make_db(args.input_csv, args.output_db, args.delim, args.includes_header)

if __name__ == '__main__':
    sys.exit(main())
