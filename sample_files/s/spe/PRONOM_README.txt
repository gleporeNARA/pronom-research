Abuse is a side-scrolling action game and the only released game by Crack Dot Com. The story involves Nick Vrenna, a prisoner wrongly incarcerated in an experimental prison complex, attempting to prevent the outbreak of a powerful mutagen after an accident in the experiments taking place transforms the other inmates into xenomorph-like monsters. The game uses a distinctive mouse-and-keyboard control scheme that allows the main character to aim independently of movement.

The game was designed with modding in mind, and included a built-in level editor as well as the potential to customize various behaviors using a dialect of Lisp. The source code was also officially released.

https://moddingwiki.shikadi.net/wiki/Abuse

The SPEC format is used by Abuse to store levels, save games, and graphical data. Level files can be edited using the built-in editor while Satan Paint can load and save graphics archives, however it is not currently clear if and how Satan Paint can handle things like collision boundaries for tiles.

! SPEC files for PC DOS appear to be little endian. Check if this is also the case for the Mac version or if they use native endianness.

File format
The header is as follows:

Data type	Description
ASCIIZ	Format label, "SPEC1.0"

https://moddingwiki.shikadi.net/wiki/SPEC_Format
