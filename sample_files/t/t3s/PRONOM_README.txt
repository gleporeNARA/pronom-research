TADS (Text Adventure Development System) is an Interactive Fiction development system by Michael J. Roberts. Plain text source code files are created using the TADS programming language, and then compiled into a system-independent game file. Compiled game files can be played on any system that has an appropriate interpreter.

http://fileformats.archiveteam.org/wiki/TADS


Compilation phases
The first phase of compilation is preprocessing. In this phase, the preprocessor reads each source file, processes all of the "#" directives (#include, #define, etc), and expands all macros (that is, it replaces each occurrence of a macro name with the macro's definition, with appropriate parameter substitutions). The preprocessor in effect creates a new, temporary file that contains the result of all of this work. We'll call this file the "preprocessor output."

(In the current implementation, t3make doesn't really produce a temporary file containing the preprocessor output. Instead, the preprocessor keeps its output in memory, and sends the in-memory data to the compiler. Furthermore, it doesn't actually run all the way through the whole compilation unit before invoking the compiler; it actually works incrementally, passing its output to the compiler a little at a time. This design is intended to run a little faster than the abstract view we describe above, in which the preprocessor and compiler and truly decoupled and communicate via temporary files, because it avoids the overhead of shuffling all the data through the external file system, and it keeps memory usage within reason. However, the implementation always behaves exactly the same way it would in the abstract view where the two phases are truly decoupled.)

The second phase is the symbol export pass. In this phase, the compiler parses each entire compilation unit, but does very little more - the compiler really just analyzes the syntax of each compilation unit so that it can identify the type of each symbol defined in the unit. The compiler creates an intermediate file at this stage, called the "symbol export" file (these files have the suffix (".t3s" - S for Symbol), for each compilation unit. The symbol export file is essentially a list giving the name and defined type (function, object, class, etc.) of each "global" symbol in the program.

http://www.tads.org/t3doc/doc/sysman/progstru.htm
