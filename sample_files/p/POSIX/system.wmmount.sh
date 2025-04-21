#!/bin/sh

# wmmount - The WindowMaker universal mount point
#
# 17/06/99  Release 1.0 beta2
# Copyright (C) 1999  Sam Hawker <shawkie@geocities.com>
# This software comes with ABSOLUTELY NO WARRANTY
# This software is free software, and you are welcome to redistribute it
# under certain conditions
# See the README file for a more complete notice.

# Usage:
# ./system.wmmount.sh >system.wmmount


echo "\
# wmmount - The WindowMaker universal mount point
#
# 17/06/99  Release 1.0 beta2
# Copyright (C) 1998  Sam Hawker <shawkie@geocities.com>
# This software comes with ABSOLUTELY NO WARRANTY
# This software is free software, and you are welcome to redistribute it
# under certain conditions
# See the README file for a more complete notice.

# This configuration file to be saved as
# /usr/X11R6/lib/X11/wmmount/system.wmmount or as ~/.wmmount.

# Commands must appear (without a '#') at the beginning of the line.

# Tell wmmount how to mount and unmount devices.
# '%m' will be replaced with the mountpoint.
# '%n' will be replaced with the name of the mountpoint.
# '%%' will be replaced with '%'.
# Commands are executed directly (not by a shell) for speed.
# These entries may be ommitted (defaults in wmmount.c).

#mountcmd=/bin/mount %m
#umountcmd=/bin/umount %m

# Tell wmmount what to do when you double-click on the information box.
# This entry may be ommitted.

#opencmd=/usr/X11R6/bin/nxterm -T '%n - %m' -e mc %m
#opencmd=kfmclient exec %m

# Choose fonts for the information box.
# These entries may be ommitted.

#namefont=-*-helvetica-bold-r-*-*-10-*-*-*-*-*-*-*
#usagefont=-*-helvetica-medium-r-*-*-10-*-*-*-*-*-*-*

# List all the icons you want to use.
# The first icon specified gets iconnumber 0.
# Ensure all icons exist and are accessible.
# At least one icon must be specified.

icon /usr/X11R6/lib/X11/wmmount/cdrom.xpm
icon /usr/X11R6/lib/X11/wmmount/floppy.xpm
icon /usr/X11R6/lib/X11/wmmount/zip.xpm
icon /usr/X11R6/lib/X11/wmmount/harddisk.xpm

# Give details of all mountpoints.

#mountpoint /
#name=Linux
#iconnumber=3
#usagedisplay=1
#mountcmd=/bin/mount %m
#umountcmd=/bin/umount %m
#opencmd=kfmclient exec %m 

# name, iconnumber and usagedisplay are required.

# usagedisplay can be 0 (none), 1 (available), 2 (used) or 3 (percentage used).

# mountcmd, umountcmd and opencmd are optional and allow the defaults to be
# overridden for particular mountpoints.
"

awk -- "
{INUM=3 ; UDISP=\"1\"}
{if (\$0 ~ /^\#/) {next}}
{if (\$0 ~ /^$/) {next}}
{if (\$2 ~ /^ignore$/) {next}}
{if (\$2 ~ /^\/proc$/) {next}}
{if (\$1 ~ /fd/ || \$2 ~ /floppy/) {INUM=1}}
{if (\$1 ~ /cdrom/ || \$2 ~ /cdrom/) {INUM=0 ; UDISP=\"0\"}}
{if (\$1 ~ /zip/ || \$2 ~ /zip/) {INUM=2}}
{if (\$2 ~ /^\//) {
{print \"mountpoint \" \$2}
{if (\$2 ~ /^\/\$/)
{print \"name=$(uname)\"}
else
{print \"name=\" toupper(substr(\$2,match(\$2, /\/[^\/]*\$/)+1,1)) substr(\$2,match(\$2, /\/[^\/]*\$/)+2)}
}
{print \"iconnumber=\" INUM}
{print \"usagedisplay=\" UDISP \"\\n\"}
}}
" /etc/fstab
