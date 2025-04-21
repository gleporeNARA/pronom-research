
2MG (or 2IMG) Disk Image Files

These are disk images (e.g. .dsk or .nib) with a prefix which
includes information about size, format, sector ordering,
volume number, locked/unlocked, etc..

2MG files may also have a Comment and/or extra file information
added following the disk image data.

2MG format can accommodate disk images ranging from 5.25"
diskette up through hard disk.

Typically, the image files have names ending with ".2mg".

ProDOS File Type-  $E0
ProDOS Aux Type-   $0130

Emulators which can use 2MG images include Bernie ][ the Rescue,
Catakig, Sweet 16, XGS.

On an Apple II, ASIMOV2 (for IIgs) is the usual utility for
creating 2MG files and for converting them to disk.



2MG (or 2IMG) Disk Image Format

Part of File              Length

Prefix-                   64 bytes (usual size of Prefix)
Disk Data-                varies (e.g. 143,360 for 5.25" disk)
Comment (optional)-       varies (often not present)
Creator added (optional)- varies (often not present)



Prefix Format

0000-0003: 32 49 4D 47   "2IMG"    ID for 2MG format (ASCII Text)

https://apple2.org.za/gswv/a2zine/Docs/DiskImage_2MG_Info.txt


https://www.wikidata.org/wiki/Q105857462
