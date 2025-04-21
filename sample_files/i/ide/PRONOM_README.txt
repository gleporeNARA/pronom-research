SEE PRJ SUBMISSION FOR OS/2 VERSION OF THIS FORMAT.

A .PRJ file is used to hold all of the files required to build
        the application (*.c, *.cpp, *.rc, *.lib).  You create it with
        the Project | Open Project menu item
        
        http://www.verycomputer.com/5_152e6a94de637241_1.htm
        
The IDE places all information needed to build a program into a
binary project file, a file with a .PRJ extension. Project files contain
the settings for:
• compiler, linker, make, and librarian options
• directory paths
• the list of all files that make up the project
• special translators (such as Turbo Assembler)

Borland C++ User's Guide 

Desktop files
You can set some of these
options on or off using
Options I Environment I
Desktop.
Chapter 2, IDE basics
In addition, the project file contains other general information on
the project, such as compilation statistics (shown in the project
window) and cached autodependency information.
IDE .PRJ project files correspond to the .CFG configuration files
that you supply to the command-line compiler (the default
command-line compiler configuration file is TURBOC.CFG). The
PRJCFG utility can convert .PRJ files to .CFG files and .CFG files
to .PRJ files.

http://bitsavers.informatik.uni-stuttgart.de/pdf/borland/borland_C++/Borland_C++_Version_3.1_Users_Guide_1992.pdf
