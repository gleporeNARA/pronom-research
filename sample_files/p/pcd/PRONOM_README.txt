The PCD (Point Cloud Data) file format
This document describes the PCD (Point Cloud Data) file format, and the way it is used inside Point Cloud Library (PCL).

File format header
Each PCD file contains a header that identifies and declares certain properties of the point cloud data stored in the file. The header of a PCD must be encoded in ASCII.

Note

Each header entry as well as ascii point data (see below) specified in a PCD file, is separated using new lines (\n).

As of version 0.7, the PCD header contains the following entries:

VERSION - specifies the PCD file version

FIELDS - specifies the name of each dimension/field that a point can have. Examples:

FIELDS x y z                                # XYZ data
FIELDS x y z rgb                            # XYZ + colors
FIELDS x y z normal_x normal_y normal_z     # XYZ + surface normals
FIELDS j1 j2 j3                             # moment invariants

https://pointclouds.org/documentation/tutorials/pcd_file_format.html
