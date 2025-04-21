Funny Paint
File Format
Name	Funny Paint
Ontology	
Electronic File Formats
Graphics
Funny Paint
Extension(s)	.fun
Funny Paint is a graphics program for the Atari line of computers.

Contents [hide] 
1 Format
2 Software
3 Sample files
4 Links
Format
From the Atari Forum Wiki page (see #Links)

Funny Paint    *.FUN

Supports animation and image data is never compressed.

1 long      file id [0x000ACFE2]
1 word      image width in pixels
1 word      image height in pixels
1 word      planes [1, 2, 4, 8, 16]
1 word      number of frames [1 = single image]
1 byte      ? [usually 0]
--------
13 bytes    total for header

??          image data:
  1 to 8 planes: standard Atari interleaved bitmap
  16 planes: Falcon high-color, word RRRRRGGGGGGBBBBB
  This section is repeated for each frame

1 long      total colors - 1
1 long      ? (varies)
1 long      ? (varies)

??          palette data:
  The palette is stored in VDI format (0-1000) in VDI order
  3 words per entry for R, G, and B
  1 plane palette should be ignored, seems to contain bogus values
  16 planes will have a palette (predefined pens, should be ignored)
Software
RECOIL
Sample files
https://telparia.com/fileFormatSamples/image/funnyPaint/
Links

http://fileformats.archiveteam.org/wiki/Funny_Paint
