# Microsoft Developer Studio Generated NMAKE File, Format Version 4.20
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

!IF "$(CFG)" == ""
CFG=Xtsndict - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to Xtsndict - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Xtsndict - Win32 Release" && "$(CFG)" !=\
 "Xtsndict - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "XDCTVC4X.MAK" CFG="Xtsndict - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Xtsndict - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Xtsndict - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "Xtsndict - Win32 Debug"
MTL=mktyplib.exe
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Xtsndict - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "WinRel"
# PROP BASE Intermediate_Dir "WinRel"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\"
# PROP Intermediate_Dir ".\"
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\xtsndict.arx"

CLEAN : 
	-@erase "$(INTDIR)\xtsndict.obj"
	-@erase "$(OUTDIR)\xtsndict.arx"
	-@erase "$(OUTDIR)\xtsndict.exp"
	-@erase "$(OUTDIR)\xtsndict.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /FR /YX /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "..\..\..\inc" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "ACRXAPP" /D "RADPACK" /YX /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "..\..\..\inc" /D "NDEBUG" /D "WIN32" /D\
 "_WINDOWS" /D "ACRXAPP" /D "RADPACK" /Fp"$(INTDIR)/XDCTVC4X.pch" /YX\
 /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\.\ 
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/XDCTVC4X.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 ..\..\..\lib\acedapi.lib ..\..\..\lib\rxapi.lib ..\..\..\lib\acad.lib ..\..\..\lib\libacge.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /base:0x1c000000 /entry:"DllEntryPoint@12" /subsystem:windows /dll /machine:I386 /out:".\xtsndict.arx"
LINK32_FLAGS=..\..\..\lib\acedapi.lib ..\..\..\lib\rxapi.lib\
 ..\..\..\lib\acad.lib ..\..\..\lib\libacge.lib kernel32.lib user32.lib\
 gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib\
 oleaut32.lib uuid.lib /nologo /base:0x1c000000 /entry:"DllEntryPoint@12"\
 /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)/xtsndict.pdb"\
 /machine:I386 /def:".\xtsndict.def" /out:"$(OUTDIR)/xtsndict.arx"\
 /implib:"$(OUTDIR)/xtsndict.lib" 
DEF_FILE= \
	".\xtsndict.def"
LINK32_OBJS= \
	"$(INTDIR)\xtsndict.obj"

"$(OUTDIR)\xtsndict.arx" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Xtsndict - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "WinDebug"
# PROP BASE Intermediate_Dir "WinDebug"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\"
# PROP Intermediate_Dir ".\"
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\xtsndict.arx"

CLEAN : 
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\xtsndict.obj"
	-@erase "$(OUTDIR)\xtsndict.arx"
	-@erase "$(OUTDIR)\xtsndict.exp"
	-@erase "$(OUTDIR)\xtsndict.ilk"
	-@erase "$(OUTDIR)\xtsndict.lib"
	-@erase "$(OUTDIR)\xtsndict.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /FR /YX /c
# ADD CPP /nologo /MD /W3 /Gm /GX /Zi /Od /I "..\..\..\inc" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "ACRXAPP" /D "RADPACK" /YX /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /MD /W3 /Gm /GX /Zi /Od /I "..\..\..\inc" /D "_DEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "ACRXAPP" /D "RADPACK" /Fp"$(INTDIR)/XDCTVC4X.pch" /YX\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\.\ 
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/XDCTVC4X.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 ..\..\..\lib\acedapi.lib ..\..\..\lib\rxapi.lib ..\..\..\lib\acad.lib ..\..\..\lib\libacge.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /base:0x1c000000 /entry:"DllEntryPoint@12" /subsystem:windows /dll /debug /machine:I386 /out:".\xtsndict.arx"
LINK32_FLAGS=..\..\..\lib\acedapi.lib ..\..\..\lib\rxapi.lib\
 ..\..\..\lib\acad.lib ..\..\..\lib\libacge.lib kernel32.lib user32.lib\
 gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib\
 oleaut32.lib uuid.lib /nologo /base:0x1c000000 /entry:"DllEntryPoint@12"\
 /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)/xtsndict.pdb" /debug\
 /machine:I386 /def:".\xtsndict.def" /out:"$(OUTDIR)/xtsndict.arx"\
 /implib:"$(OUTDIR)/xtsndict.lib" 
DEF_FILE= \
	".\xtsndict.def"
LINK32_OBJS= \
	"$(INTDIR)\xtsndict.obj"

"$(OUTDIR)\xtsndict.arx" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "Xtsndict - Win32 Release"
# Name "Xtsndict - Win32 Debug"

!IF  "$(CFG)" == "Xtsndict - Win32 Release"

!ELSEIF  "$(CFG)" == "Xtsndict - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\xtsndict.cpp

"$(INTDIR)\xtsndict.obj" : $(SOURCE) $(DEP_CPP_XTSND) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\xtsndict.def

!IF  "$(CFG)" == "Xtsndict - Win32 Release"

!ELSEIF  "$(CFG)" == "Xtsndict - Win32 Debug"

!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
