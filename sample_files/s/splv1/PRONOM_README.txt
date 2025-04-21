Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

SPL file format

Applies to:
BG1, BG1: TotS, BG2, BG2: ToB, PST, IWD, IWD:HoW, IWD:TotL, BGEE

General Description
This file format describes a "spell". Spells include mage spells, priest spells, innate abilities, special abilities and effects used for game advancement (e.g. animation effects, custom spells). SPL files have a similar structure to ITM files.


	Header:Size=114 Bytes		Ext. Header: Size= 40 Bytes		Feature Block: Size=48 Bytes

Detailed Description
SPL files consist of a main header, zero or more extended headers (each containing zero or more feature blocks) and zero or more casting feature blocks. All the feature blocks are stored as a continuous data segment, with each extended header containing an offset into this data, and the main header containing an offset into this data for the casting feature blocks.

Overall structure:
Header
Extended Headers
Feature Blocks

Header

Offset	Size (datatype)	Description
0x0000	4 (char array)	
Signature (‘SPL  ’)

0x0004	4 (char array)	
Version (‘V1 ‘)

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/spl_v1.htm
