The ZX Spectrum (UK: /zɛd ɛks/) is an 8-bit personal home computer developed by Sinclair Research. It was first released in the United Kingdom on 23 April 1982 and went on to become Britain's best-selling microcomputer.[6]

Referred to during development as the ZX81 Colour and ZX82, it was launched as the ZX Spectrum to highlight the machine's colour display, compared with the black and white display of its predecessor, the ZX81. The Spectrum was released as eight different models, ranging from the entry level with 16 KB RAM released in 1982 to the ZX Spectrum +3 with 128 KB RAM and built in floppy disk drive in 1987; altogether they sold over 5 million units worldwide (not counting unofficial clones).

The Spectrum was among the first home computers in the United Kingdom aimed at a mainstream audience, similar in significance to the Commodore 64 in the US or the MO5 in France. The introduction of the ZX Spectrum led to a boom in companies producing software and hardware for the machine,[7] the effects of which are still seen. Some credit it as the machine which launched the British information technology industry.[8] Licensing deals and clones followed, earning Clive Sinclair a knighthood for services to British industry.[9]

The Commodore 64, Dragon 32, Oric-1, Oric Atmos, BBC Micro and later the Amstrad CPC range were rivals to the Spectrum in the UK market during the early 1980s. The machine was officially discontinued in 1992.[citation needed]

https://en.wikipedia.org/wiki/ZX_Spectrum#plus3

File headers

Tape files have headers which contain some system information. +3DOS
files may, or may not, have headers. All files created by BASIC's SAVE
command will have headers.

The +3DOS header mechanism provides a dedicated 8 byte area in each
headed file reserved for BASIC's use. The remainder of the header is
reserved for +3DOS. This 8 byte header is utilised in files created by
BASIC commands (see DOS OPEN description).

+3DOS files may have a single header in the first 128 bytes of the
file - the header record. These headers are detected by a 'signature'
and checksum. If the signature and checksum are as expected, then a
header is present; if not, these is no header. Thus, it is possible,
but unlikely, that a file without a header could be mistaken for one
with a header.

The format of the header record is as follows:

	Bytes 0...7	- +3DOS signature - 'PLUS3DOS'
	Byte 8		- 1Ah (26) Soft-EOF (end of file)
	
	https://worldofspectrum.org/ZXSpectrum128+3Manual/chapter8pt27.html
