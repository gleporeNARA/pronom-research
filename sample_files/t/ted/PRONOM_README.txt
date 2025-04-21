Tile Editor v5.0 (TED5) is a level editor written by id Software that has been used to create the levels for many of their games. It edits the GameMaps Format seen in many older id Software games and is also apparently able to edit the Commander Keen 1-3 Level format, though how is not known.

Data structures
The map data is split into two files: The map header (MAPHEAD.xxx) and the main map file (usually MAPTEMP.xxx or GAMEMAPS.xxx). The map header may be embedded in the game's main executable.

MAPTEMP.xxx is the working format saved by TED5 when maps are being edited and can be directly accessed and edited by this utility, allowing changes to be made to the game. Note that if the MAPHEAD file exists as an external file, the game always reads it from a file named named MAPHEAD.xxx for both the GAMEMAPS.xxx and the MAPTEMP.xxx variation. TED5 also saves a MAPTHEAD.xx file when editing maps, but that file is only used by TED5 and usually omitted from any game release.

The maps were often compressed even further for the public release versions of the games. This more compressed version of the map file was saved as GAMEMAPS.xxx by TED5. Later releases would omit the additional compression layer and ship with the MAPTEMP.xxx file instead. One possible reason for this could be that the size of the games grew to the point where they would no longer fit onto and be playable from a single floppy disk, and therefore the additional compression was no longer worth the amount of time it took to compress the maps and re-compile the code.

Map headers (MAPHEAD)
Offset	Type	Name	Description
0	UINT16LE	magic	Magic word signalling RLEW compression
2	INT32LE[100]	ptr	100 pointers to start of level 0-99 data in the game maps file
402	! Unknown	tileinfo	Optional tileinfo data
The map header file (MAPHEAD) is of varying length and contains three main types of data.

The first is the magic word or flag used for RLEW compression, which is almost always $ABCD in the original files. It could be changed to any other value if necessary.
The second is 100 level pointers which give the location of the start of level data in the GAMEMAPS file, relative to the start of that file. A value less than 1 indicates no level (generally 0, but occasionally -1 (0xFFFFFFFF) is used). Using -1 should be preferred over 0, as the pre-Wolf3D version of the engine will treat any negative value as "a non existant map" [sic!] and quit with an appropriate error message, while 0 will cause it to try reading a level header at offset 0 (where the "TED5v1.0" string is usually stored), which will cause all kinds of errors as there is clearly no valid level header at that offset.
The third is the tileinfo data, which contains tile properties for each tile used in level creation. (These are masked and unmasked and either 8x8, 16x16 or 32x32.)
Many programs treat the tileinfo as a separate file from the MAPHEAD and it is possible to modify a game in this manner. Indeed, some games such as Wolfenstein 3-D do not have any tileinfo data at all in the map header file (giving a total file length of 402 bytes.) However TED5 works with any tileinfo data in the MAPHEAD.

Map data (GAMEMAPS)
The GAMEMAPS file consists of the string "TED5v1.0" and a number of compressed chunks of varying length. Each level in the file will have from two to four chunks (usually four) depending on the game, with all levels in a given game having the same number of chunks. These are the level header and 1-3 planes (foreground, background and sprite/info.) The chunks are in no particular order and it is possible to read through the entire file decompressing chunks as they're found.

https://moddingwiki.shikadi.net/wiki/GameMaps_Format
