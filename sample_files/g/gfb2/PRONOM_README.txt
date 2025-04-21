DeskPic
File Format
Name	DeskPic
Ontology	
Electronic File Formats
Graphics
DeskPic
Extension(s)	.gfb
DeskPic is a graphics program for the Atari line of computers.

Contents [hide] 
1 Identification
2 Format
3 Software
4 Sample files
5 Links
Identification
.gfb files begin with ASCII "GF25".

Format
The GFB image format:
-------------------
It is a format that I use for the program GemFrac had once developed.
The following data can be found in this image format:
   4 bytes identifier (GF25 in this version)
   4 bytes number of colors.
   4 bytes width of the screen
   4 bytes height of the screen
   4 bytes size of the buffer to be allocated for the screen
     n bytes of graphic data, where n = ((image width + 7) / 8) * image height * planes,
     which corresponds to the largest allocated buffer.
768 bytes color table => max. 256 colors.
Software
RECOIL
Sample files
https://telparia.com/fileFormatSamples/image/gfb/


http://fileformats.archiveteam.org/wiki/DeskPic
