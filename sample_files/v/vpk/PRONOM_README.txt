VPK File Format Specification
My guess is that VPK stands for "Valve Package". It is used by games based on Valves Source engine.

VPK stores files into several archives. The directory information is stored in a file that ends with "_dir.vpk". All other archives related to this package are located in the same directory and have the same prefix but instead of "_dir.vpk" they end in "_###.vpk", where "###" is a zero padded number.

Example listing of a game folder:

pak01_000.vpk
pak01_001.vpk
pak01_002.vpk
pak01_dir.vpk
The Directory File
Basic Format
Header (optional)
Body
Basic Types
Note that all numbers in VPK are stored in little endian byte order.

Bytes  Type    Description
    1  Byte    a raw data byte
    2  U16     unsinged 16 bit integer
    4  U32     unsinged 32 bit integer
   >1  AsciiZ  Zero terminated ASCII string.
               Each character is one byte in size.
Header
Note that the header seems to be optional/was introduced in version 1 of the format. Check for the file magic. If the file starts with the binary string 0x34 0x12 0xAA 0x55 (or the U32 value 0x55AA1234) it contains a header. An accidental collision with the older format is improbable, because these values would be very odd ASCII characters for a pathname.

Version 1
 Offset  Count  Type    Description
 0x0000      1  U32     File magic: 0x55AA1234
 0x0004      1  U32     VPK version: 1
 0x0008      1  U32     Index size.
 
 https://github.com/panzi/unvpk/blob/main/VPK.markdown
 
.vpk	Valve Package	Source	This format is very similar to the PAK format used by Quake, however it is modified to match Valve's requirements. VPK files typically contain all the maps, models, materials, sounds, and other files for Source games downloaded from Steam.

https://twhl.info/wiki/page/File_Types_and_Formats

https://developer.valvesoftware.com/wiki/VPK_File_Format
