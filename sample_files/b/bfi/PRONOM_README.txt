BFI
Jump to navigationJump to search
Extensions: bfi
Company: Tsunami Media
Samples: http://samples.mplayerhq.hu/game-formats/bfi/
Multimedia-heavy games by Tsunami use a multimedia format with the extension .bfi. According to the README.TXT file on the game Flash Traffic: City of Angels, BFI stands for Brute Force and Ignorance. As described:

WHAT'S A BFI?

BFI stands for 'Brute Force & Ignorance'. This is the methodology we used to convert captured video to something which could be played back in a reasonably reliable manner on a wide range of currently installed machines. It simply means we don't think you should _have_ to buy a brand new 100Mz PCI bus Pentium machine with a true-color, high resolution, 'turbocharged' local-bus video card just to play a computer game. It's just too much jargon and frankly, it makes my head hurt a bit.

File Format
All multi-byte numbers are little endian. The general FourCC chunk format is as follows:

 bytes 0-3    chunk type
 bytes 4-7    chunk size, including 8-byte preamble
 bytes 8..    chunk payload
A BFI file begins with the following 960 (0x3C0) bytes header:

 bytes 0-3      (  +0) file signature: 'BF&I'
 
 https://wiki.multimedia.cx/index.php?title=BFI
