Digistar II VLA file format
Written by Paul Bourke
June 2002


A Digistar II VLA file is supported by a number of utilities supplied with the Digistar system, it facilitates the migration of geometry from third party applications to the Digistar planetarium dome projection. The files are text (ascii) only, they consist of a header section followed by the coordinate information. The text in a VLA file is case insensitive. A line starting with a semicolon ";" is taken to be a comment, these may appear anywhere and the comment continues until the end of the line.

Header
The header consists of a number of keywords indicating different header information, each line is of the following form.

   set keyword data_for_this_keyword
The keywords can be from the following list, they can appear in any order, not all are required eg: author, and some can occur many times, eg: comments.

comment
Any comment follows to the end of the line. Note that unlike ";" comments, these are intended to convey higher level information about the model while the ";" comments are lower level and related more to the actual geometric elements.

author
Intended to be used for the author of the file, may be a program name.

site
Intended for the location the file is created at or where it is intended for.

coordsys
This may either be RIGHT (default) or LEFT, this not only sets the coordinate system to a right or left handed one but also sets how the coordinates are interpreted. Left assumes meters, right assumes light years.

intensity
Either EXPLICIT or FULL, the later ignores the intensity setting provided with the geometry.

http://paulbourke.net/dataformats/vla/
