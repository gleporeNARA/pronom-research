#!/usr/bin/env python3
import binascii
import sys
from GLebcdic import Packed_Decimal_Clean, Zoned_Decimal, EBCDIC, Binary
import re

#filename="ESTATE"

myfile = sys.argv[1]
#print(myfile)

start_index=0
end_index=4
new_value=0

with open(myfile) as f:
    for x in range(2222):
        start_index=start_index+new_value
        f.seek(start_index)
        rec_bytes = f.read(start_index+4 - start_index)
        #print("rec_bytes is " + str(start_index+4) + " to " + str(start_index))
        new_value = int(rec_bytes, 16)
        #print("Binary value of " + str(rec_bytes) + " is " + str(new_value))
        #print("Printing from " + str(start_index) + " to " + str(new_value*2+start_index))
        #f.seek(start_index)
        batch_bytes=f.read(new_value*2+start_index-4 - start_index)
        print(batch_bytes)
        #print(batch_bytes,  file=open('first_section', 'w'))
        start_index=start_index+new_value
        end_index=end_index+new_value
    
    
