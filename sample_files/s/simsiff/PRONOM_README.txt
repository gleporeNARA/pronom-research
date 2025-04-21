IFF (The Sims)

Extension(s)	.iff, .flr, .wll, .spf, .stx
Endianness	Big-Endian
IFF (The Sims) is a variant version of the IFF format used in The Sims game files. Unlike typical IFF files, these files don't begin with the string FORM, but rather have their own distinctive signature, noted below, at the start of the file.

This format is used with several different extensions to denote different sorts of data:

.flr: Images and strings for floors.
.wll: Images and strings for walls.
.spf: Used in development files; purpose not fully understood but speculated to be for the purpose of separating things out from the other IFF files they were originally part of for development purposes. Used for graphical elements.
.stx: Another separated-out format, this one specifically for strings.
.iff: Used for a wide variety of other game data.
Format identification
The first 60 bytes always contain the signature string consisting of:

IFF FILE 2.5:TYPE FOLLOWED BY SIZE

http://fileformats.archiveteam.org/wiki/IFF_(The_Sims)
