:userdoc.
:h1 x=left y=bottom width=100% height=100% res=001.386 HPFS File System Installation
:p.This program allows you to install the 386 HPFS File System (hereafter
referred to as 'HPFS386'), with the specified configuration options.

:p.
:p.:hp7.Configuration:ehp7.
:p.The following configuration options are available&colon.
:dl break=all.

:dt.:hp5.Cache size:ehp5.
:dd.:p.This controls the size of the filesystem cache, in kilobytes.  You can
specify a fixed value, or allow the workstation to determine the size
automatically.
:p.In principle, the cache size is limited by the amount of available memory.
However, setting a cache size which is too large can cause problems.  Therefore,
this installation program only allows you select an initial cache size of up 64
MB (65536 kB).  To use a larger cache size, you must edit the HPFS386
configuration file after installation.
:p.The minimum value is 256 kB.

:dt.:hp5.Maximum heap size:ehp5.
:dd.:p.This allows you to set an upper limit on the amount of memory (in kilobytes)
which HPFS386 can allocate from the heap.  You can specify a fixed value, or
allow the workstation to determine the limit automatically (recommended).
:p.In principle, the maximum limit is the amount of available memory, minus
the cache size (see above).  However, this installation program only allows you
to select up to 64 MB (65536 kB); to use a larger value, you must edit the
HPFS386 configuration file after installation.
:p.The minimum value is 64 kB.

:dt.:hp5.Lazy writer:ehp5.
:dd.:p.These settings allow you to configure the default lazy writer settings.
These will be applied to all HPFS386 volumes.  You can set per-volume settings
by editing the HPFS386 configuration file after installation.
:p.If you choose not to set specific values for maximum cache age and buffer
idle time, the installation program will automatically set them to 5000
milliseconds and 500 milliseconds, respectively.

:dt.:hp5.Allow using memory above 16 MB:ehp5.
:dd.:p.This parameter determines whether HPFS386 is allowed to use memory above
the 16 MB boundary, on systems with more than 16 MB of RAM.  In general, you
should only disable this option if you have a disk controller or LAN adapter
which cannot access memory above 16 MB (using DMA).

:dt.:hp5.Reset to default values:ehp5.
:dd.:p.Selecting this button will reset all of the above configuration options to
their initial defaults.

:edl.

:p.
:p.:hp7.Other Options:ehp7.
:dl break=all.
:dt.:hp5.Install fault tolerance feature:ehp5.
:dd.:p.If this option is selected, the HPFS386 Fault Tolerance feature will be
installed.  This feature provides hard disk fault detection, and also disk
mirroring and duplexing through software-based RAID-1.
:p.If you choose to install this feature, you will need to configure and
activate it separately after installation.  The necessary program objects will
be created in your System Setup folder.

:dt.:hp5.Install local security feature:ehp5.
:dd.:p.The HPFS386 Local Security feature allows login-based access controls on
the filesystem to be enforced even for local users.  This feature may only
be installed if IBM LAN Server (version 5.20 or higher) is present on the
system.
:nt.To install Local Security, you must install HPFS386 first.  After rebooting,
you can install Local Security by running this installation program again; only
then will it be available as an installable option (and only if LAN Server is
also installed).
:edl.


:p.
:p.:hp7.Starting the Install:ehp7.
:p.To begin the installation, select the 'Install' button.  You will be prompted
for confirmation.
:p.If the installation is successful, you will need to shut down and reboot the
system.  If HPFS386 has never been installed on the system before, it is likely
that CHKDSK will run on boot-up, even if the system was shut down cleanly.  This
is normal, and should only occur on the first boot after installation.

:p.
:p.:hp7.After Installation:ehp7.
:p.Once you have installed HPFS386 (and rebooted), you can customize its
settings in more detail, by editing the HPFS386 configuration file.  This file
is called HPFS386.INI, and is located under the IBM386FS directory on your boot
drive.  Full details on this file's format are included within the file itself.

:p.You can also modify cache and lazy writer parameters on the fly, by using the
CACHE386.EXE utility from a command line.  You may wish to run this utility at
system startup by adding the following line to the beginning of your
CONFIG.SYS&colon.
:xmp.CALL=C&colon.\IBMLAN\NETPROG\CACHE386.EXE
:exmp.
where C&colon. is the drive on which the LAN components are installed.
:euserdoc.
