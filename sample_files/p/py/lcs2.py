import binascii
import functools
import re
import glob
    
from itertools import islice
with open("1.afpk", "rb") as f:
    start_bytes = (f.read(32))
    print ("First 8 Binary bytes of file 1 are: " + str(start_bytes))
    S1 = str((binascii.hexlify(start_bytes)))
    S1 = S1.replace('b\'','')
    print("First 8 ASCII bytes of file 1 are: " + str(S1))
    
with open("2.afpk", "rb") as f:
    start_bytes = (f.read(32))
    print ("First 8 Binary bytes of file 1 are: " + str(start_bytes))
    S2 = str((binascii.hexlify(start_bytes)))
    S2 = S2.replace('b\'','')
    print ("First 8 ASCII bytes of file 1 are: " + str(S2))
    

def lcs(s1, s2):
  m = [[0] * (1 + len(s2)) for i in range(1 + len(s1))]
  longest, x_longest = 0, 0
  for x in range(1, 1 + len(s1)):
    for y in range(1, 1 + len(s2)):
      if s1[x - 1] == s2[y - 1]:
        m[x][y] = m[x - 1][y - 1] + 1
        if m[x][y] > longest:
          longest = m[x][y]
          x_longest = x
      else:
        m[x][y] = 0
  return s1[x_longest - longest: x_longest]

common_sentence = lcs(S1, S2)
a = re.search(common_sentence, S1)
print (a)

print(glob.glob("/home/adam/*.afpk"))
