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
5.2 The BAI index format for BAM files
Field Description Type Value
magic Magic string char[4] BAI\1
n ref # reference sequences uint32 t < 2
31
List of indices (n=n ref )
n bin # distinct bins (for the binning index) uint32 t ≤ 37451
List of distinct bins (n=n bin)
bin Distinct bin uint32 t ≤ 37450
n chunk # chunks uint32 t limited35
List of chunks (n=n chunk)
chunk beg (Virtual) file offset of the start of the chunk uint64 t
chunk end (Virtual) file offset of the end of the chunk uint64 t
n intv # 16kbp intervals (for the linear index) uint32 t ≤ 2
17
List of intervals (n=n intv)
ioffset (Virtual) file offset of the first alignment in the interval uint64 t
n no coor (optional) Number of unplaced unmapped reads (RNAME *) uint64 t
The index file may optionally contain additional metadata providing a summary of the number of mapped
and placed unmapped read-segments per reference sequence, and of any unplaced unmapped read-segments.36
This is stored in an optional extra metadata pseudo-bin for each reference sequence, and in the optional
trailing n no coor field at the end of the file.

http://samtools.github.io/hts-specs/SAMv1.pdf
