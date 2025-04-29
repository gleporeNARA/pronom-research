#!/usr/bin/env python3
import binascii
import sys
from pandas import DataFrame
import pandas as pd
import numpy as np
from numpy import loadtxt
from GLebcdic import Packed_Decimal_Clean, Zoned_Decimal, EBCDIC
import codecs
import csv

with open('widths.csv') as f:
    widths = [line.rstrip() for line in f]
    widths = [int(i) for i in widths] 
    
with open('colnames.csv') as f:
    colnames = [line.rstrip() for line in f]

path = sys.argv[1]

df = pd.read_fwf(path, widths=widths,names=colnames, dtype="string", engine = 'c')
df.dropna(inplace=True)

num_rows=(len(df))
columns = list(df) 
print(len(columns))
num_rows=(len(df))
df.replace(np.nan, 0, inplace=True)

ebcdic_cols=[*range(0,27)]
packed_cols=[]
zoned_cols=[]

for j in columns:  

    if columns.index(j) in ebcdic_cols:
        print("Processing column " + str(columns.index(j)) + " "  + str(j) + " as EBCDIC")
        df[j]=df[j].apply(EBCDIC)
        
    elif columns.index(j) in packed_cols:
        print("Processing column " + str(columns.index(j)) + " "  + str(j) + " as Packed Decimal")
        df[j]=df[j].apply(Packed_Decimal_Clean)
        
    elif columns.index(j) in zoned_cols:
        print("Processing column " + str(columns.index(j)) + " "  + str(j) + " as Zoned Decimal")
        df[j] = df[j].apply(Zoned_Decimal) 

df.replace("+0","0", inplace=True)
df.replace("+","", inplace=True)
print(df[:10])
df.to_excel(r'CHARTER_79.xlsx', index=False)
df.to_csv(r'CHARTER_79.csv', index=False,sep = '|')
