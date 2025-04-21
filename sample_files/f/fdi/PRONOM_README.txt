Anex86 PC98 floppy image
File Format
Name	Anex86 PC98 floppy image
Ontology	
Electronic File Formats
Disk Image Formats
Anex86 PC98 floppy image
Extension(s)	.fdi
The FDI disk image format for NEC PC-98 disk images seems to originate from the Anex86 PC98 emulator.

Contents [hide] 
1 FDI File Header
2 FDI file image contents
3 Software
4 Examples
5 Sample files
FDI File Header
The FDI header is 4096 bytes long, Intel little-endian, and starts with this 32-byte header.


   typedef struct {
       BYTE   dummy[4];
       BYTE   fddtype[4];
       BYTE   headersize[4];
       BYTE   fddsize[4];
       BYTE   sectorsize[4];
       BYTE   sectors[4];
       BYTE   surfaces[4];
       BYTE   cylinders[4];
   } FDIHDR;
   
http://fileformats.archiveteam.org/wiki/Anex86_PC98_floppy_image
