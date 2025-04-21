A FAS file contains the same information as a LISP file, except a LISP
file is ASCII text and a FAS file is byte codes. (Actually, there are
no comments in a FAS file and variable and function names may not be
present, but the program logic and function is preserved between the
two formats). When Visual LISP loads a LISP file, the first step is to
convert the ASCII text to byte codes. This is done already in a FAS
file, so loading and executing a FAS file is faster. A FAS file is
also unreadable by a human (although it's technically possible to
convert it to a file resembling the original LISP file) so there's some
security there.

https://forums.autodesk.com/t5/visual-lisp-autolisp-and-general/about-fast-load-autolisp-fas-applicaton/td-p/891383

