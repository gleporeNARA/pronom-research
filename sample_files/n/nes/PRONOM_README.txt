.NES File Format
.NES files are used to store images of NES cartridges for emulators. The .NES format has been first implemented by me, Marat Fayzullin, in iNES and then adopted by other emulator authors. It has become a de-facto standard of storing NES ROM images. Following is the structure of a .NES file:
Byte     Contents
---------------------------------------------------------------------------
0-3      String "NES^Z" used to recognize .NES files.
4        Number of 16kB ROM banks.
5        Number of 8kB VROM banks.
6        bit 0     1 for vertical mirroring, 0 for horizontal mirroring.
         bit 1     1 for battery-backed RAM at $6000-$7FFF.
         bit 2     1 for a 512-byte trainer at $7000-$71FF.
         bit 3     1 for a four-screen VRAM layout. 
         bit 4-7   Four lower bits of ROM Mapper Type.
7        bit 0     1 for VS-System cartridges.
         bit 1-3   Reserved, must be zeroes!
         bit 4-7   Four higher bits of ROM Mapper Type.
8        Number of 8kB RAM banks. For compatibility with the previous
         versions of the .NES format, assume 1x8kB RAM page when this
         byte is zero.
9        bit 0     1 for PAL cartridges, otherwise assume NTSC.
         bit 1-7   Reserved, must be zeroes!
10-15    Reserved, must be zeroes!
16-...   ROM banks, in ascending order. If a trainer is present, its
         512 bytes precede the ROM bank contents.
...-EOF  VROM banks, in ascending order.

http://fms.komkon.org/EMUL8/NES.html#LABM


The Super NES CD-ROM System[1][2] (commonly shortened as the SNES-CD), known as Super Famicom CD-ROM Adapter in Japan,[3] is an unreleased video game peripheral for the Super Nintendo Entertainment System (SNES). The add-on built upon the functionality of the cartridge-based SNES by adding support for a CD-ROM-based format known as Super Disc.[4][5]

The SNES-CD platform was developed in a partnership between Nintendo and Sony. The platform was planned to be launched as an add-on for the standard SNES, as well as a hybrid console by Sony called the PlayStation[6] (nicknamed the "Nintendo PlayStation" to distinguish it from the later Sony console of the same name) similar to Sharp's Twin Famicom and NEC's TurboDuo. Another partnership with Philips yielded a few Nintendo-themed games for the CD-i platform instead of the SNES-CD. Sony independently furthered its developments into their own stand-alone console, which ended up inheriting the PlayStation name and would serve as the chief competitor of the Super NES's cartridge-based successor, the Nintendo 64.

https://en.wikipedia.org/wiki/Super_NES_CD-ROM
