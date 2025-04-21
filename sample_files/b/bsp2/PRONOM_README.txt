The Source Engine BSP File Format
The map format of Half-Life 2, Counter-Strike:Source, and other Source engine mods and games.
by Rof (rof(at)bagthorpe.org) October 2005

Introduction
This document describes the structure of the BSP file format used by Half-Life 2, and other Source engine games. The format is similar but not identical to the BSP file formats of the Half-Life 1 engine, which is in turn based on the Quake 1 and Quake 2 file formats, plus that of the later Quake 3:Arena. Because of this, Max McGuire's article, "Quake 2 BSP File Format" (http://flipcode.com/articles/article_q2bsp.shtml) has been of invaluable help in understanding the overall structure of the format and the parts of it that have remained the same or similar to its predecessors.

struct dheader_t
{
      int         ident;            // BSP file identifier
      int         version;          // BSP file version
      lump_t      lumps[HEADER_LUMPS];    // lump directory array
      int         mapRevision;      // the map's revision (iteration, version) number 
};
Here ident is a 4-byte magic number defined as:

IDBSPHEADER       (('P'<<24)+('S'<<16)+('B'<<8)+'V')    //little-endian 'VBSP';

http://www.bagthorpe.org/bob/cofrdrbob/bspformat.html
