Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

VVC file format

Applies to:
BG2, BG2: ToB

General Description
This file format describes visual "spell casting" effects (BAM files) with optional sounds (WAVC files). VVCs can be invoked by some script actions (e.g. CreateVisualEffect, CreateVisualEffectObject) and by some effects (e.g. "Play 3D effect").

VVC Files use a 3D co-ordinates system when playing the exact location of VVC animations. Infinity Engine Games are rendered from an isometric angle; this means that the X-Y-Z axis need to be percieved within this isometric frame to properly understand how VVC files will play. The screenshot below demonstrates each axis, accordingly:
X is up or down.
Y is the distance between the feet of the character and the animation
Z is the distance between the head of the character and the animation



Detailed Description

These files have constant length 1ECh bytes.
Offset	Size (data type)	Description
0x0000	4 (char array)	Signature ('VVC ')
0x0004	4 (char array)	Version ('V1.0')

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/vvc_v1.htm
