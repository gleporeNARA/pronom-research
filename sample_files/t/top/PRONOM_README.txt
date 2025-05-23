	
top file format
Main Table of Contents	VERSION 5.0.7
Description
The top file extension stands for topology. It is an ascii file which is read by gmx grompp which processes it and creates a binary topology (.tpb file).
A sample file is included below:
;
;	Example topology file
;
[ defaults ]
; nbfunc        comb-rule       gen-pairs       fudgeLJ fudgeQQ
  1             1               no              1.0     1.0

; The force field files to be included
#include "rt41c5.itp"	

[ moleculetype ]
; name  nrexcl
Urea         3

[ atoms ]


https://manual.gromacs.org/archive/5.0.7/online/top.html

The topology file is built following the GROMACS specification for a molecular topology. A top file can be generated by pdb2gmx. All possible entries in the topology file are listed in Tables 13 and 14. Also tabulated are: all the units of the parameters, which interactions can be perturbed for free energy calculations, which bonded interactions are used by grompp for generating exclusions, and which bonded interactions can be converted to constraints by grompp.

Table 13 The topology file.
Parameters
interaction type	directive	# at.	f. tp	parameters	
mandatory	defaults	non-bonded function type; combination rule(cr); generate pairs (no/yes); fudge LJ (); fudge QQ ()
mandatory	atomtypes	atom type; m (u); q (e); particle type; V(cr) ; W(cr)
 	
bondtypes

pairtypes

angletypes

dihedraltypes(∗)

constrainttypes

(see Table 14, directive bonds)

(see Table 14, directive pairs)

(see Table 14, directive angles)

(see Table 14, directive dihedrals)

(see Table 14, directive constraints)

LJ

Buckingham

nonbond_params

nonbond_params

2

2

1

2

V(cr) ; W(cr)

a kJ mol−1 ; b nm−1; c6 (kJ mol−1 nm−6)

Molecule definition(s)
mandatory	moleculetype	molecule name; n(nrexcl)ex
mandatory	atoms	1	atom type; residue number; residue name; atom name; charge group number; q (e); m (u)	
type

https://manual.gromacs.org/documentation/current/reference-manual/topologies/topology-file-formats.html
