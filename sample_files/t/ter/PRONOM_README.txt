Terragen™ Terrain file specification[edit]
File Structure[edit]
A terrain file contains a 16-byte identifier followed by a number of chunks. The positions of the various chunks are not rigidly defined, so if you are writing a terrain file reader it should allow for the flexibility of chunk positioning. However, if you are writing out terrain files, beware that some chunks must appear before others.

All chunks are aligned to the nearest 4 bytes. Each chunk contains a 4-byte marker (eg. "ALTW"), then some data.

Note: The structure of a chunk in a terrain file is different from that of the chunks found in some other Terragen files. Terrain file chunks do not include a "length of data" value.

A terrain file must contain the following:

An 8-byte "TERRAGEN" string at the beginning of the file.
An 8-byte "TERRAIN " string located 8 bytes from the beginning of the file. (Note the last space character.)
A "SIZE" chunk.
If the terrain is not square, "XPTS" and "YPTS" chunks are required.
A 4-byte "EOF " string at the end of the file (necessary for old versions of Terragen).

https://planetside.co.uk/wiki/index.php?title=Terragen_.TER_Format
