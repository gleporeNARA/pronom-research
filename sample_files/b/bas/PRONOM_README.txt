STOS.BAS
STOS .BAS file structure
BAS_HEADER
{
 10 bytes  Magic "Lionpoulos": STOS basic source
  1 long   length of source excluding the header
  1 long   offset to first memory bank from end of header
15 x
{
  1 byte   bank type
  3 byte   bank length
}
___+
 78 byte   header size
}
 ?? byte  source code
--Nyh 16:18, 10 July 2007 (EDT)

STOS source code format
Bear in mind a Motorola 68000 based system uses big endian format, and 1 word is 4 bytes (32 bits), 1/2 word is 2 bytes (16 bits). To interpret on an Intel / PC based system, you will need to reverse the order of the bytes in each word / 1/2 word.

Credit should go to the writer of Amos file formats page, as I found it very useful, especially for the floating point translation. Also I got the lookup table information from the STOS source code - thanks to lp (Lonny) from the forum for that suggestion.

The source code is a stream of tokenized basic lines. Each line of STOS code equates to:

1/2 word	The length of the line in bytes, including this value and the line number
1/2 word	The line number
x bytes	Tokenized code (length: line length - 4)


https://temlib.org/AtariForumWiki/index.php/STOS.BAS
