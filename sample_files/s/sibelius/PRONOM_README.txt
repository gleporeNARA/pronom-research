
This signature should have priority over the generic xml signature, but the HasPriority field doesn't seem to be working. Please check it out.

This sig is for the Sibelius Sound Set (not the Sound Set Definition file fmt/1229).

Sibelius is the name of a series of applications for music typesetting, initially developed for RISC OS (file type DE0, Sibelius) and later for Mac OS X and Windows.

The file format for the RISC OS versions (Sibelius 6 and 7) differs from that used on the other platforms. Traditionally, files from those versions have been given an .si7 file extension, imported into the later versions, and saved with an .sib extension.

Files produced on current versions of the product appear to be compressed using an unspecified algorithm. Attempting to compress a file further typically leads to an increase in file size due to the overhead of additional compression format headers.

Some files appear to contain several headers throughout their contents. These are connected via tables of file addresses that can be used to construct a tree of data nodes for each file.

Resources

