Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

GAM file format

Applies to:
BG1, BG1: TotS, IWD, IWD:HoW, IWD: TotL, PST

General Description
This file format is used to hold game information in save games. The GAM file does not store area, creature or item information, instead, it stores information on the party members and the global variables which affect party members.

Detailed Description
Overall structure:
Header
Party members
Party member CRE file data
NPCs (who are not in the party)
NPC kills statistics (embedded in NPC struct)
NPC CRE file data
Variables (in the GLOBAL namespace)
Kill variables (PST-only)
Journal entries
Modron Maze (PST-only)
Modron Maze Entry (PST-only)
Bestiary (PST-only)

GAME V1.1 Header

Offset	Size (datatype)	Description
0x0000	4 (char array)	Signature ('GAME')
0x0004	4 (char array)	Version ('V1.1')

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/gam_v1.1.htm
