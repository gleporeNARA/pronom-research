This page is dedicated to the file format of WarCraft III replay files. Here you can find a detailed fileformat documentation and some example code as well as links to open source replay parsing libraries and ready-to-use replay tools.

The file format description is currently divided into two files. The file w3g_format.txt describes the general layout of a replay file and everything else saved in the replay except for single player actions. These actions are documented in detail in a seperate file w3g_actions.txt.

Please note that the file format description is neither finished nor complete. We will continue to update the files while changes are made to the game by patches or new information is researched about unknown fields and/or values. Please check back regularly.

http://w3g.deepnode.de/


2.0 [Header]
===============================================================================

The replay file consist of a header followed by a variable number of compressed
data blocks. The header has the following format:

offset | size/type | Description
-------+-----------+-----------------------------------------------------------
0x0000 | 28 chars  | zero terminated string "Warcraft III recorded game\0x1A\0"
0x001c |  1 dword  | fileoffset of first compressed data block (header size)

https://gist.github.com/dengzhp/1185519
