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

1.3 The header section
Each header line begins with the character ‘@’ followed by one of the two-letter header record type codes
defined in this section. In the header, each line is TAB-delimited and, apart from @CO lines, each data field
follows a format ‘TAG:VALUE’ where TAG is a two-character string that defines the format and content of
VALUE. Thus header lines match /^@(HD|SQ|RG|PG)(\t[A-Za-z][A-Za-z0-9]:[ -~]+)+$/ or /^@CO\t.*/.
The following table describes the header record types that may be used and their predefined tags. Tags
listed with ‘*’ are required; e.g., every @SQ header line must have SN and LN fields. As with alignment optional
fields (see Section 1.5), you can freely add new tags for further data fields. Tags containing lowercase letters
are reserved for local use and will not be formally defined in any future version of this specification.5
Tag Description
@HD File-level metadata. Optional. If present, there must be only one @HD line and it must be the
first line of the file.
VN* Format version. Accepted format: /^[0-9]+\.[0-9]+$/.
SO Sorting order of alignments. Valid values: unknown (default), unsorted, queryname and
coordinate. For coordinate sort, the major sort key is the RNAME field, with order defined
by the order of @SQ lines in the header. The minor sort key is the POS field. For alignments
with equal RNAME and POS, order is arbitrary. All alignments with ‘*’ in RNAME field follow
alignments with some other value but otherwise are in arbitrary order. For queryname sort, no
explicit requirement is made regarding the ordering other than that it be applied consistently
throughout the entire file.6

@SQ Reference sequence dictionary. The order of @SQ lines defines the alignment sorting order.
SN* Reference sequence name. The SN tags and all individual AN names in all @SQ lines must be
distinct. The value of this field is used in the alignment records in RNAME and RNEXT fields.
Regular expression: [:rname:∧
*=][:rname:]*
LN* Reference sequence length. Range: [1, 2
31 − 1]
AH Indicates that this sequence is an alternate locus.8

http://samtools.github.io/hts-specs/SAMv1.pdf
