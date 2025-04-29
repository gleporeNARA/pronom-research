#!/usr/bin/python
#
# HEX DUMP PYTHON SCRIPT - RUBY DEVICES 2017
#
# Usage:
# hexdump.py <file_to_dump>
#
import sys
import os.path

def check_file_provided():
  # This method ensures a valid file was provided to the invoked script ##
  if (len(sys.argv) < 2):
    print ""
    print "Error - No file was provided"
    print ""
    print "Correct Usage:"
    print "python hexdump.py <file_to_dump>"
    print ""
    sys.exit(0)
  if not os.path.isfile(sys.argv[1]):
    print ""
    print "Error - The file provided does not exist"
    print ""
    sys.exit(0)
  


        
def is_character_printable(s):
  ## This method returns true if a byte is a printable ascii character ##
  return all((ord(c) < 127) and (ord(c) >= 32) for c in s)
  
def print_headers():
  ## This method prints the headers at the top of our hex dump ##
  print ""
  print "#### HEX DUMP PYTHON SCRIPT - RUBY DEVICES 2017 ####"
  print ""
  print "Offset 00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F"
  print ""
  
def validate_byte_as_printable(byte):
  ## Check if byte is a printable ascii character. If not replace with a '.' character ##
  if is_character_printable(byte):
    return byte
  else:
    return '.'
  
## main ##
check_file_provided()
memory_address = 0
ascii_string = ""
print_headers()

with open(filename, "rb") as f:
        byte = f.read(1)
        while byte:
        # Do stuff with byte.
            byte = f.read(1)
## Loop through the given file while printing the address, hex and ascii output ##

            ascii_string = ascii_string + validate_byte_as_printable(byte)
            if memory_address%16 == 0:
                print(format(memory_address, '06X')),
                print(byte.encode('hex')),
            elif memory_address%16 == 15:
                print(byte.encode('hex')),
                print ascii_string
                ascii_string = ""
            else:
                print(byte.encode('hex')),
            memory_address = memory_address + 1
