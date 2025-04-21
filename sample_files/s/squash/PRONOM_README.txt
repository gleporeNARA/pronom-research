Squash (RISC OS)
File Format
Name	Squash (RISC OS)
Ontology	
Electronic File Formats
Compression
Squash (RISC OS)
Squash files (file type FCA, Squash) contain compressed data for single files on RISC OS systems.

The file command calls this format "squished".

Contents [hide] 
1 Format details
2 Software
3 Sample files
4 References
Format details
According to the help text for the Squash application, "The Squash module currently compresses using a 12-bit LZW algorithm but no guarantee is made that this will be so in the future."

The compressed data is preceded by a header, with offsets measured in bytes and all values stored in little-endian byte order:

Offset	Description
0	"SQSH" (4 byte ID)

http://fileformats.archiveteam.org/wiki/Squash_(RISC_OS)
