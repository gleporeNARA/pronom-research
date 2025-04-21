Specify symbol (.pdb) and source files in the Visual Studio debugger (C#, C++, Visual Basic, F#)
Article
01/27/2022
13 minutes to read
14 contributors


Program database (.pdb) files, also called symbol files, map identifiers and statements in your project's source code to corresponding identifiers and instructions in compiled apps. These mapping files link the debugger to your source code, which enables debugging.

When you build a project from the Visual Studio IDE with the standard Debug build configuration, the compiler creates the appropriate symbol files. This article describes how to manage symbol files in the IDE, for example:

Configure the location of symbol files
Load symbols while debugging
Compiler options for symbols.
For a detailed explanation of symbol files, see the following:

Understand symbol files and Visual Studio symbol settings
How symbol files work
The .pdb file holds debugging and project state information that allows incremental linking of a Debug configuration of your app. The Visual Studio debugger uses .pdb files to determine two key pieces of information while debugging:

https://docs.microsoft.com/en-us/visualstudio/debugger/specify-symbol-dot-pdb-and-source-files-in-the-visual-studio-debugger?view=vs-2022
