Portable Font Resource (PFR) - application/font-tdpfr
                       MIME Sub-type Registration



Collins                      Informational                      [Page 1]

RFC 3073                          PFR                         March 2001


3. PFR Definition

   PFR (Portable Font Resource) is defined by Bitstream Inc. in [PFR].
   The documentation can be obtained from Bitstream at:

   Bitstream Inc.
   215 First Street
   Cambridge MA 02142 U.S.A.
   Phone: +1 617 497 6222
   Fax:   +1 617 868 0784

   A copy of this specification can also be found at:

   http://www.bitstream.com/pfrspec/index.html

   While a brief scope and feature description is provided in this
   section as background information, the reader is directed to the
   original PFR specification [PFR] to obtain complete feature and
   technical details.

3.1 PFR Scope

   A PFR contains a set of glyph shapes.  Each glyph shape is associated
   with a character code.  The PFR format is designed to be both compact
   and platform-independent.  It is intended to facilitate accurate
   rendering of fonts in environments whether or not they have the
   required fonts already installed.

   The glyph shape definitions in a PFR are resolution-independent.
   This allows glyph definitions to be displayed or printed on devices
   with a wide variety of resolutions.  It also allows glyphs to be
   rendered at any size.
 
https://datatracker.ietf.org/doc/html/rfc3073

1 Font Format Specification
The scaleable outline format representation will be referred to as a portable font
resource (PFR) that can be stored statically in ROM or hard disks, or moved
dynamically within a network. This dynamic aspect is the reason the font resource
is often referred to as portable. The file representation of the PFR is designed with
two, sometimes conflicting, goals in mind. One is to minimize the size of the file
representation; the other is to provide the information in a way that optimizes
rendering performance even if the amount of memory is limited at playback time.
A Portable Font Resource consists of the following sections in order:
• PFR header
• Logical font directory
• Logical font section
• Physical font section
• Glyph program strings
• PFR trailer
The PFR header contains global information about the PFR and the fonts contained
within it.
The logical font directory consists of a table of pointers to the logical fonts
contained within the PFR.
The logical font section contains the logical font records themselves. Each logical
font record defines the transformation (size, oblique effect, condense, expand) to be
applied to a physical font. It therefore represents an instance of a physical font.
The physical font section consists of a set of physical font records. Each physical
font record contains information about one physical font contained within the PFR
including a table of character codes defined for that physical font. A physical font
record may optionally be immediately followed by bitmap size and bitmap character
table records associated with that physical font.
The glyph program strings section contains the definition of the shapes of each of
the characters defined within the font. Both outline and bitmap image shapes are
defined by glyph program strings. Glyph program strings are shared across all
physical fonts within a PFR.
All integers are written most-significant bit first.
Many of the concepts used in this specification are based on the Adobe Type 1 font
format, version 1.1 (Addison-Wesley Publishing Company, Inc., 1991). 
Coding of Outline Fonts V1.2 12/03/02 Page 4
2 PFR Header
The PFR header is the first block of data in a Portable Font Resource. It contains
global information about the PFR and its constituent fonts.
The size of the PFR header is a fixed 58 bytes. Its structure is as follows:
Table A-1. PFR Header
Syntax Number of bits Mnemonic
pfrHeader() {
 pfrHeaderSig 32 bslbf
 pfrVersion 16 uimsbf
 pfrHeaderSig2 16 bslbf
 pfrHeaderSize 16 uimsbf
 logFontDirSize 16 uimsbf
 logFontDirOffset 16 uimsbf
 logFontMaxSize 16 uimsbf
 logFontSectionSize 24 uimsbf
 logFontSectionOffset 24 uimsbf
 physFontMaxSize 16 uimsbf
 physFontSectionSize 24 uimsbf
 physFontSectionOffset 24 uimsbf
 gpsMaxSize 16 uimsbf
 gpsSectionSize 24 uimsbf
 gpsSectionOffset 24 uimsbf
 maxBlueValues 8 uimsbf
 maxXorus 8 uimsbf
 maxYorus 8 uimsbf
 physFontMaxSizeHighByte 8 uimsbf
 zeros 6 bslbf
 pfrInvertBitmap 1 bslbf
 pfrBlackPixel 1 bslbf
 bctMaxSize 24 uimsbf
 bctSetMaxSize 24 uimsbf
 pftBctSetMaxSize 24 uimsbf
 nPhysFonts 16 uimsbf
 maxStemSnapVsize 8 uimsbf
 maxStemSnapHsize 8 uimsbf
 maxChars 16 uimsbf
 }
pfrHeaderSig: A byte string which indicates the file type and format. This field
shall be set to the constant value 0x50465230 representing the ASCII string “PFR0”.
pfrVersion: An unsigned integer indicating

https://web.archive.org/web/20040922190142/http://www.bitstream.com/font_rendering/pdfs/pfrspec1.2.pdf

# downloadable fonts for browser (prints type) anthon@mnt.org
# https://tools.ietf.org/html/rfc3073
0	string		PFR1		Portable Font Resource font data (new)
>102	string		>0		\b: %s
0	string		PFR0		Portable Font Resource font data (old)
>4	beshort		>0		version %d

https://github.com/file/file/blob/25d5933179067a438c812637e230353e1bdae38d/magic/Magdir/fonts
