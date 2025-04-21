Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

BIFC V1 file format
BIFC V1
Overall structure:
Header
Compressed file data
This format is identical to the SAV file format, except for the signature and version fields. The data, once uncompressed, is formatted as a normal BIF file, as seen above. Note that the SAV files can hold more than one compressed file. It is unknown whether this occurs also in CBF files.

Header

Offset	Size (data type)	Description
0x0000	4 (char array)	Signature ('BIF ')
0x0004	4 (char array)	Version ('V1.0')
0x0008	4 (dword)	Length of filename
0x000c	(ASCIIZ char array)	Filename (length specified by previous field)
sizeof(filename)+0x000C	4 (dword)	Uncompressed data length
sizeof(filename)+0x0010	4 (dword)	Compressed data length
sizeof(filename)+0x0014	Variable (raw data)	Compressed data

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/bif_v1.htm
