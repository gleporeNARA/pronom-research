Chapter 2: SWF Structure Summary
This chapter provides a summary of the elements that comprise a SWF file.
The SWF header
All SWF files begin with the following header. The types are defined in Chapter 1: Basic Data Types.
Field Type Comment
Signature UI8 Signature byte:
“F” indicates uncompressed
“C” indicates a zlib compressed SWF (SWF 6
and later only)
“Z” indicates a LZMA compressed SWF (SWF
13 and later only)
Signature UI8 Signature byte always “W”
Signature UI8 Signature byte always “S”
Version UI8 Single byte file version (for example, 0x06 for
SWF 6)
FileLength UI32 Length of entire file in bytes
FrameSize RECT Frame size in twips
FrameRate UI16 Frame delay in 8.8 fixed number of frames
per second
FrameCount UI16 Total number of frames in file
The header begins with a three-byte signature of one of:
• 0x46, 0x57, 0x53 (“FWS”). An FWS signature indicates an uncompressed SWF file.
• 0x43, 0x57, 0x53 (“CWS”). A CWS indicates that the entire file after the first 8 bytes (that is,
after the FileLength field) was compressed by using the ZLIB open standard. The data format
that the ZLIB library uses is described by Request for Comments (RFCs) documents 1950 to
1952. CWS file compression is permitted in SWF 6 or later only.

https://web.archive.org/web/20130202203813/https://wwwimages.adobe.com/www.adobe.com/content/dam/Adobe/en/devnet/swf/pdf/swf-file-format-spec.pdf
