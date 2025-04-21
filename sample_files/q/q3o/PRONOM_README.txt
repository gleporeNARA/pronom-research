Quick3D Object File


A quick3D object file consists of a header and one to three chunks. The three possible types of chunks are the mesh definitions chunk, the material definitions chunk, and the texture definitions chunk. They are binary files and will always have at least a header and a meshes chunk, but may not have materials or textures chunks. The file format uses the following data types:

char   = 1 byte
bool   = 1 byte                  (0=FALSE or 1=TRUE)
short  = 2 bytes
int    = 4 bytes
long   = 4 bytes
float  = 4 bytes
vertex = 12 bytes                (three float's)
normal = 12 bytes                (three float's)
texUV  = 8 bytes                 (two float's)
pixel  = 3 bytes                 (three unsigned char's)
face   = (4 * X) bytes           (X int's)
string = length of string bytes  (including the '\0')
color  = 12 bytes                (three float's)
matrix = 64 bytes                (16 float's)
X represents the "shape" of the face, or in other words, the number of vertices involved in the particular face.
The header starts the file and has the following 22-byte structure:

HEADER {
   char signature[8];
   char version[2];
   int  numberMeshes;
   int  numberMaterials;
   int  numberTextures;
}
The signature field always contains "quick3Do" and identifies the file as a quick3D Object file. The next two char's contain the version of the quick3D file format used in the file. The current version is "30". Then follows three int's, the first being the number of meshes in the mesh definitions section, next the number of materials in the materials chunk, and finally the number of textures in the textures chunk. In the case where there are no materials and/or no textures, the number will be 0.

http://paulbourke.net/dataformats/q3o/
