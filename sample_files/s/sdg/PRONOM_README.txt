StarOffice Gallery
File Format
Name	StarOffice Gallery
Ontology	
Electronic File Formats
Graphics
StarOffice Gallery
Extension(s)	.sdg, .sdv, .thm
StarOffice Gallery is a format associated with the StarOffice office suite, and early versions of OpenOffice.org. It is apparently for clip art, and document themes/templates. For related formats, see StarOffice binary formats.

It is usually in the form of three files, with extensions .sdg, .sdv, and .thm. The SDG file apparently contains images. The SDV file uses Microsoft Compound File format.

Software
https://archive.apache.org/dist/incubator/ooo/stable/ - Old versions of OpenOffice.org
XnView claims to support SDG
Sample files
A forum thread with some samples

http://fileformats.archiveteam.org/wiki/StarOffice_Gallery

Hello,

some weeks ago i run file command inside LibreOffice directories. In
sub directory gallery there files of Office Galleries are stored.

Apparently a gallery consist of some files. For every gallery beside
the theme files with thm file name extension and OLE 2 Compound
Document with sdv extension there exist a third component with
extension sdg. Such examples are described by file command
version 5.38 only as data.
The same gallery format is already used in old StarOffice 5.2 dated
about May 2000. And the format is still used in newer LibreOffice
with version 6.3.2.2. The gallery is also used in OpenOffice 3.2.0.

Some information about StarOffice Gallery is found on file formats
archive team site. So i add comment line to Magdir/wordprocessors lik
e:
 # URL:	http://fileformats.archiveteam.org/wiki/StarOffice_Gallery
Unfortunately i find no file format specification for such SDG parts.
So i rely on my own observations.

All SDG examples start with the same 4 byte sequence. This is used
as  test by line
 0	string		SGA3	StarOffice Gallery thumbnails

Some sites on the net call the SDG samples like "StarOffice Gallery
images", but such files are already used in successor software
OpenOffice and LibreOffice. The file name extension is shown by line
 !:ext		sdg
Using other StarOffice mime types mentioned on OpenOffice site as
guide line i choose a user defined mime type by line
 !:mime		application/x-stargallery-sdg

For every gallery object the SDG part contains a "short" sequence
starting with "SGA3" magic. At offset eleven seems to start the
image part with the same magic. That can be shown for debugging
purpose by line like:
 >11	string		x	\b, image magic '%-.2s'

I always get string BM which looks like the magic of Windows PC
bitmaps. But when i try to inspect gallery image magic by calling
magic lines of Magdir/images i often get phrase like "PC bitmap,
Windows 3.x format, 80 x 50 x 8, 16794707 compression" via
 >11	indirect	x	\b; contains

So this is a small Windows bitmap with an unknown compression
method or another image format. Because i am unsure about this
item, i put image format lines only as comments. Because size of
that images inside SDG files is small, especially when compared
with original stored images, the embedded images seems to be
preview images or thumbnail images. So i choose as description the
text "StarOffice Gallery thumbnails".

After applying the above mentioned modifications by patch
file-5.37-wordprocessors-sdg.diff then i get a describing output like

neues thema1.sdg: StarOffice Gallery thumbnails
sounds.sdg:       StarOffice Gallery thumbnails

I hope my diff file can be applied in future version of
file utility.

With best wishes
Jörg Jenderek

https://mailman.astron.com/pipermail/file/2020-May/000342.html
