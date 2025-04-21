Sega Master System / Mark III / Game Gear
SG-1000 / SC-3000 / SF-7000 / OMV

ROM Header
+Contents
Introduction
Location and size
Contents
TMR SEGA ($7ff0, 8 bytes)
Reserved space ($7ff8, 2 bytes)
Checksum ($7ffa, 2 bytes)
Product code ($7ffc, 2.5 bytes)
Version ($7ffe, 0.5 bytes)
Region code (0x7fff, 0.5 bytes)
ROM size (0x7fff, 0.5 bytes)
See Also
Introduction
All Game Gear and export Master System, and some Japanese Master System, games include a header which provides information about the ROM and a means to detect its validity. The BIOS in non-Japanese Master Systems requires a valid header and later Game Gears will also not run software without one.

This page describes the contents of the header. It is worth remembering that, apart from cases where failing the BIOS checks would render it unusable, there are many instances where the values found in the header contain mistakes.

Location and size
The header can be at offset $1ff0, $3ff0 or $7ff0 in the ROM, although only the last of these seems to be used in known software. The header is 16 bytes long.

Contents
TMR SEGA ($7ff0, 8 bytes)
The first eight bytes of the header are the ASCII text "TMR SEGA". The export Master System and Game Gear BIOSes require this to be present to indicate valid data.

https://www.smspower.org/Development/ROMHeader
