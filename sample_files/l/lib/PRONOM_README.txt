Microsoft Visual C++ (MSVC) is a compiler for the C, C++, C++/CLI and C++/CX programming languages by Microsoft. MSVC is proprietary software; it was originally a standalone product but later became a part of Visual Studio and made available in both trialware and freeware forms. It features tools for developing and debugging C++ code, especially code written for the Windows API, DirectX and .NET.

Many applications require redistributable Visual C++ runtime library packages to function correctly. These packages are frequently installed separately from the applications they support, enabling multiple applications to use the package with only a single installation. These Visual C++ redistributable and runtime packages are mostly installed for standard libraries that many applications use.[3]

https://en.wikipedia.org/wiki/Microsoft_Visual_C%2B%2B

Microsoft Library
File Format
Name	Microsoft Library
Ontology	
Electronic File Formats
Development
Microsoft Library
Extension(s)	.lib
Microsoft Library (LIB) files were used as compiled units of code in Microsoft programming languages under the MS-DOS / PC-DOS platform in the 1980s and 1990s, and later also in Windows (although the DLL dynamic linked libraries are more common on this platform). They would be compiled from source code (BASIC, C, Pascal, etc.) and linked into executables.

Links
Microsoft document Q79259 describing LIB format (27-DEC-1991)
Info on Windows LIB format
Lib to A converter

http://fileformats.archiveteam.org/wiki/Microsoft_Library

Library Header Record
---------------------

Object code library .LIB files under MS-DOS always contain blocks of
data in multiples of 512 bytes. The first record in the library is a
library header. This record is structured the same as a Microsoft
object-module-format (MS OMF) record. That is, the first byte of the
record identifies the record's type, and the next two bytes specify
the number of bytes remaining in the record. Note that the length
field is byte-swapped (in other words, the low-order byte precedes the
high-order byte). The record type for this library header is F0 hex
(240 decimal).

https://www.dca.fee.unicamp.br/courses/EA876/2s2000/Projetos/lib.txt.html
