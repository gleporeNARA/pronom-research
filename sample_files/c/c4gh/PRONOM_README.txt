3.2 Header
The file starts with a header, with the following structure:
struct Header {
byte magic_number[8];
le_uint32 version;
le_uint32 header_packet_count;
Encrypted_header_packet header_packets[header_packet_count]
};
The magic number is the ASCII representation of the string “crypt4gh”.
The version number is stored as a four-byte little-endian unsigned integer. The current version number is 1.
The current byte representation of the magic number and version is:
0x63 0x72 0x79 0x70 0x74 0x34 0x67 0x68 0x01 0x00 0x00 0x00
============= magic_number============= ===== version =====

http://samtools.github.io/hts-specs/crypt4gh.pdf
