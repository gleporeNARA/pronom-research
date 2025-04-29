Audio File Format Specifications
File Description: IRCAM soundfile / bicsf (Berkeley/IRCAM/Carl Sound Format) file
File Extension: Commonly .sf
File Byte Order: Big-endian or little-endian

Prof. Peter Kabal, MMSP Lab, ECE, McGill University: Last update: 2017-01-20
IRCAM File Specifications
The IRCAM Soundfile format originated from the Institut de Recherche et Coordination Acoustique / Musique in Paris. This format has been subsequently used in a number of programs.

Header Structure
The header structure is simple but the codes used have not always been consistent. The header size is 1024 bytes. The first part is fixed, the last part can be used for comments and other information.

Offset	Length	Type	Contents
0	4	character	Identifier
4	4	float	Sampling frequency
8	4	integer	Number of interleaved channels
12	4	integer	Data type
16	-	-	Additional information
File Identifier
The identifier for VAX machines was 107364 or \144\243\001\0 in little-endian byte order. The second last byte was then appropriated to indicate the type of machine.

\001 - VAX
\002 - Sun
\003 - MIPS (Digital DECstation and SGI)
\004 - NeXT
Note that the two MIPS machines have different byte-orders.

The present situation is that 7 codes seem to be accepted. In the following table the identifier is given in the order in which it is stored in the file.

Identifier	File Byte Order	Machine code
\144\243\001\0	Little-endian	VAX (native)
\0\001\243\144	Big-endian	VAX
\144\243\002\0	Big-endian	Sun (native)
\0\002\243\144	Little-endian	Sun
\144\243\003\0	Little-endian	MIPS (DECstation)
\0\003\243\144	Big-endian	MIPS (SGI)
\144\243\004\0	Big-endian	NeXT
The reasons for this bizarre situation are as follows. Originally the IRCAM software ran on a VAX (first row). When Sun computers came along, they used the same code, but byte reversed all data including the header (second row). After machine codes were introduced, the identifier was changed for Sun machines (third row).
Recent programs will write files with either a VAX code (first row) if the machine is little-endian or a Sun code (third row) if the machine is big-endian.
Sampling Frequency
The float sampling frequency can be problematic. For VAX computers, the float format is different from the IEEE format used in modern machines. However, the case where a VAX machine code was used, but the file byte order is big-endian, the file was probably written on a Sun computer which does use IEEE floats. See the description of INRS-Telecom Speech Files for a table look-up approach for standard sampling frequencies (VAX floating point format) frequencies. Alternately, a web search will find routines for converting VAX float values to IEEE float values.

A reasonable strategy for modern files is to assume that floats are in IEEE float format.

https://web.archive.org/web/20191106180241/http://www-mmsp.ece.mcgill.ca/Documents/AudioFormats/IRCAM/IRCAM.html
