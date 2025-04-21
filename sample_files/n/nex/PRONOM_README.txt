The extensible NEXUS file format is widely used in bioinformatics. It stores information about taxa, morphological and molecular characters, distances, genetic codes, assumptions, sets, trees, etc.[1] Several popular phylogenetic programs such as PAUP*,[2] MrBayes,[3] Mesquite,[4] MacClade[5] and SplitsTree[6] use this format.


Contents
1	Syntax
2	See also
3	References
4	External links
Syntax
A NEXUS file is made out of a fixed header #NEXUS followed by multiple blocks. Each block starts with BEGIN block_name; and ends with END;. The keywords are case-insensitive. Comments are enclosed inside square brackets [...].[7]



https://en.wikipedia.org/wiki/Nexus_file

NEXUS is a file format designed to contain systematic data for use by computer programs. The goals of the format are to allow future expansion, to include diverse kinds of information, to be independent of particular computer operating systems, and to be easily processed by a program. To this end, the format is modular, with a file consisting of separate blocks, each containing one particular kind of information, and consisting of standardized commands. Public blocks (those containing information utilized by several programs) house information about taxa, morphological and molecular characters, distances, genetic codes, assumptions, sets, trees, etc.; private blocks contain information of relevance to single programs. A detailed description of commands in public blocks is given. Guidelines are provided for reading and writing NEXUS files and for extending the format.

https://academic.oup.com/sysbio/article/46/4/590/1629695
