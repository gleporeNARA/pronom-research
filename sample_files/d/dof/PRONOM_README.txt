DELPHI PROJECT FILES (FOR COMPARISON)
Given a Delphi 2 project called PROJECT1.DPR where its only unit is called UNIT1.PAS, the following files will be generated. The first four will appear when the project is first saved, the fifth one should only be seen when the project is closed, the others each time the project is compiled.
Filename	Purpose
PROJECT1.DPR	Project source file, as seen by selecting View | Project Source
UNIT1.PAS	Source module that represents a form
UNIT1.DFM	Binary file describing the form and all its components. Stands for Delphi ForM.
PROJECT1.RES	A resource file containing the project's icon. If no icon is specified in the project option dialog's Application page, a default one is supplied. This file needs to be archived if you set up a specific icon
PROJECT1.DOF (Delphi 1 uses the .OPT extension)	.INI file with different extension containing all the options from the project options dialog's Compiler, Linker and Directories/Conditionals pages as well as anything specified in Run | Parameters.... If you change any of these settings, this file should be kept. Stands for Delphi Options File.

http://www.blong.com/conferences/borconuk97/c++fordelphi/cbuilder.htm
