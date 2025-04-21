JASC Palette (PAL) file format
By Sander de Jong
http://lieronet.cjb.net

There are two PAL file formats. The first one is the MicroSoft PAL file, used in PhotoShop and Paintshop Pro. LieroKit also supports them, but I don't know how these palettes work. The second one is the JASC PAL file, used by Paintshop Pro. This file works a lot easier, so both LieroKit and LieroM8 support them (LieroM8 not completely right now).

This file works like this: The PAL file is a text file, so NO binary data.
The first line of data contains the text 'JASC-PAL', leave it this way.
The second line contains the text '0100', don't know what this means, just leave it like this.
The third line contains the text '256'. This is the number of colors in the palette, most likely 256 colors for use with Liero.

After that, there are 256 lines of text, containing 3 numbers per line, with spaces between them.
These numbers are respectively the Red, Green and Blue values (the so-called RGB palette). For example, the color white would be '255 255 255' and black '0 0 0' (255 is the most bright, 0 the less bright)

https://liero.nl/lierohack/docformats/other-jasc.html
