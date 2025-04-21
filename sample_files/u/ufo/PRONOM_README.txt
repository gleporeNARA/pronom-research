HPI File Format

Document version 1.4

I figured some of this stuff out by disassembling WriteHPI.  All hail
Eric DeZert.

I'd also like to thank Jesse Michael for his clear and concise explanation
of the compression scheme (which I shamelessly incorporated into this document),
and Barry Pedersen for helpful comments and miscellaneous useful info.

ZLib compression and decompression by Jean-loup Gailly (compression) and 
Mark Adler (decompression). 
For more info, see the zlib Home Page at http://www.cdrom.com/pub/infozip/zlib/

The rest I figured out on my own by looking at the data and using
a bit of common sense.

Warning: This is intended for use by people that already know what
they're doing.

I'm a C programmer, so I'm doing things in C notation here, but
I'll try to explain it so that those of you that don't speak C
will be able to understand.  If you don't understand, write me
at joed@cws.org and I'll try to clear things up.

I'm also a big believer in examples, so I'll be walking you through
an HPI file as I explain.

The first part of the file is a header.  Except for the copyright
statement at the end, this is the only unencrypted portion of the 
file.  The header looks like this:

typedef struct _HPIHeader {
  long HPIMarker;		  /* 'HAPI' */
  long SaveMarker;        /* 'BANK' if saved gamed */
  long DirectorySize;     /* The size of the directory */
  long HeaderKey;         /* Decrypt key */
  long Start;             /* File offset of directory */
} HPIHeader;

Here's a hex dump of a sample header:
00000000  48 41 50 49 00 00 01 00 24 02 00 00 7D 00 00 00   HAPI....$...}...
00000010  14 00 00 00 

Taken individually:

HPIMarker

This is just a marker.  The value is always HAPI in ASCII.  In 
hex, it's 0x49504148.

http://visualta.tauniverse.com/Downloads/ta-hpi-fmt.txt
