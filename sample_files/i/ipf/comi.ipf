:userdoc.
:title.COMi Users Guide
.*
.**************************************************
.* Introduction (1)
.**************************************************
:h1.Introduction
:i1.Introduction
:p.
COMi is a multi-port asynchronous serial device driver for the OS/2:link refid=IBM
reftype=fn.*:elink. operating system.  This version of COMi will work in any system
running OS/2 2.0 and above.  There is a different version for OS/2 1.x that is still
available and supported by OS/tools.
:p.
By multi-port we mean that with COMi there is no limit (logically) to the number of
COM devices that can be made available to OS/2 sessions or applications.  There is a
practical limit, of course, because there is a limit to the number of COM devices
that can be installed in any single system (server, client, workstation, CPU).  COMi
will allow you to install devices with names from COM1 to COM99.
.*
.**************************************************
.* Installation (1)
.**************************************************
:h1.Installation
:i1 id=INSTALL.Installation
:p.
COMi comes with an easy to use installation program (INSTALL.EXE).  This program can
transfer all required files to the directories of your choice, create a desktop
folder and necessary program objects, and initiate the configuration process.
:p.
If you have multiple COMi licenses you can reuse a COMi initialization file for
similar installations by copying that initiaization file to the distribution
diskette.  When INSTALL finds a COMi initialization file in the directory it is run
from it will transfer that file to the installation destination directory.  The transferred
COMi initialization file will be presented for modification during each subsequent
installation process.
:p.
Multiple licenses for COMi can be installed from a network drive or directory.  To do
this you must first use INSTALL to transfer both COMi and INSTALL to a network drive,
then complete the configuration process just as though you were installing it to a
local drive.
:p.
Once installation and configuration are complete you can run INSTALL on a workstation
from the network directory to install COMi to that workstation.  Any initialization
file you created in the INSTALL (network) directory will also be transferred to the
workstation.  You can then make any necessary changes to the initialization file by
selecting the :hp2.Config COMi...:ehp2. menu item after INSTALL has transferred
the required files to the local drive.
.*
.*************************************************
.*  COMi Spooler Help (2)
.*************************************************
:h2.Installing Print Spooler Support
:i2 refid=INSTALL.Installing Print Spooler Support
:p.
To install and configure COMi Print Spooler support you must have elected to transfer
the spooler support files while installing COMi by selecting the "Print Spooler
Utilities" check box in the "Install Options" dialog, configured COMi for your serial
hardware, and you must have re-booted your machine since that install session.
:p.
Once you have completed transferring the files, installing and configuring serial
devices for COMi access, and re-booting your machine, you will need to do the following&colon.
:ol.
:li.Click mouse button two (usually the right button) on a local printer object.
:p.
If you have not created a local printer object yet, then you will need to
drag a non-network printer object from the "Templates" folder onto your
desktop.
:p.
If you are creating a printer object as part of this installation then skip to item
three, as the printer object's settings notebook will have been presented immediately
after you drag the printer object from the
"Templates" folder.
:p.
When creating a new printer object, you will also have to select a printer driver
and will possibly need to set other parameters in the printer's settings notebook.
:li.
Select the "Settings" menu item from the pop-up menu that appears.
:li.
Click on the "Output" tab from the settings notebook.
:li.
Click mouse button two on any port icon in the container window.
:li.
Select the "Install" menu item.  A new dialog will be presented.
:li.
In the "Directory" entry field enter the following (without the quotes):
"\OS2\DLL", then press the <ENTER> key or select the "Refresh"
button.
:p.
The Spooler software will read each spooler support library in that
directory, including the COMi spooler support library, and show an icon
in the container area of the dialog for each device these spooler support libraries
support.
:p.
Only ports that have been installed with a COMi configuration program (COMscope or
Install) will be available for installation as spooler ports by the system spooler
software. COMi must have been loaded at system initialization before COMi print Spooler
support can be installed, or accessed.
:li.
Select one, or more, of the COMi Spooler ports and select the "Install"
button.
:li.
When the Spooler software is finished installing the ports you have
selected, it will show a message box indicating that the ports you
selected have been installed.  Click on the "OK" button.
:li.
When you are through installing print spooler ports, click on the
"Cancel" button.
:eol.
:p.
Once you have installed at least one COMi spooler port using this procedure, you
will be able to install and delete spooler ports from the COMi Configuration program
(either Install or COMscope).
:p.
You can set the port parameters to match the requirements of a printer by clicking
mouse button two on an icon in the container area and selecting the "Settings" menu
item.  Help for setting port printer initialization parameters will be available
once you have entered the setup dialog.
:nt.
Configuration of COMi print spooler ports for device and printer communications
parameter initialization will always have to be completed from the printer object's
settings notebook, as described here.  The system spooler software will not be aware
of any initialization parameters selected from the COMi configuration program.
:ent.
.*
.**************************************************
.* Configuration (2)
.**************************************************
:h2.Configuration
:i2 refid=INSTALL.Configuration
:p.
The COMi device driver can only be configured using COMscope or Install.  These two
programs create, or modify, an initialization file for the device driver.  Each time
your system is started, COMi reads this initialization file to determine where to
look for serial devices and how to configure those devices.
:p.
Additional Information:
:ul compact.
:li.:link refid=CFG_ISA reftype=hd.Industry Standard Architecture:elink.
:li.:link refid=CFG_MCA reftype=hd.Micro Channel Architecture:elink.
:li.:link refid=CFG_CONFIG reftype=hd.Starting Configuration Program:elink.
:eul.
.*
.**************************************************
.* ISA (3)
.**************************************************
:h3 id=CFG_ISA.Industry Standard Architecture Machines
:i2 refid=INSTALL.Industry Standard Architecture Machines
:p.
The COMi device driver will not operate in :link refid=ISA reftype=fn.ISA:elink.
systems until a valid initialization file is created.  There can be no access to COM
devices in ISA systems until the configuration process has been completed and a valid
initialization file has been created.
.*
.**************************************************
.* MCA (3)
.**************************************************
:h3 id=CFG_MCA.Micro Channel Architecture Machines
:i2 refid=INSTALL.Micro Channel Architecture Machines
:p.
The COMi device driver does not need an initialization file to initialize the eight
pre-defined serial ports in a PS/2:link refid=IBM reftype=fn.*:elink. or other
:link refid=MCA reftype=fn.MCA:elink. system that has ABIOS or equivalent.
You will need to create an initialization file for MCA machines only if you:
:ol compact.
:li.Need to support more than eight serial devices.
:li.Want to access devices that may be owned by other serial device drivers.
:li.Need to support hardware that has base I/O addresses and/or interrupt levels
different than the MCA pre-defined serial device base addresses and/or interrupt levels.
:li.Your MCA system does not have an ABIOS or equivalent.
:eol.
.*
.**************************************************
.* CONFIG (3)
.**************************************************
:h3 id=CFG_CONFIG.Starting Configuration Program
:i2 refid=INSTALL.Starting Configuration Program
:p.
During the installation process the configuration process is started by the installation
program supplied with COMi.  After Installation is completed you will need to re-boot your
machine before you will be able to access serial devices with COMi.
:p.
After installation you can configure COMi either from a program object (icon) or
from an OS/2:link refid=IBM reftype=fn.*:elink. command prompt.
:p.
:hp2.Starting from a program object&colon.:ehp2.
:p.
If there is a program object for COMscope or Install you can double click on the
object to begin the configuration process.
:p.
If there is no program object for COMscope or Install, you can either start the
program from the command line (in an OS/2 window or full screen session) or create a
program object using the following procedure&colon.
:ol.
:li.Open the :hp2.Templates:ehp2. folder.
:li.Drag a :hp2.Program:ehp2. object off onto the desktop.
:li.When the settings notebook appears select the :hp2.Program:ehp2. tab, if that
page is not currently shown.
:li.In the :hp2.Path and File Name:ehp2. field, enter the absolute path and file
name of the configuration program.
:lp.Example&colon.  C&colon.\COMM\COMscope.EXE
:li.In the :hp2.Working Directory:ehp2. field enter the absolute path, to the
configuration program.
:lp.Example&colon.  C&colon.\COMM
:li.Select the :hp2.General:ehp2. tab.
:li.Enter the program name in the :hp2.Title:ehp2. field.
:lp.Example&colon.  COMi Configuration
:li.Close the settings notebook by double clicking on the system menu (small box in
the upper left-hand corner).
:eol.
:p.
:hp2.Starting from an OS/2 command prompt&colon.:ehp2.
:p.
If the COMi device driver is loaded you will only need to enter the program name on
the command line.
:p.
Example&colon.  [C&colon.\]COMscope <ENTER>
:p.
If the COMi device driver is not loaded you will be to prompted for a path
and file name after starting the COMscope or Install.  The COMi initialization file
must be located in the same directory as the device driver, and must have
the same base name as the drvice driver file with a ".INI" extension.
.*
.**************************************************
.* Extensions (1)
.**************************************************
:h1 id=EXTENSIONS.Extensions
:i1.Extensions
:p.
COMi has extensions that allow it to perform in some special situations.  These
extensions are&colon.
:ol.
:li.
Modem interrupts can be disabled for any device.  Enabling this extension will
cause modem signals to be polled when handshaking protocols are enabled that use
modem signaling.  The device driver will function normally, just not as efficiently.
The purpose for this extension is to support serial adapters that inadvertently left
one or more modem signal input pins floating, and will only be required if an
application is going to enable hardware handshaking when such an adapter is being used.
:li.
The device driver can be configured to allow applications to have control of the
OUT1 output signal of any device.  The purpose of this extension is to support
adapters that use the OUT1 pin to control some special function (e.g., baud rate
clock selection, or RS-485 tri-state enable).  Support is included for control of the
LOOP function, but is not very useful at the normal application level.
:li.
The baud rate divisor can be specified explicitly by an application.  When this
feature is enabled the application selected baud rate value is written directly to,
or read directly from, the baud rate registers of the device.  This extension is to
support adapters that allow users to select non-standard baud rate clocks.  When
using this extension, an application will need to calculate the proper baud rate
divisor for their particular adapter set-up.
:li.
Normally each user defined serial device (UART) is tested to determine if the
defined device is a supported UART, if the defined hardware interrupt level is
available for use by the device driver, if the device is physically connected to the
defined hardware interrupt level, and if the device has hardware buffering
capabilities.  This extension prevents all but the test for hardware interrupt
availability from being performed.  The purpose of this extension is to allow for
UARTs that are part of a motherboard chip set that may not be initialized at the time
the device driver is loaded (initialized), or other UARTs that may not be completely
compatible with the 8250 standard, but close enough to work with COMi.
:li.
Each device can be configured to enable the OUT1 signal at initialization.  When
this extension is enabled the OUT1 signal is enabled at the very beginning of the
initialization sequence and will remain enabled for that entire OS/2:link refid=IBM
reftype=fn.*:elink.  session, unless :hp2.Extended Modem Signals:ehp2. is enabled
and an extension aware application disables that signal.
:li.
COMi will allow you to connect multiple devices to a single interrupt in ISA
machines.  Interrupt sharing in an ISA machine will NOT work unless your
hardware is specifically designed to do so.
:li.
COMi will support the Texas Instruments 16C550B UART in the FIFO mode.  This UART
requires special processing when its receive FIFO is enabled.
:li.
The COMi device driver has other extensions that are application specific.  if
you have an application that takes advantage of one or more of these extensions, that
application's documentation will explain the necessary steps for use of the required
extensions.
:li.The most important extension in COMi, we feel, is support for COMscope.  COMscope
and COMi allow for total control and monitoring of serial devices.  COMscope can
monitor all the device and device driver states an application can access.  COMscope
can also capture and display both the transmit and receive streams.
:eol.
.*
.**************************************************
.* Compatibility (1)
.**************************************************
:h1.API Compatibility
:i1.API Compatibility
:p.
The COMi application interface is exactly as described in the "Physical Device
Driver" technical reference for Category One, Asynchronous Serial Device Drivers.
COMi supports all features and functions as described in that reference, except the
Enhanced Mode functions (functions 0x54 and 0x74).
:p.
Differences from COM.SYS&colon.
:p.
There are some differences in how COMi is initialized compared to the COM.SYS device
driver.  Here is a list of the differences:
:ol.
:li.COM.SYS initializes at 1200 baud.  COMi defaults to 9600 baud.
:li.COM.SYS initializes to a protocol of seven data bits, even parity, and one stop
bit.  COMi defaults to a protocol of eight data bits, no parity, and one stop bit.
:li.COM.SYS defaults with hardware buffer functionality set to :link
refid=CON_APO reftype=hd.Automatic Protocol Override:elink. with a receive trigger
level of eight bytes.  COMi defaults to hardware buffers on, with a receive trigger
level of fourteen bytes and a transmit buffer depth of sixteen bytes.
:li.COM.SYS has fixed receive and transmit buffers.  COMi's buffer sizes are user
definable.
:li.All COM.SYS defaults are fixed.  With COMi, all startup defaults, including
protocol, baud rate, buffers sizes, read and write time-out processing and time-out
values, FIFO functionality, and handshaking protocols are user definable.  This
feature allows COMi to use startup defaults defined by the user.
:li.COM.SYS does not support COMscope or COMspool, COMi does (this is important!).
:eol.
:p.
There should be one other difference noted here, though it pertains only to
documentation.  The "Physical Device Driver" technical reference stated that the
COM.SYS device driver starts up with CTS and DTR output handshaking, DSR
input sensitivity, and RTS input handshaking, enabled.  The COM.SYS device driver
starts up with no handshaking enabled and neither does COMi, unless the end-user
makes it so.
.*
.**************************************************
.* System and Adapter Support (1)
.**************************************************
:h1.System and Adapter Support
:i1 id=SUPPORT.System and Adapter Support
:p.
COMi can work with any adapter that uses any of the required serial devices, in any
combination and in any quantity your OS/2:link refid=IBM reftype=fn.*:elink. system
can accommodate.  There are some restrictions and caveats, though, and these are what
this part of the manual will explain.
:p.
COMi is designed to allow an OS/2 system to access multiple serial devices at baud
rates of 115.2K and above, using "dumb", inexpensive, Universal Asynchronous Receiver
Transmitters (UARTs).  The device driver will support any UART of the 16550 family.
This includes the 8250, 8250A, 16450, 16450A, 16550A, 16550B, and some others,
including most built-in UARTs that are part of a motherboard chip set.
:p.
Systems Supported&colon.
:ul compact.
:li.:link refid=SUPPORT_MCA reftype=hd.Micro Channel Architecture Machines:elink.
:li.:link refid=SUPPORT_ISA reftype=hd.Industry Standard Architecture Machines:elink.
:eul.
:p.
ISA shared interrupt capable adapters supported&colon.
:ul compact.
:li.:link refid=HLPC_ADAPTERS reftype=hd.Serial Adapters Supported:elink.
:eul.
:p.
Devices Supported&colon.
:ul compact.
:li.:link refid=SUPPORT_16550 reftype=hd.16550 UART:elink.
:li.:link refid=SUPPORT_16450 reftype=hd.16450 UART:elink.
:li.:link refid=SUPPORT_8250 reftype=hd.8250 UART:elink.
:eul.
.*
.**************************************************
.* 16550 UART (2)
.**************************************************
:h2 id=SUPPORT_16550.16550 UART Support
:i2 refid=SUPPORT.16550 UART Support
:p.
For now, the 16550 UART is the device of choice for OS/2:link refid=IBM
reftype=fn.*:elink.  systems.  These UARTs have both receive and transmit First In
First Out (FIFO) buffers.  These buffers allow a greater throughput with less
interrupt overhead.
:p.
When the 16550 UART's FIFO modes are enabled the device will normally interrupt the
CPU every 14 received characters or every 16 transmitted characters.  This means that
a device receiving data at 57600 baud will get an interrupt about every 2.5
milliseconds.  For comparison, without FIFOs, a device running at 57600 baud would
get an interrupt about every 170 microseconds.
:p.
The COMi device driver will automatically determine if any device it is configured to
support has hardware buffers, and will take full advantage of those buffers when they
are available
.*
.**************************************************
.* 16450 UART (2)
.**************************************************
:h2 id=SUPPORT_16450.16450 UART Support
:i2 refid=SUPPORT.16450 UART Support
:p.
It is not recommended that you use any adapter that contains 16450 UARTs.  These
UARTs have no hardware buffering capabilities and will interrupt the CPU whenever a
character is received or transmitted.  This means that if you are running a
communications program at 9600 baud there will be an interrupt about every one
millisecond, possibly more if your application is receiving and streaming data
(transmitting/receiving large strings) in a full duplex mode.
.*
.**************************************************
.* 8250 UART (2)
.**************************************************
:h2 id=SUPPORT_8250.8250 UART Support
:i2 refid=SUPPORT.8250 UART Support
:p.
As with the 16450 UART, the 8250 UART does not contain FIFOs, and it is not
recommended that you use serial adapters that use 8250 UARTs in OS/2:link refid=IBM
reftype=fn.*:elink.  systems.  COMi will work with these UARTs but your system
performance may be greatly diminished when using them at higher baud rates.
.*
.**************************************************
.* MCA support (2)
.**************************************************
:h2 id=SUPPORT_MCA.MCA Support
:i2 refid=SUPPORT.MCA Support
:p.
:link refid=MCA reftype=fn.MCA:elink. machines are designed to allow adapters and/or
devices to share hardware interrupts.  This architecture makes it easy for COMi to
support any number of serial devices in any combinations of device base addresses and
hardware interrupts, with the following recommendations and restrictions:
:ol.
:li.Try to evenly distribute the number of devices per hardware interrupt, or use the
least number of devices per hardware interrupt level when using higher baud rates.
:li.Try not to use more than eight serial devices per hardware interrupt level.
:li.If you need more than eight serial ports you must use adapters that support base
addresses other than the eight pre-assigned MCA serial device base addresses and
hardware interrupt levels.
:eol.
.*
.**************************************************
.* ISA support (2)
.**************************************************
:h2 id=SUPPORT_ISA.ISA Support
:i2 refid=SUPPORT.ISA Support
:p.
:link refid=ISA reftype=fn.ISA:elink. machines do not normally allow adapters, or
devices, to share hardware interrupt levels.  Because of this (deficiency) there are
certain restrictions for configuring the device driver for access to serial adapters
and multiple serial devices.  These restrictions include:
:ol compact.
:li.Shared interrupts are supported only when used with adapters that support shared
interrupts.
:li.If you assign the same hardware interrupt level to two different adapters, or
devices, that do not support shared interrupts, you may lose received characters.
:li.If you assign the same hardware interrupt level to two different adapters, or
devices, that do not support shared interrupts, you will probably lock-up your system,
especially if you are not accessing the port in a separate thread from your window procedure.
:li.You may connect multiple, non-interrupt sharing, devices to a single interrupt
without problems if the device is connected to the bus in a "wired-OR" circuit, and
if you open and access only one of those devices at a time.
:eol.
:p.
Related Information&colon.
:ul compact.
:li.:link refid=HLPI_INST_ISA_PORTS reftype=hd.Installing ISA Serial Devices:elink.
:li.:link refid=HLPC_ADAPTERS reftype=hd.Serial Adapters Supported:elink.
:li.:link refid=HLPC_ADAPTER_TYPES reftype=hd.Shared Interrupt Adapter Types:elink.
:eul.
.*
.*******************************************************************************
.*   Installing ISA COM ports
.*******************************************************************************
:h1 id=HLPI_INST_ISA_PORTS.Installing ISA Serial Devices
:i2 refid=SUPPORT.ISA Serial Device Installation
:p.
If you are installing serial device support in an ISA machine and you intend to connect
multiple devices to a single hardware interrupt level you need to be aware of the following&colon.
:ol.
:li.Your adapter must have special features to support interrupt sharing.
:li.The adapter's special features that allow interrupt sharing must be enabled and
configured correctly.
:li.You must know the hardware address of your adapter's interrupt status or ID register.
:li.You must open the adapter set-up dialog by clicking on the :hp2.Adpter Set-up:ehp2.
button from the :hp2.Device Driver Configuration:ehp2. dialog to specify the adapter type,
hardware interrupt level, and address of the interrupt status/ID register in order to
define more than one device to a hardware interrupt level.
:eol.
:nt.
Sharing interrupts on an :link refid=MCA reftype=fn.MCA:elink. machine requires no special
configuation.  Please note, though, that it is not recommended that you connect more than
eight devices to any one hardware interrupt level.
:ent.
Related Information&colon.
:ul compact.
:li.:link refid=HLPC_ADAPTERS reftype=hd.Serial Adapters Supported:elink.
:li.:link refid=HLPC_ADAPTER_TYPES reftype=hd.Shared Interrupt Adapter Types:elink.
:eul.
.*
.*************************************************************************
.*  Adapter Types
.*************************************************************************
:h2 id=HLPC_ADAPTER_TYPES.Shared Interrupt Adapter Types
:i2 refid=SUPPORT.ISA Adapter Types
:p.
:p.
In order for COMi to support shared interrupts on an :link refid=ISA reftype=fn.ISA:elink.
machine, an adapter of one of the types described below must be used.
:p.
:hp2.Type One:ehp2.&colon.
:ol compact.
:li.All devices on an adapter can be connected to a single IRQ line.
:li.The adapter has an interrupt ID register at adapter base I/O address +7.
:li.Each bit in the interrupt ID register represents one, and only one, serial device.
:li.When there is no device with a pending interrupt, the ID register will be read as a zero.
:eol.
:p.
:hp2.Type Two:ehp2.&colon.
:ol compact.
:li.A Texas Instruments 16C550B UARTs are installed on the adapter.
:li.All devices on an adapter can be connected to a single IRQ line.
:li.The adapter has an interrupt ID register at adapter base I/O address +7.
:li.Each bit in the interrupt ID register represents one, and only one, serial device.
:li.When there is no device with a pending interrupt, the ID register will be read as a zero.
:eol.
:p.
:hp2.Type Three:ehp2.&colon.
:ol compact.
:li.All devices on an adapter can be connected to a single IRQ line.
:li.The adapter has an interrupt ID register at a fixed or user defined address.
:li.Each bit in the interrupt ID register represents one, and only one, serial device.
:li.When there is no device with a pending interrupt, the ID register will be read as a zero.
:eol.
:p.
:hp2.Type Four:ehp2.&colon.
:ol compact.
:li.The adapter has an interrupt ID register at a user definable address.
:li.The address of the interrupt ID register is as defined by the user for odd interrupts (3, 5, 7, 9, 11, 13, 15) and
is at the user defined address +1 for even interrupts (2, 4, 6, 8, 10, 12, 14).
:li.The value read from the interrupt ID register indicates the highest priority device that
has an interrupt pending.
:li.When there is no device with a pending interrupt, the ID register will be read as all ones (0xFF).
:p.:hp8.This adapter type should be used to support DigiBoard's PC/4 and PC/8 serial adapters, only.:ehp8.
:eol.
:p.
:hp2.Type Five:ehp2.&colon.
:ol compact.
:li.All devices on an adapter can be connected to a single IRQ line.
:li.The adapter has an interrupt ID register at a fixed address that is based on which
of four available PALs is installed on the adapter.
:li.The value read from the interrupt ID register indicates the highest priority device that
has an interrupt pending.
:li.When there is no device with a pending interrupt, the ID register will be read as all ones (0xFF).
:p.:hp8.This adapter type should be used to support DigiBoard's PC/16 serial adapters, only.:ehp8.
:eol.
:sl compact.
:li.Related Information&colon.
:ul compact.
:li.:link refid=HLPC_ADAPTERS reftype=hd.Serial Adapters Supported:elink.
:eul.
:esl.
.*
.**************************************************************************
.*     Adapters supported
.**************************************************************************
:h2 id=HLPC_ADAPTERS.Serial Adapters Supported
:i2 refid=SUPPORT.ISA Adapters Supported
:p.
COMi has been tested with the following serial adapters.
:table cols='5 18 12'.
:row.
:c.Type
:c.Manufacturer
:c.Model
:row.
:c.One
:c.Sealevel Systems
:c.COMM+4
:row.
:c.
:c.
:c.TURBOCOMM+8
:row.
:c.
:c.Globetek
:c.Four Port
:row.
:c.
:c.Quatech
:c.ES-xxx
:row.
:c.
:c.
:c.QS-xxx
:row.
:c.Two
:c.Comtrol
:c.Hostess RJ45
:row.
:c.
:c.
:c.Hostess RJ11
:row.
:c.Three
:c.Connect Tech
:c.DFLEX
:row.
:c.Four
:c.DigiBoard
:c.PC/4
:row.
:c.
:c.
:c.PC/8
:row.
:c.Five
:c.DigiBoard
:c.PC/16
:etable.
COMi will support shared interrupts with all of the adapters listed above and any other
adapter that uses one of the interrupt sharing schemes described under
:link refid=HLPC_ADAPTER_TYPES reftype=hd.COMi Adapter Types:elink..
.*
.**************************************************
.* Troubleshooting (1)
.**************************************************
:h1.Troubleshooting
:i1 id=TS.Troubleshooting
:p.
Believe it or not, the COMi installation and configuration process is not always as
simple and straight forward as we would like it to be.
:p.The following is help and explanation for the most common problems encountered
when attempting to install, configure, and access the COMi device driver&colon.
:ul compact.
:li.:link refid=TS_INT_LEVEL reftype=hd.Hardware Interrupt Level Selection:elink.
:li.:link refid=TS_ADDR reftype=hd.Base I/O Address Selection:elink.
:li.:link refid=TS_START reftype=hd.Errors During System Start-up:elink.
:li.:link refid=TS_COMSYS reftype=hd.Loading with COM.SYS:elink.
:li.:link refid=TS_RUNTIME reftype=hd.Run-time Problems:elink.
:li.:link refid=TS_RUN_RW reftype=hd.Read/Write Errors:elink.
:li.:link refid=TS_RUN_DEVCTL reftype=hd.Device I/O control (DosDevIOCtl)
Errors:elink.
:li.:link refid=TS_RUN_LOCK_MOUSE reftype=hd.Lock-up, Pointer Moves:elink.
:li.:link refid=TS_RUN_LOCK_NO_MOUSE reftype=hd.Lock-up, Pointer Does Not Move:elink.
:eul.
.*
.**************************************************
.* Int Level (2)
.**************************************************
:h2 id=TS_INT_LEVEL.Hardware Interrupt Level Selection
:i2 refid=TS.Hardware Interrupt Level Selection
:p.
The COMi configuration program will not normally allow you to configure more than one device
per hardware interrupt level on :link refid=ISA reftype=fn.ISA:elink. machines unless
you have selected an adapter type from the :hp2.Adpter Set-up:ehp2. dialog, supplied an
interrupt status register address, and selected an interrupt level.
:nt text=CAUTION.
If you supply an interrupt status register address and there is no such
register with that function your, system WILL lock-up.
:ent.
You may configure more than one device to share an interrupt level by selecting the
:hp2.Extensions...:ehp2. button when configuring a device, and selecting the
"Share Interrupt Connection" check box.
:p.
In order to share interrupts using this "extension", your hardware must have a
"wired-OR" interrupt circuit that ties each device to the system board's Interrupt
Request (IRQ) circuit.  You can expect this to be the case any time you are using
a multi-device adapter that allows you to connect more than one device to any one
interrupt level.  Adapters that contain only one serial device rarely use this
type of circuit.
:p.
In general it is not a good idea to configure devices on more than one adapter to share
interrupts.  The exception is when your are using any adapter that specifically
supports multi-adapter interrupt sharing.
:p.
:link refid=MCA reftype=fn.MCA:elink. machines are designed to allow interrupt
sharing.  You can select any hardware interrupt level, though we do not recommend
assigning more than eight devices to any one hardware interrupt level.
.*
.**************************************************
.* Address (2)
.**************************************************
:h2 id=TS_ADDR.Base I/O Address Selection
:i2 refid=TS.Base I/O Address Selection
:p.
The configuration programs will not allow you to select a base I/O address for any
device that is assigned to another COMi controlled device, nor will it allow you to
select a base address that is not at an eight byte boundary.
.*
.**************************************************
.* startup (2)
.**************************************************
:h2 id=TS_START.Errors During System Start-up
:i2 refid=TS.Errors During System Start-up
:p.
During each load of the COMi device driver each defined device is normally tested to
determine the following&colon.
:ol compact.
:li.If the device is a qualified UART.
:li.If the configured hardware interrupt level is available.
:li.If the device is connected to the configured hardware interrupt level.
:li.If the configured interrupt status register (if any) is correct.
:li.If the UART has FIFO capabilities (hardware buffers).
:eol.
:p.
Any device failing the first four tests will not be installed and will not be
available at run-time.  If you KNOW that the device is valid as defined, you can
select :hp2.Disable Start-up UART Tests:ehp2. in the Extensions dialog box for this
device.  Enabling this extension will cause all tests to be bypassed except the
interrupt level availability test (number two).
:p.
This may be necessary if you have a UART that is built into the motherboard chip
set, or a device that is not quite compatible with the 8250/16450/16550 UART.
.*
.**************************************************
.* with COM.SYS (2)
.**************************************************
:h2 id=TS_COMSYS.Loading with COM.SYS
:i2 refid=TS.Errors Loading with COM.SYS
:p.
COMi will work when COM.SYS and VCOM.SYS are loaded.  If you want to use both COMi
and COM.SYS you will need to insure that COM.SYS is loaded before COMi.  The
configuration program will normally place COMi "DEVICE=" statements at the end of the
CONFIG.SYS file, so this should not be a problem.
:p.
You will also have to refrain from naming COMi devices with the same names COM.SYS
will use.  Naming a COMi device COM1 through COM4 will cause COM.SYS to drop access 
to any device it owns with those device names.  If you know that you do not have
serial hardware at a traditional, or pre-defined, COMx location you can use that
device name without problems.
:p.
If you want to use COM.SYS for some COM ports and COMi for other's you need only
configure COMi to use the device name (COMx) you want COM.SYS to drop.
:p.
Additional Considerations&colon.
:ol compact.
:li.:link refid=TS_COMSYS_ISA reftype=hd.ISA machines:elink.
:li.:link refid=TS_COMSYS_MCA reftype=hd.MCA machines:elink.
:eol.
.*
.**************************************************
.* with COM.SYS, ISA (3)
.**************************************************
:h3 id=TS_COMSYS_ISA.ISA Considerations
:i2 refid=TS.ISA Considerations
:p.
:link refid=ISA reftype=fn.ISA:elink. machines have traditionally defined serial
devices for COM1 through COM4.  Below is a listing of traditional ISA serial port
specifications.
:table cols='9 9 9'.
:row.
:c.Device Name:c.Base Address:c.Interrupt Level
:row.
:c.COM1:c.0x3F8:c.4
:row.
:c.COM2:c.0x2F8:c.3
:row.
:c.COM3:c.0x3E8:c.4
:row.
:c.COM4:c.0x2E8:c.3
:etable.
:p.
The COM.SYS device driver will normally connect only to COM1 and COM2.  However, you
can request access to COM3 and COM4 by defining the port number, base address, and
interrupt level on the "DEVICE=d&colon.\path\COM.SYS" command line in the CONFIG.SYS
file.  Using this method will not allow you to share interrupts, but you could get
sequential access to devices defined with the same hardware interrupt level.
:p.
If you want to have COM.SYS and VCOM.SYS control any of the above listed devices you
will not be able to use their respective COMx device names when configuring COMi.
:p.
For information on how to configure COM.SYS for COM3 and COM4 access enter "HELP
COM.SYS" from any command prompt, or search in the "Command Reference" for "COM.SYS".
.*
.**************************************************
.* with COM.SYS, MCA (3)
.**************************************************
:h3 id=TS_COMSYS_MCA.MCA Considerations
:i2 refid=TS.MCA Considerations
:p.
MCA machines have eight pre-defined serial port designations.  COM1 through COM4 can
be controlled by COM.SYS.  Below is a listing of pre-defined MCA serial port
specifications.
:table cols='9 9 9'.
:row.
:c.Device Name:c.Base Address:c.Interrupt Level
:row.
:c.COM1:c.0x3F8:c.4
:row.
:c.COM2:c.0x2F8:c.3
:row.
:c.COM3:c.0x3220:c.3
:row.
:c.COM4:c.0x3228:c.3
:row.
:c.COM5:c.0x4220:c.3
:row.
:c.COM6:c.0x4228:c.3
:row.
:c.COM7:c.0x5220:c.3
:row.
:c.COM8:c.0x5228:c.3
:etable.
:p.
COM.SYS will allow you to access up to four devices from this list and will
automatically use COM1 through COM4 for the first four serial devices it detects from
the above list.  The COMi device driver will also automatically configure itself, but
it will allow you to access all eight devices defined in the list above.
:p.
COMi will try to automatically configure itself for any unowned device it detects in
the list above.  If COM.SYS or any other ABIOS aware serial device driver is loaded,
COMi will not install any COMx port or device that is already owned by a previously
loaded device driver.  You will need to create an initialization file with a COMi
configuration program (COMscope or Install) if you want COMi to control any device
that a previously loaded device driver owns.
:p.
If you need access to more than eight serial devices and/or serial devices that are
not configured as defined in the above table, you will also need to create an
initialization file with a COMi configuration program.
.*
.**************************************************
.* run-time errors (2)
.**************************************************
:h2 id=TS_RUNTIME.Run-time Problems
:i2 refid=TS.Run-time Problems
:p.
Improperly configuring COMi and/or the serial adapter can cause various kinds of
problems, none of which result in increased productivity.
:p.
The following items are the most common problems&colon.
:ul compact.
:li.:link refid=TS_RUN_RW reftype=hd.Read/Write Errors:elink.
:li.:link refid=TS_RUN_DEVCTL reftype=hd.Device I/O control (DosDevIOCtl)
Errors:elink.
:li.:link refid=TS_RUN_LOCK_MOUSE reftype=hd.Lock-up, Pointer Moves:elink.
:li.:link refid=TS_RUN_LOCK_NO_MOUSE reftype=hd.Lock-up, Pointer Does Not Move:elink.
:eul.
.*
.**************************************************
.* Read/Write Errors (3)
.**************************************************
:h3 id=TS_RUN_RW.Read/Write Errors
:i2 refid=TS.Read/Write Errors
:p.
When an application writes to, or reads from, a COMx device, the device driver does
not normally return to the calling thread until all requested characters have been
either received or transmitted.  If a time-out occurs before all characters have been
transmitted, or received, the device driver will return to the calling thread with a
count of the actual characters written, or read.
:p.
An application should test the returned count to determine if it should try to
re-transmit, or read again, any remaining characters.
:p.
Write time-outs normally occur only when some output handshaking has been enabled and
some event has caused the device driver to stop transmitting before it could transmit
all of the requested characters.  Read time-outs can occur anytime the "far-end"
stops transmitting, before all requested characters have been received.
.*
.**************************************************
.* Device I/O control (DosDevIOCtrl) Errors (3)
.**************************************************
:h3 id=TS_RUN_DEVCTL.Device I/O control (DosDevIOCtl) Errors
:i2 refid=TS.Device I/O control (DosDevIOCtl) Errors
:p.
See the "Physical Device Driver".  technical reference, Category One,
Asynchronous Serial Device Drivers, for a complete description of the device I/O
control commands and their various input and output parameters.  COMi is designed to
operate according to that application interface.
:p.
Your distribution diskette contains a "C" source file that has sample code for
most of the DosDevIOCtl functions defined in the Technical Reference.  The
file name is "IOCTL.C".
.*
.**************************************************
.* Lock-up, Pointer (mouse) Moves (3)
.**************************************************
:h3 id=TS_RUN_LOCK_MOUSE.Lock-up, Pointer Moves
:i2 refid=TS.Lock-up, Pointer Moves
:p.
An application has probably tried to read the COM device from the window procedure
thread, the time-out is set for the default one minute read time-out, and no
characters are arriving at the UART.
:p.
The device driver does not return to the calling thread until no characters have been
received for the user configured read time-out count.  It is recommended that an
application access any COM device with a thread separate from the thread in which its
window procedure is running.
:p.
Of course there are other reasons for system lock-up, but this one seems to be the
most common when accessing COM devices.
.*
.**************************************************
.* Lock-up, Pointer Does Not Move (3)
.**************************************************
:h3 id=TS_RUN_LOCK_NO_MOUSE.Lock-up, Pointer Does Not Move
:i2 refid=TS.Lock-up, Pointer Does Not Move
:p.
This problem, when related to COM devices, is almost always caused by improper
configuration of the device driver and/or serial adapter and/or device, and is the
result of an endless loop within the interrupt service routine while interrupts have
been disabled.  Make sure that the COMi device driver is configured correctly for
your adapter and that the serial adapter and/or device is configured as you intended.
.*
.**************************************************
.* Concepts (1)
.**************************************************
:h1.Communications Concepts
:i1 id=CONCEPTS.Communications Concepts
:p.
This section is a "catch-all" for information we thought might be useful.
:p.
Concepts&colon.
:ul compact.
:li.:link refid=CON_HS reftype=hd.Why Handshaking?:elink.
:li.:link refid=CON_APO reftype=hd.Automatic Protocol Override:elink.
:eul.
.*
.**************************************************
.* Handshaking, Concepts (2)
.**************************************************
:h2 id=CON_HS.Why Handshaking?
:i2 refid=CONCEPTS.Why Handshaking?
:p.
In any system it is important that all real-time activities, like serial
communications, be truly asynchronous.  Basically this means that no information
should be lost because the operating system was busy doing something else.
:p.
In operating systems like DOS, or DOS and Windows:link refid=M$ reftype=fn.**:elink.,
there is never any guarantee the operating system will be able to get to a 
"real-time" process in a timely manner.  Each process in these systems "owns" the
machine until it relinquishes control.  If a real-time process needs
service it has to wait until any currently running process has completed.
:p.
In OS/2:link refid=IBM reftype=fn.*:elink. this is not normally a problem.  Its
structure is such that hardware interrupts have the highest priority and are serviced
almost immediately, and other processes are given a time-slice in which to execute.
:p.
Problems can occur in two ways.  The first is when hardware interrupts come in faster
than the operating system can respond.  For asynchronous serial communications this
problem is addressed mostly by serial devices with hardware buffers (FIFOs).
:p.
The second problem is that an application may not be able to read and process incoming
information as fast as the hardware and device driver can receive and store
information.  This problem is addressed by the :hp2.handshaking:ehp2. features of
the serial device driver.
:p.
When handshaking is enabled the receiving system will signal the transmitting system
to stop transmitting when its receive buffer nears full capacity.  The transmitting
system should stop transmitting when it receives a signal to stop.
:p.
In OS/2, a serial device driver must be capable of handshaking without intervention 
or control by the controlling higher level process.  All a controlling process needs 
to do is command the device driver into a handshaking mode and the device driver must
do all of the processing to be sure that the controlling process does not lose any
information.  This includes detecting when its own receive buffer is nearly full so
it can send a "stop transmitting" signal and then detecting when its receive buffer
has been emptied enough so that it can send a "start transmitting" signal.  It
also includes detecting when the device it is transmitting to has sent a "stop
transmitting" or "start transmitting" signal and act accordingly.
.*
.**************************************************
.* APO, Concepts (2)
.**************************************************
:h2 id=CON_APO.Why Automatic Protocol Override
:i2 refid=CONCEPTS.Automatic Protocol Override
:p.
This feature can only be enabled when a device has hardware buffers (FIFOs).  Normally
you would want to enable hardware buffers to reduce system overhead.  When
handshaking is required between this hardware (near-end) and some external hardware
(far-end) it may be required that a far-end's request to stop transmitting be acted
upon immediately.
:p.
If hardware buffers are enabled it would be possible for that hardware to transmit up
to twenty bytes after the far-end sends a "stop transmitting" signal.  This
is because once the device driver has filled the hardware buffer, transmission will
continue until the buffer is empty.  This may cause a problem for some far-end
equipment.
:p.
This problem can occur when any output handshaking is enabled.  This includes CTS,
DSR, and/or DCD output handshaking and transmit Xon/Xoff handshaking.  The CTS, DSR,
and DCD signals are "hardware" flow control signals and transmit Xon/Xoff handshaking
is "software" flow control signaling.
:p.
There are two output handshaking scenarios to consider.  The first is the
"hardware" signaling case.  When the far-end's receive buffer is full (or
nearly full) it may signal to the near-end by making one or more of the "hardware"
signals inactive.  When the near-end detects an inactive signal it should stop
transmitting.  If the transmit buffer is enabled at the near-end it may transmit up
to 16 bytes before it can act on that signal to stop.
:p.
The second case is "software" signaling.  When the far-end's receive buffer
is full (or nearly full) it may signal to the near-end by transmitting an Xoff
character.  When the near-end receives the Xoff character it should stop
transmitting.  If, at the near-end, the receive buffer is enabled, it will not detect
the request to stop transmitting until it has read the Xoff character from the
receive buffer, and if the transmit buffer is enabled it may transmit up to sixteen
bytes before it stops transmitting.
:p.
The worst case could occur when "software" signaling is enabled.  When
hardware buffers are enabled it would be possible for an Xoff character to be
received by the hardware and not read by the device driver for up to four
character-times after the byte was received.  The worst case would be for the Xoff
character to arrive at the near-end hardware just as there are four characters left
in the transmit buffer to be transmitted.  The device would cause a transmit
interrupt just as the last or the four bytes is transmitted and the device driver
would refill the transmit buffer, then the device would cause a receive FIFO time-out
interrupt and the device driver would read, and detect, the Xoff character,
preventing further transmissions.  This case could allow up to twenty bytes to be
transmitted after the far-end transmitted the Xoff character.
:p.
All of these potential problems go away if the transmit buffer is disabled when any
output handshaking is enabled and the receive buffer is disabled when transmit
Xon/Xoff handshaking is enabled.
:p.
When :hp2.Automatic Protocol Override:ehp2. (APO) is enabled the device driver
adjusts hardware buffer functionality according to handshaking requirements.  When
APO is enabled and an application requests CTS, DSR, or DCD output handshaking the
device driver will disable the transmit buffer.  When APO is enabled and an
application requests transmit Xon/Xoff handshaking the device driver will disable
both the transmit and receive buffers.
:p.
There is one other adjustment :hp2.Automatic Protocol Override:ehp2. can cause the
device driver to make to the hardware buffers of a device.  When DSR input
sensitivity is enabled, and APO is enabled, the receive buffer will be disabled by
the device driver.
:p.
DSR input sensitivity is designed to handle devices that may transmit garbage
whenever DSR is in the inactive state.  In this case it would be necessary to ignore
any bytes received while DSR is inactive.  It may be possible for the far-end to
transmit a character at the same time it activates DSR.  This could cause the
near-end to miss a valid byte if its receive buffer is enabled.
:p.
What does all this mean to you?  Probably nothing.  There are not many "far-end"
devices around these days that do not have some level of buffering capability.  We
recommend that you leave APO off, and FIFOs enabled, unless, and until, you determine
that you are communicating with some archaic equipment that requires it.
.im p:\help\footnote.ipf
:euserdoc.
