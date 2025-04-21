HNM6 is the latest variant of HNM video format by Cryo. Unlike its previous versions, it has Hi-color video support.

File Format
File consist of a main header, followed by frame chunks. Each frame chunk consist of individual audio and video chunks. All numbers are little-endian.

u8   sig[4]           -- file signature, "HNM6"
u8   reserved[2]      -- usually 0

https://wiki.multimedia.cx/index.php/HNM6
