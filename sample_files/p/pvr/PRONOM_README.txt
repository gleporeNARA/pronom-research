PVR Graphic Formats (Dreamcast 2D Graphics)
By SmokesGrass:|
http://www.thehorrorisalive.com/markgrass/index.html

Version 0.1 - March 03, 2006
	- Highly updated version from original 2001 document by an 
	  unknown person.
________________________________________________________________________

HEADER
________________________________________________________________________

[GLOBAL INDEX HEADER]
This header is optional defining a "Global Index".

offset length description
--------------------------
0-3     4     "GBIX" (ascii text)
4-7     4     Length of GBIX header from offset 8 onwards
8-15    8     Global Index
________________________________________________________________________

[PVR GRAPHIC HEADER]

offset length description
--------------------------
0-3     4     "PVRT" (ascii text)
4-7     4     Length of rest of file in bytes (not counting these 4 bytes)
8-11    4     Type of PVR file
12-13   2     Width
14-15   2     Height

https://fabiensanglard.net/Mykaruga/tools/segaPVRFormat.txt
