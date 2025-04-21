The LIGO/VIRGO Data Frame Format for interferometric gravitational wave detectors (IGWD) is a collaborative effort that has evolved out of a frame format design originated within the VIRGO Project. This
specification has evolved out of the recognition for the need of a standard definition of this frame format
that can be used by individual (international) projects wishing to adhere to a common representation of data
produced by IGWD. It is hoped that by using a standard design for data, future collaborative analyses of
data taken by different projects can be promoted more easily.
The predominant type of data stored in frames is time series data of arbitrary duration. It is possible,
however, to encapsulate in frame structures other types of data, e.g., spectra, lists, vectors or arrays, etc.
However, the primary purpose of this specification is to address how (raw) data are written into frame
structures.

4.3.1 File Header -- FrHeader
Table 6: Byte-level descriptor for a file header
Byte(s) Description
0 - 4 ASCII Characters “IGWD” (string terminated with a \0) or other
identifier of originator of frame file
5 Data format version for this file (refer to 4)
6 Frame Library minor version number for software used to write this file.
The value 255 is reserve to represent unreleased or provisional (Beta)
versions of the library.
7 Size of an INT 2 on originating hardware
8 Size of an INT 4 on originating hardware
9 Size of an INT 8 on originating hardware
10 Size of a REAL 4 on originating hardware
11 Size of a REAL 8 on originating hardware
12 - 13 2 bytes containing 0x1234. This is used to determine byte order differences
between writing hardware and reading hardware
14 - 17 4 bytes containing 0x12345678. This is used to determine byte order
differences between writing hard ware and reading hardware
18 - 25 8 bytes containing 0x123456789abcdef. This is used to determine byte
order differences between writing hardware and reading hardware

https://dcc.ligo.org/public/0000/T970130/003/T970130-v3.pdf
