Gmsh is a finite-element mesh generator developed by Christophe Geuzaine and Jean-François Remacle. Released under the GNU General Public License, Gmsh is free software.

Gmsh contains 4 modules: for geometry description, meshing, solving and post-processing. Gmsh supports parametric input and has advanced visualization mechanisms. Since version 3.0, Gmsh supports full constructive solid geometry features, based on Open Cascade Technology.[1][2]

A modified version of Gmsh is integrated with SwiftComp, a general-purpose multiscale modeling software. The modified version, called Gmsh4SC, is compiled and deployed on the Composites Design and Manufacturing HUB (cdmHUB).

https://en.wikipedia.org/wiki/Gmsh




9.1 MSH file format
The MSH file format version 4 (current revision: version 4.1) contains one mandatory section giving information about the file ($MeshFormat), followed by several optional sections defining the physical group names ($PhysicalName), the elementary model entities ($Entities), the partitioned entities ($PartitionedEntities), the nodes ($Nodes), the elements ($Elements), the periodicity relations ($Periodic), the ghost elements ($GhostElements), the parametrizations ($Parametrizations) and the post-processing datasets ($NodeData, $ElementData, $ElementNodeData). The sections reflect the underlying Gmsh data model: $Entities store the boundary representation of the model geometrical entities, $Nodes and $Elements store mesh data classified on these entities, and $NodeData, $ElementData, $ElementNodeData store post-processing data (views). (See Gmsh API and Source code structure for a more detailed description of the internal Gmsh data model.)

To represent a simple mesh, the minimal sections that should be present in the file are $MeshFormat, $Nodes and $Elements. Nodes are assumed to be defined before elements. To represent a mesh with the full topology (BRep) of the model and associated physical groups, an $Entities section should be present before the $Nodes section. Sections can be repeated in the same file, and post-processing sections can be put into separate files (e.g. one file per time step). Any section with an unrecognized header is simply ignored: you can thus add comments in a .msh file by putting them e.g. inside a $Comments/$EndComments section.

All the node, element and entity tags (their global identification numbers) should be strictly positive. (Tag 0 is reserved for internal use.) Important note about efficiency: tags can be "sparse", i.e., do not have to constitute a continuous list of numbers (the format even allows them to not be ordered). However, using sparse tags can lead to performance degradation. For meshes, sparse indexing can15 force Gmsh to use a map instead of a vector to access nodes and elements. The performance hit is on speed. For post-processing datasets, which always use vectors to access data, the performance hit is on memory. A $NodeData with two nodes, tagged 1 and 1000000, will allocate a (mostly empty) vector of 1000000 elements. By default, for non-partitioned, single file meshes, Gmsh will create files with a continuous ordering of node and element tags, starting at 1. Detecting if the numbering is continuous can be done easily when reading a file by inspecting numNodes, minNodeTag and maxNodeTag in the $Nodes section; and numElements, minElementTag and maxElementTag in the $Elements section.

In binary mode (Mesh.Binary=1 or -bin on the command line), all the numerical values (integer and floating point) not marked as ASCII in the format description below are written in binary form, using the type given between parentheses. The block structure of the $Nodes and $Elements sections allows to read integer and floating point data in each block in a single step (e.g. using fread in C).

The format is defined as follows:

$MeshFormat // same as MSH version 2
  version(ASCII double; currently 4.1)
