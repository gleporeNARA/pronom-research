.bed (PLINK binary biallelic genotype table)
Primary representation of genotype calls at biallelic variants. Must be accompanied by .bim and .fam files. Loaded with --bfile; generated in many situations, most notably when the --make-bed command is used. Do not confuse this with the UCSC Genome Browser's BED format, which is totally different.

The first three bytes should be 0x6c, 0x1b, and 0x01 in that order. (There are old versions of the .bed format which start with a different "magic number"; PLINK 1.9 recognizes them, but will convert sample-major files to the current variant-major format on sight. See the bottom of the original .bed definition page for details; that page also contains a more verbose version of the discussion below.)

https://www.cog-genomics.org/plink/1.9/formats#bed
