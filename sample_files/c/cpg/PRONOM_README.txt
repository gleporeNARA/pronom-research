User-defined 8-bit encodings. In addition to predefined encodings PDFlib supports
user-defined 8-bit encodings. These are the way to go if you want to deal with some
character set which is not internally available in PDFlib, such as EBCDIC character sets
different from the one supported internally in PDFlib. PDFlib supports encoding tables
defined by PostScript glyph names, as well as tables defined by Unicode values.
The following tasks must be done before a user-defined encoding can be used in a
PDFlib program (alternatively the encoding can also be constructed at runtime using
PDF_encoding_set_char( )):
> Generate a description of the encoding in a simple text format.
> Configure the encoding as PDFlib resource (see Section 3.1.3, »Resource Configuration
and File Search«, page 60).
> Provide a font that supports all characters used in the encoding.
The encoding file lists glyph names and codes line by line. The following excerpt shows
the start of an encoding definition:
% Encoding definition for PDFlib, based on glyph names

https://www.pdflib.com/fileadmin/pdflib/pdf/manuals/PDFlib-9.0.1-tutorial.pdf
