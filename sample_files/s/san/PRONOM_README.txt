Eracha is a platform game in which you play a caveman. You go around killing ghosts and other creatures to get to the end of each level. You have a club to kill the monsters and you can also pick up different weapons you can throw.

The controls are very easy. You use the cursor keys to move, up to jump, control to use your club, alt to throw an item and space to switch through your throwing items. There are eight levels to play in total.

https://archive.org/details/msdos_Eracha_1996


Assorted notes about SAN/SCB/STB Formats
Main graphics format for objects and enemies with corresponding data files.

SAN - sprite animation SCB - coordinates? STB - movement/frames relation

Not all SAN files have a corresponding SCB file, but they are clearly related. It seems that only enemies have it and other objects not. I guess, that it is related to the fact that they can hurt the player. Certain enemies have a STB file, it defines the movement paths if it is special. For example the ghosts: There are different types of them, some cannot move without STB file, some only move vertically to player position. It seems all enemies have a default movement defined and any additional movement is defined in the STB file. This explains some enemies (e.g. fireman) do not need it, because their movement is only in one direction, towards the player. The san graphics have no palette, the palette of the loaded til file is used. If the san file is used in the menu, the compiled in palette (open.pal) is used instead.

SAN HEADER
offset 0x0 - 0x9: file magic '[SaemSong]'

https://github.com/carstene1ns/eracha/blob/master/reverse_engineering/doc/san_scb_stb_format.md
