�MKMSGF PRO0                  � �t�1�	�
�JMPSVY\_b�
|�Lv�����$'*-0369Gd)Jh��I%VER MS LAN Manager Protocol Manager Help Message File v1.1d
EPROTOCOL.INI file read error

EXPLANATION:

Error such as DRIVE NOT READY, DATA CRC ERROR, SECTOR NOT FOUND, or 
READ FAULT is encounter in reading the PROTOCOL.INI file.

SOLUTION: 

If the PROTOCOL.INI file is read from a diskette, make sure the diskette
is in the drive and the drive door is closed. 

EPROTOCOL.INI file open failure

EXPLANATION:

1. The Protocol Manager can not find the file PROTOCOL.INI in the
   default directory \LANMAN on the boot device or the directory
   specified on the DEVICE= command following the /I: option
   switch or

2. Error detected in opening the file.

SOLUTION: 

Follow the installation and set up procedure to install the network
drivers and Protocol Manager.

If the PROTOCOL.INI file is read from a diskette, make sure the diskette
is in the drive and the drive door is closed. 

EA parameter does not belong to any logical module

EXPLANATION:

A configuration parameter appeared in the PROTOCOL.INI file
before a logical module is defined in brackets [].

SOLUTION: Review the PROTOCOL.INI file and make sure that all
configuration parameters appear under a certain logical module name
enclosed in bracket [].

ENot enough memory for PROTOCOL.INI image

SOLUTION: Reduce the size of the PROTOCOL.INI file

EInteger overflow in PROTOCOL.INI parameter

EXPLANATION:

The numeric value of a configuration parameter exceeds 2**32

SOLUTION:

Review the PROTOCOL.INI file and make sure that all
numeric values for configuration parameters are less than 2**32
(4,294,967,296 decimal or 100,000,000 hexadecimal).

EInvalid hex digit in PROTOCOL.INI file

EXPLANATION:

An invalid character is seen in a hexadecimal number

SOLUTION:

Review the PROTOCOL.INI file to make sure that all hexadecimal numbers
consist only of digits 0 through 9 and letters "A" through "F"
(or "a" through "f").

EInvalid decimal digit in PROTOCOL.INI file

EXPLANATION:

An invalid character is seen in a decimal number.

SOLUTION:

Review the PROTOCOL.INI file to make sure that all decimal numbers
consist only of digits 0 through 9.  Note that hexadecimal numbers always 
begin with prefix 0x or 0X and string values that start with a digit must
be enclosed in double quotes ("...").

EString parameter missing end quote in PROTOCOL.INI file

EXPLANATION:

A character string that begins with a double quotation mark
is not terminated with one on the same line.

SOLUTION:

Find the character string in the PROTOCOL.INI file and terminate
it with a double quotation mark (").

EInvalid option

EXPLANATION:

The only valid option on the "DEVICE=path\PROTMAN.OS2" line must
begin with /I: or /i:.  It may specify a device and path name that
override the default path \LANMAN in locating the PROTOCOL.INI file.

SOLUTION:

Correct the error and retry

EEqual sign missing between keyword and value

EXPLANATION:

A configuration keyword must be followed by an equal sign (=) if it has
one or more values assigned.

SOLUTION:

Correct the error and retry

EInitialization failure

EXPLANATION:

System software error during OS/2 Protocol Manager initialization.

E
E
E
E
E
E
E
E
EGENERAL FAILURE in binding %1 to %2

EXPLANATION:

A general error code (0xFF) is returned during the binding process

EUNDEFINED FAILURE in binding %1 to %2

ECan not find Protocol Manager

EXPLANATION:

1. Protocol Manager failed during it's initialization and hence was 
   not installed, or

2. NETBIND command was executed from the compatibility box of OS/2.

SOLUTION:

1. Correct the Protocol Manager initialization error and try again.

2. Always execute the NETBIND command from the OS/2 protected mode.

WNETBIND already executed 
EFailed to bind %1 to %2

SOLUTION:

Review the PROTOCOL.INI file to make sure the module names specified in
binding lists agree match a module name enclosed in brackets [].
EMAC NOT INITIALIZED in binding %1 to %2
EHARDWARE NOT FOUND in binding %1 to %2 
EHARDWARE FAILURE in binding %1 to %2 
ECONFIGURATION FAILURE in binding %1 to %2

EXPLANATION:

Certain configuration parameters are unacceptable to either of the two
modules.

SOLUTION:

Correct the error and retry.

EINTERRUPRT CONFLICT in binding %1 to %2
EINCOMPATIBLE MAC in binding %1 to %2
EINITIALIZATION FAILED in binding %1 to %2
ENo network driver binding was performed

EXPLANATION:

The possible causes are:

  1. A protocol driver failed during system startup.
  2. A protocol driver has incorrect binding information.

SOLUTION:

  If it is caused by a failed driver, correct the problem and retry.

E
E
E
E
E
E
E
ECan not open PROTMAN.DOS

EXPLANATION:

PROTCFG/PROTCHK failed to open the PROTMAN.DOS driver executable file.

SOLUTION:

Make sure that PROTMAN.DOS is placed under \LANMAN subdirectory of the current
drive or the subdirectory specified in the /I: option.

ECan not read PROTMAN.DOS

EPROTMAN.DOS becomes too large

EXPLANATION:

The code size combined with the parsed PROTOCOL.INI image become too large.

SOLUTION:

Reduce the size of the PROTOCOL.INI file and retry.

ECan not write to PROTMAN.DOS

ECan not close PROTMAN.DOS

IPROTOCOL.INI image successfully appended to PROTMAN.DOS
IPROTOCOL.INI syntactically correct
E
