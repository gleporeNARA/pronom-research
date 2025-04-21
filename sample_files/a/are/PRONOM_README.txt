Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

ARE file format

Applies to:
BG1, BG1: TotS, BG2, BG2: ToB, PST, IWD, IWD:HoW, IWD:TotL, BGEE

Area overview
An area in the Infinity Engine is made up of several files; ARE, TIS, WED, MOS, BMP and, depending on the complexity of the area, references to BCS, CRE, ITM, BAM and ACM files. The role of each file type is outlined below, based on area AR0001 and standard naming conventions:
AR0001.TIS contains the area graphics
AR0001.WED contains the area region information (wall groups, alternate tiles, doors etc.)
AR0001.MOS contains the area minimap graphics (unused in BGEE)
AR0001.ARE contains the area definition (area type, animations, containers etc.)
AR0001SR.BMP contains the area search map
AR0001LM.BMP contains the area light map
AR0001HT.BMP contains the area height map
AR0001.BCS contains the area script

General Description
The ARE file format describes the content of an area (rather than its visual representation). ARE files contain the list of actors, items, entrances and exits, spawn points and other area-associated info. The ARE file may contain references to other files, e.g. the list of items in a container is stored in the ARE file, however the files themselves are not embedded in the ARE file.

Detailed Description
Overall structure
Note: The ARE file is made of several sections. The order of these sections can vary; this is allowed for in the file format. The sections are presented in the order in which they are referenced in the header.
File header
Actors

V1.0 File header

Offset	Size (data type)	Description
0x0000	4 (char array)	Signature ('AREA')
