Allegro packfile
File Format
Name	Allegro packfile
Ontology	
Electronic File Formats
Game data files
Allegro packfile
Extension(s)	.dat
Allegro is a game programming library. The PACKFILE format is a format containing the game's assets in a way which allegro can read (normally: bitmaps, run-length-encoded sprites, Amiga Module music files from libdumb).

The magic for this file format is slh! (compressed) or slh. (uncompressed).

The allegro library is open source and comes with utility libraries for editing PACKFILEs.

Version 5 of Allegro replaces PACKFILE with standard zip utilities.


http://fileformats.archiveteam.org/wiki/Allegro_packfile

Introduction and scope

   This document describes the format of Allegro's packfiles from a
   decompression point of view. It does not describe how to do the
   compression (read the source, or ask Google about LZSS).

   file.c says "This compression algorithm is based on the ideas of Lempel
   and Ziv, with the modifications suggested by Storer and Szymanski.", if
   that means anything to you.


@heading
Packfile signature

   All compressed packfiles begin with a four byte signature "slh!" (ASCII),
   which in hexadecimal is 0x73, 0x6C, 0x68, 0x21 (in that order).

   Another form of packfiles are uncompressed packfiles, which begin with the
   four byte signature "slh." (ASCII), in hexadecimal 0x73, 0x6C, 0x68, 0x2B.
   The rest of the file is then completely raw. Uncompressed packfiles will
   not be discussed further.
   
https://github.com/liballeg/allegro5/blob/4.4/docs/src/packfile._tx
