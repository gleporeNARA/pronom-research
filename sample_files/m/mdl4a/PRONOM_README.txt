Half-Life is a first-person shooter (FPS) game developed by Valve and published by Sierra Studios for Windows in 1998. It was Valve's debut product and the first game in the Half-Life series. Players assume the role of Gordon Freeman, a scientist who must escape the Black Mesa Research Facility after it is invaded by aliens. The gameplay consists of combat, exploration and puzzle-solving.

https://en.wikipedia.org/wiki/Half-Life_(video_game)

MDL
MDL is the extension for Source's proprietary model format. It defines the structure of the model along with animation, bounding box, hit box, materials, mesh and LOD information. It does not, however, contain all the information needed for the model. Additional data is stored in PHY, ANI, VTX and VVD files, and sometimes, usually for shared animations, other .mdl files.

Contents
1	File format
1.1	Main header
1.2	Secondary header
1.3	Texture data
1.4	Skin replacement tables
2	See also
File format
Some details of the file format may be gleaned from the source code in Valve's studio.h, specifically the struct studiohdr_t. The early header defines a series of offsets and lengths for various sub-sections within the file, along with some key scalar information. The MDL also contains the names of materials (VMT), which may be used and referenced in various ways.

Main header
To get the latest header for specific game, please use the studio.h file in the Valve's SDK instead.

struct studiohdr_t
{
    int         id;             // Model format ID, such as "IDST" (0x49 0x44 0x53 0x54)
    
    
