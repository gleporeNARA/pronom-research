DFA
Jump to navigationJump to search
Extensions: dfa
Samples: http://samples.mplayerhq.hu/game-formats/chronomaster-dfa/
DFA is a FMV format used in PC games developed by DreamForge.


Contents
1	File format
1.1	TSW1 chunk
1.2	BDLT chunk
1.3	WDLT chunk
1.4	TDLT chunk
1.5	DSW1 chunk
1.6	DDS1 chunk
2	Games using DFI
File format
All multi-byte numbers are little endian. These files are comprised of chunks with the following format:

 bytes 0-3    chunk fourcc
 bytes 4-7    chunk size, not including 12-byte preamble
 bytes 8-11   chunk type, essentially numeric equivalent of fourcc
 bytes 12..   chunk payload
A DFA file begins with a 128- (0x80-)byte header:

 bytes 0-3    file signature: 'DFIA'
 
 https://wiki.multimedia.cx/index.php/DFA
