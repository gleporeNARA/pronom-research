Humongous CUP
Jump to navigationJump to search
Extension: cup
Company: Humongous Entertainment
Samples: http://samples.mplayerhq.hu/game-formats/cup/
Decoder: http://scummvm.svn.sourceforge.net/viewvc/scummvm/scummvm/trunk/engines/scumm/he/cup_player_he.cpp
Humongous CUP files are used as demo movies for games from Humongous Entertainment. CUP files have the file signature 'BEAN' and are played with an executable called coffee.exe. They appear to contain non-interleaved audio and video data; all of the audio data is stored in the file first and the video data second.


Contents
1	Data Format
2	TRLE Compression
3	SRLE Compression
4	LZSS (Tri-LZ) Compression
Data Format
CUP file use both little and big endian numbers. Big endian numbers are used when encoding the chunk size in the chunk preamble. All other multi-byte numbers appear to be stored in little endian format.

 bytes 0-3     chunk type FourCC
 bytes 4-7     chunk size (including this 8-byte preamble)
 bytes 8..     chunk payload
The top-level chunk in a CUP file is the BEAN chunk which encapsulates the entire file and can also serve as a file signature:

 bytes 0-3     'BEAN' FourCC
 
 https://wiki.multimedia.cx/index.php/Humongous_CUP
