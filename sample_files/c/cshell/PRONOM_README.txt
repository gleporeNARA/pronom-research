NOTE: THIS SIGNATURE AND OTHER SHELL SCRIPT SIGNATURES CAN BE IMPROVED BY THE ADDITION OF AN OPTIONAL SPACE CHARACTER AFTER THE BEGINNING "#!" HOWEVER, IT DOES NOT APPEAR THAT FFDEV.INFO ALLOWS THE NOTATION NEEDED TO HAVE A SIGNATURES MATCH AN EITHER/OR AS THE ONLY CRITERIA.

Shebang
The correct title of this article is shebang. The initial letter is capitalized due to technical restrictions.
In computing, a shebang is a specific pair of characters used in a special line that begins a text file (commonly called a script) causing Unix-like operating systems to execute the commands in the text file using a specified interpreter (program) when executed.

A shebang consists of a number sign and an exclamation point character ("#!") in the first two columns of the first line, followed by the path to the interpreter program that will provide the interpretation. The name shebang comes from an inexact contraction of sharp bang or haSH bang, referring to the two typical Unix names of the two characters. (Unix jargon uses sharp or hash to refer to the number sign character and bang to refer to the exclamation point, hence shebang.) Because the "#" character is used as the comment marker in these executable text files, the actual contents of the shebang line will be ignored by the interpreter; the shebang line only exists to specify the correct interpreter to be used.

The shebang is actually a human-readable instance of a magic number in the executable file (with shebang equalling the magic byte string 0x23 0x21). Executable files that do not require an interpreter program start with other magic combinations. (See File format for more details of magic numbers.)

Some typical shebang lines:

#!/bin/bash -- Execute using bash program in the /bin/ directory
#!/bin/csh -- Execute using csh, the C shell instead
#!/bin/ksh -- Execute using the Korn Shell
#!/bin/awk -- Execute using awk program in the /bin/ directory
#!/usr/bin/perl -- Execute using Perl
#!/bin/sh -- Execute using sh program in the /bin/ directory (On some systems this is the Bourne shell. On Linux systems there is usually no Bourne shell and this is a link to another shell, such as bash. Using #!/bin/sh in shell scripts will thus invoke different shells on different systems. However, the Single UNIX Specification specifies certain requirements for /bin/sh, and some shells, such as bash, will alter their behaviour to match them when invoked with the name "sh".)
Shebang lines can also include specific options that will be passed to the interpreter; see the examples below. However, implementations differ widely on how options are parsed.

It is common for different variants of even the same operating system to have different locations for the desired interpreter. In the absence of a rigidly standardised filesystem structure among different Unix systems, this method can also limit the portability of the file. Thus, it is not uncommon to need to edit the shebang line after copying a script from one computer to another because the path that was coded into the script may not apply on a new machine. For this and other reasons, POSIX does not standardize the feature.

Example shebang lines
This file is a bash script:

#!/bin/bash
#
# The rest of the bash script
...

http://wiki.christophchamp.com/index.php?title=Shebang
