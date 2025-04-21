The RDOFF version 1.1 Object File Format
========================================

RDOFF is a relocatable object file format whose design goals were
mainly to keep it simple, so that an RDOFF object can be loaded and
executed by a very small piece of code (primarily so that it can be
used by the microkernel of an operating system to store system
modules, which can then go on to load and execute more complex object
files, eg ELF, if so desired), yet still be able to be cope with
everything required by the operating system; linkage of multiple
modules together (possibly with automatic loading of new libraries
that are referred to by the object) at load time, allowing static or
dynamic linking as required by the application.

The overall format of the file is summarised in this table:

Length (bytes)                Description
      6                Contains the string 'RDOFF1' (little-endian targets),
                or 'RDOFF' followed by the single byte 0x01
                (big-endian targets).
      4                Length of the header section
      ?                Header section (see above for length)
      4                Length of code section (.text)
      ?                Code section
      4                Length of data section (.data)
      ?                Data section
      
      https://hwiegman.home.xs4all.nl/fileformats/rdoff/rdoff.txt
