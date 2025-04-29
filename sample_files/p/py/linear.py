#!/usr/bin/env python3

import binascii
import sys
from GLebcdic import Packed_Decimal_Clean, Zoned_Decimal
import codecs
import csv
from pathlib import Path

data = Path('1.txt').read_bytes()
f = open("output.txt", 'w')
start=0
end=0

for i in range(0,119):
    
    first12=(data[start:end+12])
    print("\nFirst 12 bytes of record " + str(i) + " are " + str(first12))
    RL=int(first12[8:],16)
    print(RL)
    if RL in [276,296,336]:
        print("record length is " + (str(first12[8:]) + " which is " + str(RL)))
        datai=data[start:end+RL*2]
        print("data is " + str(datai))
        start=start+RL*2
        print("Start is " + str(int(start)))
        end=end+RL*2
        print("End is " + str(int(end)))
        
    else:
        print("RL not in list")
        skip12=(data[start+8:end+20])
        print("skip is " + str(skip12))
        
        RL=int(skip12[8:],16)
        print("record length is " + (str(skip12[8:]) + " which is " + str(RL)))
        datai=data[start:end+RL*2]
        print("data is " + str(datai))
        start=start+RL*2
        print("Start is " + str(int(start)))
        end=end+RL*2
        print("End is " + str(int(end)))
#second_12=(data[RL*2:RL*2+12])
#print(second_12)

#for i in range(0,3500):
    #print("Processing record number " + str(i))
    ##read from 0:4
    ##print("Start is " + str(start) + " end is " + str(end))
    #RL=int(data[start:end], 16)
    #print("Value is " + str(data[start:end]) + " Record length is " + str(RL))
    ##print serial number
    
    ##select from 4:RL
    #record=data[start+12:start+16+(RL-8)*2]
    ##print("Reading from " + str(start+12) + " to " + str(start+12+(RL-8)*2))
    #print("Record is " + str(record))
    #f.write(str(record)+"\n")
    #start=start+RL*2
    #end=end+RL*2
    #i=i+1



#second_record_length=data[4+len(first_record):4+len(first_record)+12]
#print(str(second_record_length))
#print("Byte is " + str(data[12+trans_value*2:16+trans_value*2]) + " value is " + str(int(second_record_length, 16)))
