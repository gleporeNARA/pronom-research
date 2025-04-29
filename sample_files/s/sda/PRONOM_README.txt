
*** SDA (Self-Dissolving compressed Archive)
*** Document revision: 1.4
*** Last updated: March 11, 2004
*** Contributors/sources: Chris Smeets (source code)

  The name stands for "Self-Dissolving Archive", and thats exactly what  it
does. There is a decompression engine at the beginning of the  file  called
by a BASIC SYS command. It will decompress all the files contained  in  the
archive to whatever device you specify, or disk you select.

  I have  found  two  somewhat  different  SDA  files,  one  has  a  longer
decompression header than the other. They  would  appear  to  be  different
revisions of the decompression engine,  likely  version  1  and  version  2
files, but they all seem to be self-extracting ARC files.  There  are  also
different revisions of the version 2 header, where the newer ones allow for
the decompression of more compressed ARC formats. The HEX dump below  is  a
sample of the shorter version of SDA...

http://unusedino.de/ec64/technical/formats/sda.html

http://fileformats.archiveteam.org/wiki/SDA
