
The ZIM file format is an open file format that stores wiki content for offline usage.[1] Its primary focus is the contents of Wikipedia and other Wikimedia projects.

The format allows for the compression of articles, features a full-text search index and native category and image handling similar to MediaWiki, and the entire file is easily indexable and readable using a program like Kiwix – unlike native Wikipedia XML database dumps.

In addition to the open file format, the openZIM project provides support for an open-source ZIM reader called Kiwix.

ZIM stands for "Zeno IMproved",[2][3] as it replaces the earlier Zeno file format. Its file compression uses LZMA2, as implemented by the xz-utils library, and, more recently, Zstandard. The openZIM project is sponsored by Wikimedia CH, and supported by the Wikimedia Foundation.

https://en.wikipedia.org/wiki/ZIM_(file_format)


The ZIM file format is based on the old and deprecated Zeno File Format. See also a walk through example at ZIM File Example. It starts with a header, which is described here:


Contents
1	Header
2	MIME Type List (mimeListPos)
3	URL Pointer List (urlPtrPos)
4	Title Pointer List (titlePtrPos)
5	Directory Entries
5.1	Article Entry
5.2	Redirect Entry
5.3	Linktarget or deleted Entry
6	Cluster Pointer List (clusterPtrPos)
7	Clusters
8	Namespaces
9	URLs
9.1	Local Anchors
10	Encodings
10.1	Character Encoding
10.2	Integer Encoding
11	Split ZIM files
12	See also
Header
A ZIM file starts with a header. This is offset 0.

Length in bytes, all types are little-endian.

All integers are unsigned integers (uint_16, uint_32, uint_64).

Field Name	Type	Offset	Length	Description
magicNumber	integer	0	4	Magic number to recognise the file format, must be 72173914 (0x44D495A)

https://wiki.openzim.org/wiki/ZIM_file_format_old_namespace


