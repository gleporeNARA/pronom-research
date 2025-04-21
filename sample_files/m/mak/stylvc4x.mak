# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

!IF "$(CFG)" == ""
CFG=Stylcvrt - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to Stylcvrt - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Stylcvrt - Win32 Release" && "$(CFG)" !=\
 "Stylcvrt - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "stylvc4x.mak" CFG="Stylcvrt - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Stylcvrt - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Stylcvrt - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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
# PROP Target_Last_Scanned "Stylcvrt - Win32 Debug"
RSC=rc.exe
MTL=mktyplib.exe
CPP=cl.exe

!IF  "$(CFG)" == "Stylcvrt - Win32 Release"

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

ALL : "$(OUTDIR)\stylcvrt.arx"

CLEAN : 
	-@erase ".\stylcvrt.arx"
	-@erase ".\stylcvrt.obj"
	-@erase ".\stylcvrt.lib"
	-@erase ".\stylcvrt.exp"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /FR /YX /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "..\..\..\inc" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "ACRXAPP" /D "RADPACK" /YX /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "..\..\..\inc" /D "NDEBUG" /D "WIN32" /D\
 "_WINDOWS" /D "ACRXAPP" /D "RADPACK" /Fp"$(INTDIR)/stylvc4x.pch" /YX\
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
BSC32_FLAGS=/nologo /o"$(OUTDIR)/stylvc4x.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 ..\..\..\lib\acedapi.lib ..\..\..\lib\rxapi.lib ..\..\..\lib\acad.lib ..\..\..\lib\acgiapi.lib ..\..\..\lib\libacge.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /base:0x1c000000 /entry:"DllEntryPoint@12" /subsystem:windows /dll /machine:I386 /out:".\stylcvrt.arx"
LINK32_FLAGS=..\..\..\lib\acedapi.lib ..\..\..\lib\rxapi.lib ..\..\..\lib\acad.lib ..\..\..\lib\acgiapi.lib ..\..\..\lib\libacge.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /base:0x1c000000 /entry:"DllEntryPoint@12" /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)/stylcvrt.pdb" /machine:I386 /def:".\stylcvrt.def" /out:"$(OUTDIR)/stylcvrt.arx" /implib:"$(OUTDIR)/stylcvrt.lib" 
DEF_FILE= \
	".\stylcvrt.def"
LINK32_OBJS= \
	"$(INTDIR)/stylcvrt.obj"

"$(OUTDIR)\stylcvrt.arx" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Stylcvrt - Win32 Debug"

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

ALL : "$(OUTDIR)\stylcvrt.arx"

CLEAN : 
	-@erase ".\vc40.pdb"
	-@erase ".\vc40.idb"
	-@erase ".\stylcvrt.arx"
	-@erase ".\stylcvrt.obj"
	-@erase ".\stylcvrt.ilk"
	-@erase ".\stylcvrt.lib"
	-@erase ".\stylcvrt.exp"
	-@erase ".\stylcvrt.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /FR /YX /c
# ADD CPP /nologo /MD /W3 /Gm /GX /Zi /Od /I "..\..\..\inc" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "ACRXAPP" /D "RADPACK" /YX /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /MD /W3 /Gm /GX /Zi /Od /I "..\..\..\inc" /D "_DEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "ACRXAPP" /D "RADPACK" /Fp"$(INTDIR)/stylvc4x.pch" /YX\
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
BSC32_FLAGS=/nologo /o"$(OUTDIR)/stylvc4x.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 ..\..\..\lib\acedapi.lib ..\..\..\lib\rxapi.lib ..\..\..\lib\acad.lib ..\..\..\lib\acgiapi.lib ..\..\..\lib\libacge.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /base:0x1c000000 /entry:"DllEntryPoint@12" /subsystem:windows /dll /debug /machine:I386 /out:".\stylcvrt.arx"
LINK32_FLAGS=..\..\..\lib\acedapi.lib ..\..\..\lib\rxapi.lib ..\..\..\lib\acad.lib ..\..\..\lib\acgiapi.lib ..\..\..\lib\libacge.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /base:0x1c000000 /entry:"DllEntryPoint@12" /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)/stylcvrt.pdb" /debug /machine:I386 /def:".\stylcvrt.def" /out:"$(OUTDIR)/stylcvrt.arx" /implib:"$(OUTDIR)/stylcvrt.lib" 
DEF_FILE= \
	".\stylcvrt.def"
LINK32_OBJS= \
	"$(INTDIR)/stylcvrt.obj"

"$(OUTDIR)\stylcvrt.arx" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "Stylcvrt - Win32 Release"
# Name "Stylcvrt - Win32 Debug"

!IF  "$(CFG)" == "Stylcvrt - Win32 Release"

!ELSEIF  "$(CFG)" == "Stylcvrt - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\stylcvrt.def

!IF  "$(CFG)" == "Stylcvrt - Win32 Release"

!ELSEIF  "$(CFG)" == "Stylcvrt - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\stylcvrt.cpp

"$(INTDIR)\stylcvrt.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
