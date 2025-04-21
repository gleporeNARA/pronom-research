This appendix details the Parameter-Topology file format used extensively by the AMBER software suite for biomolecular simulation and analysis, referred to as the prmtop file for short. The format specification of the
AMBER topology file was written initially over a decade ago and posted on
http://ambermd.org/formats.html. I have recently expanded that document
to account for the drastic change to the file format that occurred with the
2004 release of Amber 7. The pre-Amber 7 format (old format) is described
more briefly afterwards, although each section provided in the original format
contains exactly the same information as the newer version.
This appendix also details the format changes and additions introduced
by chamber—the program that translates a CHARMM parameter file (PSF)
into a topology file that can be used with the sander and pmemd programs
in AMBER.
This appendix draws from the information on http://ambermd.org/formats.html
that was added by both me and others, as well as the experience I gleaned
while writing the ParmEd program and working with the various codes in
AMBER.
As a warning, the prmtop file is a result of bookkeeping that becomes
increasingly complex as the system size increases. Therefore, hand-editing
the topology file for all but the smallest systems is discouraged—a program
or script should be written to automate the procedure.
1 Layout
The first line of the Amber topology file is the version string. An example is
shown below in which XX is replaced by the actual date and time.
%VERSION VERSION_STAMP = V0001.000 DATE = XX/XX/XX XX:XX:XX

http://ambermd.org/prmtop.pdf
