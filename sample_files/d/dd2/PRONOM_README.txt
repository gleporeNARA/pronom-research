Dangerous Dave in the Haunted Mansion
Back to index

Contents
1	DD2
1.1	Game files
1.2	HUFF compressed file format
1.3	RLEW compressed file format
1.4	PIC file format
DD2
Format Type : Mixed
Endian Order : Little Endian
Game files
CTLPANEL.DD2 - user preferences file (key codes, sound/nosound and so on)
EGATILES.DD2
INTRO.DD2 - RLE compressed intro screen dump
LEVEL0x.DD2 - RLEW compressed levels files
PROGPIC.DD2 - HUFF compressed PIC file
S_CHUNK1.DD2 - HUFF compressed chunk file
S_CHUNK2.DD2 - HUFF compressed chunk file
S_DAVE.DD2 - HUFF compressed chunk file
S_FRANK.DD2 - HUFF compressed chunk file
S_MASTER.DD2 - HUFF compressed chunk file
STARPIC.DD2 - HUFF compressed PIC file
TEDLEVEL.DD2 - contains 1 byte - start level number (if used /LEVEL option)
title1.DD2 - PIC file HUFF compressed
title2.DD2 - PIC file HUFF compressed
DAVE.EXE - lzexe compressed
HUFF compressed file format
Signature 4 bytes. Must be 0x48 0x55 0x46 0x46.
Expanded size. 4 bytes.
Huffman nodes table. 1020 bytes.
Compressed data. (Unknown size before extract process ends).
Arbitrary data. Simply ignored. (Any size).

http://wiki.xentax.com/index.php/Dangerous_Dave_in_the_Haunted_Mansion#HUFF_compressed_file_format
