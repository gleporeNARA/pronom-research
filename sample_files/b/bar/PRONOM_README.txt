Affymetrix® BAR Data File Format
BAR FILE
Description

The BAR file contains one and two sample analysis results (signal and p-values) from the tiling array software.

Format

The format of the BAR file is a binary file with data stored in big-endian format. The format of the file is a header section followed by sequences sections (one section per sequence defined).

Section Definitions

File Header

Item	Description	Type	Size
1	Magic number. A value to identify the file type. The value is set to "barr\r\n\032\n�.	char	8 bytes

https://www.affymetrix.com/support/developer/powertools/changelog/gcos-agcc/bar.html
