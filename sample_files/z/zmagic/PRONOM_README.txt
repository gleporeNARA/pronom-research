On any computer system, there are different types of executable files. Linux/Unix system especially support many types of executable files. Even among compiled executables, there are different types; this is not talking about the different programming languages used but the formats of the compilation itself. These different compiled formats are even used in library files (“.so” files) and object code (“.o” files). There are numerous executable type; only the ones that pertain to Linux will be discussed.

https://www.linux.org/threads/types-of-executables.9206/

http://ftp.icm.edu.pl/packages/linux-uk/alpha/alpha/asm8.html#obj_file_formats_section


Binary formats
Various binary formats exist, like a.out, COFF, and ELF. ELF is the modern format. Support for a.out is disappearing.

The linux libc4 (like libc.so.4.6.27) libraries use the a.out format. In 1995 the big changeover to ELF happened. The new libraries are called libc5 (like libc.so.5.0.9). Around 1997/1998 libc5, maintained by HJLu, was replaced by libc6, also known as glibc2, maintained by Ulrich Drepper.

The a.out format comes in several flavours, such as OMAGIC, NMAGIC, ZMAGIC, QMAGIC. The OMAGIC format is very compact, but program in this format cannot be swapped or demand paged because it has a non-page-aligned header. The ZMAGIC format has its .text section aligned to a 1024-byte boundary, allowing bmap(), provided the binary lives on a filesystem with 1024-byte blocks. It was superseded by the QMAGIC format, that has its .text section starting at offset 0 (so that it contains the header) but with the first page not mapped. The result is that QMAGIC binaries are 992 bytes smaller than ZMAGIC ones, and moreover allow one to trap dereference of NULL pointers.

https://www.win.tue.nl/~aeb/linux/lk/lk-3.html
