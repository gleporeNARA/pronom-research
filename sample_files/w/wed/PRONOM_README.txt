Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

WED file format

Applies to:
BG1, BG1: TotS, BG2, BG2: ToB, PST, IWD, IWD:HoW, IWD:TotL, IWD2

General Description
This file format maps the layout of terrain to the tiles in the tileset, and adds structure to an area by listing its doors and walls.

Detailed Description
An area is a grid, with each 64*64 cell within the grid (called a tile cell) being a location for a tile. Tile cells are numbered, starting at 0, and run from top left to bottom right (i.e. a tile cell number can be calculated by y*width+x). As well the tiles for the main area graphics, an area can use overlays. Overlays are usually used for rivers and lakes. Each overlay layer is placed in a separate grid, which are stacked on top of the base grid. Areas also contain another grid, split into 16*16 squares, for the exploration map.
The process of drawing an area is outlined below:
The cell number acts as an index into a tilemap structure.
This give a "tile lookup index" which is an index into the tile indices lookup table.
The tile indices lookup table gives the index into the actual tileset, at which point, the tile is drawn.
The process is repeated for each required overlay (using the associated overlay tilemap / tile indices).


Overall structure:
Header
Overlays
Secondary header
Doors
Tilemap structures
Door tile cell indices
Tile indices (lookup table)
Wall groups
Polygons
Polygon indices (lookup table)
Vertices

WED V1.3 Header

Offset	Size (data type)	Description
0x0000	4 (char array)	Signature ('WED ')
0x0004	4 (char array)	Version ('V1.3')

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/wed_v1.3.htm
