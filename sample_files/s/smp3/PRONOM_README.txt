Watcom C/C++ (currently Open Watcom C/C++) is an integrated development environment (IDE) product from Watcom International Corporation for the C, C++, and Fortran programming languages. Watcom C/C++ was a commercial product until it was discontinued, then released under the Sybase Open Watcom Public License as Open Watcom C/C++. It features tools for developing and debugging code for DOS, OS/2, Windows, Linux operating systems, which are based upon x86, IA-32, x86-64 compatible processors.

https://en.wikipedia.org/wiki/Watcom_C/C%2B%2B


Execution Profiler
This chapter covers the following topics:

Introduction
Using the Sampler
Using the Profiler
Introduction
The best way to improve the performance of a program is to change its least-efficient algorithms and data structures, rather than optimize small segments of compiled code. The Execution Profiler identifies which parts of the program are used frequently, helping you pinpoint algorithms that you should modify or rewrite.

Trying to find these bottlenecks without an execution profiler is as difficult as trying to find bugs without a debugger - it can mean having to recode, recompile, and reexecute your program over and over again.

The Profiler can identify things such as:

where a program spends its time
how often a source line executes
how often a routine is called

To invoke the Profiler, enter this command:

wprof [sample_file]
By default, sample files have the same name as your executable, with a .smp suffix. If you don't specify a sample file at the command line, the Profiler will prompt for one.

https://users.pja.edu.pl/~jms/qnx/help/watcom/compiler-tools/profiler.html
