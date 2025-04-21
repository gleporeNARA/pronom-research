About the format
The Windows CE installation cabinet format was designed by Microsoft make it easy to create packaged software for the Windows CE platform. After generating all his executable programs, data files, help files and so on, a developer can then write an "installation script" which lists the name of the software package, where each file should be installed on the target device's filesystem, registry entries to make on the target system's Windows Registry, and so on. A tool called "CabWiz" takes the installation script and produces a single CAB file with a special control file stored in it. On the target Windows CE device, a program called WCELOAD.EXE will read cabinet files, install them, register them as installed packages, set their registry entries, and so on.

The Cabinet format was previously developed by Microsoft for creating a simple archive format for packaged software, from entire operating systems down to ActiveX Web plugins. They also intended to displace Sun's JAR format for packaging Java software, but this did not succeed.

Overall cabinet file format
Firstly, the overall file format of a Windows CE installation cabinet is the standard Microsoft Cabinet file format. This was originally documented in the Microsoft document CABFMT.DOC as part of the Microsoft Cabinet SDK (CAB-SDK.EXE), it is now documented in the Windows Installer documentation. The format can also be gleaned from open source tools and libraries such as cabextract and libmspack. Windows CE installation cabinets typically use no compression (the NONE compression method in the cabinet specification), sometimes MSZIP compression.

Cabinet file contents
The filenames of the files in the cabinet use the MS-DOS "8.3" convention, where the first eight characters in the filename come from the "true filename", and are followed by a period and three numeric digits. The digits form a decimal number from 000 to 999. The name part before the period is currently always 8 characters (shorter names are padded on the left with "0"), but this shouldn't be relied upon. Only the numeric extension should be used to identify the file. There should not be more than one file in the cabinet with the same numeric extension. As an example:

Name in cab file	Original filename
BLKJAC~4.000	--- (installation data)
BLACKJ~1.999	Blackjack Setup.dll
SELFRE~1.006	SelfRegister.dll
0Blkjack.005	Blkjack.exe
00Sample.004	Sample.BJL
WINGAM~1.003	Win Game.wav
LOSEGA~1.002	Lose Game.wav
BLACKJ~1.001	Blackjack Help.htp
The order of these files within the cab file is important. The first file in the cabinet should be the ".000" file. It should then be followed by all other files in descending numerical order of their extensions.

These original filenames are not recoverable, they are not stored anywhere. The only names available are the target filenames given in the FILES section of the .000 file.

All installation data is contained in the .000 file. If a .999 file exists, it is an "application specific Setup.DLL"; a Microsoft standard Dynamic Link Library that will be loaded and executed after installation by the installation program. All other files are files for installation on the Windows CE device, and the three digits should be resolved into an integer "file number".

Format of the .000 file
All multi-byte integers are little-endian. Values given in this document are in decimal, unless otherwise specified. The overall file format of the .000 file is as follows:

A fixed size header at file offset 0
The APPNAME string
The PROVIDER string
The UNSUPPORTED multi string
The STRINGS section
The DIRS section
The FILES section
The REGHIVES section
The REGKEYS section
The LINKS section
Only the fixed size header has a fixed file offset, all other strings and sections may be at any file offset, in any order. They are typically in the order given above. Each file offset is given in the fixed size header.

The fixed size header
The .000 file begins at file offset 0 with a fixed size header of exactly 100 bytes. The format of this header is as follows:

Offset	Size in bytes	Description
0	4	An ASCII signature, "MSCE". This is 0x4543534D as a little-endian integer
4	4	Unknown purpose, usually 0

https://www.cabextract.org.uk/wince_cab_format/
