The OBF File Format
While it is recommended that you use the ANSI-C or C++ interface provided by the OmasIo dll to read and write OBF files the file structure is relatively simple and it should be straightforward to implement a reader or writer for OBF files. A native OBF file starts with the following binary file header. Please note that all structures saved in binary format into an OBF file have packsize 1 and that all binary data is stored in little endian byte order (i.e. the byte order used on x86, x64, Itanium and Alpha platforms)

typedef struct _OBF_FILE_HEADER
{
     //! Must be "OMAS_BF\n" followed by 0xff 0xff
     char magic_header[10];
     //! The actual format version of the file.
     omas_UINT32 format_version;
     //! The position of the first stack header in the file
     omas_UINT64 first_stack_pos;
     //! Length of following UTF8 description (bytes).
     omas_UINT32 descr_len;
} OBF_FILE_HEADER;
The header is immediately followed by descr_len bytes of a UTF-8 string containing the file description which is preferably in xml format such that it can be parsed into a OPropstruct by the function omas_xml2prop() described in a later chapter.

From format version 2 on the file description string is followed by the meta data position

omas_UINT64 meta_data_position_ ;
The header members are

magic_header
The magic header identifies compatible OBF files and no read routine should go on if it does not match.

https://imspectordocs.readthedocs.io/en/latest/fileformat.html
