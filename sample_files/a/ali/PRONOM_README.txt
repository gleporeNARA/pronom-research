1. About This Guide
For ease of exposition, ‘GNAT Pro’ will be referred to simply as ‘GNAT’ in the remainder of this document.

This manual contains useful information in writing programs using the GNAT compiler. It includes information on implementation dependent characteristics of GNAT, including all the information required by Annex M of the Ada language standard.

GNAT implements Ada 95, Ada 2005 and Ada 2012, and it may also be invoked in Ada 83 compatibility mode. By default, GNAT assumes Ada 2012, but you can override with a compiler switch to explicitly specify the language version. (Please refer to the GNAT User’s Guide for details on these switches.) Throughout this manual, references to ‘Ada’ without a year suffix apply to all the Ada versions of the language.

Ada is designed to be highly portable. In general, a program will have the same effect even when compiled by different compilers on different platforms. However, since Ada is designed to be used in a wide variety of applications, it also contains a number of system dependent features to be used in interfacing to the external world.

https://docs.adacore.com/gnat_rm-docs/html/gnat_rm/gnat_rm/about_this_guide.html

.7 The Ada Library Information Files
Each compilation actually generates two output files. The first of these is the normal object file that has a .o extension. The second is a text file containing full dependency information. It has the same name as the source file, but an .ali extension. This file is known as the Ada Library Information (ALI) file. The following information is contained in the ALI file.

* Version information (indicates which version of GNAT was used to compile the unit(s) in question)
* Main program information (including priority and time slice settings, as well as the wide character encoding used during compilation).
* List of arguments used in the gcc command for the compilation
* Attributes of the unit, including configuration pragmas used, an indication of whether the compilation was successful, exception model used etc.
* A list of relevant restrictions applying to the unit (used for consistency) checking.
* Categorization information (e.g., use of pragma Pure).
* Information on all `with'ed units, including presence of Elaborate or Elaborate_All pragmas.
* Information from any Linker_Options pragmas used in the unit
* Information on the use of Body_Version or Version attributes in the unit.
* Dependency information. This is a list of files, together with time stamp and checksum information. These are files on which the unit depends in the sense that recompilation is required if any of these units are modified.
* Cross-reference data. Contains information on all entities referenced in the unit. Used by tools like gnatxref and gnatfind to provide cross-reference information.

https://gcc.gnu.org/onlinedocs/gcc-9.3.0/gnat_ugn/The-Ada-Library-Information-Files.html
