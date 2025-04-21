NOTE: The below information is not quite correct, the offset 6 values do not appear to match hundreds of sample files and should be ignored. GL


TheDraw COM File
File Format
Name	TheDraw COM File
Ontology	
Electronic File Formats
Graphics
TheDraw COM File
Extension(s)	.com
Released	1989
TheDraw COM File is a format for ANSI Art-style character graphics, associated with the DOS software TheDraw. The format was introduced in TheDraw v3.20 (1989-04).

It is in the form of a DOS .COM file that, when executed, prints the graphics to the screen.

Contents [hide] 
1 Format details
2 Identification
3 Specifications
4 Software
5 Sample files
Format details
There are three "types" of the format, distinguished by the byte at offset 6 having value 0, 1, or 2.

Types 1 and 2 were introduced in version 4.00. TheDraw selects the type to use automatically. Type 1 seems to be rare, and is used only if the image is incompressible.

Identification
Type 0 files start with bytes eb 3d 90, and have 00 at offset 6.

Type 1 files start with bytes eb 18 90, and have 01 at offset 6.

Type 2 files start with bytes eb 3d 90, and have 02 at offset 6.

Types 0 and 2 have the signature string "TheDraw COM file Screen Save" at offset 9, followed by byte 0x1a.

Type 1 has the shorter string "TheDraw COM file" at offset 9, followed by 0x1a.

See also P-Screen COM Screen, which looks a lot like type 0, except for the different signature string.

Specifications
An overview of the decompression algorithm for type 2 is in the UNCRUNCH.PAS file included with TheDraw 4.x.
Software
TheDraw - Refer to TheDraw Save File#Software (v3.20+)
Deark
(Or just execute the file in a DOS environment.)

Sample files
TACT538.ZIP - Most of the .COM files
https://telparia.com/fileFormatSamples/image/theDrawCOM/

http://justsolve.archiveteam.org/wiki/TheDraw_COM_File
