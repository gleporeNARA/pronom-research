Squashfs Binary Format
Table of Contents
1. About
2. Overview
2.1. Packing File Data
2.2. Packing Metadata
2.3. Storing Lookup Tables
2.4. Supported Compressors
3. The Superblock
3.1. Compression Options
3.1.1. GZIP
3.1.2. XZ
3.1.3. LZ4
3.1.4. ZSTD
3.1.5. LZO
4. Data and Fragment Blocks
5. Inode Table
5.1. Common Inode Header
5.2. Directory Inodes
5.3. File Inodes
5.4. Symbolic Links
5.5. Device Special Files
5.6. IPC Inodes (FIFO or Socket)
6. Directory Table
6.1. Directory Index
7. Fragment Table
8. Export Table
9. ID Table
10. Extended Attribute Table
1. About
SquashFS is a compressed, read-only filesystem for Linux that can also be used as a flexible, general purpose, compressed archive format, optimized for fast random access with support for Unix permissions, sparse files and extended attributes.

SquashFS supports data and metadata compression through zlib, lz4, lzo, lzma, xz or zstd.

For fast random access, compressed files are split up in fixed size blocks that are compressed separately. The block size can be set between 4k and 1M (default for squashfs-tools and squashfs-tools-ng is 128K).

This document attempts to specify the on-disk format in detail. It is based on a previous on-line version that was originally written by Zachary Dremann and subsequently expanded by David Oberhollenzer during reverse engineering attempts and available here: https://dr-emann.github.io/squashfs/.

2. Overview
SquashFS always stores integers in little endian format. The data blocks that make up the SquashFS archive are byte aligned, i.e. they typically do not care for alignment. The implementation in the Linux kernel requires the archive itself to be a multiple of either 1k or 4k in size (called the device block size) and user space tools typically use 4k to be compatible with both.

A SquashFS archive consists of a maximum of nine parts:

 _______________
|               |  Important information about the archive, including
|  Superblock   |  locations of other sections.
|_______________|
|               |  If non-default compression options have been used,
|  Compression  |  they can optionally be stored here, to facilitate
|    options    |  later, offline editing of the archive.
|_______________|
|               |
|  Data blocks  |  The contents of the files in the archive,
|  & fragments  |  split into separately compressed blocks.
|_______________|
|               |  Metadata (ownership, permissions, etc) for
|  Inode table  |  items in the archive.
|_______________|
|               |
|   Directory   |  Directory listings, including file names, and
|     table     |  references to inodes.
|_______________|
|               |
|   Fragment    |  Description of fragment locations within the
|    table      |  Datablocks & Fragments section.
|_______________|
|               |  A mapping from inode numbers to disk locations,
| Export table  |  required for NFS export.
|_______________|
|               |
|    UID/GID    |  A list of unique UID/GIDs. Inodes use an index into
|  lookup table |  this table to save memory.
|_______________|
|               |
|     Xattr     |  Extended attributes for items in the archive.
|     table     |
|_______________|

3. The Superblock
The superblock is the first section of a SquashFS archive. It is always 96 bytes in size and contains important information about the archive, including the locations of other sections.

Type	Name	Description
u32

magic

Must be set to 0x73717368 ("hsqs" on disk).

https://dr-emann.github.io/squashfs/squashfs.html
