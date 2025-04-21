Squeeze was a method of compressing single files popular on CP/M, devised by Richard Greenlaw circa 1981. It was superseded by Crunch and later CrLZH. Squeezed files were common in LBR archives. It uses Huffman coding combined with run-length encoding.

Squeezed files were signified in CP/M's 8.3 filename format by replacing the middle letter of the extension with Q (.?Q? -- so FOO.TXT became FOO.TQT), with the extension .QQQ used for corner cases such as a blank extension. Some software for other platforms (e.g. squprt33.ark) appends a .SQ extension instead.

The /usr/share/misc/magic file on Linux systems suggests that it was perhaps also in use on the Apple ][ platform, and in fact Binary II files are often found squeezed (as .bqy instead of .bny). Versions for PC/MS-DOS were also in use in the early 1980s before ARC caught on as the dominant archiver.

File structure
Field	Size in bytes	Description
signature	2	0x76 0xff
checksum	2	Low 16 bits of the sum of the decompressed byte values.
filename	variable	Original filename, terminated by a NUL byte. (TODO: Find a specification for this field. Some software interprets it in the same way as Crunch, but that might be overkill.)
compressed data	variable	See below.
timestamp extension	8	Optional timestamp. See below.


http://fileformats.archiveteam.org/wiki/Squeeze
