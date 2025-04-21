APPENDIX I – MMM FILE FORMAT

This section contains a description of the raw MMM (Modified Maximum Method)
for the DPS and the DGS-256 file formats for storage of MMM ionograms. There are
5 types of Digisonde, each producing one of two MMM formats DPS or DGS-256.
• DGS-256 Digisonde-256
• DISS Digital Ionospheric Sounding System of US Air Force, AWS - standardized
DGS-256
• DPS-1 Single-Receiver Digisonde Portable Sounder
• DPS-4 Four-Receiver Digisonde Portable Sounder
• VIS Vertical Incidence Sounder for Telstra Australia - Standardized DPS-1
The format of the MMM filename is VVVVV_YYYYMMDD.mmm
Where VVVVV is the site ID and site Code e.g rl052
YYYY is the year, MM is the month and DD is the day of the month
MMM DPS – Description
The MMM DPS (Digisonde Portable Sounder) file is arranged in blocks, each block
being 4096 bytes in length. Each block has a Header section, followed by a data
section split over 30 groups, each group is split into a Prelude and a data-points series
of bytes consisting of A-scans taken at each sounding frequency, each A-Scan holding
128 bins and each bin consisting of an Amplitude (The MSB ‘Upper Nibble’) and a
Channel Number (the LSB ‘Lower Nibble’). In general there are 281 blocks in the
MMM DSP file.
Figure 1.01 – MMM File Structure
The Header Section consists of 3 bytes the Record_type, the Header Length and a
Spare byte followed by the PREFACE, a 57 byte description of the time and
frequency sounding and other relevant operating and control parameters. 

150
Figure 1.02 – MMM single Block Structure
DPS header section:
Byte Parameter Range Units Description
1 RECORD_TYPE The record_type denotes the
start of a block, the value is 09
for the first block and 08 for
subsequent blocks.
2
HEADER_LENGTH
 The Header_length byte
denotes the length of the header
in Bytes before the start of the
group.
3 SPARE_BYTE Unused byte
4-5 YY 0-99 Years 2 Year field Bytes
6-8 DDD 1-366 Days 3 Day Bytes
9-10 HH 0-23 Hours 2 Hour Bytes
11-
12
MM 0-59 Minutes 2 Minute Bytes
13-
14
SS 0-59 Seconds 2 Second Bytes
15 SCHEDULE 1-6 Schedule
16 PROGRAM 1-7 Program
17 F 1Khz Fine Frequency Step, the
frequency can be changed
enabling the sounder to alternate
the sampling of received signals 

151
from one or four antennas for as
many as 16 frequencies and 2
polarizations.
18 J2 Journal 2, J2 is set to 2 in DPS
19 BLANK Unused byte
20 E First Height in 10s Km3
21 H 2,5,10 Height resolution, can take
values (2,5,10)
2 – 2.5Km
5 – 5Km
10 – 10 Km
22 M 1,2 Number of Heights, can take
values (1,2) denotes what
number of complex amplitude
samples (1=128, 2=256) made
after transmission of each
waveform was chosen in the
program.
23-
28
FFFFFF 0-
999999
100Hz 6 Bytes Nominal Start
Frequency Byte (100Hz)
29 P1 1 Output Control 1, Date storage
format for Disk Files, P1
specifies the file format and
indicates the measurement being
made.
1 = MMM
30 P2 0-2 Output Control 2, Printer
Output
0 None
1 for black and white printi

http://www.alliancepermanentaccess.org/wp-content/uploads/temp/ionosonde-case-study.pdf
