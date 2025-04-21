


Tabix is a bioinformatics software utility for indexing large genomic data files.

https://en.wikipedia.org/wiki/Tabix

DESCRIPTION
Tabix indexes a TAB-delimited genome position file in.tab.bgz and creates an index file (in.tab.bgz.tbi or in.tab.bgz.csi) when region is absent from the command-line. The input data file must be position sorted and compressed by bgzip which has a gzip(1) like interface.

After indexing, tabix is able to quickly retrieve data lines overlapping regions specified in the format "chr:beginPos-endPos". (Coordinates specified in this region format are 1-based and inclusive.)

Fast data retrieval also works over network if URI is given as a file name and in this case the index file will be downloaded if it is not present locally.

The tabix (.tbi) and BAI index formats can handle individual chromosomes up to 512 Mbp (2^29 bases) in length. If your input file might contain data lines with begin or end positions greater than that, you will need to use a CSI index.

http://www.htslib.org/doc/tabix.html


The Tabix index file format
Heng Li
Field Description Type Value
magic Magic string char[4] TBI\1
n ref # sequences int32 t
format Format (0: generic; 1: SAM; 2: VCF) int32 t
col seq Column for the sequence name int32 t
col beg Column for the start of a region int32 t
col end Column for the end of a region int32 t
meta Leading character for comment lines int32 t



http://samtools.github.io/hts-specs/tabix.pdf
