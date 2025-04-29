#!/usr/bin/env python3

import binascii
import sys
from GLebcdic import Packed_Decimal_Clean
import codecs
import csv

f = open("EEO4_HI_1974.csv", "w")
f.write("Control Number -State Code (FIPS)|Control Number - Type|Control Number - Sequence Number|Function Code|Stratum Code|County Code (FIPS)|SMSA Code (FIPS)|Address Information - Jurisdiction Name|Address Information - Title|Address Information - Street Address|Address Information - City|Address Information - State Abbr.|Address Information - ZIPcode|Total Full Time|Total Part Time|Total Employment|Total New Hires|Weight|Number of Rows|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data|Row Number|Column A Data|Column B Data|Column C Data|Column D Data|Column E Data|Column F Data|Column G Data|Column H Data|Column I Data|Column J Data|Column K Data|Column L Data\n")
path = sys.argv[1]
file1 = open(path, 'r')
Lines = file1.readlines()
count = 0
for line in Lines:
    #f.write("\nLine length is " + str(len(line))+"\n")
    count += 1
    COL1=bytes.fromhex(line[0:4]).decode('cp500')
    #print("Col1, State FIPS, is " + str(COL1))
    f.write(str(COL1))
    f.write("|")
    COL2=bytes.fromhex(line[4:6]).decode('cp500')
    #print("Col2, Type, is " + str(COL2))
    f.write(str(COL2))
    f.write("|")
    COL3=bytes.fromhex(line[6:12]).decode('cp500')
    #print("Col3, Sequence No., is " + str(COL3))
    f.write(str(COL3))
    f.write("|")
    COL4=bytes.fromhex(line[12:16]).decode('cp500')
    #print("Col4, Function Code, is " + str(COL4))
    f.write(str(COL4))
    f.write("|")
    COL5=bytes.fromhex(line[16:18]).decode('cp500')
    #print("Col5, Stratum Code, is " + str(COL5))
    f.write(str(COL5))
    f.write("|")
    COL6=bytes.fromhex(line[18:24]).decode('cp500')
    #print("Col6, County FIPS, is " + str(COL6))
    f.write(str(COL6))
    f.write("|")
    COL7=bytes.fromhex(line[24:32]).decode('cp500')
    #print("Col7, SMSA FIPS, is " + str(COL7))
    f.write(str(COL7))
    f.write("|")
    COL8=bytes.fromhex(line[32:92]).decode('cp500')
    #print(bytes.fromhex(line[32:92]))
    #print("Col8, Address Jurisdiction, is " + str(COL8))
    f.write(str(COL8))
    f.write("|")
    COL9=bytes.fromhex(line[92:152]).decode('cp500')
    #print("Col9, Address Title, is " + str(COL9))
    f.write(str(COL9))
    f.write("|")
    COL10=bytes.fromhex(line[152:212]).decode('cp500')
    #print("Col10, Street Address., is " + str(COL10))
    f.write(str(COL10))
    f.write("|")
    COL11=bytes.fromhex(line[212:252]).decode('cp500')
    #print("Col11, City, is " + str(COL11))
    f.write(str(COL11))
    f.write("|")
    COL12=bytes.fromhex(line[252:256]).decode('cp500')
    #print("Col12, State Abbrev., is " + str(COL12))
    f.write(str(COL12))
    f.write("|")
    COL13=bytes.fromhex(line[256:266]).decode('cp500')
    #print("Col13, zip code, is " + str(COL13))
    f.write(str(COL13))
    f.write("|")
    COL14=bytes.fromhex(line[266:278]).decode('cp500')
    #print("Col14, Total Full Time, is " + str(COL14))
    f.write(str(COL14))
    f.write("|")
    COL15=bytes.fromhex(line[278:290]).decode('cp500')
    #print("Col15, Total Part Time, is " + str(COL15))
    f.write(str(COL15))
    f.write("|")
    COL16=bytes.fromhex(line[290:302]).decode('cp500')
    #print("Col16, Total Employment, is " + str(COL16))
    f.write(str(COL16))
    f.write("|")
    COL17=bytes.fromhex(line[302:314]).decode('cp500')
    #print("Col17, Total New Hires, is " + str(COL17))
    f.write(str(COL17))
    f.write("|")
    COL18=bytes.fromhex(line[314:324]).decode('cp500')
    #print("COL18, Weight " + str(COL18))
    f.write(str(COL18))
    f.write("|")
    COL19=bytes.fromhex(line[324:328]).decode('cp500')
    #print("COL19, Number of Rows, is " + str(COL19))
    f.write(str(COL19))
    f.write("|")
    remaining_line=str(line[328:]).replace('\n', '')
    #print("line |" + str(remaining_line) + "| has " + str(len(remaining_line)))
    
    start=328
    increment=76
    count2=0
    for i in range(int(COL19)):
        bytes_to_process=str(line[start:])
        #print("Remaining line length is " + str(len(bytes_to_process)))
        if len(remaining_line) > 1:
            start=328+(increment*count2)
            
            #print("bytes to process is " + str(bytes_to_process))
            COL19_count=int(COL19)-1
            ##print("Count is " + str(count2) + " and COL19 is " + str(int(COL19_count)))
            if count2==int(COL19_count):
                #print("COUNT "+ str(len(bytes_to_process)))
                if len(bytes_to_process) != 153:
                    if len(bytes_to_process) != 161:
                        print("line " + str(count) + " is too long, or too short at " + str(len(bytes_to_process)))
            #print("Start is " + str(start))
            #print("Count is " + str(count2))
            #print("Increment times count is " + str(int(increment*count2)))
            #end_value=start+increment
            #print("End value is " + str(end_value))
            #print("Processing bytes " + str(start) + " to " + str(start+increment))
            
            
            #print("Processing bytes " + bytes_to_process + " start byte is " + str(start) + " end byte is " + str(start+increment))
            #print("Value is " + str(line[start:])+"|")
            #print("Start is " + str(start))
            #print("Processing bytes " + str(start) + " to " + str(start+increment))
            
            count2=count2+1
            
            COL20=bytes.fromhex(line[start:start+4]).decode('cp500')
            #print(bytes.fromhex(line[start:start+4]))
            #print("COL20 value is " + str(COL20))
            f.write(str(COL20))
            f.write("|")
            COL21=line[start+4:start+10]
            #print("COL21 value is " + str(COL21))
            f.write(Packed_Decimal_Clean(COL21))
            f.write("|")
            COL22=line[start+10:start+16]
            #print("COL22 value is " + str(COL22))
            f.write(Packed_Decimal_Clean(COL22))
            f.write("|")
            COL23=line[start+16:start+22]
            #print("COL23 value is " + str(COL23))
            f.write(Packed_Decimal_Clean(COL23))
            f.write("|")
            COL24=line[start+22:start+28]
            #print("COL24 value is " + str(COL24))
            f.write(Packed_Decimal_Clean(COL24))
            f.write("|")
            COL25=line[start+28:start+34]
            #print("COL25 value is " + str(COL25))
            f.write(Packed_Decimal_Clean(COL25))
            f.write("|")
            COL26=line[start+34:start+40]
            #print("COL26 value is " + str(COL26))
            f.write(Packed_Decimal_Clean(COL26))
            f.write("|")
            COL27=line[start+40:start+46]
            #print("COL27 value is " + str(COL27))
            f.write(Packed_Decimal_Clean(COL27))
            f.write("|")
            COL28=line[start+46:start+52]
            #print("COL28 value is " + str(COL28))
            f.write(Packed_Decimal_Clean(COL28))
            f.write("|")
            COL29=line[start+52:start+58]
            #print("COL29 value is " + str(COL29))
            f.write(Packed_Decimal_Clean(COL29))
            f.write("|")
            COL30=line[start+58:start+64]
            #print("COL30 value is " + str(COL30))
            f.write(Packed_Decimal_Clean(COL30))
            f.write("|")
            COL31=line[start+64:start+70]
            #print("COL31 value is " + str(COL31))
            f.write(Packed_Decimal_Clean(COL31))
            f.write("|")
            COL32=line[start+70:start+76]
            #print("COL32 value is " + str(COL32))
            f.write(Packed_Decimal_Clean(COL32))
            f.write("|")
            
    f.write("\n")

f.close()

        
    
    
