Script Creation Utility for Maniac Mansion (SCUMM) is a video game engine developed at Lucasfilm Games, later renamed LucasArts, to ease development on their graphic adventure game Maniac Mansion (1987). It was subsequently used as the engine for later LucasArts adventure games.

https://en.wikipedia.org/wiki/SCUMM

v5-v6 - MONSTER.SOU
Original
From Indy 4 onwards, sound effects and speech are stored in a separate resource file called "MONSTER.SOU". The format is:

Block name         4 bytes ("SOU ")
Block size         4 bytes
One or more:
 Block name        4 bytes ("VCTL")
 Block size        4 bytes
 Lip-sync tags     variable * 2 bytes LE
 Sound data        variable ("Crea" block / VOC file)
The lip-sync tags provide timing information, and are 16-bit LE values, representing positions in the speech file. Lip synching is basically just toggling the speaking animation on and off whenever the speech goes past the positions listed in the lip-synch tags. In v5 the number of tags is stored in the calling text, according to the formula (num_tags << 1) + 8. The "Crea" block is an entire Creative VOC file.

https://wiki.scummvm.org/index.php?title=SCUMM/Technical_Reference/Sound_resources&mobileaction=toggle_view_desktop

Judgning by the compression tool, the monster.sou file begins with an eight-byte header - the letters "SOU " and four bytes of zeroes - followed by an arbitrary number of "parts".

Each part also has an eight-byte header: The letters "VCTL" or "VTTL", and a four-byte big-endian number that indicates how many bytes to skip (including the eight-byte header) before getting to the actual sound. I think this data is some sort of optional lip-sync information. After that comes the sound itself, in the form of a Creative Voice file.

https://forums.scummvm.org/viewtopic.php?t=4241
