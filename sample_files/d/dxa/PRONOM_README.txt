DXA
Jump to navigationJump to search
Extension: DXA
Company: Runesoft GmbH
Samples: http://samples.mplayerhq.hu/game-formats/dxa/
The DXA format is used for videos in the Amiga and Macintosh versions of the Feeble Files. It is basically zlib compressed video frames, using WAV format for audio. The Macintosh version uses Microsoft ADPCM format for the audio.

The source code of a player for the DXA format can be found at: http://membres.lycos.fr/cyxdown/scummvm/feeble/

Data Format
All multi-byte numbers are stored in big endian format. A DXA file begins with a video header with is laid out as follows:

  dword Signature;
  byte  Version;
  word  Frames;
  dword FrameRate;
  word  Width;
  word  Height;
Signature - File signature 'DEXA'.
Frames - Number of logical frames.

https://wiki.multimedia.cx/index.php/DXA
