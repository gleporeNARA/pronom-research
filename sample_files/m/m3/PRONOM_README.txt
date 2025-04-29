M3
This file format is actually not a WoW file format. Its the next generation of the MDX model format which had MDX (m1) in WC3 / prior to WoW, MDX2 (m2) in WoW, MDX2.2 (m2 with skin and anim) in WoW:WotLK and MDX3 (m3) in SC2.

As always, the format has similarities but also big revamps like on references this time.

Instead of using direct references, the references are now all in one global list. This list also contains the type and number of entries referenced (as well as another uint32). If one block references another one, it only says, how many of that data is referenced (similar to the entry in the reference table) and which reference is referenced (the id in the global list).

The reference table consists of entries of this structure:

struct referenceentry 
{
  /*0x00*/ uint32_t type;
  /*0x04*/ uint32_t offset;
  /*0x08*/ uint32_t nEntries;
  /*0x0C*/ uint32_t version; // says which version of the chunk should be read.
};
When a block is referenced somewhere, the reference looks like this:

struct reference 
{
  /*0x00*/ uint32_t entries;
  /*0x04*/ uint32_t referenceid;
};
The position of the reference table is not fixed and mostly on the end of the file due to easier saving. The position is told in the header of the file:

struct MD33
{
  /*0x00*/ uint32_t token; // 'MD33'
  /*0x04*/ uint32_t offsettotable;
  /*0x08*/ uint32_t entriesoftable;
  /*0x0C*/ reference MODL;
};


https://wowdev.wiki/M3


https://www.sc2mapster.com/forums/development/artist-tavern/166188-help-understanding-sc2-m3-file?page=2
