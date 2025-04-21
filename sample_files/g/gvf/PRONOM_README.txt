NOTE FROM GL: THIS FORMAT SHOULD HAVE PRIORITY OVER GFF FORMAT. BOTH FORMATS START WITH ##gff-version, BUT THE GVF FORMAT HAS AN ADDITIONAL HEADER ##gvf-version.


The Genome Variation Format (GVF) is a very simple file format for describing sequence_alteration features at nucleotide resolution relative to a reference genome. The GVF format was published in Reese et al., Genome Biol., 2010;11(8):R88 A standard variation file format for human genome sequences. We would like to acknowledge the contributing groups for their support.

GVF is a type of GFF3 file with additional pragmas and attributes specified. The GVF format has the same nine-column tab-delimited format as GFF3. All of the requirements and restrictions specified for GFF3 apply to the GVF specification as well and thus a GVF file should be fully compatible with code used for processing and displaying GFF3 files. In addition, GVF adds additional constraints to some of these columns as described below.

See the GFF3 Specification for more details about GFF3.



https://github.com/The-Sequence-Ontology/Specifications/blob/master/gvf.md
