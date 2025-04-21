A data file which conforms to the standard for the interchange of MT, EMAP, 
or similar electrical geophysical data is referred to here as an Electrical 
Data Interchange (EDI) file.

Purpose and Scope of the Standard

The standard is intended to provide a complete, orthogonal, unambiguous 
description of a data set. The standard has been designed such that the data 
in an EDI file can be interpreted without referencing a base map or other 
field documents. Within an EDI file, concepts specific to a particular 
acquisition system do not drive the organization of the data.

Although the format is rigorously specified, it has been designed to be 
flexible and extensible. The inclusion of complete spatial information is 
inherent in the standard. The format described by the standard was designed 
for the interchange and archival of data. It is not intended for use as a 
working format.

The standard defines the physical format and media on which EDI files may 
reside. Although the only media currently specified by the standard is 
magnetic tape, the use of non-standard media is discussed within the 
standard.

The standard provides a consistent set of definitions for geophysical 
quantities and units. These include units, phase conventions, and similar 
concepts. It supports a variety of processing alternatives and includes 
escape mechanisms to handle experimental and non-standard data.

The standard specifies the syntax and semantics for an EDI file with the 
same precision that a computer language is specified by its reference 
manual. In fact, the format for an EDI file is analogous to a source code 
file for a computer program. A program which reads EDI files and converts 
the data into a usable form is analogous to a compiler.

General Characteristics of Electrical Data Interchange (EDI) Files

EDI files are ASCII text files. Although such a file is made up of a series 
of data records, the file is considered to be a character stream. For 
handling special cases with large amounts of data, the standard makes 
provisions for parallel binary data files which are referenced by the EDI 
file. However, these are the exception rather than the rule and will not be 
discussed here.

Comments may be embedded within EDI files, allowing special annotations to 
be included. Additionally, there is a special provision for a section of 
free-form text to be included with each file. This section serves a special 
purpose, embedding a description of the system dependent parameters related 
to the acquisition and processing of a particular data set.

Building Blocks for EDI Files

EDI files are constructed from Data Blocks (or sometimes simply, Blocks). A 
data block consists of a keyword, optionally followed by one or more 
options, optionally followed by a data set.

All data blocks begin with a keyword. A keyword always begins with the 
character >. Examples of keywords are >HEAD, >SPECTRA, >FREQ, and >ZXXR. 
Over one hundred keywords are defined for EDI files.

http://www.mtnet.info/docs/ediformat.txt
