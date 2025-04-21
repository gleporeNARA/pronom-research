# Microsoft Developer Studio Generated NMAKE File, Based on simpleNoMFC.dsp
!IF "$(CFG)" == ""
CFG=simpleNoMFC - Win32 i386 Release
!MESSAGE No configuration specified. Defaulting to simpleNoMFC - Win32 i386 Release.
!ENDIF 

!IF "$(CFG)" != "simpleNoMFC - Win32 i386 Release" && "$(CFG)" != "simpleNoMFC - Win32 i386 Debug" && "$(CFG)" != "simpleNoMFC - Win32 i386 ProfACAP"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "simpleNoMFC.mak" CFG="simpleNoMFC - Win32 i386 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "simpleNoMFC - Win32 i386 Release" (based on "Win32 (x86) Application")
!MESSAGE "simpleNoMFC - Win32 i386 Debug" (based on "Win32 (x86) Application")
!MESSAGE "simpleNoMFC - Win32 i386 ProfACAP" (based on "Win32 (x86) Application")
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

!IF  "$(CFG)" == "simpleNoMFC - Win32 i386 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\simpleNoMFC.exe"


CLEAN :
	-@erase "$(INTDIR)\acap.obj"
	-@erase "$(INTDIR)\heidi_glue.obj"
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\simpleNoMFC.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\simpleNoMFC.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "..\..\source" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /Fp"$(INTDIR)\simpleNoMFC.pch" /YX"main.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\simpleNoMFC.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\simpleNoMFC.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\lib\i386\Release\heidi7.lib ..\..\lib\i386\Release\mtl7.lib ..\..\lib\i386\Release\texture7.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\simpleNoMFC.pdb" /machine:I386 /out:"$(OUTDIR)\simpleNoMFC.exe" 
LINK32_OBJS= \
	"$(INTDIR)\acap.obj" \
	"$(INTDIR)\heidi_glue.obj" \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\simpleNoMFC.res"

"$(OUTDIR)\simpleNoMFC.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "simpleNoMFC - Win32 i386 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\simpleNoMFC.exe"


CLEAN :
	-@erase "$(INTDIR)\acap.obj"
	-@erase "$(INTDIR)\heidi_glue.obj"
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\simpleNoMFC.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\simpleNoMFC.exe"
	-@erase "$(OUTDIR)\simpleNoMFC.ilk"
	-@erase "$(OUTDIR)\simpleNoMFC.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /I "..\..\source" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /Fp"$(INTDIR)\simpleNoMFC.pch" /YX"main.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\simpleNoMFC.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\simpleNoMFC.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\lib\i386\Debug\heidi7.lib ..\..\lib\i386\Debug\mtl7.lib ..\..\lib\i386\Debug\texture7.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\simpleNoMFC.pdb" /debug /machine:I386 /out:"$(OUTDIR)\simpleNoMFC.exe" 
LINK32_OBJS= \
	"$(INTDIR)\acap.obj" \
	"$(INTDIR)\heidi_glue.obj" \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\simpleNoMFC.res"

"$(OUTDIR)\simpleNoMFC.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "simpleNoMFC - Win32 i386 ProfACAP"

OUTDIR=.\ProfACAP
INTDIR=.\ProfACAP
# Begin Custom Macros
OutDir=.\ProfACAP
# End Custom Macros

ALL : "$(OUTDIR)\simpleNoMFC.exe"


CLEAN :
	-@erase "$(INTDIR)\acap.obj"
	-@erase "$(INTDIR)\heidi_glue.obj"
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\simpleNoMFC.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\simpleNoMFC.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "..\..\source" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "ACAP" /Fp"$(INTDIR)\simpleNoMFC.pch" /YX"main.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\simpleNoMFC.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\simpleNoMFC.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\lib\i386\acap.lib ..\..\lib\i386\ProfACAP\heidi7.lib ..\..\lib\i386\ProfACAP\mtl7.lib ..\..\lib\i386\ProfACAP\texture7.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\simpleNoMFC.pdb" /machine:I386 /out:"$(OUTDIR)\simpleNoMFC.exe" 
LINK32_OBJS= \
	"$(INTDIR)\acap.obj" \
	"$(INTDIR)\heidi_glue.obj" \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\simpleNoMFC.res"

"$(OUTDIR)\simpleNoMFC.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("simpleNoMFC.dep")
!INCLUDE "simpleNoMFC.dep"
!ELSE 
!MESSAGE Warning: cannot find "simpleNoMFC.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "simpleNoMFC - Win32 i386 Release" || "$(CFG)" == "simpleNoMFC - Win32 i386 Debug" || "$(CFG)" == "simpleNoMFC - Win32 i386 ProfACAP"
SOURCE=.\acap.cpp

"$(INTDIR)\acap.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\heidi_glue.cpp

"$(INTDIR)\heidi_glue.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\main.cpp

"$(INTDIR)\main.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\simpleNoMFC.rc

"$(INTDIR)\simpleNoMFC.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)



!ENDIF 

