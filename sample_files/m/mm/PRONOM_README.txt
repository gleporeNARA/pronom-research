MM
The Matrix Market File Format
MM is a data directory which contains files stored in the format used by the Matrix Market for the storage and exchange of matrices.

MM File Characteristics:
ASCII format;
allow comment lines, which begin with a percent sign;
use a "coordinate" format for sparse matrices;
use an "array" format for general dense matrices;
A file in the Matrix Market format comprises four parts:

Header line: contains an identifier, and four text fields;
Comment lines: allow a user to store information and comments;
Size line: specifies the number of rows and columns, and the number of nonzero elements;
Data lines: specify the location of the matrix entries (implicitly or explicitly) and their values.
The header line has the form

%%MatrixMarket object format field symmetry
      
The header line must be the first line of the file, and the header line must begin with the string %%MatrixMarket.

https://people.math.sc.edu/Burkardt/data/mm/mm.html

https://math.nist.gov/MatrixMarket/formats.html#MMformat
