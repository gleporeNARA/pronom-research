Softdisk Library Format
Jump to navigationJump to search
Softdisk Library Format
Format type	Archive
Max files	65,535
File Allocation Table (FAT)	Beginning
Filenames?	Yes, 8.3
Metadata?	None
Supports compression?	Yes
Supports encryption?	No
Supports subdirectories?	No
Hidden data?	Yes
Games	
Commander Keen Dreams
Dangerous Dave 3
Dangerous Dave 4
SLIB, or Softdisk LIBrary, compression is a container file format used by Softdisk software to compress various files used by their games, most notably the Commander Keen Dreams series of games, (Including Dangerous Dave 3 and Dangerous Dave 4)to store title images used at the beginning of each game. It was created in 1992 by Jim Row.

The data held in the file can be compressed in any one of three ways, uncompressed, LZW and LZH. The compression used is primitive and rather different from later or traditional versions of LZW\LZH. SLIB files were created by the program SOFTLIB.EXE and as such any game that uses this format contains various segments of code in common with SOFTLIB for the decompression of data.

There is a closely related format, the SHL or Softdisk Help Library format. SHL files contain only a single file. Their header is slightly different, it's file signature is 'CMP1' (CoMPression of 1 file) while that of SLIB files is SLIB. The veracity of both files can be confirmed by checking for a word of value 2 at offset 4 in the file. The actual files have been given a number of extensions; .CMP (CoMPressed), .SHL (Softdisk Help Library) or the game extension.

The SLIB file can roughly be broken into a number of parts; the header, which contains data about the various data chunks, and the data chunks themselves, each containing a single file. Each chunk also has a short header.


Contents
1	Header
2	Data Chunks
3	Compression
3.1	LZW
3.2	LZH
4	Softlib
5	Data contained in libraries
6	Tools
7	Credits
Header
The file header is found only in SLIB files and is absent in SHL files, which are loaded into memory in their enitrety. The SLIB header allows individual data chunks to be loaded inhto memory seperately.

The SLIB header is a variable length header that contains information about how many chunks there are in a file as well as their location in the file and size. It is used by the game to load chunks into memory and by SOFLIB to extract compressed files.

The first part of the header is a fixed length of 8 bytes and allows the game to identify the file as SLIB and also the total length of the header (Which will be 30 * the value at offset 6 plus 8.) The second part is a series of chunk headers that hold information about what file is held in each chunk. (The last six bytes are repeated at the start of the data chunk.)

FILE HEADER:
0 CHAR[4]	fID		Signature, 'SLIB' (Softdisk LIBrary)
4 UINT16LE	Version		Version number, always $0002
6 UINT16LE	Chunks		Number of data chunks in file
8 CHAR[30x]	Chunk headers	Chunk headers

https://moddingwiki.shikadi.net/wiki/Softdisk_Library_Format
