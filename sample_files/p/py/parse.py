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

def Extract(lst,element): 
    return [item[element] for item in lst] 

path = sys.argv[1]
file = open(path, 'r')

path2 = sys.argv[2]
file2 = open(path2, 'r')

L = []
for line in file:
    values = line.strip('{}\n\r ').split('|')
    L.append(values)

widths=Extract(L,1)
widths = [int(i)*2 for i in widths] 
colnames=Extract(L,0)
data_type=Extract(L,2)
    
df = pd.read_fwf(path2, widths=widths,names=colnames, dtype="string", engine = 'c')
print(df[:10])

columns = list(df) 
count=0
for j in columns: 
    convert=data_type[count]
    print("Procesing column " + str(j) + " as " + str(convert))
    
    if convert=="EBCDIC":
        df[j]=df[j].apply(EBCDIC)
    if convert=="Packed":
        df[j]=df[j].apply(Packed_Decimal_Clean)
    if convert=="Zoned":
        df[j]=df[j].apply(Zoned_Decimal)
    count=count+1
    
df.replace("+0","0", inplace=True)
df.replace("+","", inplace=True)
df.replace("-","", inplace=True)
print(df[:10])

df.to_excel(r'TRAFFIC_1962-1970.xlsx', index=False)
df.to_csv(r'TRAFFIC_1962-1970.csv', index=False,sep = '|')
