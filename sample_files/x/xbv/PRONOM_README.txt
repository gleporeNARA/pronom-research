XBV

Extension: xbv
Samples: http://samples.mplayerhq.hu/game-formats/xbv/
XBV is an FMV format seen on the Xbox version of Call of Duty 3.

File Format
All multi-byte numbers are little endian.

bytes 0-3    signature: 'AFMV'
bytes 4-7    total file size, including signature and length fields
bytes 8-9    video width in pixels
bytes 10-11  video height in pixels
bytes 12..   unknown

https://wiki.multimedia.cx/index.php/XBV

