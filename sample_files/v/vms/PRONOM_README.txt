Overview
The Hamamatsu format has three variants. VMS and VMU consist of an index file, 2 or more image files, and (in the case of VMS) an “optimisation” file. NDPI consists of a single TIFF-like file with some custom TIFF tags. VMS and NDPI contain JPEG images; VMU contains NGR images (a custom uncompressed format).

Multiple focal planes are ignored, only focal plane 0 is read.

JPEG does not allow for files larger than 65535 pixels on a side. In VMS, multiple JPEG files are used to encode large images. To avoid having many files, VMS uses close to maximum size (65K by 65K) JPEG files. NDPI, instead, stuffs large levels into a single JPEG and sets the overflowed width/height fields to 0.

Unfortunately, JPEG provides very poor support for random-access decoding of parts of a file. To get around this, JPEG restart markers are placed at regular intervals, and these offsets are specified in the optimisation file (in VMS) or in a TIFF tag (in NDPI). With restart markers identified, OpenSlide can treat JPEG as a tiled format, where the height is the height of an MCU row, and the width is the number of MCUs per row divided by the restart marker interval times the width of an MCU. (This often leads to oddly-shaped and inefficient tiles of 4096x8, for example.)

Unfortunately, the VMS optimisation file does not give the location of every restart marker, only the ones found at the beginning of an MCU row. It also seems that the file ends early, and does not give the location of the restart marker at the last MCU row of the last image file.

Thus, the optimisation file can only be taken as a hint, and cannot be trusted. The entire set of JPEG files must be scanned for restart markers in order to facilitate random access. OpenSlide does this lazily as needed, and also in a background thread that runs only when OpenSlide is otherwise idle.

The VMS map file is a lower-resolution version of the other images, and can be used to make a 2-level JPEG pyramid. JPEG also allows for lower-resolution decoding, so further pyramid levels are synthesized from each JPEG file.

VMS File
The .vms file is the main index file for the VMS format. It is a Windows INI-style key-value pair file, with sections. Only keys in the Virtual Microscope Specimen group are read by OpenSlide.





https://openslide.org/formats/hamamatsu/
