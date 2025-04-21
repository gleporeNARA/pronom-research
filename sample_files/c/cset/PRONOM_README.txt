**********************************************************************
       GNU Aspell mkchardata Perl script and Unicode data file
**********************************************************************

This version of mkchardata will only work for GNU Aspell 0.60 or
better.  It will not work for Aspell 0.50 or any of Aspell 0.51/0.60
snapshots before 2004-03-02

The mkchardata Perl script will read in a textual reference table(s)
and convert them into Aspell character data file(s).  Its usage is

  mkchardata <textual reference table(s)>

The files "unicode.txt" and "decomp.txt" are expected to be in the
current directory.

mkchardata will convert each textual reference table to an Aspell
character data file and normalization map file.  It expects the table
to be in the form

  0x?? 0x???? # ...

Where 0x?? is the 8-bit character value in hex and 0x???? is the
Unicode value.  Anything after the '#' is ignored.  Ranges can also be
specified in the form

0x??..0x?? = 0x????..0x???? # ...

The table may alternatively have the form:

  =?? U+???? ...


Another file can be included by using:

  include <file name>


The directive

  == <charset>

indicates that the _unicode mapping_ is the same for the current file as it
is in <charset>.  The only difference is the character properties.


The directives:

  no-latin
  letter <char>
  letters <char> <char> ...
  vowel <char>
  vowels <char> <char> ...
  case <upper> <lower> [<title>]

can be used to customize the character properties.  None of these effect
the actual mapping.

The "no-latin" line can be used to avoid marking Latin letters as part
of a word.  It is useful if the charset is based on an exiting one
which maps the Latin letters but your language in not written using
the Latin script.

The "letter" or "letters" directives can be used to indicate that an
accented letter is really a unique letter and not a letter with an
accent.  Each <char> is a single pre-composed character in UTF-8 or a
Unicode code point of the form (U+)XXXX where XXXX is in hex.

The "vowel" or "vowels" directive can be used to identify the vowels
of a language.  If used it is necessary to list ALL vowels of the
language.  If not specified than the information is taken from the
unicode data file.  Specifying a characters here implies "letter".

The "case" directive can be used to identify special case rules which
are different from the Unicode default such as the rules involving
the dotless I for Turkish.

See the file l-tr.txt for an example of the "letter" and "case"
directive.


As of Aspell 0.60 the following characters may be remapped:

  01-0F (  1- 15) # Control characters
  11-1F ( 17- 31) # Control characters
  41-5A ( 65- 90) # Uppercase Latin alphabet
  61-7A ( 97-122) # Lowercase Latin alphabet
  80-FF (128-255)

Giving you a total of 210 characters to work with.


If your language uses characters not found in iso-8859-1 (code points
U+00 to U+FF) you might want to look over unicode.txt and make sure
everything is correct for your language.  If you find any errors
please send them to me at kevina@gnu.org.


https://github.com/GNUAspell/aspell-lang/blob/master/README

https://github.com/GNUAspell/aspell-lang/blob/master/examples/sample.cset
