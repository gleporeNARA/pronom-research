PVA File and Stream Format
Description of PVA file and stream format as used by TechnoTrend‘s (and compatible) TI
TMS320AV711x based DVB PCI boards for harddisk recording of DVB (MPEG-2) TV and radio
broadcasts.
1
 Introduction
The PVA format is near to the TMS320AV7110‘s on-chip MPEG-2 video and audio decoder
input buffer format. Therefore PVA is not a MPEG standard format, like transport stream (TS) or
program stream (PS), but it’s based on the same elementary streams (ES). So, a conversion to
MPEG-2 standard formats is possible. This conversion is necessary to achieve compatibility to
other software and hardware products (VOD systems, streaming, DVD, ...).

4
 AV header
The AV header always has a length of 8 bytes.
SyncWord
 StreamID
 Counter
 Reserved
2 Byte
 1 Byte
 1 Byte
 1Byte
Flags
1 Byte
Length
2 Byte
4.1
 SyncWord
The SyncWord has a length of two bytes containing the values 0x41 and 0x56 (ASCII: „AV“).
4.2
 StreamID
The StreamID allows to assign the packet to an elementary stream and defines the stream type.
The following values are defined for StreamID:
StreamID
0x01
0x02
Elementary stream
VideoStream
MainAudioStream
Remarks
The AV packet payload contains Video ES data.
The AV packet payload contains Audio PES data.
Other values for StreamID are not defined and the correspondig AV packets will be ignored.
4.3
 Counter
The Counter is a modulo-256 counter incremented each packet. Each stream has its own
counter.
4.4
 Reserved
This field is reserved for future additions. At present its value is set to 0x55.

https://multimedia.cx/mirror/av_format_v1.pdf
