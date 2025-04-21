SWI-Prolog offers a comprehensive free Prolog environment. Since its start in 1987, SWI-Prolog development has been driven by the needs of real world applications. SWI-Prolog is widely used in research and education as well as commercial applications. 


SWI-Prolog supports compilation of individual or multiple Prolog source files into‘Quick Load Files'. A‘Quick Load File' (.qlf file) stores the contents of the file in a precompiled format.

These files load considerably faster than source files and are normally more compact. They are machine-independent and may thus be loaded on any implementation of SWI-Prolog. Note, however, that clauses are stored as virtual machine instructions. Changes to the compiler will generally make old compiled files unusable.

Quick Load Files are created using qcompile/1. They are loaded using consult/1 or one of the other file-loading predicates described in section 4.3. If consult/1 is given an explicit .pl file, it will load the Prolog source. When given a .qlf file, it will load the file. When no extension is specified, it will load the .qlf file when present and the .pl file otherwise.

https://www.swi-prolog.org/pldoc/man?section=qlf
