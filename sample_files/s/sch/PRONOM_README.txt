OrCAD Systems Corporation was a software company that made OrCAD, a proprietary software tool suite used primarily for electronic design automation (EDA). The software is used mainly by electronic design engineers and electronic technicians to create electronic schematics, perform mixed-signal simulation and electronic prints for manufacturing printed circuit boards. OrCAD was taken over by Cadence Design Systems in 1999 and was integrated with Cadence Allegro since 2005.

The name OrCAD is a portmanteau, reflecting the company and its software's origins: Oregon + CAD.

https://en.wikipedia.org/wiki/OrCAD

OrCAD™ SDT 4.x schematic file format
I reverse-engineered the file format to implement my OrTie page tie generator. Use at your own risk. Sorry, I don't have anything on the library file format (complex, can be translated into text form), or the 32-bit format (probably very similar structure).

Header Format
0000-0010	"Schematic FILE", cr, lf, eof
0011-0015	00 ???
0016-0019	Byte count (offset component list - 0020)

https://www.pcengines.ch/orcadff.htm
