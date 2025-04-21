The Amiga Hunk format is the native file format of AmigaOS for loadable files (including all executable files), object code and link libraries.

Identification
Loadable files begin with the magic ID 00 00 03 F3. "Loadable" includes all directly executable files, as well as shared libraries, device drivers, filesystem handlers, datatypes and other "plugins".

Object code and link libraries begin with the magic ID 00 00 03 E7. These files have to be combined into a loadable file using a linker to get an executable program.

http://fileformats.archiveteam.org/wiki/Amiga_Hunk
