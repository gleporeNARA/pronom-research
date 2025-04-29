
#!/usr/bin/env python3
import binascii
import sys
from pandas import DataFrame
import pandas as pd
import numpy as np
from numpy import loadtxt
from GLebcdic import Packed_Decimal_Clean, Zoned_Decimal, EBCDIC, Binary
import codecs
import csv
import openpyxl
import re
from openpyxl import Workbook
from openpyxl.utils.dataframe import dataframe_to_rows
from openpyxl.styles import Font
from openpyxl.styles import NamedStyle
import os
import sys
df = pd.DataFrame(np.random.choice(["boo", "baz", "far"], size=(10, 250)))
df = df.apply(lambda col: col.astype('category'))

wb = Workbook(write_only=True)
ws = wb.create_sheet()

for row in dataframe_to_rows(df,  index=True, header=True):
    ws.append(row)
