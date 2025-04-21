WavPack is a completely open audio compression format providing lossless, high-quality lossy, and a unique hybrid compression mode. For version 5.0.0, several new file formats and lossless DSD audio compression were added, making WavPack a universal audio archiving solution.

In the default lossless mode WavPack acts just like a WinZip compressor for audio files. However, unlike MP3 or WMA encoding which can affect the sound quality, not a single bit of the original information is lost, so there's no chance of degradation. This makes lossless mode ideal for archiving audio material or any other situation where quality is paramount. The compression ratio depends on the source material, but generally is between 30% and 70%.

The hybrid mode provides all the advantages of lossless compression with an additional bonus. Instead of creating a single file, this mode creates both a relatively small, high-quality lossy file that can be used all by itself, and a "correction" file that (when combined with the lossy file) provides full lossless restoration. For some users this means never having to choose between lossless and lossy compression!

WavPack employs only well known, public domain techniques (i.e., linear prediction with LMS adaptation, Elias and Golomb codes) in its implementation. Methods and algorithms that have ever been patented (e.g., arithmetic coding, LZW compression) are specifically avoided. This ensures that WavPack encoders and decoders will remain open and royalty-free.

https://www.wavpack.com/

WavPack 4 & 5 Binary File / Block Format
David Bryant
April 12, 2020
1.0 Introduction
A WavPack 4.0 or 5.0 file consists of a series of WavPack audio blocks. It may also contain tags and
other information, but these must be outside the blocks (either before, in-between, or after) and are
ignored for the purpose of unpacking audio data. The WavPack blocks are easy to identify by their
unique header data, and by looking in the header it is very easy to determine the total size of the block
(both in physical bytes and compressed samples) and the audio format stored. The first block
containing audio determines the format of the entire file. There are no specialized seek tables.
The blocks are completely independent in that they can be decoded to mono or stereo audio all by
themselves. The blocks may contain any number of samples (well, up to 131072), either stereo or
mono. Obviously, putting more samples in each block is more efficient because of reduced header
overhead, but they are reasonably efficient down to even a thousand samples. For version 5.0 the
default number of samples stored in a block has been reduced by half to improve seeking performance.
The max size is 1 MB for the whole block, but this is arbitrary (and blocks will generally be much
smaller). The blocks may be lossless or lossy. Currently the hybrid/lossy modes are basically CBR, but
the format can support quality-based VBR also.
For multichannel audio, the data is divided into some number of stereo and mono streams and
multiplexed into separate blocks which repeat in sequence. A flag in the header indicates whether the
block is the first or the last in the sequence (for simple mono or stereo files both of these would always
be set). The speaker assignments are in standard Microsoft order and the channel_mask is
transmitted in a separate piece of metadata. Channels that naturally belong together (i.e. left and right
pairs) are put into stereo blocks for more efficient encoding. So, for example, a standard 5.1 audio
stream would have a channel_mask of 0x3F and be organized into 4 blocks in sequence:
1. stereo block (front left + front right) (INITIAL_BLOCK)
2. mono block (front center)
3. mono block (low frequency effects)
4. stereo block (back left + back right) (FINAL_BLOCK)
Correction files (.wvc) have an identical structure to the main file (.wv) and there is a one-to-one
correspondence between main file blocks that contain audio and their correction file match (blocks that
do not contain audio do not exist in the correction file). The only difference in the headers of main
blocks and correction blocks is the size and the CRC value, although it is easy (if a little ugly) to tell
the blocks apart by looking at the metadata ids.
The format is designed with hardware decoding in mind, and so it is possible to decode regular stereo
(or mono) WavPack files without buffering an entire block, which allows the memory requirements to
be reduced to only a few kilobytes if desired. This is not true of multichannel files, and this also
restricts playback of high-resolution files to 24 bits of precision (although neither of these would be
associated with low-cost playback equipment).
2.0 Block Header
Here is the 32-byte little-endian header at the front of every WavPack block:
typedef struct {
 char ckID [4]; // "wvpk"
 
 https://www.wavpack.com/WavPack5FileFormat.pdf
