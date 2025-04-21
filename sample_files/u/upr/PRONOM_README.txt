A.1 Resource Database Files
This section describes resource database files, which can be used to locate
resource files, including:
• Description of the format
• Information about the different sections
• A sample resource database file
A.1.1 Format of a Resource Database File
The following restrictions and requirements exist for the format of a resource
database file:
• No line may exceed 255 characters plus the line termination character.
• A backslash (\) quotes any character. For example, the sequence \ABC
represents the characters ABC. In most sections of the file, you may continue
any line by ending it with a backslash immediately before the newline
character (see section A.1.2, “Components of a Resource Database File”).
• A section terminator begins with a period. If you begin any other line with a
period, you must precede the period with a backslash.
• All lines in the file are case-sensitive.
• To include comments on any line, precede them with a percent sign. To avoid
making a percent sign a comment, precede it with a backslash.
• Trailing blanks and tab characters are ignored everywhere in the file, but they
do count toward the 255-character line length limit.
A.1.2 Components of a Resource Database File
A resource database file consists of several components, which must appear in
the database in the following order:
• An identifying string (required)
• A list of resource types in this resource database file (required)
• A directory path (optional)
• The data for each resource type (required)
A. Locating PostScript Language Resources TK- 63
TK
Identifying String Component
The first line of a resource database file must contain either the constant string
PS-Resources-1.0 or the constant string PSResources-Exclusive-1.0. The
difference between the two is explained in section A.3, “Locating Resource
Database Files.”



https://web.archive.org/web/20030803034256/http://partners.adobe.com/asn/developer/pdfs/tn/DPS.refmanuals.TK.pdf

https://metacpan.org/pod/PostScript::Resources

