Does anybody here knows how the .CAS Format works? I'm talking about the file format used in the MSX emulators to store Tape images

From what I have understood doing a quick "reverse-engineering" with a Hex editor, there are eight characters at the beginning of each file stored in the tape that are always the same:

0x1F, 0xA6, 0xDE, 0xBA, 0xCC, 0x13, 0x7D, 0x74

Then there is a character that is repeated for ten times, and then the name of the file stored in six character, followed by a 0x1F character. The rest of the header is a mistery to me... it probably tells if the following file is a binary file, an ASCII file or a Basic file... how long it is and probably its checksum... but I really don't understand how I can read those values.

For example this appears to be a valid header for a .CAS File:

img142.imageshack.us/img142/2235/casheaderho8.gif

I'd like to try to make a small utility to manage .CAS files in my free time, like what DiskManager is for the .DSK format. I think it shouldn't be a difficult task...

By Vincent van Dam

Hero (513)

Vincent van Dam's picture
06-01-2008, 10:36

I have send this to the msx mailinglist once (a few years ago);

The cas format is the result of bypassing the following BIOS calls:

00E1 - TAPION
00E4 - TAPIN
00EA - TAPOON
00ED - TAPOUT

If you call the TAPION function, the BIOS will read from tape untill it has
found a header, and all of the header is read. The TAPOUT function will
output a header. In the cas format the header is encoded to these 8 bytes:

1F A6 DE BA CC 13 7D 74

These bytes have to be at a position that can be divided by 8; e.g. 0000,
0008, 0010 etc. If not, the byte sequence is not recognised as a header.

https://www.msx.org/forum/semi-msx-talk/emulation/how-do-exactly-works-cas-format
