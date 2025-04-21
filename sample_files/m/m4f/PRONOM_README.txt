m4 is a macro processor, in the sense that it copies its input to the output, expanding macros as it goes. Macros are either builtin or user-defined, and can take any number of arguments. Besides just doing macro expansion, m4 has builtin functions for including named files, running shell commands, doing integer arithmetic, manipulating text in various ways, performing recursion, etc.… m4 can be used either as a front-end to a compiler, or as a macro processor in its own right.

The m4 macro processor is widely available on all UNIXes, and has been standardized by POSIX. Usually, only a small percentage of users are aware of its existence. However, those who find it often become committed users. The popularity of GNU Autoconf, which requires GNU m4 for generating configure scripts, is an incentive for many to install it, while these people will not themselves program in m4. GNU m4 is mostly compatible with the System V, Release 4 version, except for some minor differences. See Compatibility, for more details.

Some people find m4 to be fairly addictive. They first use m4 for simple problems, then take bigger and bigger challenges, learning how to write complex sets of m4 macros along the way. Once really addicted, users pursue writing of sophisticated m4 applications even to solve simple problems, devoting more time debugging their m4 scripts than doing real work. Beware that m4 may be dangerous for the health of compulsive programmers.

https://www.gnu.org/software/m4/manual/m4.html#Intro


15.2 Frozen file format
Frozen files are sharable across architectures. It is safe to write a frozen file on one machine and read it on another, given that the second machine uses the same or newer version of GNU m4. It is conventional, but not required, to give a frozen file the suffix of .m4f.

These are simple (editable) text files, made up of directives, each starting with a capital letter and ending with a newline (NL). Wherever a directive is expected, the character ‘#’ introduces a comment line; empty lines are also ignored if they are not part of an embedded string. In the following descriptions, each len refers to the length of the corresponding strings str in the next line of input. Numbers are always expressed in decimal. There are no escape characters. The directives are:

https://www.gnu.org/software/m4/manual/m4.html#Frozen-file-format
