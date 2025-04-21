#!/bin/sh
export PATH || exec /bin/sh $0 $argv:q

#
# DESCRIPTION
# 
# Bourne Shell Script
#	Make Java Run-Time Stub shell script for a standalone java 
#	class file.
#
# Author:
#	Peter Pilgrim 
#	Thu Jan 22 10:17:29 GMT 1998
# 
# RCS HEADER ``make-jrt-stub.sh''
# 
# $Author$
# $Date$
# $Source$
# $Revision$    $State$    $Locker$
#

# ********************************************************************************
PrintUsage()
# ********************************************************************************
{
    cat << EOF
USAGE: $myname	
		[ --file (-f) <VERSION-FILE> ]
		[ --noincr (-n) ]
		[ --package (-p) <PACKAGE> ]
		[ --dryrun (-dr) ] [ --force ]
		[ --verbose (-v) | --noverbose (+v) ] 
		[ --help (-h) | --usage (-u) ] 

OPTIONS:
    '--file'		specifies the version file.
    '--noincrement'     do not increment the delta ID.
    '--dryrun'		dry run and test the configuration, do not configure the
    '-dr'		the run-time stub file.
    '--verbose'		generates verbose output also.
    '-v'
    '--help'		produces this brief text and exits gracefully.
    '-h' '-u'

DESCRIPTION:

The script $myname that increments a delta ID counter
stort a simple file.It works with a file that has the 
following formatted number.

	<Version>.<Revision>.<TinyNumber>.<EditNumber>

For example the delta 1.2.33 becomes incremented as 1.2.34
The default limits are

	0 < Version    < 10
	0 < Revision   < 10
	0 < TinyNumber < 10
	0 < EditNumber < 10

Note:If the delta ID file does not exist it is created
with the default number.

EXAMPLES:


ENVIRONMENTAL VARIABLES:

Peter Pilgrim Wed Sep 23 21:05:11 BST 1998
EOF

    echo '$RCSfile$ $Revision$ $Author$ $Date$'
    exit 0
}

# ********************************************************************************
BackupFile ()
# ********************************************************************************
{
    # Backup a file by renaming it.
    ThisFile=$1
    if [ -f ${ThisFile} ]; then
	if [ -f ${ThisFile}.bak ]; then
	    (set $VerboseOpt; ${PrefixCmd} /bin/rm -f ${ThisFile}.bak )
	fi
	(set $VerboseOpt; ${PrefixCmd} mv ${ThisFile} ${ThisFile}.bak )
    fi
}

# ********************************************************************************
SysInfo() 
# ********************************************************************************
{
    # Log an informational message string to the standard out and do NOT exit
    echo "$myname: *INFO* : $1"
}

# ********************************************************************************
SysWarn() 
# ********************************************************************************
{
    # Log an message string to the standard out and do NOT exit
    echo "$myname: *WARNING* : $1" 1>&2
}

# ********************************************************************************
SysError() 
# ********************************************************************************
{
    # Log an message string to the standard error and exit
    echo "$myname: *ERROR* : $1" 1>&2
    exit 1
}

# ********************************************************************************
SignalCatcher() 
# ********************************************************************************
{
    # A generic signal handler for the shell script.
    echo "$myname: Got Signal $1"
    WriteLog "$myname: Got Signal $1"
    exit 3
}

# ********************************************************************************
CleanUp () 
# ********************************************************************************
{
    # if [ "$1" != "" ]; then
    #	echo "$myname: $1" 1>&2
    # fi
    # remove temporary files etcetera
    # echo "$myname:Fini ( total:$total, errors:$errors, completed:$cmpltd)"
    /bin/rm -f DUMMY_FILE $TempFile1 $TempFile2
}

# ********************************************************************************
CreateJavaFile () 
# ********************************************************************************
{
    package=$1
    if [ "x${package}" != "x" ]; then
	package_name="package ${package} ;"
	directory=`echo "${package}" | sed 's!\.!/!g'`
	File=${directory}/ApplicationVersion.java
    else
	package_name=""
	File=ApplicationVersion.java
    fi

    /bin/rm -rf ${File}
    cat << XEOF > ${File}
// File:'ApplicationVersion.java' *automagically* created by $myname
// Written by Peter Pilgrim Wed Sep 23 22:36:23 BST 1998

${package_name}

public class ApplicationVersion {
    private static final int	version		= $Version;
    private static final int	revision	= $Revision;
    private static final int	tinyNumber	= $TinyNumber;
    private static final int	editNumber	= $EditNumber;
    private static final String  versionString	= "${Version}.${Revision}.${TinyNumber}.${EditNumber}";

    public static int	getVersion() { return version ; }
    public static int	getRevision() { return revision ; }
    public static int	getTinyNumber() { return tinyNumber ; }
    public static int	getEditNumber() { return editNumber ; }
    public static String	getVersionString() { return versionString ; }
}

// FINI
XEOF

}

# ********************************************************************************
# MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN 
# ********************************************************************************

myname=`basename $0`

debug=
verbose=
silent=
VerboseOpt="+x"
PrefixCmd=""
DryRunFlag=0

# Reset the revision, version, tiny & patch
Revision=0
Version=0
TinyNumber=0
EditNumber=0

# Set up version counter file
default_counter_file=appversion
counter_file=${default_counter_file}
short_counter_file=${default_counter_file}-short

increment_delta=yes
appver_package_name=""

#
# Interpret the command line arguments (the GNU way!)
#
while [ $# -gt 0 ]
do
    #
    # Interpret cli argument
    #
    case $1 in

	--p | --package | --packag | --pack | --pac | --pa | -p )
	# ApplicationVersion.java package name if any
	appver_package_name=$2; shift
	;;

	--i | --increment | --incr | --inc | --in | --i | -i )
	increment_delta=yes
	;;

	--n | --noincrement | --noincr | --noinc | --noin | --n | -n )
	increment_delta=no
	;;

	--f | --file | --fil | --fi | --f | -f )
	counter_file=$2; shift
	;;

	# **** The standard CLI options begin here ****
	-silent | -quiet | \
	--silence | --silenc | --silenc | --silen | --sile | --sil | \
	--quiet | --quie | --qui | --qu | --q | -q )
	silent=yes
	verbose=
	VerboseOpt="+x"
	;;
 
	-verbose | --verbose | --verbos | --verbo | --verb | \
	--ver | --ve | --v | -v ) 
	verbose=yes
	VerboseOpt="-x"
	;;

	--debug | --debu | --deb | -debug | -debu | -deb ) 
	debug=yes
        ;;

	--dryrun | --dryru | --dryr | --dry | --dr | -dr | \
	-dryrun | -dryru | -dryr | -dry | -dr | -dr )
	PrefixCmd="echo =>"
	DryRunFlag=1
	;;

	--help | --hel | --he | --h | -help | -hel | -he | -h | \
	--usage | --usag | --usa | --us | --u | \
	-usage | -usag | -usa | -us |  -u )
	PrintUsage
	exit 0
	;;

	--* | -*)
	SysError "unknown cli option: '$1'. Try '--help' for more info"
	break;;

	*) break;;

    esac
    shift
done

#
# Trap any signals
#
trap 'CleanUp "Cleaning"' 0
trap 'SignalCatcher "(SIGHUP)"'  1
trap 'SignalCatcher "(SIGINT)"'  2
trap 'SignalCatcher "(SIGQUIT)"' 3
trap 'SignalCatcher "(SIGTERM)"' 15

#
# Increment the version count
#

if [ ! -f $counter_file ]; then
    # Create the counter file with default version counter.
    echo "0.0.0.0" >> ${counter_file}
    chmod 644 ${counter_file}
    /bin/rm -f ${counter_file}-short
    echo "0.0.0" >> ${counter_file}-short
    chmod 644 ${counter_file}-short
    SysInfo "Created default counter file:\`${counter_file}' and \`${counter_file}-short'"
    exit 0
fi

#
# Read the counter file
#
exec 4<&0			;# Save stdin
exec 0<${counter_file}
saved_IFS=$IFS
IFS="."
read Version Revision TinyNumber EditNumber
IFS=$saved_IFS
exec 0<&4			;# Save stdin

echo "Version=$Version  Revision=$Revision  TinyNumber=$TinyNumber  EditNumber=$EditNumber"

# Edit number limits
eMin=0
eMax=9

# Tiny Number limit
tMin=0
tMax=9

# Revision
rMin=0
rMax=9

# Version
vMin=0
vMax=100

# Source in the 
LimitsFile=version.limit
if [ -f ${LimitsFile} ]; then
    if [ -r ${LimitsFile} ]; then
	echo "INFO: Sourcing in limit file:${LimitsFile}"
	. ${LimitsFile}
    fi
fi
DumpLine="${Version}.${Revision}.${TinyNumber}.${EditNumber}"

if [ "$increment_delta" = "yes" ]; then
    #
    # Increment the delta ID
    #
    EditNumber=`expr $EditNumber + 1`
    if [ $EditNumber -gt $eMax ]; then
	EditNumber=$eMin
	TinyNumber=`expr $TinyNumber + 1`
	if [ $TinyNumber -gt $tMax ]; then
	    TinyNumber=$tMin
	    Revision=`expr $Revision + 1`
	    if [ $Revision -gt $rMax ]; then
		Revision=$rMin
		Version=`expr $Version + 1`
	    fi
	fi
    fi
    DumpLine="${Version}.${Revision}.${TinyNumber}.${EditNumber}"
    echo "Delta ID incremented to ${DumpLine}"
else
    echo "NO increment of delta ID performed."
fi

${PrefixCmd} /bin/rm -f ${counter_file}
${PrefixCmd} /bin/rm -f ${short_counter_file}
if [ $DryRunFlag -eq 0 ]; then
    echo "${DumpLine}" >> ${counter_file}
    ${PrefixCmd} chmod 644 ${counter_file}
    echo "${Version}.${Revision}.${TinyNumber}" >> ${short_counter_file}
    ${PrefixCmd} chmod 644 ${short_counter_file}
    CreateJavaFile "${appver_package_name}"
fi

exit 0

# fini
