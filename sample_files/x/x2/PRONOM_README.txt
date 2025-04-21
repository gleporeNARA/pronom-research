THIS IS AN UPDATE TO A PREVIOUS SIGNATURE I SENT. UPDATE INCLUDES BZIP AND TZIP AS LEGAL STRINGS IN SIGNATURE.


X file format reference (DirectX 9)
05/31/2018
2 minutes to read
￼ ￼
This section contains reference information for the DirectX (.x) file format.

Binary Encoding
Text Encoding


Reserved Words, Header, and Comments
05/31/2018
2 minutes to read
￼ ￼
The table below shows which words are reserved and must not be used.

RESERVED WORDS, HEADER, AND COMMENTS
ARRAY	DWORD	UCHAR
BINARY	FLOAT	ULONGLONG
BINARY_RESOURCE	SDWORD	UNICODE
CHAR	STRING	WORD
CSTRING	SWORD	
DOUBLE	TEMPLATE	
 

The variable-length header is compulsory and must be at the beginning of the data stream. The header contains the following data.

TABLE 2
Type	Required	Size (in bytes)	Value	Description
Magic Number	x	4	xof	
Version Number	x	2	03	Major version 3
03	Minor version 3
Format Type	x	4	txt	Text File
bin	Binary file
tzip	MSZip compressed text file
bzip	MSZip compressed binary file

https://docs.microsoft.com/en-us/windows/win32/direct3d9/dx9-graphics-reference-x-file-format
