Storyboard PIC/CAP
File Format
Name	Storyboard PIC/CAP
Ontology	
Electronic File Formats
Graphics
Storyboard PIC/CAP
Extension(s)	.pic, .cap
Wikidata ID	Q105850199
Released	1985
Storyboard .PIC and .CAP are graphics formats associated with Storyboard, a line of presentation software by IBM.

There are at least three editions of Storyboard: PC Storyboard, Storyboard Plus, and Storyboard Live!.

PIC is a raster graphics format. CAP is a screen capture format which may contain raster graphics, or characters/text. (However, Storyboard Live! does not seem to create text mode CAP files.)

PIC format is primarily associated with the Picture Maker component of Storyboard. PIC format can also be called Picture Maker PIC, or something like that.

A CAP file is created by the Picture Taker component of Storyboard.

Picture Maker can read PIC and CAP files. Some versions of Storyboard also include a SHOWPIC.EXE utility that can display them.

Identification
For PC Storyboard, all formats are observed to start with ASCII "EP_CAP".

Storyboard Plus seems to use the EP_CAP format only for text mode CAP files.

For the newer format, the following byte patterns may appear at the start of the file:

?? 84 c1 01 00 = 640x200 16-color mode
?? 84 c1 03 00 = 640x350 16-color mode
?? 84 c1 07 00 = 640x480 16-color mode
?? 84 c1 08 00 = 320x200 4-color mode
?? 85 c1 0a 00 = 320x200 256-color mode
?? 86 c1 0b 00 = 640x480 256-color mode
The first byte is observed to be either 0x00 or 0x54. Stricter identification, using the bytes at offsets 5 through 12, may be possible. It's not clear how flexible the format is.

Software
IBM Storyboard 1.x at WinWorld
IBM Storyboard Plus 1.x, at WinWorld
IBM Storyboard Live! 1.0, at Internet Archive
IBM Storyboard Live 1.0, at WinWorld
IBM Storyboard Live 2.0, at WinWorld
Image Alchemy
Deark
Sample files
https://telparia.com/fileFormatSamples/image/ibmStoryboardPic/
The World Of Computer Software → SBL5.ZIP → DEMO*.TEM - New-format files for various screen modes

http://fileformats.archiveteam.org/wiki/Storyboard_PIC/CAP
