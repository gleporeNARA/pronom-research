The PLC file format is used to store data intended as input to the DIR3 (Delaunay Incremental Refinement) meshing program. The data describes the surface that bounds a 3D region to be meshed.

The PLC File Format
The .plc file format is used for defining a piecewise linear complex (PLC). The goal of this format is to fully specify a PLC and not require any additional intersection checks between features.

A .plc file consists of 5 sections.

PLC
Dimension
Points
Segments
Faces (omitted if dimension is 2)
1: The PLC Section
This section identifies the file type.

First line: PLC

2: The Dimension Section
This section specifies the dimension of the PLC: either 2 or 3.

First line: DIMENSION dim

https://people.sc.fsu.edu/~jburkardt/data/plc/plc.html
