 A2M FiLE FORMAT DESCRiPTiON
 

 Offset Length   Type

 

 000000     10   (char)   ID string '_a2module_'

 00000a      4   (dword)  32-bit cyclic redundancy check value

 00000e      1   (byte)   file format version

 00000f      1   (byte)   number of patterns {#pat}
 
 http://adlibtracker.net/files/techinfo.htm#_Toc479854439
 
 .a2m files are modules produced by Adlib Tracker II. Adlib Tracker II can also produce "tiny" modules, which have the file extension .a2t

The file format consists of two parts - a header containing authenticity information such as CRC and the format version, which is ended by one or more values containing the length of the second section. The second section contains the compressed data.

The compression algorithm used for the second part can be identified from the format version. Versions 1 & 5 are compressed with SixPack; 2 & 6 with LZW; 3 & 7 with LZSS. Versions 4 & 8 use no compression.

http://fileformats.archiveteam.org/wiki/Adlib_Tracker_II_module
