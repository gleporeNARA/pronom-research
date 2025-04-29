This technical report describes the main features of MEDIT
, an interactive mesh visualization tool
developped in the Gamma project at INRIA-Rocquencourt. Based on the graphic standard OpenGL,
this software has been specifically designed to fulfill most of the common requirements of engineers
and numericians, in the context of numerical simulations. This program is rather intuitive and, therefore, the user does not really need any specific learning stage prior to be able to play with it.
In this document, the user will learn how to visualize and manipulate mesh data structures via
the mouse, how to deal with scalar/tensor values associated with a mesh and how to deal with more
complex features (e.g., animations, postscript or image output creation, etc.).


7.2 File formats
As pointed out in Section 4.2, The mesh data structure can be described using very simple (although
complete) data formats. By default (i.e., if no extension is supplied), the program will first attempt
to find a mesh file (in binary format). If no such file is found, then other file formats will be tried,
successively the msh2 format then the gis format.
7.2.1 The mesh format
This format is composed of a single (binary or text) data file. Its structure is organized as a series
of fields identified by keywords. The blanks, ”newline” or <CR> and tabs are considered as item
separators. A comment line starts with the character # and ends at the end of the line. The comments
are placed exclusively between the fields.
The mesh file must start with the descriptor :
MeshVersionFormatted 1
Dimension 3
The other fields supported by MEDIT are either required or faculative. The required fields correspond
to the geometry (i.e., the coordinates) and to the topology description (i.e., the mesh entities). In
the following tables, the term vi indicates a vertex number (i.e., the i
th vertex in the vertex list), ei
is an edge number, ti is a triangle number and qi is a quadrilateral number. Notice that the vertices
coordinates are real numbers in single precision.

https://www.ljll.math.upmc.fr/frey/publications/RT-0253.pdf
