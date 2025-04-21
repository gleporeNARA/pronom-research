The SPK format is used by SPICELIB, a FORTRAN library that
is part of the software package called NAIF also supplied by JPL.
NAIF, given ephemeris data, can perform many different types of
calculations for the object of the ephemeris data. One such
calculation is the position and velocity of the target body
relative to another body.


SPK File Format
File Header:
FILE ID: ’NAIF/DAF'
ND: 2 Double Percision Components
NI: 6 Integer Componenets
Record Header:
ET1: Begin time (1st DP Component)
ET2: End time (2nd DP Component)
TARGET: VSOP -71 (1st Int Compenent)
CENTER: EARTH 399 (2nd Int Compenent)
IRF: 4 (3rd Int Compenent)
TYPE: 1 (fixed) (4th Int Component)
BEGIN: Begin Adr (5th Int Component)
END: End Adr (6th Int Component)
Record Data:
a double percision array, 128 entries

https://library.nrao.edu/public/memos/ovlbi/OVLBI_037.pdf
