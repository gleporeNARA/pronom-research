Affymetrix® CDF Data File Format
CDF FILE
Description

The CDF file describes the layout for an Affymetrix GeneChip array. An array may contain Expression, Genotyping, CustomSeq, Copy Number and/or Tag probe sets. All probe set names within an array are unique. Multiple copies of a probe set may exist on a single array as long as each copy has a unique name.

The information below will describe the following versions:

ASCII text format is used by the MAS and GCOS 1.0 software. This was also known as the ASCII version.
XDA format is used by the GCOS 1.2 and above software. This was also known as the binary or XDA version.
ASCII Text Format

The format of this CDF file is an ASCII text file similar to the Windows INI format.

The file is divided up into sections. The start of each section is defined by a line containing a section name enclosed in square braces. The section names are: "CDF", "Chip", "QCI" (where I ranges from 1 to the number of QC probe sets), "Unit J" (where J is an internal index to uniquely distinguish probe sets), and "Unit J_Block K" (where J and K are internal indices used to distinguish subsets of a probe set). The data in each section is of the format TAG=VALUE.

The "CDF" section contains the version number of the file. The TAGS are:

TAG	Description
Version	The version number. Should always be set to "GC1.0", "GC2.0", "GC3.0", "GC4.0", "GC5.0", "GC6.0", or "GC7.0". This document describes GC3.0, GC4.0, GC5.0, and GC6.0 version CDF files.

https://www.affymetrix.com/support/developer/powertools/changelog/gcos-agcc/cdf.html
