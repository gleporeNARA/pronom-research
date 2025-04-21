THP
Jump to navigationJump to search
Extension: thp
Company: Nintendo
Samples: http://samples.mplayerhq.hu/game-formats/thp/
Technical Descriptions:
http://www.amnoid.de/gc/thp.txt
http://www.gc-linux.org/docs/yagcd/chap15.html#sec15.34
THP is an FMV format found on Nintendo GameCube DVDs. The files contain unescaped Motion JPEG data and a custom ADPCM coding format for sound.

https://wiki.multimedia.cx/index.php?title=THP

.thp files
==========

Version 1.0 (20050515)

.thp is a video format on the gamecube. The video frames are independent "quasi-jpegs", and if audio frames are present, they are in an adpcm format (described below).


Header data
-----------

The file starts with a thp header:


struct ThpHeader
{
  char tag[4]; //'THP\0'

  u32 version; //0x00011000 = 1.1, 0x00010000 = 1.0
  
  http://www.amnoid.de/gc/thp.txt
