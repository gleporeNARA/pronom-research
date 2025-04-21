INTRODUCTION
The MTZ file format is used for the storage of reflection data. The file contains the data and a header of metadata. The former is held as a table with rows representing reflections and columns representing different quantities for each reflection. The latter aims to make the file self-contained by including all necessary information, such as symmetry operations, cell dimensions, etc. The MTZ file is a flat-file representation of a particular data model. We first describe the data model, and then the particular implementation used.

THE MTZ FILE FORMAT
General description
The MTZ reflection file format uses fixed length logical 'records' written in a byte stream with, in general, four bytes for each data item (REAL*4), with a minimum of 3 columns and currently a maximum of 200 columns of data per record, although these limits could easily be increased. Additional information (title, cell dimensions, column labels, symmetry information, resolution range, history information and, if necessary, batch titles and orientation data) is contained in labelled header records. The columns of the reflection data records are identified by alphanumeric labels held as part of the file header information. The user relates the item names used by the program to the required data items, as identified by the labels, by means of assignment statements in the program control data.

Record Formats

The file contains basically two classes of records - header records and reflection data records. A standard reflection data file contains the following items, in the order given, not necessarily all items have to be present:

The first 4 bytes should be "MTZ " (if the first 3 characters are not "MTZ" then the library will complain that the file is not an MTZ file). This is followed by an integer indicating the location of the header records (which occur at the end after the reflections records). The integer occupies sizeof(int) bytes (typically 4).

http://www.sb.fsu.edu/~xray/Manuals/CCP4/mtzformat.html
