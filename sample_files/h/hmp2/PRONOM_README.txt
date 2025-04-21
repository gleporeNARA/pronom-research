Gamestudio uses several proprietary file formats that are similar to popular formats used by other engines, such as the engines by id Software. There are five Gamestudio-specific 3D file formats: WMP for a level, WAD for level textures, WMB for a compiled level with BSP tree and lightmaps, MDL for animated models, and HMP for terrain. There is also the file format WDL for project specific settings such as folders and paths, and the compressed resource file format WRS.

A WMP file is created by the level editor WED. It contains the following elements in a hierarchical tree structure that follows the group structure when designing a level:

Block meshes that build the level geometry, with references to their textures in external WAD files or image folders, and references to their materials defined in a script.
Static and dynamic light source for illuminating the level and generating the lightmaps on the blocks.
Sound sources with references to external sound files in WAV and OGG format.
References to external entity files, with their positions and properties. The entities are stored in MDL, HMP, WMB, or image files.
Camera positions.
Paths for controlling the movement of entities.
Common elements such as a script for the materials and the entity behaviors, fog and sun colors, and a palette for 8-bit textures.
WAD files can be created by WED or by third party editors. They contain textures in 8-bit, 16-bit, 24-bit, or compressed DDS format, plus their mipmaps.

WMB files are created by WED's Map Compiler. They contain the content of the WMP file with included textures, BSP tree data, and lightmaps.

MDL and HMP files are created by the model editor MED or by external tools. They come in two flavors. MDL5 and HMP5 is the old format used by all Gamestudio versions. MDL7 and HMP7 is the new format used by Gamestudio/A6 and A7. The old MDL5 and HMP5 formats are described below. The new MDL7 and HMP7 formats can be read and written through the MDL SDK available on the Gamestudio Download page.

The HMP5 terrain format
A terrain is basically a rectangular mesh of height values with one or several surface textures. It is a variant of the Gamestudio MDL5 Model format, without all the data structures that are unnecessary for terrain.

HMP file header
Once the file header is read, all the other terrain parts can be found just by calculating their position in the file. Here is the format of the .HMP file header:

typedef struct {
	char version[4]; // "HMP5"

	
	http://www.conitec.net/beta/prog_mdlhmp.htm
