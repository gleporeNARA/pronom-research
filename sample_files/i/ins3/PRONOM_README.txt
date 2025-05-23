The 16-Bit DOS Client Installation Information (INS) File
If your 16-bit DOS ODI LAN driver will be installed with the
installation utility, the utility must know how to set up the
configuration file (NET.CFG). This means the utility must
know each driver’s parameter options and which choices the
user must make. The driver installation information (.INS) file
and the DRIVER.LST file provide installation utilities with
this required information.
Each driver has only one .INS file even though the driver
usually supports many boards. If the installation utility does
not find an INS file for a driver, the utility does not create a
NET.CFG file entry for the driver. The installation program
uses the .INS file to prompt the user for the parameter options
and values necessary to generate a NET.CFG file. Sample INS
files are included at the end of this supplement.
Each driver distribution diskette may include one
DRIVER.LST file. This file provides the installation program
with a quick directory of all ODI drivers found on the
distribution diskette.

File Syntax
The format of the INS file for 16-bit DOS ODI drivers is shown
below:
InS_StArT
<DriverName>
<Version>[,<AssociatedFileList>]
^<Board1 Description>
^<Board2 Description>
 $
 $
 $
[?<Help Text>]
<Parameter1 Definition>
<Parameter2 Definition>
 $
 $
 $
InS_EnD
Signature Lines
Note the initial and final lines:
InS_StArT
$
$
$
InS_EnD
These lines illustrate the following crucial points:
 The InS_StArt and InS_EnD signature lines shown above
bracket the driver installation information.
 The body of the INS file is preceded by the ‘‘InS_StArT”
keyword and is terminated by the ‘‘InS_EnD” keyword  

http://www.novell.com/documentation/developer/lancomp/odi_supp/install.pdf
