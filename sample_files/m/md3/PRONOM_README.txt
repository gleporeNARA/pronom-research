Introduction:

MD3 is the 3D data format used in Quake 3: Arena and derivative games (Q3 mods, Return to Castle Wolfenstein, Jedi Knights 2, etc.). The file format is used to describe 3D objects in the game that move and interact with players, other objects, and/or the environment. Animation is recorded by describing the position of every vertex in the model for each frame of animation. This style of animation may also be known as "mesh deformation", "vertex animation", ???.

A separate file format is used to describe maps, the environment of the game: a source MAP file that compiles into a BSP file. This document does not cover the MAP nor BSP file formats.

Id Software, Inc., introduced a new 3D data format that appeared in Quake 3 PR 1.29(?), called MD4. The MD4 format uses "bones animation", which describes how groups of vertex moves together around together in terms of rotation and translation, instead of describing every the positon of every vertex. The animation style in MD4 may also be known as "skeleton animation", ???.

This newer file format from Id Software, Inc., should not be confused with RSA Data Security, Inc., Message Digest 4 algorithm, also called MD4. One is a file format, the other is an algorithm ("math formula"), but they are, unfortunately, both called "MD4". Furthermore, to add to the confusion, the Quake series uses the MD4 algorithm (slightly modified?) as a checksum algorithm for network error-checking and pak file integrity (including the MD4 files).

This document does not cover the MD4 file format.

The Quake series was developed and run on IA32 (x86) machines, using C. The file format shows many evidences of x86-isms and C-isms (expected byte order, word sizes, data type names, etc.). Some of these isms spill over into this document.

The MD3 format is presented here from a larger scope to smaller ones.


Data type indicator:
Datatype	name/purpose	Description
U8	char	8-bit unsigned octet (character).
S16	short	little-endian signed 16-bit integer.
S32	int	little-endian signed 32-bit integer.
F32	float	IEEE-754 32-bit floating-point.
VEC3	vec3_t	triplet of F32 in sequence (read 4 octets, make float, read 4, make float, read 4, make float), describing a 3-space vector.
*	[]	indicates sequential repeat count (homogenous aggregation, array, vector), as in "U8 * 16" to mean a 16-octet array (i.e. character string).
-		file/array offset of which to make special note.
!		aggregate complex data that should be described elsewhere.


MD3:
Datatype	name/purpose	Description
-	MD3_START	offset of MD3 object. Usually 0, but not guaranteed.
S32	IDENT	Magic number. As a string of 4 octets, reads "IDP3"; as unsigned little-endian 1367369843 (0x51806873); as unsigned big-endian 1936228433 (0x73688051).

https://www.icculus.org/homepages/phaethon/q3a/formats/md3format.html
