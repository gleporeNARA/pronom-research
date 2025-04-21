AGP Specification v2.1

Introduction
File Format
Describing Breaks and Continuity
Describing Scaffolds with Unknown Orientation
Validation
Examples
Introduction:
What it is: Describes the assembly of a larger sequence object from smaller objects. The large object can be a contig, a scaffold (supercontig), or a chromosome. Each line (row) of the AGP file describes a different piece of the object, and has the column entries defined below. Extended comments follow.

What it is not: neither a description of how sequence reads were assembled, nor a description of the alignments between components used to construct a larger object. Not all of the information in proprietary assembly files can be represented in the AGP format. It is also not for recording the spans of features like repeats or genes.



The use of comment lines, starting with a # symbol, at the head of the file is encouraged. Useful information to include in such headers is:

agp-version pragma (e.g. ##agp-version 2.1)

https://www.ncbi.nlm.nih.gov/assembly/agp/AGP_Specification/#EXAMPLES
