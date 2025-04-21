 	What is CPCemu?
The answer is easy: As the name says, it emulates a CPC computer - with some extensions, of course.

CPCemu has a graphical user interface. It is multi-language capable. At the moment, four languages are supported: German, English, French and Spanish. So you can use it absolutely easily.

So, what does "emulation" mean?
Emulation is a kind of simulation. One could also say "imitation", I think. The important point is that an emulation is intended to yield a real-time behaviour. In simple words: It is made to look and feel like the original thing (device in most cases) it emulates.

And what is a "CPC"?
I cite from the manual here:

CPC is an abbreviation for Colour Personal Computer. Computers of this type were first built in 1984 by the british company Amstrad and sold under different names in other countries. It was the period of the home computer; Commodore C64, Sinclair Spectrum, Atari 800XL, ... when the CPC 464 was unveiled. It had as much RAM as the Commodore C64 (namely 64 KB), a built in cassette recorder and Locomotive BASIC 1.0. It was followed up by the CPC 664 which had a built-in 3" disk drive and a slightly extended Locomotive BASIC 1.1. The CPC 6128 came in 1985, with 128 KB RAM and nearly the same features as the CPC 664. 3" disks were awfully expensive, but more stable than the 5.25" disks (nearly as stable as today's 3.5"), and they were noticably faster versus tape speed, very unlike the situation with the C64 ... All three models were sold with either a colour or a green monitor, which had the power supply built in. Later, two or three other models (the CPC+ for example) were introduced. The BASIC was with nearly 178 instructions powerful and fast. One could program graphics, sound and even interrupt handling all in BASIC without the use of PEEKs and POKEs. The software supply increased dramatically over the years.


https://cpc-emu.org/about.html

7.7.1 Disc Images

Disc image files consist of a 0x100-byte disc info block and for
each track a 0x100-byte track info block, followed by the data for
every sector in that track.
The new extended disk format is intended for some copy protected disks.
Parts which are new in the extended format are marked with *E*
(from our Extended DISK Format Proposal, Rev.5).


The Disc Information block
Byte (hex): Meaning:
00 - 21 "MV - CPCEMU Disk-File\r\nDisk-Info\r\n"
("MV - CPC" is characteristic)
*E* "EXTENDED CPC DSK File\r\n\Disk-Info\r\n"
*E* ("EXTENDED" is characteristic)

https://cpc-emu.org/docu_e.html
