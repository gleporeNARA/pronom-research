
OOGL format
From the GeomView manual.
Edited by Paul Bourke
October 1996
Support libraries: offlib.c, offlib.h, and simplex.h.



The objects that you can load into Geomview are called OOGL objects. OOGL stands for "Object Oriented Graphics Library"; it is the library upon which Geomview is built.

There are many different kinds of OOGL objects. This chapter gives syntactic descriptions of file formats for OOGL objects.


OFF Files
The conventional suffix for OFF files is `.off'.

Syntax:

[ST][C][N][4][n]OFF	# Header keyword
[Ndim]		# Space dimension of vertices, present only if nOFF
NVertices  NFaces  NEdges   # NEdges not used or checked


http://paulbourke.net/dataformats/oogl/#OFF
