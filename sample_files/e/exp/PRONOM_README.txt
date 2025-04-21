Affymetrix� EXP Data File Format
EXP FILE
Description

The EXP file contains information captured in the Experiment window of the MAS 5 software. Experiment files are not available in GCOS or LIMS. Experiment information in those applications are stored in a database and are available via the Affymetrix GCOS SDK.

Format

The format of the EXP file is an ASCII text file similar to the Windows INI format.

The first line defines the file type. The value is always: "Affymetrix GeneChip Experiment Information".

The second line contains the version number of the file. The value is always: "Version 1".

The remainder of the file is divided up into sections. The start of each section is defined by a line containing a section name enclosed in square braces. The section names are: "Sample Info", "Fluidics" and "Scanner". The data in each section is of the format TAG<tab>VALUE, where the TAG and VALUE are separated by a tab.

https://www.affymetrix.com/support/developer/powertools/changelog/gcos-agcc/exp.html
