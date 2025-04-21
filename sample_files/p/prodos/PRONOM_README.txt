DSK files of 800k 3.5" disks (819,200 bytes) are much less common.

     Data in a DSK disk image file can be arranged in the sector order used by DOS 3.3
or in the sector order used by ProDOS. The filename suffixes relate chiefly to how data
is arranged in the file:

.dsk- technically, this may be an image which has its data in DOS 3.3 or ProDOS order.
(The emulator program is supposed to check a .dsk file to determine the ordering used.)
It has become standard practice to use the .dsk suffix for only DOS 3.3 order files.

.do- an image which is in DOS 3.3 order. This suffix is seldom used today. DOS 3.3
order image file names usually end with ".dsk".

.po- an image which is in ProDOS order. If an image is in ProDOS order, its name
should end with ".po" (not ".dsk") to avoid confusion.

.hdv- typically an image 800k (819,200 bytes) or greater in size in ProDOS order. An
HDV image is intended for use as a virtual hard disk by various Apple II and IIgs
emulators (e.g. Apple Oasis).  The IIgs program ASIMOV2 can create .hdv files
(select "Raw image").  The file name should end with ".hdv".

Note: data order does not relate to whether a disk image is a DOS 3.3 or ProDOS
disk. In fact, nearly all 5.25" disk image files (of both DOS 3.3 and ProDOS disks) are
in DOS 3.3 order; and, DOS 3.3 order is the default setting for image creation programs
like DSK2FILE and ASIMOV and the transfer/creation program ADT.
 

https://apple2.org.za/gswv/a2zine/faqs/Csa2FLUTILS.html#006
