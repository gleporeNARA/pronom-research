MilkShape 3D (ms3d) format
Compiled by Paul Bourke


The MilkShape 3D format (ms3d) is a binary file with byte ordering and numerical conventions as per a Windows based computer. The documentation for the format comes from the header file by Mete Ciragan, this file for version 1.4 (also holds for version 1.3) is given here.

The format consists of a number of sections: a header, list of vertices, list of triangles with texture coordinates, group lists, list of materials, and finally joints. Each section is preceded with the number of items in that section so one can readily jump around the file reading just the bits of interest.

http://paulbourke.net/dataformats/ms3d/
