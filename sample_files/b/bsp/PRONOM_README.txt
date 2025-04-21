
File Header


As far as I know all BSP files are stored in a little-endian (Intel) byte order and converted as loaded when used on a big-ending platform. This allows the same map files to be shared by Quake clients running on all different platforms. If you're going to be loading BSP files on a big-endian machine -- like a Macintosh or UNIX machine -- you're going to have to be careful about swapping the byte order.

The Quake BSP file format is organized around a directory structure, where all of the data is contained in "free floating" lumps within the file. There's a directory in the beginning of the file which tells the offset of the start of the lump and the length. This directory comes after the first 8 bytes of the file is a table of contents which gives the location and length of these lumps.

The format for the BSP file header is the bsp_header structure shown below:


struct bsp_lump
{

    uint32    offset;     // offset (in bytes) of the data from the beginning of the file
    uint32    length;     // length (in bytes) of the data

};

struct bsp_header
{

    uint32    magic;      // magic number ("IBSP")
    uint32    version;    // version of the BSP format (38)
    
    https://www.flipcode.com/archives/Quake_2_BSP_File_Format.shtml
    
Unofficial Quake 3 Map Specs



Introduction	[top]
This document describes the Quake 3 BSP file format. This is an unofficial document. Quake 3 is a registered trademark of id Software, which does not sponsor, authorize, or endorse this document.

This document describes the Quake 3 BSP file format as the author understands it. While every effort has been made to ensure that the contents of this document are accurate, the author does not guarantee that any portion of this document is actually correct. In addition, the author cannot be held responsible the consequences of the any use or misuse of the information contained in this document.

Copyright © 2000 Kekoa Proudfoot. All rights reserved.

Description	[top]

File structure

Quake 3 BSP files are IBSP files, and therefore have a structure similar to previous BSP files from id Software. Every IBSP file begins with a header, which in turn contains a lump directory. The lump directory describes the layout of the rest of the file, which contains some number of lumps. Each lump stores a particular kind of map data.


Header / Directory
Lump
Lump
Lump
...
The layout of an IBSP file. An IBSP file consists of a header followed by a number of lumps. The header contains a directory which identifies the locations and sizes of the lumps.
Data types

Quake 3 BSP files contains only four basic data types. They are:

Type	Description
ubyte	unsigned byte
int	4-byte integer, little-endian
float	4-byte IEEE float, little-endian
string[n]	string of n ASCII bytes, not necessarily null-terminated
All data in a BSP file is organized into records composed of these four data types.

Header and Directory

The header record looks like this:

header

string[4] magic	Magic number. Always "IBSP".
int version	Version number. 0x2e for the BSP files distributed with Quake 3.

http://www.mralligator.com/q3/
