#!/bin/sh
export PATH || exec /bin/sh $0 $argv:q
#### WARNING: This shell script contains embedded tabs.
#
# DESCRIPTION
# 
# Shell Script ``tarbackup.sh''
# A script automate tape backup of programs, and non-executable files
#
# Peter Pilgrim 
# Thu Oct 19 17:41:03 BST 1995
#
# RCS HEADER ``tarbackup.sh''
# 
# $Author: pilgpe $
# $Date: 1999/04/21 14:12:14 $
# $Source: /export/devel/cvs/OTC_WEB/java/tarbackup.sh,v $
# $Revision: 1.2 $    $State: Exp $    $Locker:  $
#

# SHELL  SHELL  SHELL  SHELL  SHELL  SHELL  SHELL  SHELL  SHELL  SHELL  SHELL  

# ********************************************************************************
PrintUsage() 
# ********************************************************************************
{
    cat << EOF
USAGE: $myname  
		   [ --help (-u) | --usage (-u) ]
		   [ --dryrun (-dr) ] [ --silent (-s) ]
		   [ --verbose (-v) | --noverbose (+v) ]
		   [ --normal (-n) | 
		     ( [ --excl-bin ] [ --excl-objects ] [ --excl-libs ]
		       [ --excl-temp ] [ --excl-core ] [ --excl-rcs ] 
		       [ --excl-sccs ] [ --excl-dot ] [ --excl-tar ]
		       [ --excl-zip ] [ --excl-cpio ]
		     ) ]
		   [ --excl-patch ] [ --excl-tar ] [ --excl-zip ]
		   [ --incl-bin ]
		   [ --exclude (-x) <SED-PATTERN> ]
		   <TARFILE>  <ACTIVE-DIRECTORY>  <FILE/DIR>...

OPTIONS:-

    '--help'		produces this message text.
    '--usage'		ditto.

    '--verbose'		produces verbose output.
    '--noverbose'	no extra info is printed, quiet.

    '--excl-bin'	exclude any executable files.
    '--incl-bin'	include any executable files.
    '--excl-libs'	exclude library files 
			e.g. '.sa', '.so', '.a', '.sl' .
    '--excl-objs'	exclude object files '.o$', '.obj$'and '.obj$' .

    '--excl-temp'	exclude temporary files 
			e.g '.tmp' '.bak' '.BAK' '.flc' '*~' .
    '--excl-core'	exclude any core files '/core'
    '--excl-sccs'	exclude any SCCS files '*/SCCS/*' '*/[sp].*' .
    '--excl-rcs'	exclude any CVS | RCS file   '*/CVS/*' '*/RCS/*' '*/*,v' .
    '--excl-dot'	exclude any hidden dot files '*/.*' .
    '--excl-patch'	exclude any patch files 
			e.g. '.save' '.orig' '.patch'
    '--excl-tar'	exclude any tar archive files '*.tar'.
    '--excl-zip'	exclude any compression files 
			e.g. '*.gz' '*.tgz' '*.z' '*.Z'.

    '--normal'		default mode of operation. Equivalent to setting 
			the options '--excl-objs --excl-bin --excl-libs 
			--excl-temp --excl-core --excl-rcs --excl-sccs 
			--excl-dot'
			
    '--exclude'		specifies an additional regular pattern for filenames
			to exclude from backup. NB: special characters must be
			_backslashified_, and the back slashes them too, 
			as in sed(1) e.g. '\\\\.foobar'. (see below examples)

    '--list'		also generate a long list flag which shows the size of
    '-l'		the tar file.

    '--keep-temp'	keep temporary files (for debugging purposes).
    '--silent'		run the script silently.
    '--dryrun'		dry run and test the configuration, do not configure the
    '-dr'		makefile.

DESCRIPTION:-
    '${myname}' creates a tar archive of files in the root directory and
will automatically exclude a variety of files. This is new version for 
adaptable for Linux and most systems.

o  The first ordinary argument __must__ be the tar filename.
o  The second ordinary argument __must__ be the active directory
   to start taring from.
o  The rest of the arguments are directories or filenames fed
   directly to the tar command.

ENVIRONMENTALS:-
    'TAR_CMD'         specifies the tar command. (Default is 'tar')
    'UNCOMPRESS_CMD'  specifies the uncompress command. (Default is 'uncompress')
    'GUNZIP_CMD'      specifies the gunzip command. (Default is 'gzip -dv')

EXAMPLES:-

    % $myname -v  myutils.tar   .  .
    % $myname -v --normal  projectX.tar  .  include src config doc
    % $myname -v --normal --excl-zip --exclude '\\\\.dvi\$' \\
	genesis.tar   ~/latex/first/novel  chap1 chap[8-10] appendix
    % $myname -v --normal --excl-zip --exclude "\\\\.dvi\$" \\
	genesis.jar   ~/latex/first/novel  chap1 chap[8-10] appendix

FILES:

    ${TMPDIR}/${myname}-exclusion<PID>
    TAR-EXCLUDE

Peter Pilgrim Fri Oct 20 16:47:43 BST 1995
Version 2.0 Wed Jul 02 19:13:14 BST 1997
EOF

    echo '$RCSfile: tarbackup.sh,v $ $Revision: 1.2 $ $Date: 1999/04/21 14:12:14 $ $Author: pilgpe $'
    exit 0
}

# ********************************************************************************
SysWarn ()
# ********************************************************************************
{
    # Print warning exception and allow the script to continue.
    echo "$myname: *WARNING* : $1" 1>&2
}

# ********************************************************************************
SysError ()
# ********************************************************************************
{
    # Print fatal error exception and terminate the script with error.
    echo "$myname: *ERROR* : $1" 1>&2
    exit 1
}

# ********************************************************************************
SignalCatcher() {
# ********************************************************************************
    # A generic signal handler for the shell script.
    echo "$myname: Got Signal $1"
    exit 3
}

# ********************************************************************************
CleanUp () 
# ********************************************************************************
{
    # clean up at exit remove temporary files etcetera
    if [ $PipeCmd -eq 0 -a $silent -eq 0 ]; then
	echo "$myname: clean up and exit."
    fi
    test $keep_temp_files -eq 0 && \
     /bin/rm -f DUMMY_FILE $TempFile1 $TempFile2
}


# ********************************************************************************
# MAIN  MAIN  MAIN  MAIN  MAIN  MAIN  MAIN  MAIN  MAIN  MAIN  MAIN  MAIN  MAIN  
# ********************************************************************************

myname=`basename $0`
PrefixCmd=""
DryRunFlag=0
VerboseOpt="+x"
DebugVerboseOpt="+x"
silent=0
verbose=0
debug=0

# Save the current working directory now
SaveDir=`pwd`

# Set up the command defaults
CompressCmd=${COMPRESS_CMD-compress}
UncompressCmd=${COMPRESS_CMD-uncompress}
GzipCmd=${GZIP_CMD-"gzip -v"}
GunzipCmd=${GUNZIP_CMD-"gzip -dv"}

# Where should temporaries go.
: ${TMPDIR:=/tmp}

# Reset the archiving flags
Directory=NOTHING
TarFile=NOTHING
TarVerboseFlag=""
GzipFlag=0
ForceFlag=0
CompressFlag=0
ExtraExcludes=""
PipeCmd=0
ListFlag=0

ExcObjectsFlag=0
ExcBinFlag=0
IncBinFlag=0
ExcLibsFlag=0
ExcTempFlag=0
ExcCoreFlag=0
ExcRcsFlag=0
ExcSccsFlag=0
ExcDotFlag=0
ExcZipFlag=0
ExcTarFlag=0
ExcCpioFlag=0
ExcPatchFlag=0
ExcEmacsFlag=0

ExcObjects=""
ExcBin=""
ExcLibs=""
ExcTemp=""
ExcCore=""
ExcRcs=""
ExcSccs=""
ExcDot=""
ExcPatch=""
ExcTar=""
ExcZip=""
ExcEmacs=""

# Reset excludes string here.
AxcFlags=""

# Set up '--normal' as the default options!!
NormalFlag=1
keep_temp_files=0

# Temporary directory
: ${TMPDIR:=/tmp}

#
# Command Line Arguments interpretation
#
with_opt=NONE
first_arg=dummy
prev_arg=0
while [ $# -gt 0 ]
do
    #
    # Interpret previous argument
    #
    if [ $prev_arg -eq 1 ]; then
       #
       # Handle arguments that are either 
       # % xyz  "--with_opt"  "="   "gcc"
       # % xyz  "--with_opt"  "=gcc"
       # % xyz  "--with_opt"  "gcc"
       #
       if [ "$1" = "=" ]; then shift; fi
       echo "prev: $first_arg  =  $1"
       optval=`echo $1 | sed 's/^=//g'`
       eval `echo $first_arg=$optval`
       if [ $? -ne 0 ]; then
	  echo "$myname: illegal argument '$first_arg' evaluation with '$optval'" 1>&2
	  exit 1
       fi
       prev_arg=0
       shift
       continue
    fi

    #
    # Interpret current command line argument
    #
    case $1 in

	--with-option=* | --with-optio=* | --with-opt=* )
	     echo "arg='$1'"
	     argopt=with_opt
	     argval=`echo "$1" | sed -e 's/^.*=//'`
	     echo "with_opt='$argval'"
	     eval `echo with_opt=$argval`
	     if [ $? -ne 0 ]; then
	        echo "$myname: illegal argument '$first_arg' evaluation with '$optval'" 1>&2
		exit 1
	     fi
	     ;;

	--with-opt )
	     # echo "arg='$1'"
	     first_arg=with_opt
	     prev_arg=1
	     ;;

	-gzip | -gzi | -gz | --gzip | --gzi | --gz )
	   GzipFlag=1
	   CompressFlag=0
	   ;;

	-compress | -comp | --compress | --compres | --compre | \
	--compr | --com | --co | --c | -c )
	   GzipFlag=0
	   CompressFlag=1
	   ;;

	-normal | -norm | --normal | --norma | \
	--norm | --nor | --no | --n | -n )
	    NormalFlag=1 
	    ExcObjectsFlag=1
	    ExcBinFlag=1
	    ExcLibsFlag=1
	    ExcTempFlag=1
	    ExcCoreFlag=1
	    ExcRcsFlag=1
	    ExcSccsFlag=1
	    ExcDotFlag=1
	    ExcEmacsFlag=1
	    ;;
 
	-force | --force | --forc | --for | --fo | --f | -f )
	   ForceFlag=1;;

	-excl-binaries | -excl-bin | \
	--excl-binaries | --excl-binarie | --excl-binari | --excl-binary | \
	--excl-binar | --excl-bina | --excl-bin | --excl-bi | --excl-b )
	   InclBinFlag=0; ExcBinFlag=1 ;;

	-incl-binaries | -incl-bin | \
	--incl-binaries | --incl-binarie | --incl-binari | --incl-binary | \
	--incl-binar | --incl-bina | --incl-bin | --incl-bi | --incl-b )
	   InclBinFlag=1; ExcBinFlag=0;;

	-excl-objects | -excl-obj | \
	--excl-objects | --excl-object | --excl-objec | --excl-obje | \
	--excl-objs | --excl-obj | --excl-ob | --excl-o )
	   ExcObjectsFlag=1 ;;

	-excl-libraries | -excl-lib | \
	--excl-libraries | --excl-librarie | --excl-librari | --excl-library | \
	--excl-librar | --excl-libra | --excl-libr | \
	--excl-libs | --excl-lib | --excl-li | --excl-l )
	   ExcLibsFlag=1 ;;

	-excl-temp | -excl-tmp | \
	--excl-temp | --excl-tem | --excl-tmp | --excl-te )
	   ExcTempFlag=1 ;;

	-excl-emacs | -excl-em | \
	--excl-emacs | --excl-ema | --excl-em )
	   ExcEmacsFlag=1 ;;

	-excl-core | -excl-co | \
	--excl-core | --excl-cor | --excl-co )
	   ExcCoreFlag=1 ;;

	-excl-rcs | -excl-rc | \
	--excl-rcs | --excl-rc | --excl-r )
	   ExcRcsFlag=1 ;;

	-excl-sccs | -excl-sc | \
	--excl-sccs | --excl-scc | --excl-sc | --excl-s )
	   ExcSccsFlag=1 ;;

	-excl-dot | -excl-do | \
	--excl-dot | --excl-do | --excl-d )
	   ExcDotFlag=1 ;;

	-excl-zip | -excl-zi | \
	--excl-zip | --excl-zi | --excl-z )
	   ExcZipFlag=1 ;;

	-excl-tar |  --excl-tar)
	   ExcTarFlag=1 ;;

	-excl-patch | -excl-pat | \
	--excl-patch | --excl-patc | --excl-pat )
	   ExcPatchFlag=1 ;;

	-exclude | -exclu | --exclude | --exclud | --exclu | --x | -x )
	   if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
	   AxcFlags="${AxcFlags}$2";
	   ExtraExcludes="${ExtraExcludes} -e $2"
	   shift ;;

	--list | --lis | --li | --l | -list | -lis | -li | -l )
	   ListFlag=1
	   ;;

	 # **** STANDARD CLI OPTIONS ****

	 --dryrun | --dryru | --dryr | --dry | --dr | -dr | \
	 -dryrun | -dryru | -dryr | -dry | -dr | -dr )
	    PrefixCmd="echo =>"
	    DryRunFlag=1
	    ;;

	--debug | --debu | --deb | --de | -debug | -debu | -deb | -de )
	   debug=1
	   ListFlag=1
	   ;;

	--nodebug | --nodebu | --nodeb | --node | -nodebug | -nodebu | -nodeb | -node )
	   debug=0
	   ;;

	-verbose | -verb | --verbose | --verbos | \
	--verbo | --verb | --ver | --ve | --v | -v )
	   verbose=1
	   ;;

	-noverbose | -noverbose | --noverbose | --noverbos | \
	--noverbo | --noverb | --nover | \
	--nove | --nov | +v )		
	   verbose=0
	   ;;

	-silent | --silent | --silen | --sile | --sil | --si | --s | -s )
	    verbose=0
	    silent=1
	    ;;
	
	-keep-temp-files | --keep-temp-files | --keep-temp-file | \
	--keep-temp-fil | --keep-temp-fi | --keep-temp-f | \
	--keep-temp- | --keep-temp | --keep-tem | --keep-te | \
	--keep-t | --keep- | --keep | --kee | --ke | --k | -k )
	keep_temp_files=1
	;;

	-help | --help | --hel | --he | --h | -h | \
	-usage | --usage | --usag | --usa | --us | --u | -u )
	     PrintUsage; exit 0
	     ;;

	-) 
	    # Break single dash for interpretation of piped input.
	    break;;

	-* | --* )
	    SysError "unknown cli option '$1', try --help for more info."
	    ;;

	*)
	     break
	     ;;
    esac
    shift
done

if [ $debug -ne 0 ]; then
   echo "*DEBUG*"
   echo "FINAL: with_opt=$with_opt"
fi

#
# Trap any signals
#
trap 'CleanUp "Cleaning"' 0
trap 'SignalCatcher "(SIGHUP)"'  1
trap 'SignalCatcher "(SIGINT)"'  2
trap 'SignalCatcher "(SIGQUIT)"' 3
trap 'SignalCatcher "(SIGTERM)"' 15

#
# Handle verbosity
#
if [ $verbose -eq 0 ]; then
   TarVerboseFlag=""
   VerboseOpt="+x"
else
   TarVerboseFlag="v"
   VerboseOpt="-x"
fi

if [ $debug -eq 0 ]; then
   DebugVerboseOpt="+x"
else
   TarVerboseFlag="v"
   DebugVerboseOpt="-x"
fi

#
# Check remaining CLI arguments
#
if [ $# -lt 3 ]; then
    SysError "require tarfile and directory arguments.
Try \`--help' to see details."
fi


# Setup Miscellany
Bar40="========================================"
Bar80=${Bar40}${Bar40}

# The first ordinary argument __must__ be the tar filename
TarFile=$1
shift
# The second ordinary argument __must__ be the active directory to
# start taring from.
Directory=$1
shift
# The rest of the arguments are directories or filenames fed
# directly to the tar command.
SubdirFiles="$@"

#
# Search for a compatible GNU tar command.
# (snarfed from 'aconfigure.sh' !!)
if test -z "$TAR_CMD" ; then
    # Extract the first word of `tar', so it can be a program name with args.
    set cf_dummy gtar; cf_word=$2
    test $silent -eq 0 && echo "checking for $cf_word"
    IFS="${IFS=	}"; cf_save_ifs="$IFS"; IFS="${IFS}:"
    for cf_dir in $PATH; do
	test -z "$cf_dir" && cf_dir=.
	if test -f $cf_dir/$cf_word; then
	    TAR_CMD="gtar"
	    break
	fi
    done
    IFS="$cf_save_ifs"
fi
case $TAR_CMD in
    gtar* ) ;;
    *)
    [ $silent -eq 0 ] && \
	SysWarn "This script only works properly with a GNU compatible \`tar' command."
    ;;
esac
test $verbose -ne 0 && echo "	setting TAR_CMD to $TAR_CMD"
# Set the tape official GNU archive command here!!
TarCmd=${TAR_CMD-tar}

#
# Check for absolute or relative in the final tar file
#
case $TarFile in
     /* )
	ThisTarFile=$TarFile
	;;
     -)
        ThisTarFile=$TarFile
	PipeCmd=1
	silent=1
	;;
     *)
	ThisTarFile=$SaveDir/$TarFile
	;;
esac

if [ -w $SaveDir ]; then
    # This directory is writable so we can use it
    ExcludeFile=$SaveDir/TAR-EXCLUDE
else
    # Otherwise use a temporary directory file
    ExcludeFile=${TMPDIR}/TAR-EXCLUDE.$$
fi

#
# Check for any anomalities in the files to be tared
#
FilesToTar=
for f in ${SubdirFiles}
do
    if [ "${f}" = "." ]; then
       # ***BUGFIX*** an anomality between the command `find . -type f -print'
       # and `tar cvf test.tar .' command, when we are using the current
       # directory.
       FilesToTar="${FilesToTar} ./."
    else
       FilesToTar="${FilesToTar} $f"
    fi
done

if [ $debug -ne 0 ]; then
   echo "*DEBUG*"
   echo "TarFile        = '$TarFile'"
   echo "ThisTarFile	= '$ThisTarFile'"
   echo "Directory	= '$Directory'"
   echo "SubdirFiles	= '$SubdirFiles'"
   echo "FilesToTar	= '$FilesToTar'"
   echo "ExcludeFile	= '$ExcludeFile'"
fi

if [ ! -d $Directory ]; then
   SysError "file:\`$Directory' not a directory."

fi

cd $Directory

#
# Create a exclude file for exluding various file types
# object files, static library files, shared library files,
# patch files, backup files, patch files, backup file, temporary files,
# core dump files, any RCS / SCCS sub directory files, 
# and Tar Exclusion file 
#
if [ -f ${ExcludeFile} ]; then
   /bin/rm -f ${ExcludeFile}
fi
cat /dev/null > ${ExcludeFile}

if [ $PipeCmd -eq 0 -a $silent -eq 0 ]; then
    echo "Performing tape archive backup."
    echo "in active dir:      \`${Directory}'"
fi

# Reset the new exlusion flags variable


if [ $ExcObjectsFlag -ne 0 ] ; then
    ## ExcObjects="-e \\.o$ -e \\.obj$"
    if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
    AxcFlags="${AxcFlags}\\.o$|\\.obj$"
fi
if [ $ExcLibsFlag -ne 0 ] ; then
    ## ExcLibs="-e \\.a$ -e \\.so$ -e \\.sa$ -e \\.sl$ "
    if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
    AxcFlags="${AxcFlags}\\.a$|\\.so$|\\.sa$|\\.sl$"
fi
if [ $ExcPatchFlag -ne 0 ] ; then
    ## ExcPatch="-e \\.save$ -e \\.orig$ -e \\.patch$"
    if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
    AxcFlags="${AxcFlags}\\.save$|\\.orig$|\\.patch$"
fi
if [ $ExcDotFlag -ne 0 ] ; then
    ## ExcDot="-e /\\."
    if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
    AxcFlags="${AxcFlags}/\\."
fi
if [ $ExcTempFlag -ne 0 ] ; then
    ## ExcTemp1="-e .~$ -e \\.bak$ -e \\.tmp$ "
    ExcTemp2="-e /# -e .BAK$ -e .mail$"
    if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
    AxcFlags="${AxcFlags}.~$|\\.bak$|\\.tmp$|\/#|\\.BAK$|\\.mail$"
fi
if [ $ExcCoreFlag -ne 0 ] ; then
    ## ExcCore="-e /core$"
    if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
    AxcFlags="${AxcFlags}/core$"
fi
if [ $ExcSccsFlag -ne 0 ] ; then
    ## ExcSccs="-e /SCCS -e /s\\. -e /p\\."
    if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
    AxcFlags="${AxcFlags}/SCCS|/s\\.|/p\\."
fi
if [ $ExcRcsFlag -ne 0 ] ; then
    ## ExcRcs="-e /RCS  -e \\,v$"
    if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
    AxcFlags="${AxcFlags}/RCS|/CVS|\\,v$"
fi
if [ $ExcEmacsFlag -ne 0 ] ; then
    ## ExcEmacs="-e .flc$  -e /# -e /\!"
    if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
    AxcFlags="${AxcFlags}\\.flc$|/#|/\!"
fi
if [ $ExcTarFlag -ne 0 ] ; then
    ## ExcTar="-e \\.tar$"
    if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
    AxcFlags="${AxcFlags}\\.tar$"
fi
if [ $ExcCpioFlag -ne 0 ] ; then
    ## ExcCpio="-e \\.cpio$"
    if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
    AxcFlags="${AxcFlags}\\.cpio$"
fi
if [ $ExcZipFlag -ne 0 ] ; then
    ## ExcZip="-e \\.gz$ -e \\.tgz$ -e \\.z$ -e \\.Z -e \\.tz$"
    if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
    AxcFlags="${AxcFlags}\\.gz$|\\.zip$|\\.tgz$|\\.z$|\\.Z|\\.tz$"
fi

# Make sure the exclusion file is also excluded!!
if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
AxcFlags="${AxcFlags}`basename ${ExcludeFile}`"
## GrepFlags="-e `basename ${ExcludeFile}`$"
if [ $debug -ne 0 ] ; then
    echo "AxcFlags='${AxcFlags}'"
    echo "*DEBUG* *** Building Exclusion File ***"
fi

#
# Variable check to see if have done exclusion in the current directory already.
#
CurrentDirectoryDone=0

for Subdir in ${SubdirFiles}
do
    if [ ! -d ${Subdir} ]; then
	# This subdirectory is not a subdirectory.
	if [ ${CurrentDirectoryDone} -ne 0 ]; then
	    # Already done the current directory!
	    continue
	else
	    Subdir='.'
	    CurrentDirectoryDone=1
	fi
    fi

    if [ $PipeCmd -eq 0 -a $silent -eq 0 ]; then
	echo "with subdirectory:  \`${Subdir}'"
    fi
    ## GrepCmd=grep
    ## GrepFlags="${GrepFlags} -e ${ExcBin} ${ExcObjects} ${ExcLibs} ${ExcTemp1} ${ExcTemp2} ${ExcCore}"
    ## GrepFlags="${GrepFlags} ${ExcEmacs} ${ExcPatch} ${ExcRcs} ${ExcSccs} ${ExcDot}"
    ## GrepFlags="${GrepFlags} ${ExcTar}   ${ExcZip} -e /Exclude$ ${ExtraExcludes}"
    ## GrepFlags="${GrepFlags} -e \/${TarFile}$"

    AltGrepCmd=egrep
    if [ "x$AxcFlags" != "x" ]; then AxcFlags="${AxcFlags}|"; fi
    AxcFlags="${AxcFlags}\/${TarFile}$"


    # The most portable way to do this is to use a temporary file
    # Some systems like OSF/1 allows multiple -e special expressions
    # While others like SunOS/Solaris dont, just put everything in
    # one massive regexp line for the final command.
    # Everything is `or' on this regexp line.
    if [ $keep_temp_files -eq 0 ]; then
	TempFile1=${TMPDIR}/${myname}-exclusions$$
    else
	TempFile1=${TMPDIR}/${myname}-exclusions.txt
    fi
    /bin/rm -f $TempFile1
    echo "$AxcFlags" > $TempFile1

    (set ${DebugVerboseOpt};
     find ${Subdir} -print | ${AltGrepCmd} -f $TempFile1  >> ${ExcludeFile}  )
    status=$?

#      grep -e '.~$' -e '\.o$' -e '\.a$' -e '\.so$' -e '\.sa$' \
# 	    -e '\.orig$' -e '\.bak$' -e '\.save$' -e '\.tmp$'	 \
# 	    -e '/core$' -e '/\.' -e '/a.out' -e '/Exclude$' \
# 	    -e '/#' -e '.BAK$' -e '.flc$' -e '.mail$' \
# 	    -e '/RCS'  -e '\,v$' \
# 	    -e '/SCCS' -e '/s\.' \
# 	    -e "\/${TarFile}$"	    >> ${ExcludeFile}
#
# NOTES  NOTES  NOTES  NOTES  NOTES  NOTES  NOTES  NOTES  NOTES  NOTES  NOTES  
# exit values from `grep' DEC Alpha osf1
# status: description
#  0	: A match was found.
#  1	: No match was found.
#  2	: Syntax error was found, or file was inaccessible, even if matches
#	  were found.
#

    if [ $status -ne 0 -a $status -ne 1 ]; then
       SysError "couldn't create tar exclusion file: \`${ExcludeFile}' {1}
	(final status: $status)" 
    fi

    ### echo "**** DEATH 69 ****"; exit 69

    if [ $ExcBinFlag -ne 0 ]; then
	#
	# Exclude any executable files or scripts, which are likely to be binaries.
	# In any case all those type of files should be built with make,
	# and the compression of pure sources is superb with ``gzip''. 
	# With gzip you get up 80% pure squeeze !!
	#
	(set ${DebugVerboseOpt};
	 find ${Subdir} -type f -perm -555 -print >> ${ExcludeFile}
	)
	status=$?
	if [ $status -ne 0 ]; then
	   SysError "couldn't create tar exclusion file: \`${ExcludeFile}' {2}
	(final status: $status)"
	fi
    fi
done

# Add the name of the Tar File because we do not want it 
# added (recursively) to it self.
echo "${TarFile}" >> ${ExcludeFile}

if [ $silent -eq 0 ]; then
    echo
    echo $Bar80
    echo "The following files will be excluded from the archive:-"
    cat ${ExcludeFile}
fi

if [ $PipeCmd -eq 0 -a $silent -eq 0 ]; then
    echo
    echo $Bar80
    echo "-*- Building tape archive -*- : '${TarFile}'"
    echo $Bar80
fi

if [ "$ThisTarFile" != "-" ]; then
    if [ -f ${ThisTarFile} ]; then
        /bin/rm -f ${ThisTarFile};
    fi
fi
 
(set ${VerboseOpt}; ${PrefixCmd} \
 ${TarCmd} c${TarVerboseFlag}fX ${ThisTarFile} ${ExcludeFile} ${FilesToTar} )
status=$?
if [ $status -ne 0 ]; then
    if [ $ForceFlag -eq 0 ]; then
	SysError "couldn't create tar file: \`${ThisTarFile}'
	(final status: $status)" 1>&2
    else
	echo "Command '${TarCmd}' returned error (status:$status)"
	echo "However force flag was set -- ignoring status"
    fi
fi

if [ $silent -eq 0 ]; then
    echo
    echo $Bar80
fi

if [ $debug -ne 0 ]; then
    echo "*DEBUG*"
fi
if [ $debug -ne 0 -o $ListFlag -ne 0 ]; then
    echo "-*- Long List of Tar File -*-"
    ${PrefixCmd} ls -l ${ThisTarFile}
fi

if [ $GzipFlag -ne 0 -a "$ThusTarFile" != "-" ]; then
    #
    # gzip the final tar file
    # 
    if [ -f ${ThisTarFile}.gz ]; then
       ${PrefixCmd} rm -f ${ThisTarFile}.gz
    fi
    (set ${VerboseOpt}; ${PrefixCmd} \
     ${GzipCmd} -c ${ThisTarFile} > ${ThisTarFile}.gz)
    status=$?
    if [ $status -ne 0 ]; then
       SysError "couldn't __gzip__ the final tar file.
       file: \`${ThisTarFile}' (final status: $status)"

    fi
    echo "gzipped the tar file."
    if [ -f ${ThisTarFile} ]; then
	${PrefixCmd} rm -f ${ThisTarFile}
    fi
    if [ $debug -ne 0 -o $ListFlag -ne 0 ]; then
	echo "-*- Long List of GNU Zipped Tar File -*-"
	${PrefixCmd} ls -l ${ThisTarFile}.gz
    fi
elif [ $CompressFlag -ne 0 ]; then
    #
    # compress the final tar file
    # 
    if [ -f ${ThisTarFile}.Z ]; then
	${PrefixCmd} rm -f ${ThisTarFile}.Z
    fi
    (set ${VerboseOpt}; ${PrefixCmd} 
     ${CompressCmd} -c ${ThisTarFile} > ${ThisTarFile}.Z)
    status=$?
    if [ $status -ne 0 ]; then
	SysError "couldn't __compress__ the final tar 
	file: '${ThisTarFile}' (final status: $status)"
	exit 1
    fi
    echo "compressed the tar file."
    if [ -f ${ThisTarFile} ]; then
       ${PrefixCmd} rm -f ${ThisTarFile}
    fi
    if [ $debug -ne 0 -o $ListFlag -ne 0 ]; then
	echo "-*- Long List of UN*X Compressed Tar File -*-"
	${PrefixCmd} ls -l ${ThisTarFile}.[zZ]
    fi
fi

if [ $PipeCmd -eq 0 -a $silent -eq 0 ]; then
    echo "completed file: '$ThisTarFile'."
fi

exit
#fini
