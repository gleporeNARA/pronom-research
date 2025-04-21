Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

BAM file format

Applies to:
BG1, BG1: TotS, BG2, BG2: ToB, PST, IWD, IWD:HoW, IWD:TotL, IWD2, BGEE

File versions
BAM
BAMC

General Description
This file format describes animated graphics. Such files are used for animations (both creature animations, item and spell animations) and interactive GUI elements (e.g. buttons) and for logical collections of images (e.g. fonts). BAM files can contain multiple sequences of animations, up to a limit of 255.

NB. While the BAM format allows the dimensions of a frame to be very large, the engine will only show frames up to a certain size. This maximum size varies with the version of the engine:
BG1: Unknown
BG2: 256*256
PST: Unknown (greater than 256*256)
IWD1: Unknown
IWD2: Unknown
BGEE: Unknown (1024*1024 or greater)

Detailed Description
Overall structure:
Header
Frame entries
Cycle entries
Palette
Frame Lookup Table
Frame data

BAMC format
BAMC V1
Overall structure:
Header
zlib compressed data

BAMC V1 Header

A BAMC file consists of a 12 byte header followed by a zlib compressed BAM file.

Offset	Size (data type)	Description
0x0000	4 (char array)	Signature ('BAMC')
0x0004	4 (char array)	Version ('V1  ')
0x0008	4 (dword)	Uncompressed data length

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/bam_v1.htm
