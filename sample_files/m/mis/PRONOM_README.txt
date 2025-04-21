NIST IHead format (sometimes called IHDR) is a raster graphics format associated with some image databases published by NIST (National Institute of Standards and Technology). The databases are not generally available for free, but some sample files are.

IHead is not a very complex format, and it seems to be adequately documented. But it is still confusing, because every NIST database uses a different variant of it, and because everything associated with these databases seems to have multiple names.

The image may uncompressed, or use one of many compression algorithms. Compression code 0 means uncompressed, 2 is CCITT Group 4, and 6 is modified Lossless JPEG.

Contents [hide] 
1 Identification
2 Software
3 Sample files
4 Links
Identification
Some or all files begin with ASCII "288", followed by five 0x00 bytes. This is a decimal representation of the header size.

http://fileformats.archiveteam.org/wiki/NIST_IHead
