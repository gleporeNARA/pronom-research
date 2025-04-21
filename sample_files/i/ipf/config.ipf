:userdoc.
.im p:\help\CFG_instl.ipf
.im p:\help\port_cfg.ipf
.*
.************************************************
.*  Spooler setup Dialog help
.************************************************
:h1 hide res=40109 name=HLPP_SPOOL_DLG.Help for Spooler Port Setup
:p.
The DOS device name, hardware address, and interrupt level of the port you
are configuring is displayed in red near the top of the dialog box.
:p.
Use the :hp2.Port Setup:ehp2. group to set the various run-time parameters for port
you are configuring.
:ul.
:li.Select the :hp2.Line Characteristics...:ehp2. button to set the data word size,
the number of stop bits, and the parity the connected printer requires.
:li.Select the :hp2.Baud Rate...:ehp2. button to set the baud rate to match that
of the printer's.
:li.Select the :hp2.Handshaking...:ehp2. button to set the handshaking protocol the
connected printer requires.
:li.Select the :hp2.UART Buffers (FIFOs)...:ehp2. to set the devices hardware buffer
processing.
:li.Select the :hp2.Timeouts...:ehp2. button to set the timeout processing and timeout
counts for the Port you are configuring.
:li.Select the :hp2.Stream Filters...:ehp2. button to enable or disable error and
break character replacement and NULL stripping for this port.
:eul.
:nt.
All of the port parameters set from buttons in the :hp2.Port Setup:ehp2. group will used
to initialize communications to the printer each time the print spooler software begins
to send a print job to this spooled port.
:ent.
Use the :hp2.Device Driver Setup:ehp2. group to set up device driver parameters that
require a system reset to take effect.
:ul.
:li.Select the :hp2.Device Driver Buffers...:ehp2. button to set the sizes of the device
driver's transmit, receive, and COMscope buffers and to enable or disable COMscope access.
:li.Select the :hp2.Device Driver Extensions...:ehp2. button to enable or disable
various device driver extensions.
:eul.
.*
.************************************************
.*   GENERAL HELP
.************************************************
.*:h1 res=30004 name=HLPP_GENERAL.Help for COMi Configuration
.*:i1.General Help
.*:p.
.*COMi reads an initialization file at startup to determine the :link refid=address
.*reftype=fn.base I/O address:elink., hardware :link refid=int_level reftype=fn.interrupt level:elink.,
.*DOS device name, and other related information of each serial device it is to control.
.*:p.
.*This process creates and/or updates the COMi initialization file.
.*:p.
.*If you are installing COMi on an :link refid=ISA reftype=fn.ISA:elink., COMi cannot
.*control any serial device until a valid initialization file exists.  Installing COMi
.*on an :link refid=MCA reftype=fn.MCA:elink. machine does not require an initialization file
.*unless you need to support non-standard hardware, or want to suppport more than the eight
.*pre-defined serial ports.
.*:p.
.*Additional Information&colon.
.*:ul compact.
.*:li.:link refid=HLPI_TIMEOUTS reftype=hd.Selecting a Port's Default Time-out Processing:elink.
.*:li.:link refid=HLPI_HANDSHAKE reftype=hd.Selecting a Port's Default Handshake Modes:elink.
.*:li.:link refid=HLPI_PROTOCOL reftype=hd.Selecting a Port's Default Protocol:elink.
.*:li.:link refid=HLPI_BUFFERS reftype=hd.Selecting a Device Driver Buffer Sizes:elink.
.*:li.:link refid=HLPI_EXTENSION reftype=hd.Selecting Device Driver Extensions:elink.
.*:li.:link refid=HLPI_SPOOL reftype=hd.Install COMi Print Spooler Support:elink.
.*:eul.
.************************
.im p:\help\footnote.ipf
:euserdoc.
