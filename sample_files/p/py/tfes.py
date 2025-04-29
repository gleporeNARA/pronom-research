#!/usr/bin/env python3

import sys
from pandas import DataFrame
import pandas as pd
import numpy as np

path = sys.argv[1]

with open('widths.csv') as f:
        widths = [line.rstrip() for line in f]
        widths = [int(i) for i in widths] 
     
with open('colnames.csv') as f:
        colnames = [line.rstrip() for line in f]

#print(widths)
#print(colnames)
df = pd.read_fwf(path, widths=widths,names=colnames, dtype="string", engine = 'c')

print(df)

df.to_excel(r'TFES.xlsx', index=False)
df.to_csv(r'TFES.csv', index=False,sep = '|')
