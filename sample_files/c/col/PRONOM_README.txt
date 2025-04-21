Collision File
(Redirected from Collision files)
Jump to navigationJump to search
All GTA3 games (GTA III, Vice City and San Andreas) have separate files for the visual and physical representations of their models. Collision models are often simply an optimized equivalent of the visual model, reduced in poly count and complexity. The game engine uses them for collision and physics calculations. Unlike graphics meshes, they are comprised not only of triangles but also spheres and boxes, for which exist faster and more accurate collision algorithms.

One or more collision models are packaged to a collision file, denoted by the file extension .col.

Each collision model is identified by a name, which must be the same as the model file and the item definition.

Header
char {4}        - FourCC ("COLL", "COL2" or "COL3")
uint32 {4}      - file size from after this value (so 8 byte less)

https://gtamods.com/wiki/Collision_File#Header
