PVK
File Format
Name	PVK
Ontology	
Electronic File Formats
Security
PVK
Extension(s)	.pvk
PVK is a proprietary Microsoft format that stores a cryptographic private key. PVK files are often password-protected.

A PVK file may have an associated .spc (PKCS7) certificate file.

Contents [hide] 
1 Specifications
1.1 PVK File Format
1.1.1 Header
1.1.2 PRIVATEKEYBLOB
1.2 Password Protection
2 Software
Specifications
PVK file information
PVK File Format
PVK is a Microsoft proprietary format for storing a single RSA Private Key. The file consists of a number of Windows cryptographic structures serialised into the file with a header. Because the format uses generic Windows structures but can only store an RSA private key, several of the fields only have one possible value. The format supports password protection using RC4 encryption. The format is little-endian.

Header
The file header is as follows:

Magic	int32	File identification value. Always 0xb0b5f11e.
Reserved	int32	Unknown. Always observed as zero.

http://justsolve.archiveteam.org/wiki/PVK
