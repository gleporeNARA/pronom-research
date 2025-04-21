Jigdo
File Format
Name	Jigdo
Ontology	
Electronic File Formats
File transfer
Jigdo
Extension(s)	.jigdo, .template
Released	2002
Jigdo ("Jigsaw Download"[1]) is a format and tool, developed by Richard Atterer[1], for compactly storing and distributing disk images (though there is no technical requirement that it not be used for some other type of file). Given a disk image, and a set of files that may be contained in that image, Jigdo generates a smaller "template" version of the disk image (in a format with the extension ".template"), with copies of any found files replaced MD5 hashes. This is usually distributed alongside a ".jigdo" file (a gzipped text file) that maps hashes to locations on a server somewhere. Jigdo was created in order to distribute install disk images of the Debian Linux distribution online, and specifically make it less costly to operate a Debian file mirror[2]; instead of distributing both copies of software by itself, as well as identical copies embedded in disk images, an operator's storage cost could be reduced by replacing the full disk images with Jigdo copies.

Jigdo's usage in Debian itself has declined from 18% of all statistics-reporting users in 2004 to about 1% in 2020[3], though as of that year it is still available[4]. This might be due to an increase in typical server disk space and bandwidth; the rise of the Bittorrent protocol; and the gradual introduction, from 2002 through 2005[5][6][7], of the "netinst" installer, which does not have bundled files at all and instead downloads them from the mirror itself.

http://justsolve.archiveteam.org/wiki/Jigdo
