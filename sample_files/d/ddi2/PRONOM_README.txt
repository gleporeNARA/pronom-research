#!/usr/bin/python3

# ddi2raw.py
#
# Copyright 2017 Sergiy Kolesnikov
# https://github.com/SergiyKolesnikov/ddi2raw
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

import sys
import collections

HeaderInfo = collections.namedtuple('HeaderInfo', 'version payload_offset')
KNOWN_HEADERS = {
    b'IM\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00':HeaderInfo(version='7', payload_offset=0x2400),
    b'MSD Image Version 1 ':HeaderInfo(version='5', payload_offset=0x500)
    }
MAGIC_LENGTH = 20

https://raw.githubusercontent.com/SergiyKolesnikov/ddi2raw/master/ddi2raw.py

https://sites.google.com/a/copypro.com/copypro-inc/cd-dvd-duplicators/3-5-floppy-diskette-duplicator/diskdupe-support-guide

http://retro.icequake.net/dob/files/bleuge/diskdupe.5trial/DISKDUPE.TXT
