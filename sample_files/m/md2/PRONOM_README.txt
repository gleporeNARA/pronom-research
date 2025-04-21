MD2 file format
(Quake 2's models)
Written by David Henry, 19th December of 2004

Introduction
The MD2 model file format was introduced by id Software when releasing Quake 2 in November 1997. It's a file format quite simple to use and understand. MD2 models' characteristics are these:

Model's geometric data (triangles);
Frame-by-frame animations;
Structured data for drawing the model using GL_TRIANGLE_FAN and GL_TRIANGLE_STRIP primitives (called “OpenGL commands”).
Model's texture is in a separate file. One MD2 model can have only one texture at the same time.

MD2 model file's extension is “md2”. A MD2 file is a binary file divided in two part: the header dans the data. The header contains all information needed to use and manipulate the data.

Header
Data
Variable sizes
Variable types used in this document have those sizes:

char: 1 byte
short: 2 bytes
int: 4 bytes
float: 4 bytes
They correspond to C type sizes on the x86 architecture. Ensure that type sizes correspond to these ones if you're compiling for another architecture.

Endianess issues
Since the MD2 file format is a binary format, you'll have to deal with endianess. MD2 files are stored in little-endian (x86). If you're targetting a big-endian architecture (PowerPC, SPARC, ...), or simply want your program to be portable, you'll have to perform proper conversions for each word or double word read from the file.

The header
The header is a structure which comes at the beginning of the file:

/* MD2 header */
struct md2_header_t
{
  int ident;                  /* magic number: "IDP2" */
  int version;                /* version: must be 8 */
  
  
  http://tfc.duke.free.fr/coding/md2-specs-en.html
  
  http://fileformats.archiveteam.org/wiki/MD2
