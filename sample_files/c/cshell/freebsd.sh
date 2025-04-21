#!/bin/csh -f

# FreeBSD shell script by Jeff Tsay. Based on Earle Philhower's HP script.
# Move linux_obuffer.* and cmdline.cpp into the same directory as the rest
# of the source before compiling.
#
# Note that g++ for FreeBSD sux - it always reports errors when redeclaring
# variables that have had their scope ended. For example,
#
# for (int i=0; i<23; i++)
#     ack[i]=i;
# for (int i=0; i<23; i++)
#     booga[i] = ack[i] * 2;
#
# The solution is to declare i in the beginning of the function and never
# declare it again. For now, I have fixed the files so this error should
# not come up.

# Compile each file
g++ -c -O4 -g -D__FREEBSD__ -DDAMN_INTEL_BYTE_ORDER -DVERBOSE -I. bit_res.cpp
g++ -c -O4 -g -D__FREEBSD__ -DDAMN_INTEL_BYTE_ORDER -DVERBOSE -I. -DPENTIUM \
cmdline.cpp
g++ -c -O4 -g -D__FREEBSD__ -DDAMN_INTEL_BYTE_ORDER -DVERBOSE -I. crc.cpp
g++ -c -O4 -g -D__FREEBSD__ -DDAMN_INTEL_BYTE_ORDER -DVERBOSE -I. header.cpp
g++ -c -O4 -g -D__FREEBSD__ -DDAMN_INTEL_BYTE_ORDER -DVERBOSE -I. huffman.cpp
g++ -c -O4 -g -D__FREEBSD__ -DDAMN_INTEL_BYTE_ORDER -DVERBOSE -I. ibitstr.cpp
g++ -c -O4 -g -D__FREEBSD__ -DDAMN_INTEL_BYTE_ORDER -DVERBOSE -I. inv_mdct.cpp
g++ -c -O4 -g -D__FREEBSD__ -DDAMN_INTEL_BYTE_ORDER -DVERBOSE -I. layer3.cpp
g++ -c -O4 -g -D__FREEBSD__ -DDAMN_INTEL_BYTE_ORDER -DVERBOSE -I. maplay.cpp
g++ -c -O4 -g -D__FREEBSD__ -DDAMN_INTEL_BYTE_ORDER -DVERBOSE -I. obuffer.cpp
g++ -c -O4 -g -D__FREEBSD__ -DDAMN_INTEL_BYTE_ORDER -DVERBOSE -I. scalfact.cpp
g++ -c -O4 -g -D__FREEBSD__ -DDAMN_INTEL_BYTE_ORDER -DVERBOSE -I. sublay1.cpp
g++ -c -O4 -g -D__FREEBSD__ -DDAMN_INTEL_BYTE_ORDER -DVERBOSE -I. sublay2.cpp
g++ -c -O4 -g -D__FREEBSD__ -DDAMN_INTEL_BYTE_ORDER -DVERBOSE -I. synfilt.cpp


# Link the files, strip the executable
g++ -o maplay+ *.o -lm 
strip maplay+
