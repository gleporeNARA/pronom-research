This page attempts to document the LucasArts Smush v2 codec, FOURCC "SANM".

A GPL'd decoder for the SNM format and relevant codecs can be found in the Residual reimplementation of the Grim Fandango Engine (GrimE), although it is largely unreadable because it was converted from the original assembler code to C.

Preamble
The movie begins with a basic 8-byte section that looks like this:

0x00|"SANM" FOURCC        |4 bytes big endian

https://wiki.multimedia.cx/index.php/SANM
