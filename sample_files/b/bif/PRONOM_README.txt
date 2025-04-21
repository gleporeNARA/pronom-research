Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

BIFF file format

Applies to:
BG1, BG1: TotS, BG2, BG2: ToB, PST, IWD, IWD:HoW, IWD:TotL, IWD2

File versions
BIF (BG1, IWD1, PST)
BIFC (IWD1)
BIFC 1.0 (BG2)

General Description
This file format is a simple archive format, used mainly both to simplify organization of the files by grouping logically related files together (especially for areas). There is also a gain from having few large files rather than many small files, due to the wastage in the FAT and NTFS file systems. BIF files containing areas typically contain:
one or more WED files, detailing tiles and wallgroups
one or more TIS files, containing the tileset itself
one or more MOS files, containing the minimap graphic
3 or 4 bitmap files which contain one pixel for each tile needed to cover the region

The bitmaps are named xxxxxxHT.BMP, xxxxxxLM.BMP, xxxxxxSR.BMP and optionally xxxxxxLN.BMP.
xxxxxxHT.BMP: Height map, detailing altitude of each tile cell in the associated wed file
xxxxxxLM.BMP: Light map, detailing the level and colour of illumination each tile cell on the map. Used during daytime
xxxxxxLN.BMP: Light map, detailing the level and colour of illumination each tile cell on the map. Used during night-time
xxxxxxSR.BMP: Search Map, detailing where characters cannot walk, and the footstep sounds

BIFF V1
Overall structure:
Header
File entries
Tileset entries
Data for the contained files, as described in the file and tileset entries
Note that the data of the contained files might be after the header, and the file/tileset entries after the contained files. The offset to the file entries and the offset to each contained file should be used to know the exact location of each.


BIFF V1 Header

Offset	Size (data type)	Description
0x0000	4 (char array)	Signature ('BIFF')
0x0004	4 (char array)	Version ('V1  ')

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/bif_v1.htm
