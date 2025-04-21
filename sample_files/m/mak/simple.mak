# Microsoft Developer Studio Generated NMAKE File, Based on simple.dsp
!IF "$(CFG)" == ""
CFG=simple - Win32 i386 Debug
!MESSAGE No configuration specified. Defaulting to simple - Win32 i386 Debug.
!ENDIF 

!IF "$(CFG)" != "simple - Win32 i386 Debug" && "$(CFG)" != "simple - Win32 i386 Release" && "$(CFG)" != "simple - Win32 i386 ProfACAP"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "simple.mak" CFG="simple - Win32 i386 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "simple - Win32 i386 Debug" (based on "Win32 (x86) Application")
!MESSAGE "simple - Win32 i386 Release" (based on "Win32 (x86) Application")
!MESSAGE "simple - Win32 i386 ProfACAP" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "simple - Win32 i386 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\simple.exe" "$(OUTDIR)\simple.bsc"


CLEAN :
	-@erase "$(INTDIR)\acap.obj"
	-@erase "$(INTDIR)\acap.sbr"
	-@erase "$(INTDIR)\mainfrm.obj"
	-@erase "$(INTDIR)\mainfrm.sbr"
	-@erase "$(INTDIR)\simpldoc.obj"
	-@erase "$(INTDIR)\simpldoc.sbr"
	-@erase "$(INTDIR)\simple.obj"
	-@erase "$(INTDIR)\simple.pch"
	-@erase "$(INTDIR)\simple.res"
	-@erase "$(INTDIR)\simple.sbr"
	-@erase "$(INTDIR)\simplvw.obj"
	-@erase "$(INTDIR)\simplvw.sbr"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\stdafx.sbr"
	-@erase "$(INTDIR)\use_heidi.obj"
	-@erase "$(INTDIR)\use_heidi.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\simple.bsc"
	-@erase "$(OUTDIR)\simple.exe"
	-@erase "$(OUTDIR)\simple.ilk"
	-@erase "$(OUTDIR)\simple.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /I "..\..\source" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fr"$(INTDIR)\\" /Fp"$(INTDIR)\simple.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD -QIfdiv- /c 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\simple.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\simple.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\acap.sbr" \
	"$(INTDIR)\mainfrm.sbr" \
	"$(INTDIR)\simpldoc.sbr" \
	"$(INTDIR)\simple.sbr" \
	"$(INTDIR)\simplvw.sbr" \
	"$(INTDIR)\stdafx.sbr" \
	"$(INTDIR)\use_heidi.sbr"

"$(OUTDIR)\simple.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=..\..\lib\i386\Debug\heidi7.lib ..\..\lib\i386\Debug\mtl7.lib ..\..\lib\i386\Debug\texture7.lib ..\..\lib\i386\Debug\appkit7.lib /nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\simple.pdb" /debug /machine:I386 /out:"$(OUTDIR)\simple.exe" 
LINK32_OBJS= \
	"$(INTDIR)\acap.obj" \
	"$(INTDIR)\mainfrm.obj" \
	"$(INTDIR)\simpldoc.obj" \
	"$(INTDIR)\simple.obj" \
	"$(INTDIR)\simplvw.obj" \
	"$(INTDIR)\stdafx.obj" \
	"$(INTDIR)\use_heidi.obj" \
	"$(INTDIR)\simple.res"

"$(OUTDIR)\simple.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "simple - Win32 i386 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\simple.exe"


CLEAN :
	-@erase "$(INTDIR)\acap.obj"
	-@erase "$(INTDIR)\mainfrm.obj"
	-@erase "$(INTDIR)\simpldoc.obj"
	-@erase "$(INTDIR)\simple.obj"
	-@erase "$(INTDIR)\simple.pch"
	-@erase "$(INTDIR)\simple.res"
	-@erase "$(INTDIR)\simplvw.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\use_heidi.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\simple.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "..\..\source" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\simple.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD -QIfdiv- /c 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\simple.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\simple.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\lib\i386\Release\heidi7.lib ..\..\lib\i386\Release\mtl7.lib ..\..\lib\i386\Release\texture7.lib ..\..\lib\i386\Release\appkit7.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\simple.pdb" /machine:I386 /out:"$(OUTDIR)\simple.exe" 
LINK32_OBJS= \
	"$(INTDIR)\acap.obj" \
	"$(INTDIR)\mainfrm.obj" \
	"$(INTDIR)\simpldoc.obj" \
	"$(INTDIR)\simple.obj" \
	"$(INTDIR)\simplvw.obj" \
	"$(INTDIR)\stdafx.obj" \
	"$(INTDIR)\use_heidi.obj" \
	"$(INTDIR)\simple.res"

"$(OUTDIR)\simple.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "simple - Win32 i386 ProfACAP"

OUTDIR=.\ProfACAP
INTDIR=.\ProfACAP
# Begin Custom Macros
OutDir=.\ProfACAP
# End Custom Macros

ALL : "$(OUTDIR)\simple.exe"


CLEAN :
	-@erase "$(INTDIR)\acap.obj"
	-@erase "$(INTDIR)\mainfrm.obj"
	-@erase "$(INTDIR)\simpldoc.obj"
	-@erase "$(INTDIR)\simple.obj"
	-@erase "$(INTDIR)\simple.pch"
	-@erase "$(INTDIR)\simple.res"
	-@erase "$(INTDIR)\simplvw.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\use_heidi.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\simple.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "..\..\source" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /D "ACAP" /Fp"$(INTDIR)\simple.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD -QIfdiv- /c 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\simple.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\simple.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\lib\i386\acap.lib ..\..\lib\i386\ProfACAP\heidi7.lib ..\..\lib\i386\ProfACAP\mtl7.lib ..\..\lib\i386\ProfACAP\texture7.lib ..\..\lib\i386\ProfACAP\appkit7.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\simple.pdb" /machine:I386 /out:"$(OUTDIR)\simple.exe" 
LINK32_OBJS= \
	"$(INTDIR)\acap.obj" \
	"$(INTDIR)\mainfrm.obj" \
	"$(INTDIR)\simpldoc.obj" \
	"$(INTDIR)\simple.obj" \
	"$(INTDIR)\simplvw.obj" \
	"$(INTDIR)\stdafx.obj" \
	"$(INTDIR)\use_heidi.obj" \
	"$(INTDIR)\simple.res"

"$(OUTDIR)\simple.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("simple.dep")
!INCLUDE "simple.dep"
!ELSE 
!MESSAGE Warning: cannot find "simple.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "simple - Win32 i386 Debug" || "$(CFG)" == "simple - Win32 i386 Release" || "$(CFG)" == "simple - Win32 i386 ProfACAP"
SOURCE=.\acap.cpp

!IF  "$(CFG)" == "simple - Win32 i386 Debug"


"$(INTDIR)\acap.obj"	"$(INTDIR)\acap.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ELSEIF  "$(CFG)" == "simple - Win32 i386 Release"


"$(INTDIR)\acap.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ELSEIF  "$(CFG)" == "simple - Win32 i386 ProfACAP"


"$(INTDIR)\acap.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ENDIF 

SOURCE=.\mainfrm.cpp

!IF  "$(CFG)" == "simple - Win32 i386 Debug"


"$(INTDIR)\mainfrm.obj"	"$(INTDIR)\mainfrm.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ELSEIF  "$(CFG)" == "simple - Win32 i386 Release"


"$(INTDIR)\mainfrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ELSEIF  "$(CFG)" == "simple - Win32 i386 ProfACAP"


"$(INTDIR)\mainfrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ENDIF 

SOURCE=.\simpldoc.cpp

!IF  "$(CFG)" == "simple - Win32 i386 Debug"


"$(INTDIR)\simpldoc.obj"	"$(INTDIR)\simpldoc.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ELSEIF  "$(CFG)" == "simple - Win32 i386 Release"


"$(INTDIR)\simpldoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ELSEIF  "$(CFG)" == "simple - Win32 i386 ProfACAP"


"$(INTDIR)\simpldoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ENDIF 

SOURCE=.\simple.cpp

!IF  "$(CFG)" == "simple - Win32 i386 Debug"


"$(INTDIR)\simple.obj"	"$(INTDIR)\simple.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ELSEIF  "$(CFG)" == "simple - Win32 i386 Release"


"$(INTDIR)\simple.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ELSEIF  "$(CFG)" == "simple - Win32 i386 ProfACAP"


"$(INTDIR)\simple.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ENDIF 

SOURCE=.\simple.rc

"$(INTDIR)\simple.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\simplvw.cpp

!IF  "$(CFG)" == "simple - Win32 i386 Debug"


"$(INTDIR)\simplvw.obj"	"$(INTDIR)\simplvw.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ELSEIF  "$(CFG)" == "simple - Win32 i386 Release"


"$(INTDIR)\simplvw.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ELSEIF  "$(CFG)" == "simple - Win32 i386 ProfACAP"


"$(INTDIR)\simplvw.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ENDIF 

SOURCE=.\stdafx.cpp

!IF  "$(CFG)" == "simple - Win32 i386 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /I "..\..\source" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fr"$(INTDIR)\\" /Fp"$(INTDIR)\simple.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD -QIfdiv- /c 

"$(INTDIR)\stdafx.obj"	"$(INTDIR)\stdafx.sbr"	"$(INTDIR)\simple.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "simple - Win32 i386 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /I "..\..\source" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)\simple.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD -QIfdiv- /c 

"$(INTDIR)\stdafx.obj"	"$(INTDIR)\simple.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "simple - Win32 i386 ProfACAP"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /I "..\..\source" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /D "ACAP" /Fp"$(INTDIR)\simple.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD -QIfdiv- /c 

"$(INTDIR)\stdafx.obj"	"$(INTDIR)\simple.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\use_heidi.cpp

!IF  "$(CFG)" == "simple - Win32 i386 Debug"


"$(INTDIR)\use_heidi.obj"	"$(INTDIR)\use_heidi.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ELSEIF  "$(CFG)" == "simple - Win32 i386 Release"


"$(INTDIR)\use_heidi.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ELSEIF  "$(CFG)" == "simple - Win32 i386 ProfACAP"


"$(INTDIR)\use_heidi.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\simple.pch"


!ENDIF 


!ENDIF 

