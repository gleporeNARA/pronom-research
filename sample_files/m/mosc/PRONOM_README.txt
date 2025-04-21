Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

MOS file format

Applies to:
BG1, BG1: TotS, BG2, BG2: ToB, PST, IWD, IWD:HoW, IWD:TotL, IWD2

File versions
MOS
MOSC

General Description
This file format describes static graphics in a tile based bitmap format. Such files are used for mini-maps and GUI backgrounds.
NOTE: if you want to create a mini-map, scale your source image by 32/3 (10.66667) for the original BG games, 32/4 for IWDs or by 6.4 for the EEs.

MOS V1
Overall structure:
Header
Palettes
Tile offsets
Tile data

MOS V1 Header

Offset	Size (data type)	Description
0x0000	4 (char array)	Signature ('MOS ')
0x0004	4 (char array)	Version ('V1  ')

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/mos_v1.htm
