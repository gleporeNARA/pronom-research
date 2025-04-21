Affymetrix PSI Data File Format
PSI FILE
Description

The PSI, probe set information, file contains the probe set names and number of probe pairs for expression and genotyping arrays. This information is also stored in the CDF file and in the same order. The intension of this file is to quickly obtain the probe set names on an array without having to parse the entire CDF file.

Format

The format of the PSI file is ASCII text.

The first line of the file contains the number of probe set names preceded by the string: "#Probe Sets: ".

The remaining lines contain (tab separated) an unused number, the probe set name and the number of probe pairs in the probe set. The unused number in the first column is referred to as the unit number in the CDF file. This number is not used by any Affymetrix software.

https://www.affymetrix.com/support/developer/powertools/changelog/gcos-agcc/psi.html
