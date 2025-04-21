MDL file format (Quake's models)
Written by David Henry, 20th December of 2004

Introduction
The MDL file format is the model format used in Quake (June 1996). MDL model files' characteristics are these:

Model's geometric data (triangles);
8 bits texture data;
Frame-by-frame animations;
A MDL file can hold multiple textures.

MDL model file's extension is “mdl”. A MDL file is a binary file divided in two part: the header dans the data. The header contains all information needed to use and manipulate the data.

Header
Data
Variable sizes
Variable types used in this document have those sizes:

char: 1 byte
short: 2 bytes
int: 4 bytes
float: 4 bytes
ubyte: 1 unsigned byte
They correspond to C type sizes on the x86 architecture. Ensure that type sizes correspond to these ones if you're compiling for another architecture.

Endianess issues
Since the MDL file format is a binary format, you'll have to deal with endianess. MDL files are stored in little-endian (x86). If you're targetting a big-endian architecture (PowerPC, SPARC, ...), or simply want your program to be portable, you'll have to perform proper conversions for each word or double word read from the file.

The header
The header is a structure which comes at the beginning of the file:

/* MDL header */
struct mdl_header_t
{
  int ident;            /* magic number: "IDPO" */
  
  http://tfc.duke.free.fr/coding/mdl-specs-en.html
