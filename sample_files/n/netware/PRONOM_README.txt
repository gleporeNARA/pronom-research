NetWare[2] is a discontinued computer network operating system developed by Novell, Inc. It initially used cooperative multitasking to run various services on a personal computer, using the IPX network protocol.

The original NetWare product in 1983 supported clients running both CP/M and MS-DOS, ran over a proprietary star network topology and was based on a Novell-built file server using the Motorola 68000 processor. The company soon moved away from building its own hardware, and NetWare became hardware-independent, running on any suitable Intel-based IBM PC compatible system, and able to utilize a wide range of network cards. From the beginning NetWare implemented a number of features inspired by mainframe and minicomputer systems that were not available in its competitors' products.

https://en.wikipedia.org/wiki/NetWare

1.7 Unicode Table Concepts
We recommend using the new Unicode Converter API functions in for new development efforts. For more information see Section 1.6, Unicode Converter and Tasks.

1.7.1 Unicode Tables
At the workstation, conversions between Unicode and the local code page are supported by a set of conversion tables. The Unicode Filenames table shows the conventions for assigning file names to the tables.

Filename

Comment

UNI_<CP>.CTY

Unicode to code page conversion table

<CP>_UNI.CTY

Code page to Unicode conversion table

UNI_COL.CTY

Unicode collation table for country

UNI_MON.CTY

Unicode monocasing table for country

The filenames reflect both a code page (CP) and a country code (CTY). The code page can be 3 or 4 digits. The country code is the country’s 3-digit code for long distance telephone numbers. For example, to represent the English character set (CP=437) using U.S. conventions (CTY=001) the following files are required:

UNI_437.001
437_UNI.001
UNI_COL.001
UNI_MON.001
Section 1.4, Supported Code Pages shows the code pages supported by Novell.

1.7.2 Unicode Operations
Unicode operations fall into two groups: those specific to managing Unicode tables and conversions, and those that perform operations on Unicode strings. This latter group is the Unicode equivalent of standard string.h functions.

A client application must load Unicode tables for the client agent to perform the conversions. Loading the Unicode tables is typically one of the first steps an application takes in accessing Directory Services. Two functions load and unload the tables:

NWInitUnicodeTables
NWFreeUnicodeTables
As input, NWInitUnicodeTables requires a specific code page and country code. You can use Internationalization services to read these parameters from the locale. When you no longer need the tables, call NWFreeUnicodeTables.

For many applications, NWInitUnicodeTables and NWFreeUnicodeTables are the only Unicode functions needed. Other Unicode table requests include the following:

Return a handle to any of the Unicode table files
Load and unload one of the Unicode tables
Compare Unicode characters
Convert between Unicode and the local code page
Collate or monocase a Unicode buffer
For more details about specific functions, see the specific function reference.

http://www.novell.com/documentation/developer/clib/?page=/documentation/developer//clib/ucod_enu/data/hai61j4m.html
