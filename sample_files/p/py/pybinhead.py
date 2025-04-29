#!/usr/bin/env python3

import binascii
import functools
import re
import glob
import sys
import os
import fnmatch
from subprocess import call
import re
from collections import Counter
import struct

filecount = 0
walk_dir="./"    
ext = sys.argv[1]
btr = sys.argv[2]
forward = open('forward.txt', 'w+')
#backward = open('backward.txt', 'w+')

def findfiles(which, where='.'):
    rule = re.compile(fnmatch.translate(which), re.IGNORECASE)
    return [name for name in os.listdir(where) if rule.match(name)]

def is_character_printable(s):
  ## This method returns true if a byte is a printable ascii character ##
  return all((ord(c) < 127) and (ord(c) >= 32) for c in s)

def validate_byte_as_printable(byte):
  ## Check if byte is a printable ascii character. If not replace with a '.' character ##
  if is_character_printable(byte):
    return byte
  else:
    return '.'

format=str(sys.argv[1])
if sys.argv[1] == "all":
    format_use="*"
else:
    format_use="*"+format
    
file_list = findfiles(format_use)
file_list.sort()
#file_list=file_list[:20]

#for filename in file_list:
    
    #with open(filename, 'rb') as f:
        #content = f.read(16)
        #cool = struct.unpack("dddd",content[:32])
    #print(cool)
    #print(binascii.hexlify(content) + ":")
for filename in file_list: 
    
    for i in open(filename, 'rb').read(10):
        #print(binascii.hexlify(i) + ":")
        print(r'{0:#x}'.format(i), end = '')
