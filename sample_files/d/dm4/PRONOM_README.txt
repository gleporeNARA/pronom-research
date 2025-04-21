
Digital micrograph 4 (DM4) file format
The DM4 format is very similar to the DM3 format. It uses 8 byte integers rather than the 4 byte integers used for DM3 files thus allowing files larger than 2GB. It also includes a byte count for each tag, allowing tags with unknown structure to be skipped over.

Overall file structure
As for DM3, the file consists of a header, a root tag directory, a series of tags and tag directories and 8 nulls to mark the end of file.

The names of the tags are the same as for DM3.

Header
  version   i4be    DM version = 4
  rootlen   i8be    Size of root tag directory in bytes = file length - 24
  byteord   i4be    Byte order, 1 = little endian (PC) order
Root tag directory
  sortf     i1      Sorted, 1 = sorted (normally = 1)
  closef    i1      Closed, 1 = open (normally = 0)
  ntags     i8be    Number of tags in root directory
Tags and tag directories in root tag directory
The following is repeated for each tag directory and tag (see below for details)

  tag       i1      tag, 14h or 15h or 0 for end of file
  ltname    i2be    tag name length in bytes, may be 0
  tname     a       tag name (length ltname), may be absent
  tlen      i8be    tag data size in bytes (new for dm4)
  ...               tag directory or tag data
End of file
            8*00     End of file is marked with 8 nulls

https://web.archive.org/web/20181205202524/https://www.ntu.edu.sg/home/cbb/info/dmformat/index.html
