http://fileformats.archiveteam.org/wiki/WOZ_disk_image

Why yet another Apple II disk image format?
This is probably the question many of you reading this document are asking. It basically
comes down to the simple fact that none of the currently existing formats accurately represent
the way data is encoded on an Apple II floppy disk. There is a place for a format that is an
accurate representation of a bitstream that is also the exact length of a track so that it can be
looped correctly. And since we are creating a format, it is also a great time to ensure that we
organize the data in the image file in a way that allows for easy unpacking with as little
memory and processing overhead as possible - this provides more performant usage in
hardware and software emulators.
What benefits come with using the WOZ format?
We seem to be doing just fine with the current file formats, why would we want to support
the WOZ format? The big benefit is being able to successfully run copy protected software if
you follow the emulation guidelines presented in this document. The second benefit is that
the WOZ format is actually much simpler to implement than many of the other disk image
formats. WOZ files also contain metadata about the disk image - such as disk name, product
name, publisher, system requirements and language - that you can use to display additional
information in your emulator.
Implementation Details
...


WOZ File Format Specification
A WOZ file uses a chunk-based file binary format that provides future-proof expandability in
a way that is safe for older software which may not recognize newer data chunks.
All data is stored big-endian.
WOZ files begin with the following 12-byte header in order to identify the file type as well as
detect any corruption that may have occurred. The easiest way to detect that a file is indeed a
WOZ file is to check the first 8 bytes of the file for the signature. The remaining 4 bytes are a
CRC of all remaining data in the file. This is only provided to allow you to ensure file
integrity and is not necessary to process the file. If the CRC is 0x00000000, then no CRC has
been calculated for the file and should be ignored. The exact CRC routine used is shown in
Appendix A.
After the header comes a sequence of chunks which each contain information about the disk
image. Using chunks allows for the WOZ disk format to provide forward compatibility as
chunks can be added to the specification and will just be safely ignored by applications that
do not care (or know) about the information. For lower-performance emulation platforms, the
primary data chunks are all located in fixed positions so that direct access to data is possible
using just offsets from the start of the file

https://web.archive.org/web/20180115110331/http://evolutioninteractive.com/applesauce/woz_reference.pdf
