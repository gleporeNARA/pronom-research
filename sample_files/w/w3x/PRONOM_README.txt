 Introduction:
This documentation contains almost all the specifications of Warcraft III maps files (*.w3m and *.w3x). This was made without any help from Blizzard Entertainement and did not involve "reverse engineering" of the Warcraft III engine. The specification of each kind of file depend on its version. I did document here the current version used by Warcraft III Retail (initial version); make sure the file you're looking at or modifying are using the same version/format as describbed. I'm French so please, forgive my English! Finally, use this documentation at your own risks: I take no responsability if you corrupt your maps.
((кат 1) Things you need to know first to mod' a map!
» 1.1) Your environment
2) W3M/W3X Files Format

A W3M or W3X file is a
Warcraft III Map file (AKA Warcraft III Scenario in the World Editor).
It's just a MPQ (using a "new" compression format) with a 512 bytes
header. Sometimes, for official W3M files, it uses a footer of 260
bytes for authentification purposes.
Here is the header format (fixed size = 512 bytes):
char[4]: file ID (should be "HM3W")

https://xgm.guru/p/wc3/warcraft-3-map-files-format
