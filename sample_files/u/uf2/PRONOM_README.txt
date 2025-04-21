USB Flashing Format (UF2)
UF2 is a file format, developed by Microsoft for PXT (also known as Microsoft MakeCode), that is particularly suitable for flashing microcontrollers over MSC (Mass Storage Class; aka removable flash drive).

For a more friendly explanation, check out this blog post. Also, take a look at the list of implementations at the bottom of this document.

Overview
The UF2 file consists of 512 byte blocks, each of which is self-contained and independent of others. Each 512 byte block consists of (see below for details):

magic numbers at the beginning and at the end
address where the data should be flashed
up to 476 bytes of data
The data transfers over MSC always arrive in multiples of 512 bytes. Together with the FAT file system structure, this means that blocks of the UF2 file are always aligned with the MSC writes - the microcontroller never gets a partial file.

The magic numbers let the microcontroller distinguish an UF2 file block from other data (eg., FAT table entry, or various book-keeping files stored by some operating systems). When a UF2 block is recognized, it can be flashed immediately (unless flash page size is more than 256 bytes; in that case a buffer is needed). The actual handling of file format during writing is very simple (~10 lines of C code in simplest version).

File format
A UF2 file consists of 512 byte blocks. Each block starts with a 32 byte header, followed by data, and a final magic number. All fields, except for data, are 32 bit unsigned little endian integers.

Offset	Size	Value
0	4	First magic number, 0x0A324655 ("UF2\n")
4	4	Second magic number, 0x9E5D5157

https://github.com/microsoft/uf2
