SCL format
Jump to navigationJump to search
The SCL format is a compact representation of TR-DOS filesystem content. It stores only the file headers and the used sectors.

It is conventional for emulators to build real disk images on the fly from SCL data to use for disk emulation.


Contents
1	SCL file structure
2	SCL file header
3	File headers
3.1	File header entry
4	Files data
5	See also
SCL file structure
The file begins with a 8 byte 'magic': SINCLAIR, then the number of files, the file headers an after that all the data blocks.

Offset	Length	Comment
0x0000	9	SCL file header
0x0009	N × 14	File headers
0x0009 + N × 14	DATA LENGTH	Sector data


https://sinclair.wiki.zxnet.co.uk/wiki/SCL_format
