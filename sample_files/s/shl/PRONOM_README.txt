SLIB, or Softdisk LIBrary, compression is a container file format used by Softdisk software to compress various files used by their games, most notably the Commander Keen Dreams series of games, (Including Dangerous Dave 3 and Dangerous Dave 4)to store title images used at the beginning of each game. It was created in 1992 by Jim Row.

The data held in the file can be compressed in any one of three ways, uncompressed, LZW and LZH. The compression used is primitive and rather different from later or traditional versions of LZW\LZH. SLIB files were created by the program SOFTLIB.EXE and as such any game that uses this format contains various segments of code in common with SOFTLIB for the decompression of data.

There is a closely related format, the SHL or Softdisk Help Library format. SHL files contain only a single file. Their header is slightly different, it's file signature is 'CMP1' (CoMPression of 1 file) while that of SLIB files is SLIB. The veracity of both files can be confirmed by checking for a word of value 2 at offset 4 in the file. The actual files have been given a number of extensions; .CMP (CoMPressed), .SHL (Softdisk Help Library) or the game extension.

The SLIB file can roughly be broken into a number of parts; the header, which contains data about the various data chunks, and the data chunks themselves, each containing a single file. Each chunk also has a short header.

http://www.shikadi.net/moddingwiki/Softdisk_Library_Format
