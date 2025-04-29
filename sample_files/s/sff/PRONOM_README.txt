Standard Flowgram Format (SFF)
SFF was designed by 454 Life Sciences, Whitehead Institute for Biomedical Research and Sanger Institute.

This document describes proposed changes which will allow the Trace Archive to efficiently incorporate data generated in formats such as those used by the 454 Life Sciences' system.

The definition of a Standard Flowgram Format (SFF), similar to the SCF format, to hold the "trace" data for 454 reads

The proposed SFF file format is a container file for storing one or many 454 reads. 454 reads differ from standard sequencing reads in that the 454 data does not provide individual base measurements from which basecalls can be derived. Instead, it provides measurements that estimate the length of the next homopolymer stretch in the sequence (i.e., in "AAATGG", "AAA" is a 3-mer stretch of A's, "T" is a 1-mer stretch of T's and "GG" is a 2-mer stretch of G's). A basecalled sequence is then derived by converting each estimate into a homopolymer stretch of that length and concatenating the homopolymers.

The file format consists of three sections, a common header section occurring once in the file, then for each read stored in the file, a read header section and a read data section. The data in each section consists of a combination of numeric and character data, where the specific fields for each section are defined below. The sections adhere to the following rules:

The standard Unix types uint8_t, uint16_t, uint32_t and uint64_t are used to define 1, 2, 4 and 8 byte numeric values.
All multi-byte numeric values are stored using big endian byteorder (same as the SCF file format).
All character fields use single-byte ASCII characters.
Each section definition ends with an "eight_byte_padding" field, which consists of 0 to 7 bytes of padding, so that the length of each section is divisible by 8 (and hence the next section is aligned on an 8-byte boundary).
Common Header Section
The common header section consists of the following fields:

                

magic_number               uint32_t

The magic_number field value is 0x2E736666, the uint32_t encoding of the string ".sff"

https://www.ncbi.nlm.nih.gov/Traces/trace.cgi?cmd=show&f=formats&m=doc&s=format#sff
