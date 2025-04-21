All Type 1 fonts must begin with the comment:
%!
This enables a file containing a PostScript program to be easily
identified as such. It is important that every Type 1 font pro-
gram—indeed, every PostScript language program—start with a
“%!” comment; otherwise, it may not be given the appropriate
handling in some operating system environments.
The remainder of the first line (after the “%!”) should identify the
file as a conforming Type 1 font program. A Type 1 font program
conforms to the specified version of the Type 1 font format if the
first line consists of the following characters:




https://wwwimages2.adobe.com/content/dam/acom/en/devnet/font/pdfs/T1_SPEC.pdf
