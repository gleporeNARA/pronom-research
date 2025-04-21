he MDL5 model format
This format was used by the A4 and A5 engines, and is still supported by later engines and also by many model exporters. It can be imported in all Acknex engines and the MED model editor, though MED normally saves its models in the newer MDL7 format that supports materials and bones. The MDL7 format is not publicly documented, but an easy-to-use SDK is freely available for filter and converter creation.

A wireframe mesh, made of triangles, gives the general shape of a model. 3D vertices define the position of triangles. For each triangle in the wireframe, there will be a corresponding triangle cut from the skin picture. Or, in other words, for each 3D vertex of a triangle that describes a XYZ position, there will be a corresponding 2D vertex positioned that describes a UV position on the skin picture.
It is not necessary that the triangle in 3D space and the triangle on the skin have the same shape (in fact, it is normally not possible for all triangles), but they should have shapes roughly similar, to limit distortion and aliasing. Several animation frames of a model are just several sets of 3D vertex positions. The 2D vertex positions always remain the same.

A MDL5 file contains
- A list of skin textures in 8-bit palettized, 16-bit 565 RGB or 16 bit 4444 ARGB format.
- A list of skin vertices, that are just the UV position of vertices on the skin texture.
- A list of triangles, which describe the general shape of the model.
- A list of animation frames. Each frame holds a list of 3D vertices.

MDL file header
Once the file header is read, all the other model parts can be found just by calculating their position in the file. Here is the format of the .MDL file header:

typedef struct {
  char version[4]; // "MDL3", "MDL4", or "MDL5"
  
  
  http://www.conitec.net/beta/prog_mdlhmp.htm
