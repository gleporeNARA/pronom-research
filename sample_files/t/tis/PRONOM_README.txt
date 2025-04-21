Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

TIS file format

Applies to:
BG1, BG1: TotS, BG2, BG2: ToB, PST, IWD, IWD:HoW, IWD:TotL, IWD2, BGEE

General Description
This file format describes a tileset. There are currently two variants available:

1. Palette-based TIS
TIS files are generally comprised of a large number of tiles, each of which consists of a palette and a rectangular block of pixels. Each pixel is an index into the associated palette. Each tile has its own palette and a block of pixels. The pixel data is not compressed. TIS files contain only the graphics for an area - the location information is stored in a WED file.

2. PVRZ-based TIS
This variant is only supported by Enhanced Edition games. Each tile definition refers to a block of pixels within an associated PVRZ file. As with palette-based TIS this format contains only the graphics for an area - the location information is stored in a WED file.

Engine specific notes:
PST can only load TIS files when they are stored in a BIFF file.
Palette-based TIS induces a noticeable performance hit and occasional visual glitches when used in Enhanced Edition games. It is highly recommended to use PVRZ-based TIS instead.

Detailed Description
Palette-based: Each tile consists of a 256 colour palette, with each entry being an RGBA value stored in BGRA order (note that the Alpha value is unused), followed by 8-bit pixel values, which are indices into the palette. The pixel values are row by row, from left to right and top to bottom. Index 0 is hardcoded to be the transparent index.

PVRZ-based: Each tile consists of a block of pixels that is defined in an associated PVRZ file.

Header

The Header has a constant length of 18h (24) bytes.

Offset	Size (datatype)	Description
0x0000	4 (char array)	Signature ('TIS ')
0x0004	4 (char array)	Version ('V1  ')
0x0008	4 (dword)	

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/tis_v1.htm
