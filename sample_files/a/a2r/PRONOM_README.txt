The A2R format is the raw flux images as recorded by the Applesauce hardware and software. The A2R has evolved a few times since I originally started work on Applesauce. As of release 1.0.3 of the Applesauce software, I have created a version 2.0 of the A2R file format. This document describes that version. If you need to convert earlier A2R files to the current version, it can be done with the Applesauce software.

A2R File Format Specification
An A2R file uses a chunk-based file binary format that provides future-proof expandability in a way that is safe for older software which may not recognize newer data chunks.

All data is stored little-endian.

A2R files begin with the following 8-byte header in order to identify the file type as well as detect any corruption that may have occurred.

Byte	Value	Purpose
0	41 32 52 32	The ASCII string ‘A2R2’. 0x32523241
4	FF	Make sure that high bits are valid (no 7-bit data transmission)
5	0A 0D 0A	LF CR LF – File translators will often try to convert these.

https://applesaucefdc.com/a2r/
