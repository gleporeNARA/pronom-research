Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

CRE file format

Applies to:
BG1, BG1: TotS, BG2, BG2: ToB, BGEE

General Description
This file format describes a "creature". Creatures can move, have an animation, hold items, run scripts, cast spells and initiate dialog. Creatures have several stats (some visible through the game UI) which are generally mapped to IDS or 2DA files.

Detailed Description
Overall Structure
Header
Known spells section
Spell memorization info
Memorized spells section
Effects
Items section
"Item slots"

CRE V1.0 Header

Offset	Size (datatype)	Description
0x00000	4 (char array)	Signature ('CRE ')
0x0004	4 (char array)	Version ('V1.0')

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/cre_v1.htm

General Description
This file format describes a "creature". Creatures can move, have an animation, hold items, run scripts, cast spells and initiate dialog. Creatures have several stats (some visible through the game UI) which are generally mapped to IDS or 2DA files.

Detailed Description
Overall Structure
Header
Known spells section
Spell memorization info
Effects
Items section
"Item slots"

CRE V2.2 Header

Offset	Size (datatype)	Description
0x00000	4 (char array)	Signature ('CRE ')
0x0004	4 (char array)	Version ('V2.2')

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/cre_v2.2.htm

General Description
This file format describes a "creature". Creatures can move, have an animation, hold items, run scripts, cast spells and initiate dialog. Creatures have several stats (some visible through the game UI) which are generally mapped to IDS or 2DA files.

Detailed Description
Overall Structure
Header
Known spells section
Spell memorization info
Memorized spells section
Effects
Items section
"Item slots"

CRE V9.0 Header

Offset	Size (datatype)	Description
0x00000	4 (char array)	Signature ('CRE ')
0x0004	4 (char array)	Version ('V9.0')

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/cre_v9.htm
