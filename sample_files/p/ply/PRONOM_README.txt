PLY is a computer file format known as the Polygon File Format or the Stanford Triangle Format. It was principally designed to store three-dimensional data from 3D scanners. The data storage format supports a relatively simple description of a single object as a list of nominally flat polygons. A variety of properties can be stored, including color and transparency, surface normals, texture coordinates and data confidence values. The format permits one to have different properties for the front and back of a polygon. There are two versions of the file format, one in ASCII, the other in binary.


The Digital Michelangelo Project at Stanford University used the PLY format for an extremely high resolution 3D scan of the Michelangelo "David" sculpture.

Contents
1	The file format
2	ASCII or binary format
3	History
4	See also
5	Open source software
6	References
7	External links
The file format
Files are organised as a header, that specifies the elements of a mesh and their types, followed by the list of elements itself. The elements are usually vertices and faces, but may include other entities such as edges, samples of range maps, and triangle strips.

The header of both ASCII and binary files is ASCII text. Only the numerical data that follows the header is different between the two versions. The header always starts with a "magic number", a line containing

ply
which identifies the file as a PLY file. The second line indicates which variation of the PLY format this is. It should be one of:

format ascii 1.0
format binary_little_endian 1.0
format binary_big_endian 1.0

https://en.wikipedia.org/wiki/PLY_(file_format)
