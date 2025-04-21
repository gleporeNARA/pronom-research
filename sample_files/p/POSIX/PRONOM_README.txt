NOTE: THIS SIGNATURE AND OTHER SHELL SCRIPT SIGNATURES CAN BE IMPROVED BY THE ADDITION OF AN OPTIONAL SPACE CHARACTER AFTER THE BEGINNING "#!" HOWEVER, IT DOES NOT APPEAR THAT FFDEV.INFO ALLOWS THE NOTATION NEEDED TO HAVE A SIGNATURES MATCH AN EITHER/OR AS THE ONLY CRITERIA.


Shebang

← Hello, World! Tutorial • Home • Shell Comments →

The #! syntax used in scripts to indicate an interpreter for execution under UNIX / Linux operating systems. Most Linux shell and perl / python script starts with the following line:

Starting a Script With #!
It is called a shebang or a "bang" line.
It is nothing but the absolute path to the Bash interpreter.
It consists of a number sign and an exclamation point character (#!), followed by the full path to the interpreter such as /bin/bash.
All scripts under Linux execute using the interpreter specified on a first line[1].
Almost all bash scripts often begin with #!/bin/bash (assuming that Bash has been installed in /bin)
This ensures that Bash will be used to interpret the script, even if it is executed under another shell[2].
The shebang was introduced by Dennis Ritchie between Version 7 Unix and 8 at Bell Laboratories. It was then also added to the BSD line at Berkeley [3].
Ignoring An Interpreter Line (shebang)
If you do not specify an interpreter line, the default is usually the /bin/sh. But, it is recommended that you set #!/bin/bash line.

/bin/sh
For a system boot script, use /bin/sh:

#!/bin/sh
sh is the standard command interpreter for the system. The current version of sh is in the process of being changed to conform with the POSIX 1003.2 and 1003.2a specifications for the shell.


https://bash.cyberciti.biz/guide/Shebang#:~:text=It%20is%20called%20a%20shebang,specified%20on%20a%20first%20line.
