Novastorm is a rail shooter developed by Psygnosis in 1994. A version for the FM-Towns/Marty systems had previously been released under the name Scavenger 4.

https://en.wikipedia.org/wiki/Novastorm

Novastorm Media
Jump to navigationJump to search
Extensions: flm, fa
Samples: http://samples.mplayerhq.hu/game-formats/novastorm-media/
Novastorm is a 1994 DOS-based game from Psygnosis. The disc contains many multimedia files with a variety of extensions, most commonly .fa or .flm. The files share a combination of fourcc types and there is no one right way to assemble the files. Different files use the components they need.

All multi-byte numbers are little endian. The fourcc chunk format used in these files is:

 bytes 0-3    chunk type
 bytes 4-7    chunk size, not including 8-byte preamble
 bytes 8..    chunk payload
Observed fourcc types include:

SHED: Sound HEaDer, 8-byte payload:
 byte 0      probably a Sound Blaster frequency byte
 bytes 1-3   unknown
 bytes 4-5   size of an audio frame (SAMP chunk)
 bytes 6-7   unknown  
 
 https://wiki.multimedia.cx/index.php/Novastorm_Media
