1 The SAM Format Specification
SAM stands for Sequence Alignment/Map format. It is a TAB-delimited text format consisting of a header
section, which is optional, and an alignment section. If present, the header must be prior to the alignments.
Header lines start with ‘@’, while alignment lines do not. Each alignment line has 11 mandatory fields for
essential alignment information such as mapping position, and variable number of optional fields for flexible
or aligner specific information.
This specification is for version 1.6 of the SAM and BAM formats. Each SAM and BAM file may
optionally specify the version being used via the @HD VN tag. For full version history see Appendix B.
Unless explicitly specified elsewhere, all fields are encoded using 7-bit US-ASCII 1
in using the POSIX /
C locale. Regular expressions listed use the POSIX / IEEE Std 1003.1 extended syntax.
...
4.2 The BAM format
BAM is compressed in the BGZF format. All multi-byte numbers in BAM are little-endian, regardless of
the machine endianness. The format is formally described in the following table where values in brackets are
the default when the corresponding information is not available; an underlined word in uppercase denotes a
field in the SAM format.
Field Description Type Value
magic BAM magic string char[4] BAM\1

http://samtools.github.io/hts-specs/SAMv1.pdf
