Maxis XA
Jump to navigationJump to search
Extension: XA
Company: Maxis
Samples: http://samples.mplayerhq.hu/game-formats/maxis-xa/

Contents
1	Credit
2	XA File Header
3	XA File Data
4	EA ADPCM Decompression Algorithm
5	EA ADPCM Table
6	PC Games Using Maxis XA
Credit
The information on this page was originally based on one of the many format documents written up by Valery V. Anisimovsky, available on http://wotsit.org/ and many other sites across the internet.


XA File Header
The XA file has the following header:

struct XAHeader
{
 char	szID[4];
 DWORD dwOutSize;
 WORD	wTag;
 WORD	wChannels;
 DWORD dwSampleRate;
 DWORD dwAvgByteRate;
 WORD	wAlign;
 WORD	wBits;
};
szID -- string ID, which is equal to "XAI\0" (sound/speech) or "XAJ\0" (music).

https://wiki.multimedia.cx/index.php/Maxis_XA
