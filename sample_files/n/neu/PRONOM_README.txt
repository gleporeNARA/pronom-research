C. GAMBIT NEUTRAL FILE FORMAT
GAMBIT neutral files are ASCII files that can be used to import or export
mesh data, boundary condition data (points, edges, or surfaces tagged with
names) or solution-results data in a node- or cell-based format. The following
sections describe the GAMBIT neutral file format. (NOTE: All record data
formats are expressed according to Fortran conventions).
C.1 General Format
C.1.1 Format Overview
Header and End-of-Section Records
Each section of a GAMBIT neutral file begins with a header record. The
header record consists of a 20-character descriptor followed by a neutral-file
version number. (NOTE: The Fortran-style format for the descriptor and version number is (A20,A20).) Each section ends with a record with the string,
“ENDOFSECTION”. For example, the following lines represent a valid set of
data records for the control information section (see below) of a GAMBIT
neutral file.
 CONTROL INFO 1.2.1
** GAMBIT NEUTRAL FILE
Example
PROGRAM: Gambit VERSION: 1.2.1
 4 Jan 2000 13:07:49
 NUMNP NELEM NGRPS NBSETS NDFCD NDFVL
 60 116 1 2 3 3
ENDOFSECTION
The inclusion of header and end-of-section records allows individual sections
of a GAMBIT neutral file to be modified while maintaining backward compatibility. It also allows sections to be easily skipped if they are not relevant
for a given model.
Blanks and Fixed-Field Format
Each record is formatted using fixed fields with at least one blank character
between subsequent fields. The purpose of such formatting is to facilitate
reading by programs of any language. 
General Format GAMBIT NEUTRAL FILE FORMAT
C-2 © Fluent Inc., Mar-06
Comment Records
Any record in the neutral file beginning with a “/” character is considered a
comment record.
C.1.2 Format Description
The following subsections describe the contents and valid data formats for
each section in a GAMBIT neutral file.
Control Information
This section contains summary information for the neutral file.
Header Record Descriptor
CONTROL INFO
Record 1—Neutral-File Header
Format: (A)
Variable Description
HEDNUT String of the form “** GAMBIT NEUTRAL FILE”

https://web.stanford.edu/class/me469b/handouts/gambit_write.pdf
