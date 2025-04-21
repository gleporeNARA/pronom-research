CCD Astrocamera formats for SBIG ST4 and ST6
================================================================

 Preamble
----------
The early CCD cameras were for astronomy buffs with a lot of
money to spare, monochrome and quite small. However, they could
be used for exposures lasting several minutes and were thus
capable to gather the light from dim astro objects. Camera
manufacturers used their own proprietary bit map image format to
save the pictures, sometimes there was a diferent format for
each camera model.

The Santa Barbara Instruments Group (SBIG) made the Star Tracker
4 and Star Tracker 6 cameras. Initially, they were targeted to
the Mac market and so there are no file extensions. However,
sometimes ST4 and ST6 were used on PCs with image processing or
convertion tools.

Star Tracker 6  ST6
----------------------------------------------------------------
The ST6 uses the CCD chip TC-241 from Texas Instruments. There
are 242 lines with 375 columns each. The camera digitizes the
values in each pixel "bucket" with 16 bits.

The file uses a header of exactly 2048 bytes. It contains
information about the picture in text format. The first line is
always either "ST-6 Compressed Image" or "ST-6 Image" if not
compressed. Each line starts with a keyword, followed by a blank
character, an equal sign and another blank character. Parameters
to the keyword follow. The line is terminated by a CR/LF
sequence (0D, 0A hex). The keyword "End" marks the end of the
text area. The rest up to 2048 is padded by ascii nulls
(00 hex), some programs pad with ascii blank characters, though.


 Sample Header
---------------
ST-6 Compressed Image
File_Version = 1

https://hwiegman.home.xs4all.nl/fileformats/sbig/sbig.txt
