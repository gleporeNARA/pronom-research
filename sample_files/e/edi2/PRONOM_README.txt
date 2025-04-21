EDI LZSSLib
File Format
Name	EDI LZSSLib
Ontology	
Electronic File Formats
Compression
EDI LZSSLib
Released	1992
EDI LZSSLib is a file compression library for Windows 3.x, by Eschalon Development Inc. It includes an LZSSTEST.EXE utility that can compress and decompress files.

The shareware version of LZSSLib has one variant of the library: EDILZSSA.DLL. The registered version has two more, EDILZSSB.DLL and EDILZSSC.DLL, with different speed/size trade-offs. Only EDILZSSA.DLL has been evaluated for this article.

Contents [hide] 
1 File structure
2 Identification
3 See also
4 Software
File structure
The EDILZSSA.DLL file format consists of:

8-byte signature: "EDILZSS1".
Compressed data. The format is possibly identical to that of Okumura's LZSS software.
Identification
Files start with ASCII "EDILZSS1". Unfortunately, this does not distinguish them from EDI Install packed file. There seems to be no simple way to do that.

http://justsolve.archiveteam.org/wiki/EDI_LZSSLib

EDI Install packed file
File Format
Name	EDI Install packed file
Ontology	
Electronic File Formats
Compression
EDI Install packed file
Wikidata ID	Q105858433, Q105858443
Released	≤1992
EDI Install packed file refers to the compressed file formats associated with certain versions of the EDI Install family of software by Eschalon Development and Robert Salesas.

This article covers EDI Install files with signatures "EDILZSS1" and "EDILZSS2". Later versions of the software use a different format: EDI Install archive.

Contents [hide] 
1 Discussion
2 File structure
3 Identification
4 Software
5 Sample files
Discussion
There seems to be at least three main product lines, with independent version numbering schemes:

EDI Install for MS-DOS
EDI Install for Windows
EDI Install Pro for Windows, a.k.a. EDI Install Pro
The evaluation copies generally did not include the compression/decompression utilities, which were provided upon registration. For some versions, the decompression routine is integrated into the installation software, so a separate utility is not needed, though such a utility may still exist.

At least for EDILZSS1 format, the decompression utilities (UNPACK.EXE, DUNPACK.EXE, WUNPACK.EXE(?)) were redistributable, and can be found in some third-party software distributions.

http://justsolve.archiveteam.org/wiki/EDI_Install_packed_file
