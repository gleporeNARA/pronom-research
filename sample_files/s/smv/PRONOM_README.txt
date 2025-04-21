SMV file format

The SMV file format is a broad standard x-ray diffraction image file format that appeared with the first CCD-based x-ray detectors. SMV stands for Super Marty View, a program written by Dr. Martin "Marty" Stanton to display the images form the original SBC CCD detector. The format is largely informal, the only rigid rule is that the file header is text and begins with the string: "{\nHEADER_BYTES=", where \n is the newline character (ASCII decimal code 13). This string must be followed with an ASCII number indicating the number of bytes in the header before the start of the image data. The header itself is generally expected to be all text and describe the nature of this image data in a keyword=value type format. The most common SMV header is 512 bytes. So common in fact that many data processing programs assume that it is without reading the HEADER_BYTES entry. An example of such a 512-byte header is given here:


{
HEADER_BYTES=  512;
DIM=2;
BYTE_ORDER=little_endian;

https://strucbio.biologie.uni-konstanz.de/ccp4wiki/index.php/SMV_file_format
