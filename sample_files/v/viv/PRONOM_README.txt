Vivo
Jump to navigationJump to search
Extension: viv
Company: Vivo Software
Samples: http://samples.mplayerhq.hu/vivo/
Proprietary web audio/video streaming format. Uses H.263 video and G.723 ADPCM audio (not the G.723.1 speech codec).

Vivo files consist of a sequence of packets.

Each packet starts with 4 bit packet type (see below). Then follows a 4 bit "sequence number". Packets with same packet number probably must be combined? If the packet is not fixed-size type, the packet length follows and after that the packet data.

Known packet types are:

0: header
1: video (fixed length 128 unless prefixed)
2: video
3: audio (fixed length 40 unless prefixed)
4: audio (fixed length 24 unless prefixed)
Each packet may be prefixed with 0x82 in which case the packet types marked as fixed length above have a packet length as well.

Packet length is probably coded in the way that the following code would decode:

len = 0
do
  c = get_byte();
  len = (len << 7) + (c & 0x7f)
while c & 0x80
But this is not sure since only header packets seem to be longer than 127 bytes?

Header packets are simply text with CRLF line-breaks, defining one "variable" per line in the form Name:Value



https://wiki.multimedia.cx/index.php/Vivo
