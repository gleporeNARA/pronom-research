# Microsoft Developer Studio Generated NMAKE File, Based on zlib.dsp
# Tweaked by ProjectWatcher Add-In ver 100.2.22.1
!IF "$(CFG)" == ""
CFG=zlib - Win32 i386 Full Debug
!MESSAGE No configuration specified. Defaulting to zlib - Win32 i386 Full Debug.
!ENDIF 

!IF "$(CFG)" != "zlib - Win32 i386 Debug" && "$(CFG)" != "zlib - Win32 i386 Release" && "$(CFG)" != "zlib - Win32 i386 ProfACAP" && "$(CFG)" != "zlib - Win32 i386 Profile" && "$(CFG)" != "zlib - Win32 i386 Release With Symbols" && "$(CFG)" != "zlib - Win32 i386 Full Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "zlib.mak" CFG="zlib - Win32 i386 Full Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "zlib - Win32 i386 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "zlib - Win32 i386 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "zlib - Win32 i386 ProfACAP" (based on "Win32 (x86) Static Library")
!MESSAGE "zlib - Win32 i386 Profile" (based on "Win32 (x86) Static Library")
!MESSAGE "zlib - Win32 i386 Release With Symbols" (based on "Win32 (x86) Static Library")
!MESSAGE "zlib - Win32 i386 Full Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"

OUTDIR=.\..\..\..\lib\i386\Debug
INTDIR=.\Debug

ALL : ".\Debug\zlib.lib"


CLEAN :
	-@erase "$(INTDIR)\adler32.obj"
	-@erase "$(INTDIR)\compress.obj"
	-@erase "$(INTDIR)\crc32.obj"
	-@erase "$(INTDIR)\deflate.obj"
	-@erase "$(INTDIR)\gzio.obj"
	-@erase "$(INTDIR)\infblock.obj"
	-@erase "$(INTDIR)\infcodes.obj"
	-@erase "$(INTDIR)\inffast.obj"
	-@erase "$(INTDIR)\inflate.obj"
	-@erase "$(INTDIR)\inftrees.obj"
	-@erase "$(INTDIR)\infutil.obj"
	-@erase "$(INTDIR)\maketree.obj"
	-@erase "$(INTDIR)\trees.obj"
	-@erase "$(INTDIR)\uncompr.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\zutil.obj"
	-@erase ".\Debug\zlib.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MDd /W3 /WX /Gm /GX /ZI /Od /I "../.." /I ".." /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /Fp"$(INTDIR)\zlib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"Debug\zlib.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"Debug\zlib.lib" 
LIB32_OBJS= \
	"$(INTDIR)\adler32.obj" \
	"$(INTDIR)\compress.obj" \
	"$(INTDIR)\crc32.obj" \
	"$(INTDIR)\deflate.obj" \
	"$(INTDIR)\gzio.obj" \
	"$(INTDIR)\infblock.obj" \
	"$(INTDIR)\infcodes.obj" \
	"$(INTDIR)\inffast.obj" \
	"$(INTDIR)\inflate.obj" \
	"$(INTDIR)\inftrees.obj" \
	"$(INTDIR)\infutil.obj" \
	"$(INTDIR)\maketree.obj" \
	"$(INTDIR)\trees.obj" \
	"$(INTDIR)\uncompr.obj" \
	"$(INTDIR)\zutil.obj"

".\Debug\zlib.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"

OUTDIR=.\..\..\..\lib\i386\Release
INTDIR=.\Release

ALL : ".\Release\zlib.lib"


CLEAN :
	-@erase "$(INTDIR)\adler32.obj"
	-@erase "$(INTDIR)\compress.obj"
	-@erase "$(INTDIR)\crc32.obj"
	-@erase "$(INTDIR)\deflate.obj"
	-@erase "$(INTDIR)\gzio.obj"
	-@erase "$(INTDIR)\infblock.obj"
	-@erase "$(INTDIR)\infcodes.obj"
	-@erase "$(INTDIR)\inffast.obj"
	-@erase "$(INTDIR)\inflate.obj"
	-@erase "$(INTDIR)\inftrees.obj"
	-@erase "$(INTDIR)\infutil.obj"
	-@erase "$(INTDIR)\maketree.obj"
	-@erase "$(INTDIR)\trees.obj"
	-@erase "$(INTDIR)\uncompr.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\zutil.obj"
	-@erase ".\Release\zlib.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /WX /Gm /GX /Zi /O2 /I "../.." /I ".." /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /Fp"$(INTDIR)\zlib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"zlib.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"Release\zlib.lib" 
LIB32_OBJS= \
	"$(INTDIR)\adler32.obj" \
	"$(INTDIR)\compress.obj" \
	"$(INTDIR)\crc32.obj" \
	"$(INTDIR)\deflate.obj" \
	"$(INTDIR)\gzio.obj" \
	"$(INTDIR)\infblock.obj" \
	"$(INTDIR)\infcodes.obj" \
	"$(INTDIR)\inffast.obj" \
	"$(INTDIR)\inflate.obj" \
	"$(INTDIR)\inftrees.obj" \
	"$(INTDIR)\infutil.obj" \
	"$(INTDIR)\maketree.obj" \
	"$(INTDIR)\trees.obj" \
	"$(INTDIR)\uncompr.obj" \
	"$(INTDIR)\zutil.obj"

".\Release\zlib.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"

OUTDIR=.\..\..\..\lib\i386\ProfACAP
INTDIR=.\ProfACAP

ALL : ".\ProfACAP\zlib.lib"


CLEAN :
	-@erase "$(INTDIR)\adler32.obj"
	-@erase "$(INTDIR)\compress.obj"
	-@erase "$(INTDIR)\crc32.obj"
	-@erase "$(INTDIR)\deflate.obj"
	-@erase "$(INTDIR)\gzio.obj"
	-@erase "$(INTDIR)\infblock.obj"
	-@erase "$(INTDIR)\infcodes.obj"
	-@erase "$(INTDIR)\inffast.obj"
	-@erase "$(INTDIR)\inflate.obj"
	-@erase "$(INTDIR)\inftrees.obj"
	-@erase "$(INTDIR)\infutil.obj"
	-@erase "$(INTDIR)\maketree.obj"
	-@erase "$(INTDIR)\trees.obj"
	-@erase "$(INTDIR)\uncompr.obj"
	-@erase "$(INTDIR)\zutil.obj"
	-@erase "..\..\bin\i386\ProfACAP\zlib.idb"
	-@erase "..\..\bin\i386\ProfACAP\zlib.pdb"
	-@erase ".\ProfACAP\zlib.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /WX /Gm /GX /Zi /O2 /I "../.." /I ".." /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "ACAP" /Fp"$(INTDIR)\zlib.pch" /YX /Fo"$(INTDIR)\\" /Fd"..\..\..\bin\i386\ProfACAP\zlib.pdb" /FD /Gh /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"ProfACAP\zlib.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"ProfACAP\zlib.lib" 
LIB32_OBJS= \
	"$(INTDIR)\adler32.obj" \
	"$(INTDIR)\compress.obj" \
	"$(INTDIR)\crc32.obj" \
	"$(INTDIR)\deflate.obj" \
	"$(INTDIR)\gzio.obj" \
	"$(INTDIR)\infblock.obj" \
	"$(INTDIR)\infcodes.obj" \
	"$(INTDIR)\inffast.obj" \
	"$(INTDIR)\inflate.obj" \
	"$(INTDIR)\inftrees.obj" \
	"$(INTDIR)\infutil.obj" \
	"$(INTDIR)\maketree.obj" \
	"$(INTDIR)\trees.obj" \
	"$(INTDIR)\uncompr.obj" \
	"$(INTDIR)\zutil.obj"

".\ProfACAP\zlib.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"

OUTDIR=.\..\..\..\lib\i386\Profile
INTDIR=.\Profile

ALL : ".\Profile\zlib.lib"


CLEAN :
	-@erase "$(INTDIR)\adler32.obj"
	-@erase "$(INTDIR)\compress.obj"
	-@erase "$(INTDIR)\crc32.obj"
	-@erase "$(INTDIR)\deflate.obj"
	-@erase "$(INTDIR)\gzio.obj"
	-@erase "$(INTDIR)\infblock.obj"
	-@erase "$(INTDIR)\infcodes.obj"
	-@erase "$(INTDIR)\inffast.obj"
	-@erase "$(INTDIR)\inflate.obj"
	-@erase "$(INTDIR)\inftrees.obj"
	-@erase "$(INTDIR)\infutil.obj"
	-@erase "$(INTDIR)\maketree.obj"
	-@erase "$(INTDIR)\trees.obj"
	-@erase "$(INTDIR)\uncompr.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\zutil.obj"
	-@erase ".\Profile\zlib.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /WX /Gm /GX /Zi /O2 /I "../.." /I ".." /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /Fp"$(INTDIR)\zlib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"Profile\zlib.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"Profile\zlib.lib" 
LIB32_OBJS= \
	"$(INTDIR)\adler32.obj" \
	"$(INTDIR)\compress.obj" \
	"$(INTDIR)\crc32.obj" \
	"$(INTDIR)\deflate.obj" \
	"$(INTDIR)\gzio.obj" \
	"$(INTDIR)\infblock.obj" \
	"$(INTDIR)\infcodes.obj" \
	"$(INTDIR)\inffast.obj" \
	"$(INTDIR)\inflate.obj" \
	"$(INTDIR)\inftrees.obj" \
	"$(INTDIR)\infutil.obj" \
	"$(INTDIR)\maketree.obj" \
	"$(INTDIR)\trees.obj" \
	"$(INTDIR)\uncompr.obj" \
	"$(INTDIR)\zutil.obj"

".\Profile\zlib.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"

OUTDIR=.\..\..\..\lib\i386\Release
INTDIR=.\Release

ALL : ".\Release\zlib.lib"


CLEAN :
	-@erase "$(INTDIR)\adler32.obj"
	-@erase "$(INTDIR)\compress.obj"
	-@erase "$(INTDIR)\crc32.obj"
	-@erase "$(INTDIR)\deflate.obj"
	-@erase "$(INTDIR)\gzio.obj"
	-@erase "$(INTDIR)\infblock.obj"
	-@erase "$(INTDIR)\infcodes.obj"
	-@erase "$(INTDIR)\inffast.obj"
	-@erase "$(INTDIR)\inflate.obj"
	-@erase "$(INTDIR)\inftrees.obj"
	-@erase "$(INTDIR)\infutil.obj"
	-@erase "$(INTDIR)\maketree.obj"
	-@erase "$(INTDIR)\trees.obj"
	-@erase "$(INTDIR)\uncompr.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\zutil.obj"
	-@erase ".\Release\zlib.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MD /W3 /WX /Gm /GX /Zi /O2 /I "../.." /I ".." /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /Fp"$(INTDIR)\zlib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"Release\zlib.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"Release\zlib.lib" 
LIB32_OBJS= \
	"$(INTDIR)\adler32.obj" \
	"$(INTDIR)\compress.obj" \
	"$(INTDIR)\crc32.obj" \
	"$(INTDIR)\deflate.obj" \
	"$(INTDIR)\gzio.obj" \
	"$(INTDIR)\infblock.obj" \
	"$(INTDIR)\infcodes.obj" \
	"$(INTDIR)\inffast.obj" \
	"$(INTDIR)\inflate.obj" \
	"$(INTDIR)\inftrees.obj" \
	"$(INTDIR)\infutil.obj" \
	"$(INTDIR)\maketree.obj" \
	"$(INTDIR)\trees.obj" \
	"$(INTDIR)\uncompr.obj" \
	"$(INTDIR)\zutil.obj"

".\Release\zlib.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"

OUTDIR=.\..\..\..\lib\i386\Debug
INTDIR=.\Debug

ALL : ".\Debug\zlib.lib" ".\Debug\zlib.bsc"


CLEAN :
	-@erase "$(INTDIR)\adler32.obj"
	-@erase "$(INTDIR)\adler32.sbr"
	-@erase "$(INTDIR)\compress.obj"
	-@erase "$(INTDIR)\compress.sbr"
	-@erase "$(INTDIR)\crc32.obj"
	-@erase "$(INTDIR)\crc32.sbr"
	-@erase "$(INTDIR)\deflate.obj"
	-@erase "$(INTDIR)\deflate.sbr"
	-@erase "$(INTDIR)\gzio.obj"
	-@erase "$(INTDIR)\gzio.sbr"
	-@erase "$(INTDIR)\infblock.obj"
	-@erase "$(INTDIR)\infblock.sbr"
	-@erase "$(INTDIR)\infcodes.obj"
	-@erase "$(INTDIR)\infcodes.sbr"
	-@erase "$(INTDIR)\inffast.obj"
	-@erase "$(INTDIR)\inffast.sbr"
	-@erase "$(INTDIR)\inflate.obj"
	-@erase "$(INTDIR)\inflate.sbr"
	-@erase "$(INTDIR)\inftrees.obj"
	-@erase "$(INTDIR)\inftrees.sbr"
	-@erase "$(INTDIR)\infutil.obj"
	-@erase "$(INTDIR)\infutil.sbr"
	-@erase "$(INTDIR)\maketree.obj"
	-@erase "$(INTDIR)\maketree.sbr"
	-@erase "$(INTDIR)\trees.obj"
	-@erase "$(INTDIR)\trees.sbr"
	-@erase "$(INTDIR)\uncompr.obj"
	-@erase "$(INTDIR)\uncompr.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\zutil.obj"
	-@erase "$(INTDIR)\zutil.sbr"
	-@erase ".\Debug\zlib.bsc"
	-@erase ".\Debug\zlib.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MDd /W3 /WX /GX /ZI /Od /I "../.." /I ".." /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /Fr"$(INTDIR)\\" /Fp"$(INTDIR)\zlib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"Debug\zlib.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\adler32.sbr" \
	"$(INTDIR)\compress.sbr" \
	"$(INTDIR)\crc32.sbr" \
	"$(INTDIR)\deflate.sbr" \
	"$(INTDIR)\gzio.sbr" \
	"$(INTDIR)\infblock.sbr" \
	"$(INTDIR)\infcodes.sbr" \
	"$(INTDIR)\inffast.sbr" \
	"$(INTDIR)\inflate.sbr" \
	"$(INTDIR)\inftrees.sbr" \
	"$(INTDIR)\infutil.sbr" \
	"$(INTDIR)\maketree.sbr" \
	"$(INTDIR)\trees.sbr" \
	"$(INTDIR)\uncompr.sbr" \
	"$(INTDIR)\zutil.sbr"

".\Debug\zlib.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"Debug\zlib.lib" 
LIB32_OBJS= \
	"$(INTDIR)\adler32.obj" \
	"$(INTDIR)\compress.obj" \
	"$(INTDIR)\crc32.obj" \
	"$(INTDIR)\deflate.obj" \
	"$(INTDIR)\gzio.obj" \
	"$(INTDIR)\infblock.obj" \
	"$(INTDIR)\infcodes.obj" \
	"$(INTDIR)\inffast.obj" \
	"$(INTDIR)\inflate.obj" \
	"$(INTDIR)\inftrees.obj" \
	"$(INTDIR)\infutil.obj" \
	"$(INTDIR)\maketree.obj" \
	"$(INTDIR)\trees.obj" \
	"$(INTDIR)\uncompr.obj" \
	"$(INTDIR)\zutil.obj"

".\Debug\zlib.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ENDIF 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("zlib.dep")
!INCLUDE "zlib.dep"
!ELSE 
!MESSAGE Warning: cannot find "zlib.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "zlib - Win32 i386 Debug" || "$(CFG)" == "zlib - Win32 i386 Release" || "$(CFG)" == "zlib - Win32 i386 ProfACAP" || "$(CFG)" == "zlib - Win32 i386 Profile" || "$(CFG)" == "zlib - Win32 i386 Release With Symbols" || "$(CFG)" == "zlib - Win32 i386 Full Debug"
SOURCE=.\adler32.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\adler32.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\adler32.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\adler32.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\adler32.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\adler32.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\adler32.obj"	"$(INTDIR)\adler32.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\compress.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\compress.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\compress.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\compress.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\compress.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\compress.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\compress.obj"	"$(INTDIR)\compress.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\crc32.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\crc32.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\crc32.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\crc32.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\crc32.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\crc32.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\crc32.obj"	"$(INTDIR)\crc32.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\deflate.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\deflate.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\deflate.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\deflate.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\deflate.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\deflate.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\deflate.obj"	"$(INTDIR)\deflate.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\gzio.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\gzio.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\gzio.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\gzio.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\gzio.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\gzio.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\gzio.obj"	"$(INTDIR)\gzio.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\infblock.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\infblock.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\infblock.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\infblock.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\infblock.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\infblock.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\infblock.obj"	"$(INTDIR)\infblock.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\infcodes.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\infcodes.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\infcodes.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\infcodes.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\infcodes.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\infcodes.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\infcodes.obj"	"$(INTDIR)\infcodes.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\inffast.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\inffast.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\inffast.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\inffast.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\inffast.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\inffast.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\inffast.obj"	"$(INTDIR)\inffast.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\inflate.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\inflate.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\inflate.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\inflate.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\inflate.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\inflate.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\inflate.obj"	"$(INTDIR)\inflate.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\inftrees.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\inftrees.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\inftrees.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\inftrees.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\inftrees.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\inftrees.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\inftrees.obj"	"$(INTDIR)\inftrees.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\infutil.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\infutil.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\infutil.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\infutil.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\infutil.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\infutil.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\infutil.obj"	"$(INTDIR)\infutil.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\maketree.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\maketree.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\maketree.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\maketree.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\maketree.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\maketree.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\maketree.obj"	"$(INTDIR)\maketree.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\trees.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\trees.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\trees.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\trees.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\trees.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\trees.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\trees.obj"	"$(INTDIR)\trees.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\uncompr.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\uncompr.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\uncompr.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\uncompr.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\uncompr.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\uncompr.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\uncompr.obj"	"$(INTDIR)\uncompr.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\zutil.c

!IF  "$(CFG)" == "zlib - Win32 i386 Debug"


"$(INTDIR)\zutil.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release"


"$(INTDIR)\zutil.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 ProfACAP"


"$(INTDIR)\zutil.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Profile"


"$(INTDIR)\zutil.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Release With Symbols"


"$(INTDIR)\zutil.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "zlib - Win32 i386 Full Debug"


"$(INTDIR)\zutil.obj"	"$(INTDIR)\zutil.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 


!ENDIF 

