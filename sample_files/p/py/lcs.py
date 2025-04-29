import binascii

from itertools import islice
with open("1.ggb", "rb") as f:
    start_bytes = (f.read(32))
    print ("First 8 Binary bytes of file 1 are: " + str(start_bytes))
    start_bytes2 = (binascii.hexlify(start_bytes))
    print("First 8 ASCII bytes of file 1 are: " + str(start_bytes2))
    
with open("2.ggb", "rb") as f:
    start_bytes = (f.read(32))
    print ("First 8 Binary bytes of file 1 are: " + str(start_bytes))
    start_bytes3 = (binascii.hexlify(start_bytes))
    print ("First 8 ASCII bytes of file 1 are: " + str(start_bytes3))
    
def allsubstr(s, n=8):
    return set(s[i:i + n] for i in range(len(s) - n + 1))

for s in allsubstr(start_bytes2) & allsubstr(start_bytes3):
    print ("Matching substrings are: " + str(s) + " at postion " + str(start_bytes2.index(s)))
