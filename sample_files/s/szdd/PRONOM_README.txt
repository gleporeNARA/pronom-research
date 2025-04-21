COMPRESS.EXE file formats: SZDD and KWAJ
This document describes the SZDD and KWAJ file formats which are implemented in the MS-DOS commands COMPRESS.EXE and EXPAND.EXE.

Both formats compress a single file to another single file, replacing the last character in the filename with an underscore or dollar character, e.g. README.TXT becomes README.TX_ or README.TX$.

SZDD file format
An SZDD file begins with this fixed header:

SZDD header format
Offset	Length	Description
0x00	8	"SZDD" signature: 0x53,0x5A,0x44,0x44,0x88,0xF0,0x27,0x33
0x08	1	Compression mode: only "A" (0x41) is valid here
0x09	1	The character missing from the end of the filename (0=unknown)
0x0A	4	The integer length of the file when unpacked
The header is immediately followed by the compressed data. The following pseudocode explains how to unpack this data; it's a form of the LZSS algorithm.

https://www.cabextract.org.uk/libmspack/doc/szdd_kwaj_format.html
