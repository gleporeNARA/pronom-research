OFF file format specification (written by Jason Swails, 2/20/2011):

This document describes the format of Amber OFF library files. You may look at any of the .lib/.off
files in $AMBERHOME/dat/leap/lib as examples. Each section of the OFF file is begun with "!!". This
document is arranged such that sections are separated by lines of "++++". An example line is given
and each element of the line is described in more detail under "Description:". This will also typically
tell you how many of those records appear in that section.

Key: 
RES  = residue or unit name -- it is specified in each context
AN   = atom name
AT   = atom type


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
!!index array str

http://ambermd.org/doc/OFF_file_format.txt


Amber is a suite of biomolecular simulation programs. It began in the late 1970's, and is maintained by an active development community; see our history page and our contributors page for more information.

The term "Amber" refers to two things. First, it is a set of molecular mechanical force fields for the simulation of biomolecules (these force fields are in the public domain, and are used in a variety of simulation programs). Second, it is a package of molecular simulation programs which includes source code and demos.

Amber is distributed in two parts: AmberTools21 and Amber20. You can use AmberTools21 without Amber20, but not vice versa. See the Download Amber link for information on how to download the code.

http://ambermd.org/
