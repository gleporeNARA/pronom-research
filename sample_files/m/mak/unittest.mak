# Microsoft Developer Studio Generated NMAKE File, Based on unittest.dsp
!IF "$(CFG)" == ""
CFG=unittest - Win32 i386 Debug
!MESSAGE No configuration specified. Defaulting to unittest - Win32 i386 Debug.
!ENDIF 

!IF "$(CFG)" != "unittest - Win32 i386 Debug" && "$(CFG)" != "unittest - Win32 i386 Release" && "$(CFG)" != "unittest - Win32 i386 Profile" && "$(CFG)" != "unittest - Win32 i386 ProfACAP"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "unittest.mak" CFG="unittest - Win32 i386 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "unittest - Win32 i386 Debug" (based on "Win32 (x86) Application")
!MESSAGE "unittest - Win32 i386 Release" (based on "Win32 (x86) Application")
!MESSAGE "unittest - Win32 i386 Profile" (based on "Win32 (x86) Application")
!MESSAGE "unittest - Win32 i386 ProfACAP" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "unittest - Win32 i386 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\unittest.exe" "$(OUTDIR)\unittest.bsc"

!ELSE 

ALL : "default - Win32 i386 Debug" "$(OUTDIR)\unittest.exe" "$(OUTDIR)\unittest.bsc"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"default - Win32 i386 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acap.obj"
	-@erase "$(INTDIR)\acap.sbr"
	-@erase "$(INTDIR)\heidio.obj"
	-@erase "$(INTDIR)\heidio.sbr"
	-@erase "$(INTDIR)\heidivw.obj"
	-@erase "$(INTDIR)\heidivw.sbr"
	-@erase "$(INTDIR)\mainfrm.obj"
	-@erase "$(INTDIR)\mainfrm.sbr"
	-@erase "$(INTDIR)\results.obj"
	-@erase "$(INTDIR)\results.sbr"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\stdafx.sbr"
	-@erase "$(INTDIR)\testdoc.obj"
	-@erase "$(INTDIR)\testdoc.sbr"
	-@erase "$(INTDIR)\tester.obj"
	-@erase "$(INTDIR)\tester.sbr"
	-@erase "$(INTDIR)\testfrm.obj"
	-@erase "$(INTDIR)\testfrm.sbr"
	-@erase "$(INTDIR)\testobj.obj"
	-@erase "$(INTDIR)\testobj.sbr"
	-@erase "$(INTDIR)\testopts.obj"
	-@erase "$(INTDIR)\testopts.sbr"
	-@erase "$(INTDIR)\testvw.obj"
	-@erase "$(INTDIR)\testvw.sbr"
	-@erase "$(INTDIR)\unittest.pch"
	-@erase "$(INTDIR)\unittest.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\unittest.bsc"
	-@erase "$(OUTDIR)\unittest.exe"
	-@erase "$(OUTDIR)\unittest.ilk"
	-@erase "$(OUTDIR)\unittest.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /I "..\..\source" /I "." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fr"$(INTDIR)\\" /Fp"$(INTDIR)\unittest.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\unittest.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\unittest.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\acap.sbr" \
	"$(INTDIR)\heidio.sbr" \
	"$(INTDIR)\heidivw.sbr" \
	"$(INTDIR)\mainfrm.sbr" \
	"$(INTDIR)\results.sbr" \
	"$(INTDIR)\stdafx.sbr" \
	"$(INTDIR)\testdoc.sbr" \
	"$(INTDIR)\tester.sbr" \
	"$(INTDIR)\testfrm.sbr" \
	"$(INTDIR)\testobj.sbr" \
	"$(INTDIR)\testopts.sbr" \
	"$(INTDIR)\testvw.sbr"

"$(OUTDIR)\unittest.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=..\..\lib\i386\Debug\heidi7.lib /nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\unittest.pdb" /debug /machine:I386 /out:"$(OUTDIR)\unittest.exe" 
LINK32_OBJS= \
	"$(INTDIR)\acap.obj" \
	"$(INTDIR)\heidio.obj" \
	"$(INTDIR)\heidivw.obj" \
	"$(INTDIR)\mainfrm.obj" \
	"$(INTDIR)\results.obj" \
	"$(INTDIR)\stdafx.obj" \
	"$(INTDIR)\testdoc.obj" \
	"$(INTDIR)\tester.obj" \
	"$(INTDIR)\testfrm.obj" \
	"$(INTDIR)\testobj.obj" \
	"$(INTDIR)\testopts.obj" \
	"$(INTDIR)\testvw.obj" \
	"$(INTDIR)\unittest.res" \
	".\default\Debug\default.lib"

"$(OUTDIR)\unittest.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\unittest.exe"

!ELSE 

ALL : "default - Win32 i386 Release" "$(OUTDIR)\unittest.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"default - Win32 i386 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acap.obj"
	-@erase "$(INTDIR)\heidio.obj"
	-@erase "$(INTDIR)\heidivw.obj"
	-@erase "$(INTDIR)\mainfrm.obj"
	-@erase "$(INTDIR)\results.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\testdoc.obj"
	-@erase "$(INTDIR)\tester.obj"
	-@erase "$(INTDIR)\testfrm.obj"
	-@erase "$(INTDIR)\testobj.obj"
	-@erase "$(INTDIR)\testopts.obj"
	-@erase "$(INTDIR)\testvw.obj"
	-@erase "$(INTDIR)\unittest.pch"
	-@erase "$(INTDIR)\unittest.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\unittest.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "..\..\source" /I "." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\unittest.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\unittest.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\unittest.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\lib\i386\Release\heidi7.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\unittest.pdb" /machine:I386 /out:"$(OUTDIR)\unittest.exe" 
LINK32_OBJS= \
	"$(INTDIR)\acap.obj" \
	"$(INTDIR)\heidio.obj" \
	"$(INTDIR)\heidivw.obj" \
	"$(INTDIR)\mainfrm.obj" \
	"$(INTDIR)\results.obj" \
	"$(INTDIR)\stdafx.obj" \
	"$(INTDIR)\testdoc.obj" \
	"$(INTDIR)\tester.obj" \
	"$(INTDIR)\testfrm.obj" \
	"$(INTDIR)\testobj.obj" \
	"$(INTDIR)\testopts.obj" \
	"$(INTDIR)\testvw.obj" \
	"$(INTDIR)\unittest.res" \
	".\default\Release\default.lib"

"$(OUTDIR)\unittest.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Profile"

OUTDIR=.\Profile
INTDIR=.\Profile
# Begin Custom Macros
OutDir=.\Profile
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\unittest.exe"

!ELSE 

ALL : "$(OUTDIR)\unittest.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acap.obj"
	-@erase "$(INTDIR)\heidio.obj"
	-@erase "$(INTDIR)\heidivw.obj"
	-@erase "$(INTDIR)\mainfrm.obj"
	-@erase "$(INTDIR)\results.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\testdoc.obj"
	-@erase "$(INTDIR)\tester.obj"
	-@erase "$(INTDIR)\testfrm.obj"
	-@erase "$(INTDIR)\testobj.obj"
	-@erase "$(INTDIR)\testopts.obj"
	-@erase "$(INTDIR)\testvw.obj"
	-@erase "$(INTDIR)\unittest.pch"
	-@erase "$(INTDIR)\unittest.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\unittest.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /Gm /GX /ZI /Od /I "..\..\source" /I "." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\unittest.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\unittest.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\unittest.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\lib\i386\Profile\heidi7.lib /nologo /subsystem:windows /profile /debug /machine:I386 /out:"$(OUTDIR)\unittest.exe" 
LINK32_OBJS= \
	"$(INTDIR)\acap.obj" \
	"$(INTDIR)\heidio.obj" \
	"$(INTDIR)\heidivw.obj" \
	"$(INTDIR)\mainfrm.obj" \
	"$(INTDIR)\results.obj" \
	"$(INTDIR)\stdafx.obj" \
	"$(INTDIR)\testdoc.obj" \
	"$(INTDIR)\tester.obj" \
	"$(INTDIR)\testfrm.obj" \
	"$(INTDIR)\testobj.obj" \
	"$(INTDIR)\testopts.obj" \
	"$(INTDIR)\testvw.obj" \
	"$(INTDIR)\unittest.res"

"$(OUTDIR)\unittest.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "unittest - Win32 i386 ProfACAP"

OUTDIR=.\ProfACAP
INTDIR=.\ProfACAP
# Begin Custom Macros
OutDir=.\ProfACAP
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\unittest.exe"

!ELSE 

ALL : "default - Win32 i386 ProfACAP" "$(OUTDIR)\unittest.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"default - Win32 i386 ProfACAPCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\acap.obj"
	-@erase "$(INTDIR)\heidio.obj"
	-@erase "$(INTDIR)\heidivw.obj"
	-@erase "$(INTDIR)\mainfrm.obj"
	-@erase "$(INTDIR)\results.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\testdoc.obj"
	-@erase "$(INTDIR)\tester.obj"
	-@erase "$(INTDIR)\testfrm.obj"
	-@erase "$(INTDIR)\testobj.obj"
	-@erase "$(INTDIR)\testopts.obj"
	-@erase "$(INTDIR)\testvw.obj"
	-@erase "$(INTDIR)\unittest.pch"
	-@erase "$(INTDIR)\unittest.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\unittest.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "..\..\source" /I "." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /D "ACAP" /Fp"$(INTDIR)\unittest.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\unittest.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\unittest.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\lib\i386\acap.lib ..\..\lib\i386\ProfACAP\heidi7.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\unittest.pdb" /machine:I386 /out:"$(OUTDIR)\unittest.exe" 
LINK32_OBJS= \
	"$(INTDIR)\acap.obj" \
	"$(INTDIR)\heidio.obj" \
	"$(INTDIR)\heidivw.obj" \
	"$(INTDIR)\mainfrm.obj" \
	"$(INTDIR)\results.obj" \
	"$(INTDIR)\stdafx.obj" \
	"$(INTDIR)\testdoc.obj" \
	"$(INTDIR)\tester.obj" \
	"$(INTDIR)\testfrm.obj" \
	"$(INTDIR)\testobj.obj" \
	"$(INTDIR)\testopts.obj" \
	"$(INTDIR)\testvw.obj" \
	"$(INTDIR)\unittest.res" \
	".\default\ProfACAP\default.lib"

"$(OUTDIR)\unittest.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
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

MTL_PROJ=/mktyplib203 

!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("unittest.dep")
!INCLUDE "unittest.dep"
!ELSE 
!MESSAGE Warning: cannot find "unittest.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "unittest - Win32 i386 Debug" || "$(CFG)" == "unittest - Win32 i386 Release" || "$(CFG)" == "unittest - Win32 i386 Profile" || "$(CFG)" == "unittest - Win32 i386 ProfACAP"
SOURCE=.\acap.cpp

!IF  "$(CFG)" == "unittest - Win32 i386 Debug"


"$(INTDIR)\acap.obj"	"$(INTDIR)\acap.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Release"


"$(INTDIR)\acap.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Profile"


"$(INTDIR)\acap.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 ProfACAP"


"$(INTDIR)\acap.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ENDIF 

SOURCE=.\heidio.cpp

!IF  "$(CFG)" == "unittest - Win32 i386 Debug"


"$(INTDIR)\heidio.obj"	"$(INTDIR)\heidio.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Release"


"$(INTDIR)\heidio.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Profile"


"$(INTDIR)\heidio.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 ProfACAP"


"$(INTDIR)\heidio.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ENDIF 

SOURCE=.\heidivw.cpp

!IF  "$(CFG)" == "unittest - Win32 i386 Debug"


"$(INTDIR)\heidivw.obj"	"$(INTDIR)\heidivw.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Release"


"$(INTDIR)\heidivw.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Profile"


"$(INTDIR)\heidivw.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 ProfACAP"


"$(INTDIR)\heidivw.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ENDIF 

SOURCE=.\mainfrm.cpp

!IF  "$(CFG)" == "unittest - Win32 i386 Debug"


"$(INTDIR)\mainfrm.obj"	"$(INTDIR)\mainfrm.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Release"


"$(INTDIR)\mainfrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Profile"


"$(INTDIR)\mainfrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 ProfACAP"


"$(INTDIR)\mainfrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ENDIF 

SOURCE=.\results.cpp

!IF  "$(CFG)" == "unittest - Win32 i386 Debug"


"$(INTDIR)\results.obj"	"$(INTDIR)\results.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Release"


"$(INTDIR)\results.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Profile"


"$(INTDIR)\results.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 ProfACAP"


"$(INTDIR)\results.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ENDIF 

SOURCE=.\stdafx.cpp

!IF  "$(CFG)" == "unittest - Win32 i386 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /I "..\..\source" /I "." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fr"$(INTDIR)\\" /Fp"$(INTDIR)\unittest.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\stdafx.obj"	"$(INTDIR)\stdafx.sbr"	"$(INTDIR)\unittest.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /I "..\..\source" /I "." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\unittest.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\stdafx.obj"	"$(INTDIR)\unittest.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Profile"

CPP_SWITCHES=/nologo /MD /W3 /Gm /GX /ZI /Od /I "..\..\source" /I "." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\unittest.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\stdafx.obj"	"$(INTDIR)\unittest.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 ProfACAP"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /I "..\..\source" /I "." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /D "ACAP" /Fp"$(INTDIR)\unittest.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\stdafx.obj"	"$(INTDIR)\unittest.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\testdoc.cpp

!IF  "$(CFG)" == "unittest - Win32 i386 Debug"


"$(INTDIR)\testdoc.obj"	"$(INTDIR)\testdoc.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Release"


"$(INTDIR)\testdoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Profile"


"$(INTDIR)\testdoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 ProfACAP"


"$(INTDIR)\testdoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ENDIF 

SOURCE=.\tester.cpp

!IF  "$(CFG)" == "unittest - Win32 i386 Debug"


"$(INTDIR)\tester.obj"	"$(INTDIR)\tester.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Release"


"$(INTDIR)\tester.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Profile"


"$(INTDIR)\tester.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 ProfACAP"


"$(INTDIR)\tester.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ENDIF 

SOURCE=.\testfrm.cpp

!IF  "$(CFG)" == "unittest - Win32 i386 Debug"


"$(INTDIR)\testfrm.obj"	"$(INTDIR)\testfrm.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Release"


"$(INTDIR)\testfrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Profile"


"$(INTDIR)\testfrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 ProfACAP"


"$(INTDIR)\testfrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ENDIF 

SOURCE=.\testobj.cpp

!IF  "$(CFG)" == "unittest - Win32 i386 Debug"


"$(INTDIR)\testobj.obj"	"$(INTDIR)\testobj.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Release"


"$(INTDIR)\testobj.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Profile"


"$(INTDIR)\testobj.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 ProfACAP"


"$(INTDIR)\testobj.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ENDIF 

SOURCE=.\testopts.cpp

!IF  "$(CFG)" == "unittest - Win32 i386 Debug"


"$(INTDIR)\testopts.obj"	"$(INTDIR)\testopts.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Release"


"$(INTDIR)\testopts.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Profile"


"$(INTDIR)\testopts.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 ProfACAP"


"$(INTDIR)\testopts.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ENDIF 

SOURCE=.\testvw.cpp

!IF  "$(CFG)" == "unittest - Win32 i386 Debug"


"$(INTDIR)\testvw.obj"	"$(INTDIR)\testvw.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Release"


"$(INTDIR)\testvw.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Profile"


"$(INTDIR)\testvw.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ELSEIF  "$(CFG)" == "unittest - Win32 i386 ProfACAP"


"$(INTDIR)\testvw.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\unittest.pch"


!ENDIF 

SOURCE=.\unittest.rc

"$(INTDIR)\unittest.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


!IF  "$(CFG)" == "unittest - Win32 i386 Debug"

"default - Win32 i386 Debug" : 
   cd ".\default"
   $(MAKE) /$(MAKEFLAGS) /F .\default.mak CFG="default - Win32 i386 Debug" 
   cd ".."

"default - Win32 i386 DebugCLEAN" : 
   cd ".\default"
   $(MAKE) /$(MAKEFLAGS) /F .\default.mak CFG="default - Win32 i386 Debug" RECURSE=1 CLEAN 
   cd ".."

!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Release"

"default - Win32 i386 Release" : 
   cd ".\default"
   $(MAKE) /$(MAKEFLAGS) /F .\default.mak CFG="default - Win32 i386 Release" 
   cd ".."

"default - Win32 i386 ReleaseCLEAN" : 
   cd ".\default"
   $(MAKE) /$(MAKEFLAGS) /F .\default.mak CFG="default - Win32 i386 Release" RECURSE=1 CLEAN 
   cd ".."

!ELSEIF  "$(CFG)" == "unittest - Win32 i386 Profile"

!ELSEIF  "$(CFG)" == "unittest - Win32 i386 ProfACAP"

"default - Win32 i386 ProfACAP" : 
   cd ".\default"
   $(MAKE) /$(MAKEFLAGS) /F .\default.mak CFG="default - Win32 i386 ProfACAP" 
   cd ".."

"default - Win32 i386 ProfACAPCLEAN" : 
   cd ".\default"
   $(MAKE) /$(MAKEFLAGS) /F .\default.mak CFG="default - Win32 i386 ProfACAP" RECURSE=1 CLEAN 
   cd ".."

!ENDIF 


!ENDIF 

