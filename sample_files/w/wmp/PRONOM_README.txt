Gamestudio file formats
Gamestudio uses several proprietary file formats that are similar to popular formats used by other engines, such as the engines by id Software. There are five Gamestudio-specific 3D file formats: WMP for a level, WAD for level textures, WMB for a compiled level with BSP tree and lightmaps, MDL for animated models, and HMP for terrain. There is also the file format WDL for project specific settings such as folders and paths, and the compressed resource file format WRS.

A WMP file is created by the level editor WED. It contains the following elements in a hierarchical tree structure that follows the group structure when designing a level:

Block meshes that build the level geometry, with references to their textures in external WAD files or image folders, and references to their materials defined in a script.
Static and dynamic light source for illuminating the level and generating the lightmaps on the blocks.
Sound sources with references to external sound files in WAV and OGG format.
References to external entity files, with their positions and properties. The entities are stored in MDL, HMP, WMB, or image files.
Camera positions.
Paths for controlling the movement of entities.
Common elements such as a script for the materials and the entity behaviors, fog and sun colors, and a palette for 8-bit textures.

http://www.conitec.net/beta/prog_mdlhmp.html
