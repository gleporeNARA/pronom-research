Description
ddi2raw converts a floppy disk image in a DDI (DiskDupe) format to a raw floppy disk image.

The program can convert images created with DiskDupe version 5 and 7 and probably with other versions too. It was tested on images of 1.44MB 3.5" floppies.

ddi2raw requires Python 3.

import sys
import collections

HeaderInfo = collections.namedtuple('HeaderInfo', 'version payload_offset')
KNOWN_HEADERS = {
    b'IM\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00':HeaderInfo(version='7', payload_offset=0x2400),
    b'MSD Image Version 1 ':HeaderInfo(version='5', payload_offset=0x500)
    }
MAGIC_LENGTH = 20


https://github.com/SergiyKolesnikov/ddi2raw/blob/master/ddi2raw.py

http://fileformats.archiveteam.org/wiki/DDI
