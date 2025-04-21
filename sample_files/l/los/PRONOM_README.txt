10 Grid File Formats
All versions of NADCON and GEOCON used grids. The NADCON grids (prior to NADCON 5) had
extensions of “las” and “los” (for “latitude, seconds” and “longitude, seconds”), while GEOCON grids
had extensions of “.b” (for “binary”). Each format is detailed below.
10.1“las” and “los” grids (NADCON 4.2 and earlier)
Grid files associated with NADCON (4.2 and earlier), ended in “las” or “los”. The las/los format
consists of a mix of ASCII and binary data.
10.1.1 Header
Each las/los grid begins with a variable length header of mixed ASCII and binary data. The total number
of bytes in this header is dependent upon the number of columns in the grid according to this formula:
Header_bytes = (nc + 1) x 4
Where “nc” is the number of columns in the grid. The header consists of two components: A 96 byte
metadata field and blanks. There will always be 96 bytes in the metadata field (consisting of a mix of 64
ASCII bytes and 32 binary bytes), which leads to the first problem with this format: Any grid with less
than 23 columns can not be properly stored in NADCON format, as the header will be set to under 96
bytes and the metadata will not fit. The number of bytes of blank data, presuming a grid of over 23
columns, will be:
Header_blank_bytes = (nc + 1) x 4 - 96
The metadata component of the header consists of the following values:
Table 10-1: Header contents for .las/.los format
Bytes Data type Value
56 ASCII “NADCON EXTRACTED REGION” (followed by 33 blanks)
8 ASCII “NADGRD” (followed by 2 blanks) 

https://geodesy.noaa.gov/library/pdfs/NOAA_TR_NOS_NGS_0063.pdf

https://www.ngs.noaa.gov/PC_PROD/NADCON/Readme.htm
