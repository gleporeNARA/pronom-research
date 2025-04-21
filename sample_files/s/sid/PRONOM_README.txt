*** SID/PSID (Various SIDPlay / PlaySID Formats)
*** Document revision: 1.2
*** Last updated: March 15, 2004
*** Compiler/Editor: Peter Schepers
*** Contributors/sources: LaLa,
                          Peter Weighill

  The data files used by SIDPLAY contain binary C64 data and  music  player
machine code. Both, the programmer  on  the  C64  and  this  emulator  need
information on how to access the code inside the binary file.  That  means,
information like the memory location to load the file  to,  the  number  of
tunes, the starting address of the executable  code  and  its  subroutines.
This specific information has to be delivered in either a separate  file  -
which is often called info file - or in form of  a  header  in  the  single
binary data file. A standalone C64 data file without a header or without  a
corresponding info file is considered invalid.

SIDPLAY info files

  These are plain ASCII text  files  which  have  been  introduced  by  the
earlier versions of SIDPLAY/DOS. They are used to  be  able  to  alter  the
information inside with a normal ASCII text editor. They can  be  converted
to a single file that contains a binary header. This is a two-file  format.
A separate C64 binary data file is required. Notice that each pair of files
usually has the old DOS-naming of .SID for the info file and .DAT  for  the
C64 data file.

  The SIDPLAY info file is derived from the information inside the  PlaySID
one-file format. It is structured like this:

    SIDPLAY INFOFILE
    ADDRESS=<loadAddress>,<initAddress>,<playAddress>
    SONGS=<total>[,<start>]
    SPEED=<hexValue>
    NAME=<name of music/tune>
    AUTHOR=<name of author/composer>
    COPYRIGHT=<year/name of copyright owner/company>
    RELEASED=<year/name of copyright owner/company>
    SIDSONG=<YES|NO>
    RELOC=<hexValue>,<hexValue>
    CLOCK=<PAL|NTSC>
    SIDMODEL=<6581|8580>
    COMPATIBILITY=<R64|BASIC>

  The first line of the text containing ``SIDPLAY INFOFILE'' is  only  used
to identify the type of file.

https://ist.uwaterloo.ca/~schepers/formats/SIDPLAY.TXT
