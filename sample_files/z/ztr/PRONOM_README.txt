ZTR format for storing chromatogram data from DNA sequencing instruments.

ZTR SPEC v1.2
Header
The header consists of an 8 byte magic number (see below), followed by a 1-byte major version number and 1-byte minor version number.

Changes in minor numbers should not cause problems for parsers. It indicates a change in chunk types (different contents), but the file format is the same.

The major number is reserved for any incompatible file format changes (which hopefully should be never).

/* The header */
typedef struct {
    unsigned char  magic[8];	  /* 0xae5a54520d0a1a0a (be) */
    
    http://staden.sourceforge.net/ztr.html
