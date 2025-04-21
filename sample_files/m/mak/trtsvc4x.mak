# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

!IF "$(CFG)" == ""
CFG=Traits - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to Traits - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Traits - Win32 Release" && "$(CFG)" !=\
 "Traits - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "trtsvc4x.mak" CFG="Traits - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Traits - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Traits - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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
# PROP Target_Last_Scanned "Traits - Win32 Debug"
RSC=rc.exe
MTL=mktyplib.exe
CPP=cl.exe

!IF  "$(CFG)" == "Traits - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "WinRel"
# PROP BASE Intermediate_Dir "WinRel"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\"
# PROP Intermediate_Dir ".\"
OUTDIR=.\.
INTDIR=.\.

ALL : "$(OUTDIR)\traits.arx"

CLEAN : 
	-@erase ".\traits.arx"
	-@erase ".\traits.obj"
	-@erase ".\traits.lib"
	-@erase ".\traits.exp"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /FR /YX /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "..\..\..\inc" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "ACRXAPP" /D "RADPACK" /YX /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "..\..\..\inc" /D "NDEBUG" /D "WIN32" /D\
 "_WINDOWS" /D "ACRXAPP" /D "RADPACK" /Fp"$(INTDIR)/trtsvc4x.pch" /YX\
 /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\.\ 
CPP_SBRS=
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/trtsvc4x.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 ..\..\..\lib\acedapi.lib ..\..\..\lib\rxapi.lib ..\..\..\lib\acad.lib ..\..\..\lib\acgiapi.lib ..\..\..\lib\libacge.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /base:0x1c000000 /entry:"DllEntryPoint@12" /subsystem:windows /dll /machine:I386 /out:".\traits.arx"
LINK32_FLAGS=..\..\..\lib\acedapi.lib ..\..\..\lib\rxapi.lib ..\..\..\lib\acad.lib ..\..\..\lib\acgiapi.lib ..\..\..\lib\libacge.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /base:0x1c000000 /entry:"DllEntryPoint@12" /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)/traits.pdb" /machine:I386 /def:".\traits.def" /out:"$(OUTDIR)/traits.arx" /implib:"$(OUTDIR)/traits.lib" 
DEF_FILE= \
	".\traits.def"
LINK32_OBJS= \
	"$(INTDIR)/traits.obj"

"$(OUTDIR)\traits.arx" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Traits - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "WinDebug"
# PROP BASE Intermediate_Dir "WinDebug"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\"
# PROP Intermediate_Dir ".\"
OUTDIR=.\.
INTDIR=.\.

ALL : "$(OUTDIR)\traits.arx"

CLEAN : 
	-@erase ".\vc40.pdb"
	-@erase ".\vc40.idb"
	-@erase ".\traits.arx"
	-@erase ".\traits.obj"
	-@erase ".\traits.ilk"
	-@erase ".\traits.lib"
	-@erase ".\traits.exp"
	-@erase ".\traits.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /FR /YX /c
# ADD CPP /nologo /MD /W3 /Gm /GX /Zi /Od /I "..\..\..\inc" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "ACRXAPP" /D "RADPACK" /YX /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /MD /W3 /Gm /GX /Zi /Od /I "..\..\..\inc" /D "_DEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "ACRXAPP" /D "RADPACK" /Fp"$(INTDIR)/trtsvc4x.pch" /YX\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\.\ 
CPP_SBRS=
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/trtsvc4x.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 ..\..\..\lib\acedapi.lib ..\..\..\lib\rxapi.lib ..\..\..\lib\acad.lib ..\..\..\lib\acgiapi.lib ..\..\..\lib\libacge.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /base:0x1c000000 /entry:"DllEntryPoint@12" /subsystem:windows /dll /debug /machine:I386 /out:".\traits.arx"
LINK32_FLAGS=..\..\..\lib\acedapi.lib ..\..\..\lib\rxapi.lib ..\..\..\lib\acad.lib ..\..\..\lib\acgiapi.lib ..\..\..\lib\libacge.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /base:0x1c000000 /entry:"DllEntryPoint@12" /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)/traits.pdb" /debug /machine:I386 /def:".\traits.def" /out:"$(OUTDIR)/traits.arx" /implib:"$(OUTDIR)/traits.lib" 
DEF_FILE= \
	".\traits.def"
LINK32_OBJS= \
	"$(INTDIR)/traits.obj"

"$(OUTDIR)\traits.arx" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "Traits - Win32 Release"
# Name "Traits - Win32 Debug"

!IF  "$(CFG)" == "Traits - Win32 Release"

!ELSEIF  "$(CFG)" == "Traits - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\traits.def

!IF  "$(CFG)" == "Traits - Win32 Release"

!ELSEIF  "$(CFG)" == "Traits - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\traits.cpp

"$(INTDIR)\traits.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
