ROOT is a program package and data format used by CERN (the European particle-physics laboratory where Tim Berners-Lee invented the Web) in conjunction with its Open Data initiative to make much of its raw data accessible to the public for whatever analysis outside people might wish to do. ROOT is a set of functions to analyze data, accessible by various GUI and command-line methods as well as being usable as library routines in programs others may wish to develop. CERN data has been released in varying formats depending on the nature of the data, but much of it is in a binary format specific to ROOT.

http://fileformats.archiveteam.org/wiki/ROOT


A ROOT file is a suite of consecutive data records (TKey instances) with a well defined format.

If the key is located past the 32 bit file limit (> 2 GB) then some fields will be 8 instead of 4 bytes:

Byte Range	Member Name	Description
1->4	Nbytes	Length of compressed object (in bytes)
5->6	Version	TKey version identifier
7->10	ObjLen	Length of uncompressed object
11->14	Datime	Date and time when object was written to file
15->16	KeyLen	Length of the key structure (in bytes)
17->18	Cycle	Cycle of key
19->22 [19->26]	SeekKey	Pointer to record itself (consistency check)
23->26 [27->34]	SeekPdir	Pointer to directory header
27->27 [35->35]	lname	Number of bytes in the class name
28->.. [36->..]	ClassName	Object Class Name
..->..	lname	Number of bytes in the object name
..->..	Name	lName bytes with the name of the object
..->..	lTitle	Number of bytes in the object title
..->..	Title	Title of the object
--—>	DATA	Data bytes associated to the object


https://root.cern.ch/doc/master/classTFile.html


https://docs.google.com/presentation/d/189f0qsDEnMSk2R5KWLRPz2TdEV5kTfXH1VcuAra4cnU/edit#slide=id.g29fb05d730_1_181
