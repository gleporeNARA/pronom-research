Introduction
Lzip is a lossless data compressor with a user interface similar to the one of gzip or bzip2. Lzip uses a simplified form of the 'Lempel-Ziv-Markov chain-Algorithm' (LZMA) stream format and provides a 3 factor integrity checking to maximize interoperability and optimize safety. Lzip can compress about as fast as gzip (lzip -0) or compress most files more than bzip2 (lzip -9). Decompression speed is intermediate between gzip and bzip2. Lzip is better than gzip and bzip2 from a data recovery perspective. Lzip has been designed, written, and tested with great care to replace gzip and bzip2 as the standard general-purpose compressed format for unix-like systems.

https://www.nongnu.org/lzip/

A lzip file consists of a series of independent "members" (compressed
   data sets).  The members simply appear one after another in the file,
   with no additional information before, between, or after them.  Each
   member can encode in compressed form up to 16 EiB - 1 byte of
   uncompressed data.  The size of a multimember file is unlimited.

   Each member has the following structure:

   +-+-+-+-+---+---+===========+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   |  ID   |VN |DS |LZMA stream| CRC32 |   Data size   |  Member size  |
   +-+-+-+-+---+---+===========+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

   All multibyte values are stored in little endian order.

   ID string (the "magic" bytes)
      A four byte string, identifying the lzip format, with the value
      "LZIP" (0x4C, 0x5A, 0x49, 0x50).

      
https://datatracker.ietf.org/doc/draft-diaz-lzip/
