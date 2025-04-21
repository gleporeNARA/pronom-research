Introduction
LAV is a plain-text file format for alignments of two DNA sequences. It is the only output format produced by the BLASTZ alignment program (though often converted to AXT format by post-processing programs), and is the default output format for BLASTZ's successor, LASTZ.

The alignment blocks are grouped by sequence (e.g. chromosome, scaffold, contig, cDNA read, shotgun sequencing read, etc.) and strand, and described by listing the coordinates of the gap-free aligning segments in each block. This format is compact because it does not include the nucleotides, but the tradeoff is that interpretation usually requires access to the original sequence files, and it is not easy for humans to read.

Example
Here's a typical LAV file:

    #:lav
    d {
      "lastz.v0.3 malus.fa aurantium.fa C=2 W=8 T=0 
         A    C    G    T
        91 -114  -31 -123
      -114  100 -125  -31
       -31 -125  100 -114
      -123  -31 -114   91
      O = 400, E = 30, K = 3000, L = 3000, M = 0"
    }
    
    http://www.bx.psu.edu/miller_lab/dist/lav_format.html
