Videoscape GEO file format
Written by Max Gilead, based on Blender manual
Thanks to Ton Roosendaal who wrote the paper docs
Additions by Paul Bourke


Videoscape file format was originally used by an early Amiga animation package called "Videoscape 3D". It is now used by Blender for importing/exporting meshes in text format. All compatibility is tested with Blender. In fact, all info in this doc is taken from Blender manual.

GEO files are ascii printable text only files, the first line of which contains a single word that determines the type of file format that follows. The coordinate system is left handed, traditionally with the y axis as the default up or sky vector. Where appropriate, polygon vertices are ordered in a clockwise direction. Blank lines may be added to make file more readable but no comments lines are allowable.


4. Gouraud curves or NURBS surfaces

This kind of file can describe both curves and surfaces.

3DG3            - magic number
type            - object type (5 is surface, other is bezier curve)
number_of_items - number of curves or surfaces
ext1 ext2       - extrude numbers also indicated for surfaces. These are NOT floats, they're integers divided by 500.
Matrix [4][4]   - right-handed object matrix. Used to determine position, rotation and size


http://paulbourke.net/dataformats/geo/
