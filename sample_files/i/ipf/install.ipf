:userdoc.
.*
.*******************************************************************************
.*  Configuration OK Message Box help
.*******************************************************************************
:h1 res=30017 hide nosearch name=HLPP_MB_OLD_FILE.File Date Conflict
:p.
A file to be transferred has an older date than a file of the same name that currently
exists in the indicated destination directory.
:p.
Select :hp2.Yes:ehp2. to overwrite the newer, existing file.
:p.
Select :hp2.No:ehp2. if you do not want to overwrite the existing file, but want to
continue with the file transfer.
:p.
Select :hp2.Cancel:ehp2. if you want to abort the file transfer.  You may want to
do this so that you can investigate the origin of the existing file before overwriting
it.  You can always restart the installation process after you have determined the
origin of the existing file.
:nt.
If OS/tools:link refid=TM reftype=fn.**:elink. DLL file names conflict with DLLs
from some other application we suggest that you select :hp2.Cancel:ehp2., go back
to the :hp2.Install Options:ehp2. dialog, and enter the same directory in "Transfer
Libraries to&colon." field as in the "Transfer Programs... to&colon." field.  Be
sure to enter a directory that either does not yet exist, or contains only OS/tools
files.
:p.
If you KNOW a file that has a date conflict is part of a previous OS/tools application
installation, you should choose to have the newest file remain in the destination
directory (i.e., select :hp2.No:ehp2.).
:p.
You can prevent possible conflicts with previously installed OS/tools files by selecting
:hp2.Uninstall:ehp2. from the :hp2.File:ehp2. menu before you select :hp2.Transfer
Files:ehp2..  The :hp2.Uninstall:ehp2. menu item will only be available when there
is a version of the COMi device driver currently loaded.
:ent.
:nt text=FYI.
A Dynanmic Link Library file named "C215MT.DLL" is included with all OS/tools installation
files.  This file is provided by Borland International for distribution by developers
using their 32-bit OS/2 compiler and tools.  Be sure to retain the most recent version
of this file.
.*
.*******************************************************************************
.*  Configuration OK Message Box help
.*******************************************************************************
:h1 res=30012 hide nosearch name=HLPP_MB_CONFIG_OK.Configuration Complete
:p.
A COMi initialization file has been successfully created or modified.  In order for the
serial device(s) you have defined to become accessable to applcations you must shut down
this OS/2:link refid=IBMTM reftype=fn.*:elink. session and re-boot.
:p.
See "shutting down OS/2" in the Master Help Index for detailed instructions on shutting down
an OS/2 session.
.*
.*******************************************************************************
.*  Configuration Bad Message Box help
.*******************************************************************************
:h1 res=30013 hide nosearch name=HLPP_MB_CONFIG_BAD.Incomplete Installation
:p.
No COMi initialization file has been created or modified.
:p.
There must be at least one defined serial device in a COMi initialization file before
COMi will be loaded at system start-up.
.*
.*******************************************************************************
.*  Delete Access Denied message box help
.*******************************************************************************
:h1 res=30023 hide nosearch name=HLPP_MB_DELETE_DENIED.Delete Access Denied
:p.
One or more files were not deleted because they were being accessed by this or some
other process.
:p.
If one or more of the programs that were previously installed are running, you
will not be able to delete those files or any DLLs, that they require to run.
:p.
To complete the un-install process do the following&colon.
:ol.
:li.Close this program.
:li.Close all other programs installed by this program (i.e., all COMscope sessions)
:li.Run the file "DEL_COMi.CMD from the root directory of your boot drive
:xmp.
Example&colon.
[C&colon.\]DEL_COMi <ENTER>
:exmp.
:eol.
:p.
It is recommended that you exit :hp2.Install:ehp2. NOW, and complete the above instructions,
BEFORE you continue installing any programs or files.  This will insure that any outdated program
files and DLLs WILL be deleted, allowing newer replacements to be installed
:nt.
The file "DEL_COMi.CMD" will be automatically deleted as soon as you install any
program or files from this installation program.
:ent
.*
.*******************************************************************************
.*  delete folder message box help
.*******************************************************************************
:h1 res=30016 hide nosearch name=HLPP_MB_DELETE_FOLDER.Delete Folder?
:p.
A folder and program objects (icons) for OS/tools' programs were created during a prior installation of
those programs.  The program objects have already been deleted.
:p.
Selecting :hp2.Yes:ehp2. will cause the folder to be deleted, along with any object
you may have dropped into it.  The folder will be deleted even if you have renamed it,
or have moved it from the Desktop.
:p.
Selecting :hp2.No:ehp2. will cause that folder to be left as is.
:nt.If you are unsure of the contents of the "OS/tools Utilities" folder you can open that folder
now and move any remaining objects you wish to save, then select :hp2.Yes:ehp2. to cause
the "OS/tools Utilities" folder to be removed.
:ent.
.*
.*******************************************************************************
.*  Path message box help
.*******************************************************************************
:h1 res=30011 hide nosearch name=HLPP_MB_PATH.Create New Path?
:p.
If you select the :hp2.Yes:ehp2. push button the path named in the message box will be created.
:p.
If you select the :hp2.Cancel:ehp2. push button you will be returned to the :hp2.Install Options:ehp2.
dialog box to allow you to select another path.
.*
.*************************************************
.*  HLPP_CONFIGSYS_BAD
.*************************************************
:h1 nosearch hide res=30015 name=HLPP_CONFIGSYS_BAD.Cannot Open CONFIG.SYS
:p.
Your system configuration file (CONFIG.SYS) may have been opened by another process.
:p.
You will have to manually remove any :hp2.DEVICE=d&colon.\path\comdd.SYS:ehp2. statements from your
CONFIG.SYS to complete this uninstall process.
.*
.*************************************************
.*  HLPP_UNINSTALL
.*************************************************
:h1 nosearch hide res=30014 name=HLPP_UNINSTALL.Uninstall Request
:p.
If you answer :hp2.Yes:ehp2. all files that were transferred with the currently loaded
COMi device driver will be deleted.
:p.
COMscope normally creates a profile the first time it is run.  All COMscope profiles
will also be deleted.
:p.
Unless you have added files and/or sub-directories to the installed program directory,
that directory will be removed.  Any "Library" directories created by INSTALL will
also be deleted.
:p.
In addition all :hp2.DEVICE=:ehp2. statements placed into your CONFIG.SYS file by
the device driver configuration process will be removed from your CONFIG.SYS file.
:nt.
If you run INSTALL from the directory it was installed to (i.e., double-clicking the
COMi Installation icon in the OS/tools folder), the files "INSTALL.EXE" and
"INSTALL.HLP" will not be deleted.  If you want these files deleted you must either
delete them manually or run INSTALL from the distribution diskette or directory.
:ent.
.*
.************************************************
.*   Options Dialog
.************************************************
.*
:h1 res=30008 hide nosearch name=HLPP_OPTIONS_DLG.Help for Install Options Dialog
:p.
Either accept the directory path(s) suggested by Install or enter your choice(s}.
:p.
Select the OS/tools:link refid=TM reftype=fn.**:elink. products you wish to install and/or transfer.
:p.
If you want Install to create folders and icons for the program(s) you are installing then
select the :hp2.Create Desktop Folder and Program Objects:ehp2. checkbox.
:nt.
If a previous version of an OS/tools device driver or is loaded, Install will suggest the path(s) in which
the old device driver and releted files are located.  Otherwise Install will suggest the default system path(s)
on your boot drive.
:ent.
.*
.************************************************
.*   HELP FOR KEYS
.************************************************
:h1 res=30002 name=HLPP_KEYS.Keys Help for Keys
:i1.Keys Help
:p.
There is only one key used by Install&colon.
:dl.
:dt.Press :hp2.F3:ehp2.&colon.
:dd.to close or exit Install.
:edl.
:p.
You can also exit Install by selecting the :hp2.File | Exit:ehp2. menu item, by selecting the :hp2.Close:ehp2. item
from the system menu pop-up, or by double clicking on the system menu button (upper left corner).
.*
.************************************************
.*   GENERAL HELP
.************************************************
:h1 res=30003 name=HLPP_GENERAL.Help for OS/tools' Install
:i1.General Help
:p.
OS/tools:link refid=TM reftype=fn.**:elink. Install is designed to ease installation and configuration of all OS/tools
products.
:p.
Install will copy all files required by the OS/tools product, or products, you have purchased
to any drive or directory you specify.
:p.
Install can create Desktop icons and/or folders for OS/tools products that require them.
:p.
Install will also start any special programs required to complete the installation and configuration
of OS/tools' products, after all files have been transferred.
:p.
Well, what would you expect, it is just an installation program, and :hp5.Thank You:ehp5. for purchasing OS/tools products.
:p.
Related Information&colon.
:ul compact.
:li.:link refid=HLP_OPTIONS reftype=hd.Installation Options:elink.
:li.:link refid=HLP_LOCATION reftype=hd.Choosing File Locations:elink.
:li.:link refid=HLP_TRANSFER reftype=hd.Transferring Files:elink.
:li.:link refid=HLP_CFG_DD reftype=hd.Configuring Device Drivers:elink.
:li.:link refid=HLP_UNINSTALL reftype=hd.Uninstalling:elink.
:eul.
.*
.**********************************
.*   Uninstall
.**********************************
:h2 id=HLP_UNINSTALL.Uninstalling
:i1.Uninstalling
:p.
If you have a previously installed version of the COMi device driver loaded, or
after you have successfully installed and configured this version, and re-started
your computer, so that the new COMi device driver is loaded, the :hp2.Files | Uninstall:ehp2.
menu item will be available.
:p.
Selecting Uninstall will&colon.
:ol compact.
:li.Delete all files transferred from the distribution disk during the loaded COMi's
installation process.
:li.Remove all :hp2.DEVICE=:ehp2. statements related to these programs from your CONFIG.SYS
file.
:li.Delete any desktop objects created during the install process.
:li.Remove any directories that were created during the installation.
:nt.Directories will only be removed if you have not added any files other than those
transferred during the install process.  If a directory is not empty after all OS/tools'
installed files are deleted, the directory will not be removed.
:p.
For example&colon. if you have saved COMscope I/O stream capture files in the COMscope default directory,
those files will not be deleted, and Uninstall will not be able to remove that directory.
:ent.
:eol.
If you run INSTALL from the directory you want to "uninstall" from (i.e., from the
install object in the OS/tools folder), the files "INSTALL.EXE" and "INSTALL.HLP"
will not be deleted.  If you want these files deleted you will either have to run
INSTALL from the distrubution diskette or directory, or delete those two files manually.
:nt text=FYI.INSTALL queries a currently loaded COMi device driver to determine its
location on disk.  If there is a previously installed COMi version loaded, and there
is an installed files log (INST INF.LOG) present in the loaded device driver's
directory when INSTALL is started, the :hp2.File | Uninstall:ehp2. menu item will
be enabled.
:p.
You may use "uninstall" to remove a previous COMi/COMscope installation's files
any time that version of COMi is loaded, even after you have selected :hp2.File | Trasnfer Files:ehp2.
and the new installation has been transferred to your system.  This is possible until
you re-start your machine and the new version of COMi is loaded.
:ent.
.*
.**********************************
.*   Installation Options
.**********************************
:h2 id=HLP_OPTIONS.Selecting Installation Options
:i1.Installation Options
:p.
Before you can cause Install to transfer files to your system you must select and/or set various
installation options
:p.
To select installation options&colon.
:ol compact.
:li.Select :hp2.File:ehp2.
:li.Select :hp2.Install Options...:ehp2.
:eol.
.*
.**********************************
.*   File Locations
.*
:h2 id=HLP_LOCATION.Choosing File Locations
:i1.File Locations
:p.
If you are installing an OS/tools:link refid=TM reftype=fn.**:elink. device driver,
COMi:link refid=TM reftype=fn.**:elink. for instance, you will have to select a
program destination on a hard disk drive that is available during boot-up, preferably
the drive your OS/2 system boots from.
:p.
If you are installing an OS/tools application (i.e., COMscope:link refid=TM reftype=fn.**:elink.
or TBOSsim:link refid=TM reftype=fn.**:elink.) that requires :link refid=libraries reftype=fn.Dynamic Link Libraries:elink.
to be transferred to your system, you will have to select a library destination that
is either in the same directory as the OS/tools program(s) you are installing, or in
a directory that is named (described) in the "LIBPATH" statement in your CONFIG.SYS file.
:p.
The "\OS2\DLL" directory on your boot drive is the default directory suggested for
library files by INSTALL.  We suggest that you use this directory unless you have
reason to believe there will be a file name conflict when using this directory.
:p.
If there is a version of the COMi device driver currently installed, and loaded,
INSTALL will suggest the directories in which the loaded device driver is currently
installed.  You may enter other directory names.  If you intend to "uninstall" a
currently installed OS/tools product, you must select the :hp2.Uninstall:ehp2. menu
item before selecting the :hp2.Transfer Files:ehp2. menu item.
:p.
INSTALL will NOT add a path description to your CONFIG.SYS "LIBLATH" statement.
.*
.**********************************
.*   Transferring Files
.*
:h2 id=HLP_transfer.Transferring Files
:i1.Transferring files
:p.
Install will copy, and unpack if necessary, all required files for any OS/tools product you are installing.
:p.
To transfer files from the distribution disk&colon.
:ol compact.
:li.Select :hp2.File:ehp2.
:li.Select :hp2.Transfer Files:ehp2.
:eol.
:nt.The :hp2.Transfer Files:ehp2. menu item will not be available for selection until you have sucessfully
selected :link refid=HLP_OPTIONS reftype=hd.Install Options:elink..
:ent.
.*
.**********************************
.*   Configuring Device Drivers
.*
:h2 id=HLP_CFG_DD.Configuring Device Drivers
:i1.Device Driver Configuration
:p.
Each OS/tools' device driver comes with a program to configure installation and start-up parameters for that device driver.  In
most cases, the configuration program is a Presentation Manager program.  When this is the case that program in started by
Install, as part of each installation process, with any parameters required for that particular installation.
:p.
To start the configuration process for an OS/tools device driver&colon.
:ol compact.
:li.Select :hp2.Config 'driver'...:ehp2.
:eol.
:nt.The :hp2.Config 'driver'...:ehp2. menu item will only be available after you have successfully transferred all
required device driver files from the distribution disk.
:ent.
.*
.***************************************
.*
:fn id=ISA.
:p.
:hp2.I:ehp2.ndustry :hp2.S:ehp2.tandard :hp2.A:ehp2.rchitecture or AT bus.  Machines that
are compatible with the IBM:link refid=IBMTM reftype=fn.*:elink. AT:link refid=IBMTM reftype=fn.*:elink. persional computer are of this type.
:efn.
:fn id=MCA.
:p.
:hp2.M:ehp2.icro:hp2.C:ehp2.hannel:link refid=IBMTM reftype=fn.*:elink. :hp2.A:ehp2.rchitecture.  Machines that are compatible
with the IBM:link refid=IBMTM reftype=fn.*:elink. PS/2:link refid=IBMTM reftype=fn.*:elink. are of this type.
:efn.
:fn id=check.
:p.
You can check (select) a button either by clicking your left mouse button
on the button or using the TAB key to move so the the required button has the focus
then pressing the space bar.
:efn.
:fn id=checkmark.
:p.
A symbol that shows that a menu choice is currently active.
:efn.
:fn id=libraries.
:p.
In OS/2:link refid=IBMTM reftype=fn.*:elink., applications and the various functions they need to operate can be linked at run-time.  This means that program
code that is seldom used can be stored on disk and loaded into memory only when it is required.  It also makes it possible
for mutiple applications to use the same program fragment to accomplish similar tasks.
:p.
As a matter of fact all of the OS/2 Application Programming Interface is implemented as a set of :hp2.Dynamic Link Libraries:ehp2..  This
way the code that any application needs to accomplish common tasks need only be loaded once
for all applications that may need to complete that task (i.e., read from, or write to, a file).
:efn.
:fn id=IBMTM.
:p.
IBM, AT, Micro Channel, and PS/2 are tradmarks of International Business Machines.
:efn.
:fn id=TM.
OS/tools, COMi, COMscope, and TBOSsim are tradmarks of OS/tools Incorporated.
:efn.
.*
.************************
:euserdoc.
