IMOD Binary File Format. Version 1, Revision 2
The IMOD binary file format is similar to the IFF format standard in that it uses chunk id's for data headings. Each chunk id is 4 bytes long and is defined as a string of 4 characters. This is the format used by IMOD Version 2.0 and onward. All numbers are stored in big-endian format regardless of machine architecture. In the descriptions of flags below, bits are numbered from 0.

The File Header
All binary model files begin with a 8 byte ID followed by a 232 byte header. The ID format begins with the IMOD file id, (IMOD = 0x494d4f44) followed by the 4 byte version id, (V1.2 = 0x56312e32). The end of the file is marked by an end of data marker, (IEOF = 0x49454f46).

https://bio3d.colorado.edu/imod/doc/binspec.html
