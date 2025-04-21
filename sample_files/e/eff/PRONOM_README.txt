Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

EFF file format

Applies to:
BG1: TotS, BG2, BG2: ToB, IWD, IWD:HoW, IWD:TotL, BGEE

General Description
This file format describes an effect (opcode) and its parameters. The format is an extended version of that found embedded in creatures, items and spells, and is a replacement for the version 1 embedded effects used in BG1. The engine appears to roll a probability for each valid target type, rather than one probability per attack.

EFF V2.0
Overall structure:
Header
Body

EFF V2.0 Header

Offset	Size (datatype)	Description
0x0000	4 (char array)	
Signature (‘EFF ‘)

0x0004	4 (char array)	
Version (‘V2.0’)

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/eff_v2.htm
