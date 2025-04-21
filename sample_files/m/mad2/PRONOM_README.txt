Electronic Arts MAD (MADV)
Contents
1	MAD
1.1	Format Specifications
1.2	Notes and Comments
1.3	Games
1.4	quickBMS Script
1.5	Compatible Programs
MAD
Format Type : Video
Endian Order : Little Endian

Format Specifications
// MAD file format

// little endian

num_of_chunks *
{
   //frame chunk structure
   4 bytes (char) - chunk name // "MADk" - intra frame
                               // "MADm" - inter frame
                               // "MADe" - low-quality-inter frame
   2 bytes (uint16) - size of the chunk
   4 bytes (uint32) - reserved // "0"
   2 bytes (uint16) - max data rate per second
   2 bytes (uint16) - frame_rate // milliseconds per frame
   
   https://wiki.xentax.com/index.php/Electronic_Arts_MAD_(MADV)
   
Electronic Arts MAD
Jump to navigationJump to search
Extension: mad
Company: Electronic Arts
Samples: http://samples.mplayerhq.hu/game-formats/ea-mad/
MAD is a video codec used in various games published by companies under the Electronic Arts umbrella. The codec is an evolution of the earlier TGQ and TQI codecs, adding motion compensation and low-quality frame concepts. MAD is an abbreviation for "Madcow Movie".


Contents
1	Chunk Types
2	Macroblock Decoding
3	GetVector Definition
4	Coefficient Decoding
5	Inverse DCT and Clipping
6	Games Using MAD
Chunk Types
See Electronic Arts Formats for file format description. Each MADk, MADm and MADe chunk corresponds to a video frame, where MADk is an intra-frame, MADm is an inter-frame and MADe is a low-quality-inter frame. Low-quality-inter frames are identical to inter frames, but are not used for motion compensation and are discarded immediately after presentation. Each frame is divided into 16x16 pixel macroblocks, with each macroblock further divided into with four 8x8 luma and two half-resolution 8x8 chroma blocks. Standard MPEG-1 block ordering is used.

Each chunk begins with a 16 byte header, followed by a bitstream. Symbols within the header are encoded using 16-bit little-endian most-to-least-significant bit packing. <FIXME: explain bit packing>. Although frame type is reported within the header, the field is not valid in some samples, and is therefore unreliable. Frame type should be inferred from the chunk type.

https://wiki.multimedia.cx/index.php/Electronic_Arts_MAD
