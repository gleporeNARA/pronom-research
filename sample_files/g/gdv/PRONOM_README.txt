Gremlin Digital Video
Jump to navigationJump to search
This document is based on the document 'Description of the Gremlin Digital Video (GDV) Format' by Mike Melanson and Vladimir "VAG" Gneushev found at http://multimedia.cx/gdv-format.txt.

This document is still a work in progress and is known to be incomplete.

Samples: http://samples.mplayerhq.hu/game-formats/gdv/
Gremlin Digital Video (GDV) is a multimedia file format used in a number of CD-ROM computer games developed by a company named Gremlin Interactive. The extension stands for Gremlin Digital Video. The format is most notable for its use in the title Realms of the Haunting.

The file format is apparently capable of transporting palettized 8-bit video, or 15-, 16-, or 24-bit data, though only 8-bit data has been observed in games using GDV. The audio format is 8- or 16-bit PCM or DPCM.


Contents
1	File Format
2	Video frame coding
2.1	General Notes about Video Coding
2.2	Video Coding Method 0
2.3	Video Coding Method 1
2.4	Video Coding Method 2
2.5	Video Coding Method 3
2.6	Video Coding Method 5
2.7	Bit Reading Procedure For Video Coding Methods 6 and 8
2.8	Video Coding Method 6
2.9	Video Coding Method 8
2.10	Scaling
3	Audio Format
4	Size ID Table
5	Games Using The GDV Format
File Format
All multi-byte numbers are stored in little endian format.

The general file format is laid out as follows:

GDV header
initial palette (only for 8-bit video data)
chunk 0
chunk 1
...
Each frame has the following structure:

sound samples (if sound is present)
frame header
video data
The GDV header has the following structure:

bytes 0-3    magic number/file signature (should be 0x94 0x19 0x11 0x29)

https://wiki.multimedia.cx/index.php/Gremlin_Digital_Video
