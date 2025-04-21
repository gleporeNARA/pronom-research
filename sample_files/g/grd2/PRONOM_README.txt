Affymetrix� GRD Data File Format
GRD FILE
Description

The GRD (grid) file stores the estimate of the sub-pixel location of the center of every feature in an array.

Format

The format of the GRD file is a binary file with data stored in big-endian format.

The file consists of the following sections (in order)

Header Section

The file header consists of 36 bytes in total. The values are:

Item	Description	Type	Size
1	Magic number used to identify the file:
(octal) 211 107 122 104 015 012 032 012
(hexadecimal) 89 47 52 44 0d 0a 1a 0a
(ASCII C notation) \211 G R D \r \n \032 \n

char[8]	8 byte

https://www.affymetrix.com/support/developer/powertools/changelog/gcos-agcc/grd.html
