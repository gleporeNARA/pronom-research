


XEmacs Lisp has a compiler that translates functions written in Lisp into a special representation called byte-code that can be executed more efficiently. The compiler replaces Lisp function definitions with byte-code. When a byte-coded function is called, its definition is evaluated by the byte-code interpreter.

Because the byte-compiled code is evaluated by the byte-code interpreter, instead of being executed directly by the machine’s hardware (as true compiled code is), byte-code is completely transportable from machine to machine without recompilation. It is not, however, as fast as true compiled code.

https://www.xemacs.org/Documentation/21.5/html/lispref_22.html

https://github.com/file/file/blob/4a0ca47b17c78d1e252465099238ff86c668962e/magic/Magdir/lisp
