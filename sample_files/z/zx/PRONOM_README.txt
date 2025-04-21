Speculator 97 is the 1997 version of a fast Spectrum emulator written in the
UK, updating the version originally released on Amiga Format and Amiga User
International cover-disks late last year. It has many advantages over earlier
Amiga Spectrum emulators. It is shareware but has no operational restrictions.


http://aminet.net/package/misc/emu/Speculator

https://www.wikidata.org/wiki/Q105853566

FORMAT SPECS BELOW.



@NODE 13.00 "Appendix A - File formats"

13.00	Appendix A - File Formats known to Speculator

Files can be read from any Amiga drive, into the emulator's memory and registers. Speculator recognises more file types than any other emulator known, although it sometimes needs a hint from the file-name. It supports snapshots and the standard Sinclair file types, and some extended types used by Cheetah and MGT. There is a generalised utility, SPCONV, which converts between snapshot formats. It is freely distributable on Amiga, PC and other computers. It's regularly upgraded so make sure you get the latest version.

@{b}BASIC files@{ub}

There are several formats popularly in use, and Speculator's own is based on the MGT disk file format derived from Sinclair's Interface 1 file structure, for program, code and data files used by ZX BASIC. This format is used by ZXmit and the handler for Spectrum and SAM disks, it's recognised by Edward Vermuelen's excellent ZX_Datatype 39.1 and hence by Multiview, Dpaint, Opus etc. 

The datatype is not installed as part of the Speculator package but may freely be supplied with it, or obtained from Aminet. It has its own installation script, which requires the Commodore or Amiga Technologies Installer tool.

@{b}Snapshots@{ub}

The majority of widely available files are 'snapshots' - images of the entire 48K Spectrum memory, with additional data for 'register' resources inside the processor, so that the exact state of the machine can be restored after a 'snapshot'. Thus you can freeze time.

The internal organisation of snapshot files varies, mainly because there's no agreement about how the registers (and reven which registers) will be stored.

The best, like Speculator itself, support file compression to save disk space. Often only a fraction of the 48K main memory is used. It helps to save when there's not much on the screen if you want to keep snapshot sizes down. Uncompressed snapshots are easier to dissect and convert, so Speculator supports those, too. The file formats are discussed

 @{" 13.10  ZX82 File Format                    " LINK 13.10}

 @{" 13.20  Mirage and JPP Snapshot file format " LINK 13.20}

 @{" 13.30  KGB file format                     " LINK 13.30}

 @{" 13.40  PC Z80 file format                  " LINK 13.40}

 @{" 13.50  Sinclair QL Speculator file format  " LINK 13.50}

 @{" 13.60  .SP file format                     " LINK 13.60}

@ENDNODE



@NODE 13.10 "Amiga Speculator 'ZX82' file format"

13.10 Amiga Speculator 'ZX82' file format

Amiga Speculator has its own file format which I have called ZX82 format because it contains a file identifier in the first four bytes consisting of the ASCII characters "ZX82". The format has a 12 byte header which contains the normal Spectrum type file information like length, type, start etc. as well as a compression flag which is set if the file is byte run compressed. Snapshot files have a further 32 bytes of register values and border colour information. Listed below are the offset definitions taken from the Speculator source code in case you need to write a conversion utility. All registers and other values are in Motorola format (High, Low). I have defined everything in bytes to avoid any possible confusion.

* The Standard ZX82 Header

ZX_ID		rs.l	1	Identifier for a Speculator file "ZX82"

ZX_Type		rs.b	1	0:BASIC 1:Numeric 2:String 3:Code 4:Snapshot

ZX_Comp		rs.b	1	Is data block byte run compressed ? $00=No $FF=Yes

ZX_Length_H	rs.b	1	File length up to 64k (ELINE-PROG for BASIC)

ZX_Length_L	rs.b	1

ZX_Start_H	rs.b	1	Start address for code (AUTOSTART for BASIC)

ZX_Start_L	rs.b	1

ZX_ProgLen_H	rs.b	1	Array name (VARS-PROG for BASIC)

ZX_ProgLen_L	rs.b	1

ZX_ZXHdrLen	rs.b	0	Length of ZX file header

ZX_ZXData	rs.b	0	Start of Data block for standard ZX file

* The extended Snapshot ZX82 Header

ZX_Border	rs.b	1	Border colour

ZX_IntMode	rs.b	1	IntMode over-ride (0=use i_reg, 1=im1 and 2=im2)

ZX_Registers	rs.b	0	Z80 register values for Snapshot Files

ZX_iy_H_reg	rs.b	1	(High then Low i.e. Motorola format)

ZX_iy_L_reg	rs.b	1

ZX_ix_H_reg	rs.b	1

ZX_ix_L_reg	rs.b	1

ZX_de_H_reg	rs.b	1

ZX_de_L_reg	rs.b	1

ZX_bc_H_reg	rs.b	1

ZX_bc_L_reg	rs.b	1

ZX_hl_H_reg	rs.b	1

ZX_hl_L_reg	rs.b	1

ZX_af_H_reg	rs.b	1

ZX_af_L_reg	rs.b	1

ZX_de_H_alt	rs.b	1

ZX_de_L_alt	rs.b	1

ZX_bc_H_alt	rs.b	1

ZX_bc_L_alt	rs.b	1

ZX_hl_H_alt	rs.b	1

ZX_hl_L_alt	rs.b	1

ZX_af_H_alt	rs.b	1

ZX_af_L_alt	rs.b	1

ZX_sp_H_reg	rs.b	1

ZX_sp_L_reg	rs.b	1

ZX_if_H_reg	rs.b	1

ZX_if_L_reg	rs.b	1

ZX_rf_H_reg	rs.b	1

ZX_rf_L_reg	rs.b	1

ZX_pc_H_reg	rs.b	1

ZX_pc_L_reg	rs.b	1

ZX_SnpHdrLen	rs.b	0	Length of Snapshot file header

ZX_SnpData	rs.b	65496	Start of data block for Snapshot type file

The ZX_Type field is derived from the MGT diciple directory MGT_Type-1, so further file types may be supported in this way in the future.

The compression used is the standard byte run compression as used by ILBM IFF files. The whole 48k data block is compressed as if it were one long row. See Amiga ROM Kernel Reference Manual: Devices Third Edition, Appendix A - IFF Specification (P347), Appendix C - Example Packer C code (P538).

@ENDNODE



@NODE 13.20 "Mirage and JPP Snapshot file format"

13.20 Mirage and JPP Snapshot file format

This format is based on the format used by the Mirage Microdriver "Dump" command.  Snapshot files are always 49179 bytes long. Note that in the table, the byte offset starts from 0, not 1.

	Byte			Description

	0			i  register

	1			l' register

	2			h' register

	3			e' register

	4			d' register

	5			c' register

	6			b' register

	7			f' register

	8			a' register

	9			l  register

	10			h  register

	11			e  register

	12			d  register

	13			c  register

	14			b  register

	15			iy low register

	16			iy high register

	17			ix low register

	18			ix high register

	19			bit 2 is set if interrupts are enabled

	20			r register

	21			flags register

	22			a register

	23			sp low register

	24			sp high register

	25			interrupt mode (0, 1 or 2)

	26			border colour in low 3 bits

	27..49178		48 kbytes ram dump

The JPP Spectrum emulator for 80386-based PC's by Arnt Gulbrandsen uses exactly the same snapshot format, as does VGASPEC, another PC ZX emulator.

@ENDNODE



@NODE 13.30 "KGB file format"

13.30 KGB file format

Author: KGB (?)

Program: Spectrum

machine: Amiga

Country: ?

Extension: .KGB

Length: 49486 bytes

Byte		Length		Description

    0 - 131	132		132 Pad bytes

  132 - 49283	49152		48k data block

49284 - 49415	132		Another 132 pad bytes

49416		2		$000A (?)

49418		2		<> $0000 (?)

49420		2		Int Mode Stuff 1

49422		2		Int Mode Stuff 2

49424		2		$0001 ?

49426		2		$0100 ?

49428		2		Colour/BW mode

49430		2		$0001 ?

49432		2		$007D ?

49434		2		BC register

49436		2		BC alt register

49438		2		DE register

49440		2		DE alt register

49442		2		HL register

49444		2		HL alt register

49446		2		IX register

49448		2		IY register

49450		1		I register

49451		1		R register

49452		1		Pad byte

49453		1		Flags in 68K format

49454		1		Pad byte

49455		1		a alt register

49456		1		Pad byte

49457		1		a register

49458		1		Pad byte

49459		1		Flags alt in 68K format

49460		2		Pad word

49462		2		pc register

49464		2		Pad word

49466		2		sp register

49468 - 49485	18		18 pad bytes

Note: All word values are stored in motorola (hi-lo) format. Also the flags themselves are stored as if they were 680x0 flags which means that only the carry, sign and zero flags are saved correctly in this format. I hope this information is correct as I can`t find the original documentation.

@ENDNODE



@NODE 13.40 "PC .Z80 File Format"

13.40 PC Z80 file format

The old .Z80 snapshot format (for version 1.45 and before) looks like this:

Byte	Length	Description

0	1	A register

1	1	F register

2	2	BC register pair (LSB, i.e.  C, first)

4	2	HL register pair

6	2	Program counter

8	2	Stack pointer

10	1	Interrupt register

11	1	Refresh register (Bit 7 is not significant!)

12	1	 Bit 0  : Bit 7 of the R-register

		 Bit 1-3: Border colour

		 Bit 4  : 1=Basic SamRom switched in

		 Bit 5  : 1=Block of data is compressed

		 Bit 6-7: No meaning

13	2	DE  register pair

15	2	BC' register pair

17	2	DE' register pair

19	2	HL' register pair

21	1	A' register

22	1	F' register

23	2	IY register (Again LSB first)

25	2	IX register

27	1	Interrupt flipflop, 0=DI, otherwise EI

28	1	IFF2 (not particularly important...)

29	1	 Bit 0-1: Interrupt mode (0, 1 or 2)

		 Bit 2  : 1=Issue 2 emulation

		 Bit 3  : 1=Double interrupt frequency

		 Bit 4-5: 0=Normal

			  1=High video synchronisation

 			  2=Normal

			  3=Low video synchronisation

 			  2=Normal

		 Bit 6-7: 0=Cursor/Protek/AGF joystick

			  1=Kempston joystick

			  2=Sinclair 1 joystick

			  3=Sinclair 2 joystick

For compatibility reasons if byte 12 is 255, it has to be regarded as being 1. After this header block of 30 bytes the 48K bytes of Spectrum memory follows in a compressed format (if bit 5 of byte 12 is one).

The compression method is very simple: it replaces repetitions of at least five equal bytes by a four-byte code ED ED xx yy, which stands for "byte yy repeated xx times". Only sequences of length at least 5 are coded. The exception is sequences consisting of ED's; if they are encountered, even two ED's are encoded into ED ED 02 ED. Finally, every byte directly following a single ED is not taken into a block, for example ED 6*00 is not encoded into ED ED ED 06 00 but into ED 00 ED ED 05 00. The block is terminated by an end marker, 00 ED ED 00.

That's the format of .Z80 files as used by versions up to 1.45. Since starting from version 2.0 the program emulates the Spectrum 128 too, there was a need for a new format. The first 30 bytes are almost the same as the old versions' header.

In the flag byte, bit 4 and 5 have got no meaning anymore, and the program counter (bytes 6 and 7) are zero to signal a version 2.0 .Z80 file.  So loading a new style .Z80 file into an old emulator will cause an error or a reset at the most.

After the first 30 bytes, an additional header follows:

Byte	Length	Description

30	2	Length of additional header block (contains 23)

32	2	Program counter

34	1	Hardware mode:	0=Spectrum 48K,

				1=0+interface I,

				2=SamRam,

				3=Spectrum 128K,

				4=3+interface I.

35	1	If in SamRam mode, bitwise state of 74ls259.

		For example, bit 6=1 after an OUT 31,13 (=2*6+1)

		If in 128 mode, contains last OUT to 7ffd

36	1	Contains 0FF if Interface I rom paged

37	1	Bit 0: 1 if R register emulation on

		Bit 1: 1 if LDIR emulation on

38	1	Last OUT to fffd (soundchip register number)

39	16	Contents of the sound chip registers

Hereafter a number of memory blocks follow, each containing the compressed data of a 16K block. The compression is according to the old scheme, except for the end-marker, which is now absent.

The structure of a memory block is:

Byte	Length	Description

0	 2	Length of data (without this 3-byte header)

2	 1	Page number of block

3	[0]	Compressed data

The pages are numbered, depending on the hardware mode, in the following way;

Page	In '48 mode	In '128 mode	In SamRam mode

 0	48K rom		rom (basic)	48K rom

 1	Interf. I rom	Interf. I rom	Interf. I rom

 2	-		rom (reset)	samram rom (basic)

 3	-		page 0		samram rom (monitor,..)

 4	8000-bfff	page 1		Normal 8000-bfff

 5	c000-ffff	page 2		Normal c000-ffff

 6	-		page 3		Shadow 8000-bfff

 7	-		page 4		Shadow c000-ffff

 8	4000-7fff	page 5		4000-7fff

 9	-		page 6		-

10	-		page 7		-

In 48K mode, pages 4,5 and 8 are saved.  In SamRam mode, pages 4 to 8 are saved. In 128 mode, all pages from 3 to 10 are saved. This version saves the pages in numerical order. There is no end marker.

The .Z80 file format is also used by;

- G.A.Lunter, PC, Netherlands.

- SPECTATOR, Carlo Delhez, QL, Netherlands.

- Ergon Development emulators, QL, Italy.

- ZX, Andrew Lavrov, QL.

- Mac Spectacle, Guenter Woigk, Germany, 1995.

- ZXAM, Antonio J. Pomar Rosselló, Amiga, Spain.

These notes were taken directly from G.A. Lunter`s fine Z80 documentation.

@ENDNODE



@NODE 13.50 "Sinclair QL Speculator file format"

13.50 Sinclair QL Speculator file format

Speculator supports standard ZX file types 0-3 by mapping them onto unused Qdos file-types 3-6, adding ZX-specific information in the Qdos file header. SNAP files have Qdos type 11.

ZX    Qdos

0	3	ZX BASIC program (may include variables)

1	4	ZX BASIC numeric array

2	5	ZX BASIC character array

3	6	ZX BASIC CODE or SCREEN$ file

5	11	GDOS 48K SNAP

The length of the ZX file can be inferred from the length in the QL header -64, the number of bytes used for the header itself. The normally unused 'extra' field at byte offset 10 in the Qdos file header holds the remaining information from the ZX file header: Bytes 10 and 11 hold the start address for CODE or the start line for BASIC, in Z80 order, LSB first. If the start line exceeds 9999 no auto-start is performed. The name of a saved array is encoded at byte offset 11 of the file header. To decode this, AND the value with 31 and add 64 to convert to ASCII capitals. File type 11 is a Qdos equivalent of the Spectrum G(+)DOS SNAP 48K file-type, with register information added at the end of the 48K Spectrum memory image:

Offset Length  Contents

0	    48K	    ZX Memory image

49152  word   IY register (LSB first)

49154  word   IX register (LSB first)

49156  word   DE' register (order: E',D')

49158  word   BC' register (order: C',B')

49160  word   HL' register (order: L',H')

49162  byte   F' register (not always set by GDOS)

49163  byte   A' register

49164  word   DE register (order: E,D)

49166  word   BC register (order: C,B)

49168  word   HL register (order: L,H)

49170  byte   F register; P/V flag (bit 2) signals IFF2 (DI/EI)

49171  byte   I register; IM 2 if I<>63, otherwise IM 1

49172  word   SP, stack pointer, LSB first

49174  	      end of file

Once the snapshot is loaded into the Spectrum memory, the remaining registers can be found on the machine stack:

(SP+0)  byte  F register (P/V flag signals interrupts ON or OFF)

(SP+1)  byte  R register

(SP+2)  byte  F register (this is the valid one!)

(SP+3)  byte  A register

(SP+4)  word  PC, Program Counter, LSB first

When these values are fetched, the SP must be increased by 6 before re-starting Z80 code emulation.

 @{" 11.00  Development history and future                  " LINK 11.00}

@ENDNODE



@NODE 13.60 ".SP file format"

13.60 .SP file format

Author: Pedro Gimeno

Program: Spectrum

Machine: PC

Country: Spain

Extension: .SP

Length: 49190 bytes

38 bytes of header information as follows

Byte	Description

0	"S" File Identifier

1	"P" File Identifier

2	Data length low

3	Data length high

4	Load address low

5	Load address high

6	c_reg

7	b_reg

8	e_reg

9	d_reg

10	l_reg

11	h_reg

12	f_reg

13	a_reg

14	ix_L

15	ix_H

16	iy_L

17	iy_H

18	c_alt

19	b_alt

20	e_alt

21	d_alt

22	l_alt

23	h_alt

24	f_alt

25	a_alt

26	r_reg ?

27	i_reg

28	sp_L

29	sp_H

30	pc_L

31	pc_H

32	unknown

33	unknown

34	border colour

35	unknown

36    	Interrupt bits

	bit 1 = ints on/off

	bit 2 = intmode (0=1 1=2)

37	unknown

38	48K Data block starts here

NOTE: I had to work this one out myself so there are a number of unknown bytes. I'd be interested to hear what they signify.

@ENDNODE



@NODE 14.00 "Appendix B - List of tooltypes"

14.00 List of tooltypes

SNP_DRAWER={file path}

SNP_FILE={file name}

SNP_PATTERN={pattern}

STD_DRAWER={file path}

STD_FILE={file name}

STD_PATTERN={pattern}

DIS_DRAWER={file path}

DIS_FILE={file name}

DIS_PATTERN={file pattern}

PRT_FILE={printer device or file}

EASYKEYS=TRUE|FALSE

HIRES=TRUE|FALSE

COMPRESSION=TRUE|FALSE

CREATEICONS=TRUE|FALSE

AUTORUN=TRUE|FALSE

TAPELOAD=TRUE|FALSE

VOLUME=OFF|QUIET|NORMAL|LOAD

QUIET={0 - 64}

NORMAL={0 - 64}

LOUD={0 - 64}

@ENDNODE



