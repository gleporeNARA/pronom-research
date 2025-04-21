BRender
BRender (abbreviation of "Blazing Renderer") is a development toolkit and a realtime 3D graphics engine for computer games, simulators, and graphic tools. It was developed and licensed by Argonaut Software.[11] The engine had support for Intel's MMX instruction set and it supported Microsoft Windows, MS-DOS and PlayStation platforms. Support for 3D hardware graphics accelerator cards was added.[12] Software made with BRender includes Carmageddon,[13] Croc: Legend of the Gobbos, FX Fighter,[14] I-War,[15] and 3D Movie Maker.

https://en.wikipedia.org/wiki/Argonaut_Games#BRender

BRP
Jump to navigationJump to search
Extensions: brp
Company: Argonaut Games
Samples:
Alien Odyssey: http://samples.mplayerhq.hu/game-formats/brp/alienodyssey/
FX Fighter: http://samples.mplayerhq.hu/game-formats/brp/fxfighter/
At least 2 games use an animation format with the extension .brp: FX Fighter and Alien Odyssey, both by Argonaut. The general container formats used in both games are similar, but differing fourccs inside may indicate that the games used different video coding algorithms (which are presently unknown). All multi-byte numbers are little endian.


Contents
1	File Format
2	Streams
2.1	BVID Stream
2.1.1	PAL8 Chunk
2.1.2	AVCF Chunk
2.1.3	ALCD Chunk
2.1.4	RLED, RLEF Chunks
2.1.5	MAD1 Chunk
2.1.5.1	0x02 algorithm
2.2	BASF Stream
File Format
BRP files consist of multi-stream chunks, where video and audio located in separate, but interleaved streams.

File begins with following 12-byte header:

 dword signature - "BRPP"
 dword streams   - number of streams in file
 dword unknown   - unknown, but equal to 640*480
File header followed by stream headers:

 dword signature       - stream FOURCC
 dword index           - logical index of the stream
 dword unknown1        -
 dword unknown2        -
 dword plsize          - size of the following payload data
 byte  payload[plsize] - stream-specific payload
Finally, actual data chunks follows, each one starts with chunk header:

 dword index      - logical index of the stream chunk belongs to
 dword unknown
 dword size       - size of the chunk data
 byte  data[size] - stream-specific chunk data
Streams
BVID Stream

https://wiki.multimedia.cx/index.php/BRP
