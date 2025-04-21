Shorten (SHN) is a file format used for compressing audio data. It is a form of data compression of files and is used to losslessly compress CD-quality audio files (44.1 kHz 16-bit stereo PCM). Shorten is no longer developed and other lossless audio codecs such as FLAC, Monkey's Audio (APE), TTA, and WavPack (WV) have become more popular. However, Shorten is still in use by some people because there are legally traded concert recordings in circulation that are encoded as Shorten files. Shorten files use the .shn file extension.

https://en.wikipedia.org/wiki/Shorten_(codec)

Shorten header (does not necessarily start at byte 0):
Shorten magic (4 Bytes): 'ajkg'
Shorten file version (1 Byte): 0 - v1 (outdated, not fully supported by shnlib, therefore disabled), 1 - v2 (current format), 2 - v3 (same as v2, but with internal seektable)
Everything after this point uses Rice coding, so I don't know exactly what is at bytes 16-19.
File type (SHN_ulong): how the PCM data is encoded
Number of channels (SHN_ulong)
Max. blocks per frame (SHN_ulong, only v2&v3, v1 uses fixed default)
Max. LPC order (SHN_ulong, only v2&v3, v1 uses fixed default)
Length of offset history in frames (SHN_ulong, only v2&v3, v1 uses fixed default)
Length of padding = nskip (SHN_ulong)
Padding (nskip * SHN_uint<7>): I'm not sure, if this was really padding. It might be some data from the beginning of the WAV file, that the Shorten encoder was told to skip (ID3v2 tag?).
Up next is a RIFF or AIFF header encoded in a "Verbatim block". Verbatim blocks contain data that is copied "verbatim" (the bytes aren't simply copied) from the original WAV file, and is not interpreted by the Shorten encoder.
The format of a verbatim block:
Block type (SHN_uint<2>): 9 is for verbatim
Number of bytes encoded in verbatim block = len (SHN_uint<5>): 256 is maximum; if the data is longer, it will be encoded in multiple verbatim blocks
Verbatim data (len * SHN_uint<8>): the data
I have used SHN_ulong and SHN_uint<k> to describe the file format, they are read in shnlib with the following functions:

https://hydrogenaud.io/index.php?topic=15764.0
