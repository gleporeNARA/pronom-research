X-PLOR Protein Structure Files (PSF)
Protein Structure Files (PSF) are used by EGO as a summary of the atom type, mass, partial charge and connectivity of the molecular system. PSF files are generated from the original PDB file in combination with X-PLOR topology file using X-PLOR.
The topology data files used by X-PLOR specify the atom parameters and connectivity for all amino acids and nucleotides. X-PLOR extracts all the information necessary (along with patches and modifications from the default configuration) for a given molecule in the PSF file in the form of:

1.
a list of atoms with the atom types (CH3E, CH1E, O, N, ...), partial charges and masses,
2.
a list of atom number pairs representing bonds,
3.
a list of atom number triples representing the angles between pairs of bonds,
4.
a list of atom number quadruples representing dihedral angles,
5.
atom number quadruples representing improper angles[3,4],
6.
atom numbers defining hydrogen bond donors and acceptors,
7.
explicit nonbonded interaction exclusions (See also Section 4.9).
An example PSF file follows (pti.psf):


PSF 
       4 !NTITLE
       
       https://heller.userweb.mwn.de/ego/manual/node88.html
