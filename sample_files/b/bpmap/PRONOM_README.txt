Affymetrix® BPMAP File Format
`
BPMAP FILE
Description

The BPMAP file contains information relating to the design of the Affymetrix tiling arrays.

Version 2 added the ability to a version, group and parameters associated with each sequence item.

Version 3 added the ability to store perfect match probes in addition to probe pairs.

Format

The format of the BPMAP file is a binary file with data stored in big-endian format. The following lists the sections and their order and placement in the file. The definition of each section is detailed below.

File Header

Sequence Description for sequence #1
Sequence Description for sequence #2
...
Sequence Description for sequence #N

Sequence Header for sequence #1
Position Information for probe/probe pair #1 of sequence #1
Position Information for probe/probe pair #2 of sequence #1
...
Position Information for probe/probe pair #M of sequence #1

Sequence Header for sequence #2
Position Information for probe/probe pair #1 of sequence #2
Position Information for probe/probe pair #2 of sequence #2
...
Position Information for probe/probe pair #M of sequence #2

...

Assuming there are N sequences and M_i probe pairs for sequence i.

Section Definitions

File Header

Item	Description	Type	Size
1	Magic number. A value to identify the file type. The value is set to 'PHT7\r\n\032\n'	char	8 bytes

https://www.affymetrix.com/support/developer/powertools/changelog/gcos-agcc/bpmap.html
