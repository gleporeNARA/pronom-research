Yamaha TX-16W Technical Info	
Advertising Space Available
___________________________________________________________________________
Contents:

0.      Introduction
1.      Overview of the TX16W
2.      Memory map of the TX16W
  2.1     Overview
  2.2     SYSRAM:       System RAM (128kB)
  2.3     ROM:          System ROM (16kB)
  2.4     TGBD:         Tone generator board memory and I/O space
  2.5     DM:           68000 Motherboard I/O ports
  2.6     Some asynchronous ports (old 800kHz bus circuits)
  2.7     WRAM:         Wave memory (1.5MB .. 6MB)
3.      Interrupts
4.      T8WSYS.SYS      File format
5.      Hello world, a programming example
6.      The disk format (low level)
7.      Yamaha Wave format

___________________________________________________________________________
0.0 Introduction

The TX16W is indeed a powerful sampler with its 16 voices, its digital filters
and its ability to produce high pitched notes with remarkably low distortion.
It is also remarkable that nearly all chips used in the design are standard
industry circuits. This makes it possible to analyse the design and make your
own programs that makes your TX16W into a standard midi file player, a midi
dump to file converter, a small audio effect processor or a telecomunication
modem! As far as I know noone has done any of the mentioned things yet and
I'm sure there are more ideas out there about what to do of this excellent
piece of hardware.

...

7.0 TX Wave Format:


The file consists of a 32 byte header followed by the actual waveform
(the first 16 bytes only identifies the file type).  In C syntax the
header would look like this:

char filetype[6] = "LM8953";

http://www.youngmonkey.ca/nose/audio_tech/synth/Yamaha-TX16W.html
