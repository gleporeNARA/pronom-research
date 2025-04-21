This file describes types of cartridge images supported by the Atari800
emulator.

There are:
- raw images - files that contain only dump of cartridge memory
- CART files - images with additional 16-byte header, which contains type
  of the cartridge

For raw images you usually have to select the cartridge type each time
you insert an image. To make it easier, you only select from types of same
image size. If there's only one supported type that matches file's length
(like there's for 4 KB cartridges), that type is selected automatically.

The advantage of using CART files is that you don't have to select
the cartridge type, because it is stored inside the file.

The CART format has been introduced in Atari800 0.8.0, when there were
only 4 supported cartridge types. The format has not changed, only new types
have been added.

The format is:
 first 4 bytes containing 'C' 'A' 'R' 'T'.
 next 4 bytes containing cartridge type in MSB format (see the table below).
 next 4 bytes containing cartridge checksum in MSB format (ROM only).
 next 4 bytes are currently unused (zero).
 followed immediately with the ROM data: 4, 8, 16, 32, 40, 64, 128, 256, 512
 or 1024 kilobytes.

The recommended file name extension for CART files is CAR.

https://github.com/dmlloyd/atari800/blob/master/DOC/cart.txt
