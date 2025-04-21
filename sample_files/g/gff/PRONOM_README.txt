Generic Feature Format Version 3 (GFF3)
Summary
Author: Lincoln Stein
Date: 18 August 2020
Version: 1.26

Although there are many richer ways of representing genomic features via XML and in relational database schemas, the stubborn persistence of a variety of ad-hoc tab-delimited flat file formats declares the bioinformatics community's need for a simple format that can be modified with a text editor and processed with shell tools like grep. The GFF format, although widely used, has fragmented into multiple incompatible dialects. When asked why they have modified the published Sanger specification, bioinformaticists frequently answer that the format was insufficient for their needs, and they needed to extend it. The proposed GFF3 format addresses the most common extensions to GFF, while preserving backward compatibility with previous formats. The new format:

Adds a mechanism for representing more than one level of hierarchical grouping of features and subfeatures.
Separates the ideas of group membership and feature name/id.
Constrains the feature type field to be taken from a controlled vocabulary.
Allows a single feature, such as an exon, to belong to more than one group at a time.
Provides an explicit convention for pairwise alignments.
Provides an explicit convention for features that occupy disjunct regions.

https://github.com/The-Sequence-Ontology/Specifications/blob/master/gff3.md
