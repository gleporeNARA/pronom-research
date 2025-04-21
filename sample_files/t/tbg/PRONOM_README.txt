Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

TBG File Format

Applies to:
BG1, BG1: TotS, BG2, BG2: ToB, PST, IWD, IWD:HoW, IWD:TotL, IWD2

General Description
This file format allows files to be transferred between IE installations, while keeping strrefs intact. TBG V4.0 handles most filetypes (including ITM, SPL, CRE and DLG).
Naming conventions are as follows:
* *.TBG - Item TBG Files
* *-A.TBG - Area TBG Files
* *-B.TBG - Script TBG Files
* *-C.TBG - Creature TBG Files
* *-D.TBG - Dialog TBG Files
* *-H.TBG - CHUI TBG Files
* *-N.TBG - NPC TBG Files
* *-P.TBG - SRC TBG Files
* *-S.TBG - Spell TBG Files
* *-T.TBG - Store TBG Files
* *-E.TBG - Effect TBG Files

Detailed Description
Overall Structure:
Header
Text Headers
StrRef Locations
ASCII Locations
File
Text Entries

TBG V4.0 Header

Offset	Size (datatype)	Description
0x0000	4 (char array)	Signature ("TBG4")

https://gibberlings3.github.io/iesdp/file_formats/misc_formats/tbg_v4.htm
