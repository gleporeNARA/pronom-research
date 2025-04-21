Not much out there on this format, but it seems pretty self explanatory.

Microsoft Visual C/C++ IDE will manage a Workspace for you. A Workspace consists of 1 or more Projects. Projects consist of C files, CPP files, H files, etc. The reason for multiple Projects is you could write a DLL as one Project, and the EXE that uses the DLL as a second Project. Then debugging becomes much easier with both Projects under 1 Workspace. The SGI equivalent of a Workspace is a makefile (loosely speaking). MSVC manages a makefile (named *.mak). We will use the IDE and not get our hands dirty with the MSVC makefile (*.mak file).

https://users.cs.fiu.edu/~weiss/Deltoid/msvc.html
