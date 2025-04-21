HMMER is a free and commonly used software package for sequence analysis written by Sean Eddy.[2] Its general usage is to identify homologous protein or nucleotide sequences, and to perform sequence alignments. It detects homology by comparing a profile-HMM to either a single sequence or a database of sequences. Sequences that score significantly better to the profile-HMM compared to a null model are considered to be homologous to the sequences that were used to construct the profile-HMM. Profile-HMMs are constructed from a multiple sequence alignment in the HMMER package using the hmmbuild program. The profile-HMM implementation used in the HMMER software was based on the work of Krogh and colleagues.[3] HMMER is a console utility ported to every major operating system, including different versions of Linux, Windows, and Mac OS.

HMMER is the core utility that protein family databases such as Pfam and InterPro are based upon. Some other bioinformatics tools such as UGENE also use HMMER.

HMMER3 also makes extensive use of vector instructions for increasing computational speed. This work is based upon earlier publication showing a significant acceleration of the Smith-Waterman algorithm for aligning two sequences.[4]

https://en.wikipedia.org/wiki/HMMER

HMMER is used for searching sequence databases for sequence homologs, and for making sequence alignments. It implements methods using probabilistic models called profile hidden Markov models (profile HMMs).

HMMER is often used together with a profile database, such as Pfam or many of the databases that participate in Interpro. But HMMER can also work with query sequences, not just profiles, just like BLAST. For example, you can search a protein query sequence against a database with phmmer, or do an iterative search with jackhmmer.

HMMER is designed to detect remote homologs as sensitively as possible, relying on the strength of its underlying probability models. In the past, this strength came at significant computational expense, but as of the new HMMER3 project, HMMER is now essentially as fast as BLAST.

HMMER can be downloaded and installed as a command line tool on your own hardware, and now it is also more widely accessible to the scientific community via new search servers at the European Bioinformatics Institute.

http://hmmer.org/
