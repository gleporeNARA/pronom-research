Gamestudio file formats
Gamestudio uses several proprietary file formats that are similar to popular formats used by other engines, such as the engines by id Software. There are five Gamestudio-specific 3D file formats: WMP for a level, WAD for level textures, WMB for a compiled level with BSP tree and lightmaps, MDL for animated models, and HMP for terrain. There is also the file format WDL for project specific settings such as folders and paths, and the compressed resource file format WRS.

WMB files are created by WED's Map Compiler. They contain the content of the WMP file with included textures, BSP tree data, and lightmaps.

MDL and HMP files are created by the model editor MED or by external tools. They come in two flavors. MDL5 and HMP5 is the old format used by all Gamestudio versions. MDL7 and HMP7 is the new format used by Gamestudio/A6 and A7. The old MDL5 and HMP5 formats are described below. The new MDL7 and HMP7 formats can be read and written through the MDL SDK available on the Gamestudio Download page.

The WMB7 Simple Level format
The WMB format is compiled from a WMP level by WED's map compiler. It's basically a collection of lists for the level entities, blocks, textures, lightmaps, and so on. Of the 20 lists, only 5 are used for a simple level. The rest are 'legacy' lists that were only used in old format versions (WMB1..WMB6), and 'bsp' lists used only for BSP tree levels. They can be left empty. An empty list has offset and length both at 0.

typedef struct {
  long offset; // offset of the list from the start of the WMB file, in bytes
  long length; // length of the list, in bytes
} LIST;

typedef struct {
  char version[4]; // "WMB7"
  
  http://www.conitec.net/beta/prog_mdlhmp.html
