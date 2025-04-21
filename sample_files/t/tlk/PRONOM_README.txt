Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

TLK file format

Applies to:
BG1, BG1: TotS, BG2, BG2: ToB, PST, IWD, IWD:HoW, IWD:TotL, IWD2


General Description
Most strings shown in Infinity Engine games are stored in a TLK file, usually dialog.tlk (for male/default text) and/or dialogf.tlk (for female text). Strings are stored with associated information (e.g. a reference to sound file), and are indexed by a (0-indexed) 32 bit identigier called a "Strref" (String Reference). Storing text in this way allows for a game to be easily swapped between languages.

Detailed Description
Overall structure
Header
Entries
Strings section

TLK V1 Header

Offset	Size (data type)	Description
0x0000	4 (char array)	Signature ('TLK ')
0x0004	4 (char array)	Version ('V1  ')

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/tlk_v1.htm
