Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

PLT file format

Applies to:
BG1, BG1: TotS, BG2, BG2: ToB, PST, IWD, IWD:HoW, IWD:TotL, IWD2

General Description
This file format describes the appearance of paperdolls displayed on the inventory screen. A paperdoll can display several "materials" (e.g. skin, hair, leather, metal) each of which is represented by a different colour set. The colours for each material are set in the CRE file (major and minor colour can be set within the game) which correspond to a colour gradient. Each pixel is mapped to a colour by the colour byte which is then given an intensity by the intensity byte. The colours are listed below:
0 - Skin
1 - Hair
2 - Metal
3 - Leather
4 - Metal
5 - Minor colour
6 - Major colour
7 - 127 Shadow
Colour maps 128 - 255 repeat this pattern.

Detailed Description

Header


Offset	Size (datatype)	Description
0x00000	4 (char array)	Signature ('PLT ')
0x00004	4 (char array)	Version ('V1  ')

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/plt_v1.htm
