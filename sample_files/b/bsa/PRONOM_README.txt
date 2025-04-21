BSA file format
EDIT
The BSA file format stands for Bethesda Software Archive. It has was originally used by Bethesda for Morrowind and was first used in in the Fallout series for Fallout 3. It is a binary file which contains textures, meshes, and other resources the game depends on. Preliminary work indicates that they have been bumped up to version 68 over Bethesda's previous game The Elder Scrolls IV: Oblivion, which used version 67.

https://falloutmods.fandom.com/wiki/BSA_file_format

Bethesda Software Archive
Game assets are stored in BSA files. This includes textures (.dds), meshes (.nif, .rdt), menus (.xml), sounds (.wav, .ogg), music (.mp3, .ogg), fonts (.fnt), facegen (.ctl), lipsync data (.dat), text (.txt), speedtree (.spt), and dlod (.dlod) settings. BSA files are archives which are packed in a single file with a directory and file structure, optionally compressed with zlib compression.

By default, the game will load BSAs in the order their associated plugins are ordered, with BSAs loaded first overriding conflicting files in subsequent BSAs, if present. It is possible to override this behavior by using Archive Invalidation, in which loose files containing the same folder structure will override BSA content.

This is opposite of the plugin override rule of one. In the case of BSA the first file loaded wins conflicts (See notes).

BSAs are loaded in the following order. First are those contained in sArchiveList in the Fallout.ini. Any others are loaded in the same order as the plugin load order, and in the case of multiple BSAs per plugin in alpha numeric sub order.

https://geckwiki.com/index.php/BSA_Files

A file with the BSA file extension is a BSARC Compressed Archive file. The BSA stands for Bethesda Software Archive.

These compressed files are used to hold resource files for Bethesda Softworks computer games, like the sounds, maps, animations, textures, models, etc. Storing files in BSA archives makes organizing the data much easier than having them exist in dozens or hundreds of separate folders.

BSA files are stored in the \Data\ folder of the game's installation directory.

https://www.lifewire.com/bsa-file-2619981
