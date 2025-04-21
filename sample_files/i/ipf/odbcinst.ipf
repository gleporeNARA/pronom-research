:userdoc.
:title.ODBC Installer
:docprof  toc=123456
ctrlarea=coverpage.
:h1 id=ID@1.Overview
ODBC Installer is an application built for an article on ODBC in OS2eZine -
www.os2ezine.com
The ODBC Installer is an OS/2 application designed to
:ul.
:li.Install the ODBC Administrator and Driver Manager
:li.Install ODBC database drivers
:li.Delete already installed ODBC database drivers
:p.
:eul.
The ODBC Installer package does :hp1.not :ehp1.include the ODBC Administrator,
Driver Manager or database drivers; you have to obtain those separately, see
:link reftype=hd refid=ID@21.Obtaining ODBC Drivers and Files:elink..
The ODBC Installer will install and correctly configure the following ODBC
Drivers:
:ul.
:li.DB2/2 - all versions
:li.All Intersolv version 2.11 and 3.01 drivers: Btrieve, DB2, dBase, Gupta
SQLBase, Informix, Ingress, MicroDecisionware DB2 gatewate, MS SQL Server,
Oracle, Sybase System 10, and Text Files.
:li.PostgreSql version 7.01 and 7.1
:li.Sybase SQL Anywhere 5.0
:li.Watcom SQL 4
:eul.
:p.
:p.The ODBC Installer is distributed with source code. It is a DrDialog based
application. See :link reftype=hd refid=ID@27.Copyright :elink.for any
restrictions.
:h1 id=ID@2.Installing
The steps for installing are:
:ol.
:li.Read the messages, if any appear, when the ODBC Installer first starts. You
can re-display the messages at any time by pressing the Show Message Log button.
:li.Enter a source file containing the ODBC components on the :link
reftype=hd refid=ID@3.Source page:elink..
:li.Select the Administrator & Driver Manager if you want to install these - and
if the source contains those files.
:li.Confirm or change the directories where the ODBC files are to be installed
on the :link reftype=hd refid=ID@4.Destination page:elink..
:li.Select one or more database drivers to install on the :link
reftype=hd refid=ID@5.Drivers page :elink.- if the source has database drivers.
:li.Press the INSTALL button.
:eol.
:p.If the install needs to modify your CONFIG.SYS file it will do so, making a
backup copy first. When the install completes you will see an message box; if
the CONFIG.SYS has been modified you will be asked to re-boot to complete the
installation.
:h1 id=ID@3.Source Page
The Source page is where you enter the name of the zip file containing the ODBC
components to install, or the directory where the components are located. The
ODBC components can be
:sl.
:li.ODBC Administrator and Driver Manager
:li.ODBC Database Drivers
:esl.
:p.The Browse button will open a file dialog box, but you can only use this to
select files, not directories.
:p.
:p.When you move your cursor off the entry file, the file or directory you enter
on this page is searched for ODBC components; if any are found the check box for
installing the Administrator and Driver Manager is checked an enabled, and all
the database drivers found appear in the Drivers page. You can use the Enter key
with your cursor on the entry field to cause the search to happen, or you can
click off the entry field onto the status line at the bottom of the page.
:p.:artwork  runin name='D:\projects\odbc_installer\help\OI_1.bmp'.
:p.
:p.The :link reftype=hd refid=ID@19.Source entry file :elink.can contain a
directory or a zip file name.
:h1 id=ID@4.Destinations Page
The Destinations page is where you specify where the ODBC Installer is to
install the various files. There are four types of files, each with its own
entry field.
:hp2.ODBC INI Files:ehp2.
This is where the ODBC.INI and ODBCINST.INI files are placed. This should
normally be the C:\OS2 directory - assuming your boot drive is C. Don't change
this location unless you have a very good reason.
:hp2.ODBC Executables:ehp2.
This is where the ODBC Administrator and associated help files are placed.
:hp2.ODBC DLLs:ehp2.
This location is where the ODBC Driver Manager and associated files are
installed.  It is highly recommended that you place the ODBC DLLs in their own
directory. This allows that directory to be moved along the LIBPATH in order to
avoid conflicts with other applications or DLLS.
:hp2.ODBC Drivers:ehp2.
The path specified is where each of the database driver files are installed. If
there are common files required by the database drivers they are also placed
here. The help files for each database driver are also placed here
:artwork  align=center name='D:\projects\odbc_installer\help\oi_5.bmp'.
The ODBC Installer will examine your system for existing ODBC Driver Manager and
Administrator, and for existing database drivers. If it finds these it will
automatically set the destination directories to the locations of the existing
components.
:hp2.Create Directories:ehp2.
If you enter a directory that does not exist you will get an error message and
the bottom of the screen and the Create Directories button is enabled. You can
create the directory by pressing the button.
:artwork  align=center name='D:\projects\odbc_installer\help\OI_8.bmp'.
The INSTALL button at the bottom of the screen will be disabled until you have
entered valid, existing directories on the Destination page. (You must also
either have a database driver selected to install or the Administrator/Driver
Manager selected to install for the INSTALL button to be enabled.)
:h1 id=ID@5.Drivers Page
The Drivers page is where you select the ODBC Database Drivers you want to
install.
The Drivers page looks different depending on whether you already have any
database drivers installed. If you do not already have database drivers
installed the page looks like this.
:artwork
align=center name='D:\projects\odbc_installer\help\drivers_newonly.bmp'.
If you already have database drivers installed then the Drivers page looks like
the figure below. It has two minor tabs: Available to Install and
:link reftype=hd refid=ID@7.Already Installed:elink.
:artwork  align=center name='D:\projects\odbc_installer\help\OI_6.bmp'.
:h2 id=ID@6.Available to Install Page
This page lists the drivers the ODBC Installer found in the source
file/directory. You may select one or more drivers from the list to install.
(Use the Shift or Ctrl key when selecting drivers from the list to select
multiple drivers.)
:artwork  runin name='D:\projects\odbc_installer\help\OI_9.bmp'.
:h2 id=ID@7.Already Installed Page
The Already Installed minor tab shows the already installed database drivers.
You can also delete any driver that is installed by selecting that driver and
pressing the :hp2.Delete Driver :ehp2.button. Multiple drivers can be deleted at
once by using the Shift key or the Ctrl key when selecting drivers from the
list.
:artwork  align=center name='D:\projects\odbc_installer\help\OI_7.bmp'.
:h1 id=ID@8.Glossery
This section lists terms and objects used by the ODBC Installer.
:h2 id=ID@9.Administrator
The ODBC Administrator is a graphic program where you create ODBC data sources,
sometimes called data source names (DSN). There are two basic versions:
Version 2.x looks like this
:artwork  runin name='D:\projects\odbc_installer\help\admin25.bmp'.
Version 3 looks like this.
:artwork  runin name='D:\projects\odbc_installer\help\admin3.bmp'.
Both are functionally the same - although the version 3 Administrator has a bug
in the Add drivers screen which prevents the scroll bars from appearing.
The ODBC Installer places an icon for the Administrator in your System Setup
folder. You can easily access this folder by right-clicking on your desktop and
picking System Setup from the pop-up menu.
:h2 id=ID@10.CONFIG.SYS
the CONFIG.SYS file contains the basic configuration information for your
machine. There are three items in the CONFIG.SYS file of interest to the ODBC
Installer
:sl.
:li.The LIBPATH which contains a list of paths that OS/2 is to search when it is
trying to load a DLL. The directory where the ODBC DLLs are installed must
appear in the LIBPATH
:esl.
:sl.
:li.The HELP path contains a list of directories that OS/2 searches when looking
for a help file. The ODBC Driver and ODBC Executables directories must be added
to the HELP path
:esl.
:sl.
:li.The ODBC_PATH statement points to the directory where the ODBCINST.INI and
ODBC.INI files are located. This must be correctly set in the CONFIG.SYS file.
:esl.
:p.The ODBC Installer will modify the CONFIG.SYS file when necessary to update
those three items. If it does so it will first make a backup copy of the
config.sys file.
:h2 id=ID@11.Database Driver
A database driver is a DLL (or a number of DLLs) which are loaded by the ODBC
Driver Manager when you need to communication with a database. Each database
requires its own database driver. The file ODBCINST.INI contains a list of all
the database drivers installed on your machine.
:h2 id=ID@12.Driver List File
This file defines the ODCB database drivers that the ODBC Installer can install.
ODBC Installer comes with a Driver List file already made for 23 or so ODBC
Drivers potentially contained in 39 different files. You do not have to concern
yourself with this file unless you want to add an ODBC database driver to the
ODBC Installer that it does not already recognize.  For each database driver it
defines
:ul.
:li.The files that comprise the driver, i.e. usually one or more DLLs and a help
file.
:li.Any other "required" files. Required files are files that are needed by more
than one ODBC database driver. These are usually DLL files that are shared by
all the database drivers published by a particular vendor.
:li.A pointer to the setup section in the Driver Setup File.
:li.The title of the driver.
:eul.
:p.The ODBC Installer has a Driver List that includes 23 different ODBC
drivers/versions packaged in 39 different files.
:p.You can modify the Driver List to include new drivers, or you can make your
own Driver List and direct the ODBC Installer to use your list with the
DRIVERLIST parameter when starting ODBCINST.EXE. (Supply the name without the
extension - the file :hp1.must  :ehp1.have a .CMD extension).
:p.The Driver List is a Rexx program that is called by the ODBC Installer during
its processing. Any changes you make to the Driver List must comply with Rexx
syntax.
:p.
:p.The default Driver List file is ODBCDrv1.CMD
:p.
:p.:hp2.Format of the Driver List File:ehp2.
:p.
:p.Each driver in the file is represented by a "section" consisting of compound
variable ODBCDrv.xx....   where the second element (xx) has the same value.
:p.
:p.The example below shows the section for the Intersolv Oracle driver. Notice
that all the variables begin with :hp2.ODBCDrv.24:ehp2.
:p.
:p.The third element is what varies in the section.
:p.
:dl tsize=20.
:dt.Element
:dd.Description
:dt.ODBCDrv.xx.0
:dd.Defines how many numbered elements are in the section
:dt.ODBCDrv.xx.1
:dd.File name of the driver. This must be the main driver file. It is always a
DLL file.
:dt.ODBCDrv.xx.T
:dd.The title of the driver. This is the title that will appear in the ODBC
Administrator in the drivers list when are adding a data source.
:dt.ODBCDrv.xx.2...n
:dd.Remaining file(s) needed for the driver.
:dt.ODBCDrv.xx.A
:dd.If the driver is packaged as a zip or pack file, this is the name of the
zipped or packed file. You must still have the individual file names of the
files within the zipped/packed file listed in ODBCDrv.xx.1 ... ODBCDrv.xx.n
:dt.ODBCDrv.xx.S
:dd.This is the "section" number of the setup section in the Setup List file,
i.e. it corresponds the yy in DrvSetup.yy...  Every driver must have a setup
section in the :link reftype=hd refid=ID@14.Driver Setup file:elink.; but
multiple driver entries can share a section in the :link reftype=hd
refid=ID@14.Driver Setup file :elink.if their setup attributes are the same.
:dt.ODBCDrv.xx.R
:dd.This lists the sections in ODBCReq.xx... which must be loaded in order for
this driver to work. The required section allows you to specify one or more
files that are needed for multiple drivers; for example all Intersolv drivers
need various "helper" DLL files. Putting them in the required section means they
only have to be listed once (and they will only be installed once no matter how
many drivers that use them are installed).  In the example below the Oracle
driver requires files from 3 different required sections. (The reason they are
listed in the required as three different sections is because the files are
contained in three different source files.)
:edl.
:p.This is another paragraph
:xmp.
ODBCDrv.24.0=5
ODBCDrv.24.A='IVORA.ZIP'        /* Oracle A (ORA) */
ODBCDrv.24.1='IVORA08.DLL'      /* Oracle A (ORA) */
ODBCDrv.24.2='IVORA08.HLP'
ODBCDrv.24.3='ORA632.DLL'
ODBCDrv.24.4='OSTN32.DLL'
ODBCDrv.24.5='LITB32.DLL'
ODBCDrv.24.T="INTERSOLV 2.11 Oracle"
ODBCDrv.24.S=2
ODBCDrv.24.R="1 2 3"
:exmp.
:p.
:h2 id=ID@13.Driver Manager
The ODBC Driver Manager is the component responsible for loading and unloading
:link reftype=hd refid=ID@11.Database Drivers :elink.when needed. It is also
responsible for communicating with those driver managers. Each version of the
driver manager is supposed to be backwards compatible with previous versions of
:link reftype=hd refid=ID@11.Database Driver :elink.files. Meaning, for example,
that a version 3 Driver Manager will work with version 3 :link
reftype=hd refid=ID@11.Database Drivers :elink.and with version 2.5 and version
1 Database Drivers. A version 2.5 Driver Manager on the other hand will not work
with version 3 :link reftype=hd refid=ID@11.Database Drivers:elink..
:h2 id=ID@14.Driver Setup File
The Driver Setup File defines the settings to be used in ODBCINST.INI when
installing the driver. The ODBC Installer comes with a Driver Setup file already
made for 23 or so ODBC Drivers potentially contained in 39 different files. You
do not have to concern yourself with this file unless you want to add an ODBC
database driver to the ODBC Installer that it does not already recognize. The
file consists of "sections" defined by the second element of the compound
variable DrvSetup.xx...
The example section below shows the setup for an Intersolv Oracle driver.  Each
element in the section is identified by the number in the third element. For
each element there are two attributes a title and a value. In the example below
there are 7 elements - DrvSetup.2.1 through DrvSetup.2.7.  The first element in
the example below has a :hp2.title :ehp2.of APILevel and a :hp2.value :ehp2.of
1.  (This setup section ties to the example in the :link reftype=hd
refid=ID@12.Driver List :elink.example
:xmp.
DrvSetup.2.0 = 7
DrvSetup.2.1.t = "APILevel"
DrvSetup.2.1.v = 1
DrvSetup.2.2.t = "ConnectFunctions"
DrvSetup.2.2.v = "YYY"
DrvSetup.2.3.t = "DriverODBCVer"
DrvSetup.2.3.v = "02.10"
DrvSetup.2.4.t = "FileUsage"
DrvSetup.2.4.v = 0
DrvSetup.2.5.t = "SQLLevel"
DrvSetup.2.5.v = 1
DrvSetup.2.6.t = "Driver"
DrvSetup.2.6.v = ""
DrvSetup.2.7.t = "Setup"
DrvSetup.2.7.v = ""
:exmp.
The element for :hp2.Driver :ehp2.and the element for :hp2.Setup :ehp2.are
somewhat special in that the value can be blank. If the value for the
:hp2.Driver :ehp2.is blank the file name in element 1 of the Driver List will be
used. If the :hp2.Setup :ehp2.is blank the value in the :hp2.Driver :ehp2.will
be used - or the element 1 in the :link reftype=hd refid=ID@12.Driver List
:elink.if the :hp2.Driver :ehp2.is blank.
The :hp2.Driver :ehp2.and :hp2.Setup :ehp2.are also the only two entries in the
ODBCINST.INI file that have a null byte ( hex 00) added to the end of the entry.
This is done because some ODBC Administrators require this to operate correctly.
If any other entry needs a terminating null character you must put this in the
Driver Setup file in the value. The Driver Setup file is a regular Rexx file and
follows Rexx syntax conventions.
:h2 id=ID@26.iODBC
iODBC is the name of an Open Source project to develop an ODBC Driver Manager
for the Unix world. Dirk Ohme has ported iODBC to OS/2 a number of years ago.
The iODBC Driver Manager is not compatible with Intersolv or Visigenic Driver
Managers and does not work correctly with most OS/2 ODBC applications
:h2 id=ID@15.LIBPATH
The LIBPATH statement appears in the CONFIG.SYS file. It defines the directories
that OS/2 is to search for a DLL file when an application calls for the DLL to
be loaded (and the application has not specified the location of the DLL).
:h2 id=ID@16.ODBC_PATH
The ODBC_PATH statement appears in the CONFIG.SYS file. It defines the location
of the ODBC.INI and ODBCINST.INI files. It should only contain a single
directory. Both files must reside in the same directory.
:h2 id=ID@17.ODBC.INI File
The ODBC.INI file lists all the ODBC Data Sources (DSN) defined on your machine.
Each DSN has a name, some settings and points back to an ODBC Database Driver
listed in :link reftype=hd refid=ID@18.ODBCINST.INI:elink.
:h2 id=ID@23.ODBCDrv1.CMD
The default :link reftype=hd refid=ID@12.Driver List File :elink.supplied with
ODBC Installer
:h2 id=ID@24.ODBCDrv2.CMD
The default :link reftype=hd refid=ID@14.Driver Setup File :elink.supplied with
ODBC Installer.
:h2 id=ID@18.ODBCINST.INI File
The ODBCINST.INI file lists all the :link reftype=hd refid=ID@11.Database
Drivers :elink.installed on your machine.
:h2 id=ID@19.Source File
This is the file or directory that contains the ODBC Database Drivers and/or the
Administrator and Driver Manager to be installed. The ODBC Installer recognizes
and has been tested with number of zipped packages - see :link
reftype=hd refid=ID@21.Obtaining ODBC Drivers and Files:elink.. The Installer
will also work on directories where those files have been unzipped, or it will
work with any zipped file containing ODBC component files.
In order to install the ODBC database drivers for Sybase SQL Anywhere 5, Watcom
SQL 4, or DB2/2 you must
:ol.
:li.First install the database
:li.Then run the ODBC Installer and enter the directory where the ODBC file(s)
are located.
:eol.
:p.For Watcom SQL 4 the directory usually is C:\WSQL40\OS2 where C: is the
driver where the product is installed.
:p.For Sybase SQL Anywhere 5 the directory is usually C:\SQLANY50\OS2
:p.For DB2/2 the directory is usually C:\SQLLIB\DLL for the database drivers and
Driver Manager, and C:\SQLLIB\BIN for the ODBC Administrator.
:h2 id=ID@22.TEMP Path
The TEMP environmental variable defines where temporary files should be created.
This variable is set in the CONFIG.SYS file. The below sample shows a line from
the CONFIG.SYS file setting the TEMP variable to the directory C:\TEMP.
:xmp.
SET TEMP=C:\TEMP
:exmp.
:p.The TEMP variable :hp1.must :ehp1.be set before starting the ODBC Installer.
:p.The ODBC Installer will use the value from either the TEMP variable or the
TMP variable. One or the other must be set before the ODBC Installer is started.
:p.
:h1 id=ID@20.More Information
This ODBC Installer grew out of an article on ODBC in OS2eZine, the on-line
magazine, see
:hp7.www.os2ezine.com/20010516.html :ehp7.for the start of the series on ODBC.
:h1 id=ID@21.Obtaining ODBC Drivers and Files
ODBC database drivers are available from various sources. Most database drivers
are also packaged with the ODBC Administrator and Driver Manager files.
:table frame=box rules=both cols='23 50'.
:row.
:c.
Lotus Smart Suite
:c.
Various Intersolv ODBC version 3.11 drivers are bundled with Lotus Smart Suite.
eCommStation includes Lotus Smart Suite and hence the ODBC Drivers. You should
install these drivers using the Lotus Install program. The drivers included are:
DB2, dBase, Informix 5, Oracle, Sybase System 10, Text Files.
:row.
:c.
DAX11.ZIP
:c.
Intersolv ODBC drivers (Intersolv's version 2.11) are bundled with this IBM
VisualAge C++ fixpack. The drivers included are: DB2, dBase, Oracle, MS
SQLServer, Sybase System 10, Text files. It can be found at
:hp7.http://hobbes.nmsu.edu/cgi-bin/h-search?key=DAX11.ZIP:ehp7.
:row.
:c.
ODBCDEMO.ZIP
:c.
Contains the following Intersolv v 2.11 ODBC drivers: Informix 5,
MicroDecisionWare, Gupta SQLBase, Ingres 6.4, Oracle, Text, DB2, Sybase
System10, MS SQLServer. It can be found at
:hp7.http://hobbes.nmsu.edu/cgi-bin/h-search?key=ODBCDEMO.ZIP:ehp7.
:row.
:c.
ODBC3_01-BIN_OS2.ZIP
:c.
Contains PostgreSql v 7.1 driver, plus the following Intersolv v 3.11 drivers:
Btrieve, DB2, Oracle, Sybase System 10, Informix 5, and Text files. It can be
found at :hp7.http://venuto.monrif.net/download.htm :ehp7.along with the
PostgreSql OS/2 port of the database itself.
:row.
:c.
PSQLODBCOS2.ZIP
:c.
PostgreSql v 7.01 ODBC driver - superseded by ODBC3_01-BIN_OS2.ZIP
:row.
:c.
DB2/2
:c.
Includes its own ODBC driver
:row.
:c.
Watcom SQL 4
:c.
Includes its own ODBC driver
:row.
:c.
Sybase SQL Anywhere 5.0
:c.
Includes its own ODBC driver
:etable.
:h1 id=ID@25.Known Installation Issues
The ODBC version 2/2.5 Administrator and Driver Manager conflicts with the ODBC
version 3 Administrator and Driver Manager. The version 3 Driver Manager will
correctly operate all ODBC database drivers from version 1 - version 3. Either
version of the Administrator will work correctly with all versions of the
database drivers. However version 3 of the Administrator has a bug in the screen
that lists available database drivers; the scroll bars don't work. Therefore if
you have more database driver than can be displayed in the version 3 list
without scrolling, you will have to install a version 2 Administrator.
If you have DB2/2 and ODBC version 3 installed they will conflict. This is
because DB2 installs a version 2/2.5 Administrator and Driver Manager. The best
way to solve this problem is to rename the files in the C:\SQLLIB directories.
In C:\SQLLIB\BIN you need to rename ODBCADM.EXE. to something else. In
C:\SQLLIB\DLL you need to rename the following files to any other name:
:sl.
:li.OS2UTIL.DLL
:li.ODBCINT.DLL
:li.ODBCCR.DLL
:li.ODBCCP.DLL
:li.ODBC.DLL
:esl.
:p.
:p.If you have DB2/2 v 6 (and probably version 7 also) and ODBC installed, you
will need to have the C:\SQLLIB\... paths appear in the LIBPATH statement of
CONFIG.SYS :hp1.before :ehp1.the paths that contain the ODBC files. If the ODBC
files appear before the DB2/2 files in the LIBPATH statement you may get run
time errors when you try and use DB2/2.
:p.
:p.ODIN and OS/2 ODBC will conflict. This is because many of the ODBC files in
Windows and OS/2 have the same names. They best way around this is to :hp1.not
:ehp1.put ODBC directories in the LIBPATH statement. The ODIN installation
instructions have instructions for running ODIN via a batch file which
temporarily adjusts the LIBPATH statement for the duration of an ODIN session.
Using this batch file will allow ODIN and OS/2 ODBC to coexist.
:h1 id=ID@27.Copyright
The ODBC Installer is copyrighted (c) 2001 by Telamon Systems Corporation
You have permission to use the ODBC Installer for commercial or private use.
You may incorporate the ODBC Installer into your own products as long as you
include the copyright notice above along with your other copyright notices.
You may modify the source code to the ODBC Installer and incorporate the
modified code into any commercial or private application you choose as long as
you abide by the following two conditions
:ol.
:li.You notify Telamon System Corporation (email - dgclark@attlgobal.net) of any
improvements you make - so they can be fitted into the "official version".
:li.You change the name of title of the application so that it cannot be
confused with this ODBC Installer
:eol.
:p.
:p.Telamon Systems Corporation will not be held responsible for any liability or
damages you might incur from the use of this application, either directly or
indirectly, for any reason. USE AT YOUR OWN RISK.
:euserdoc.