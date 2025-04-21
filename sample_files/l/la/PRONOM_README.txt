
In the past, if you were a source code package developer and wanted to take advantage of the power of shared libraries, you needed to write custom support code for each platform on which your package ran. You also had to design a configuration interface so that the package installer could choose what sort of libraries were built.

GNU Libtool simplifies your job by encapsulating both the platform-specific dependencies, and the user interface, in a single script. GNU Libtool is designed so that the complete functionality of each host type is available via a generic interface, but nasty quirks are hidden from the programmer.

GNU Libtool’s consistent interface is reassuring… users don’t need to read obscure documentation to have their favorite source package build shared libraries. They just run your package configure script (or equivalent), and libtool does all the dirty work.

There are several examples throughout this document. All assume the same environment: we want to build a library, libhello, in a generic way.



https://www.gnu.org/software/libtool/manual/libtool.html


https://stackoverflow.com/questions/1238035/what-are-libtools-la-file-for


One of the most commonly misunderstood features of libtool, especially in modern days, is the presence of the *.la files, the so-called libtool archives. These files are simple textual file descriptors of a library built with libtool and are consumed only by libtool and, in some circumstances, libltdl.

https://autotools.io/libtool/lafiles.html
