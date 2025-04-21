COMPRESS.EXE file formats: SZDD and KWAJ
This document describes the SZDD and KWAJ file formats which are implemented in the MS-DOS commands COMPRESS.EXE and EXPAND.EXE.

Both formats compress a single file to another single file, replacing the last character in the filename with an underscore or dollar character, e.g. README.TXT becomes README.TX_ or README.TX$.

There is also a variant SZDD format seen in the installation package for QBasic 4.5, so I call it the QBasic variant. It has a different header and the pos variable in the pseudocode above is set to 4096-18 instead of 4096-16.

QBasic SZDD variant header format
Offset	Length	Description
0x00	8	"SZ" signature: 0x53,0x5A,0x20,0x88,0xF0,0x27,0x33,0xD1
0x08	4	The integer length of the file when unpacked


https://www.cabextract.org.uk/libmspack/doc/szdd_kwaj_format.html
