#!/bin/csh

g++ -c -O4 -g -DHPUX -DVERBOSE -I. bit_res.cpp
g++ -c -O4 -g -DHPUX -DVERBOSE -I. cmdline.cpp
g++ -c -O4 -g -DHPUX -DVERBOSE -I. crc.cpp
g++ -c -O4 -g -DHPUX -DVERBOSE -I. header.cpp
g++ -c -O4 -g -DHPUX -DVERBOSE -I. huffman.cpp
g++ -c -O4 -g -DHPUX -DVERBOSE -I. ibitstr.cpp
g++ -c -O4 -g -DHPUX -DVERBOSE -I. inv_mdct.cpp
g++ -c -O4 -g -DHPUX -DVERBOSE -I. layer3.cpp
g++ -c -O4 -g -DHPUX -DVERBOSE -I. maplay.cpp
g++ -c -O4 -g -DHPUX -DVERBOSE -I. obuffer.cpp
g++ -c -O4 -g -DHPUX -DVERBOSE -I. scalfact.cpp
g++ -c -O4 -g -DHPUX -DVERBOSE -I. sublay1.cpp
g++ -c -O4 -g -DHPUX -DVERBOSE -I. sublay2.cpp
g++ -c -O4 -g -DHPUX -DVERBOSE -I. synfilt.cpp

# Link the files, strip the executable
gcc -o maplay+ *.o -lm -lstdc++
strip maplay+
