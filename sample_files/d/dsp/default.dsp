# Microsoft Developer Studio Project File - Name="default" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=default - Win32 i386 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "default.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "default.mak" CFG="default - Win32 i386 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "default - Win32 i386 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "default - Win32 i386 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "default - Win32 i386 ProfACAP" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/heidi/samples/unittest", DRAAAAAA"
# PROP Scc_LocalPath ".."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "default - Win32 i386 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\Release"
# PROP BASE Intermediate_Dir ".\Release"
# PROP BASE Target_Dir "."
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\Release"
# PROP Intermediate_Dir ".\Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir "."
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "..\..\..\source" /I ".." /I "..\.." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /i "..\..\..\source" /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 ..\..\..\lib\i386\Release\heidi7.lib ..\..\..\lib\i386\Release\texture7.lib ..\..\..\lib\i386\Release\mtl7.lib ..\..\..\lib\i386\Release\light7.lib /nologo /subsystem:windows /dll /machine:I386 /out:"..\default.tst"

!ELSEIF  "$(CFG)" == "default - Win32 i386 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\Debug"
# PROP BASE Intermediate_Dir ".\Debug"
# PROP BASE Target_Dir "."
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\Debug"
# PROP Intermediate_Dir ".\Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir "."
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I "..\..\..\source" /I ".." /I "..\.." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /YX /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /i "..\..\..\source" /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 ..\..\..\lib\i386\Debug\heidi7.lib ..\..\..\lib\i386\Debug\texture7.lib ..\..\..\lib\i386\Debug\mtl7.lib ..\..\..\lib\i386\Debug\light7.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"..\default.tst"

!ELSEIF  "$(CFG)" == "default - Win32 i386 ProfACAP"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\i386 ProfACAP"
# PROP BASE Intermediate_Dir ".\i386 ProfACAP"
# PROP BASE Target_Dir "."
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\ProfACAP"
# PROP Intermediate_Dir ".\ProfACAP"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir "."
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /I "..\..\source" /I "." /I ".." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /YX /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "..\..\..\source" /I ".." /I "..\.." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "ACAP" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "..\..\source" /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /i "..\..\..\source" /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /dll /machine:I386 /out:"default.tst"
# ADD LINK32 ..\..\..\lib\i386\ProfACAP\heidi7.lib ..\..\..\lib\i386\ProfACAP\texture7.lib ..\..\..\lib\i386\ProfACAP\mtl7.lib ..\..\..\lib\i386\ProfACAP\light7.lib /nologo /subsystem:windows /dll /machine:I386 /out:"..\default.tst"

!ENDIF 

# Begin Target

# Name "default - Win32 i386 Release"
# Name "default - Win32 i386 Debug"
# Name "default - Win32 i386 ProfACAP"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat;for;f90"
# Begin Source File

SOURCE=.\cmplopts.cpp
# End Source File
# Begin Source File

SOURCE=.\default.rc
# End Source File
# Begin Source File

SOURCE=.\dib.cpp
# End Source File
# Begin Source File

SOURCE=.\fontopts.cpp
# End Source File
# Begin Source File

SOURCE=.\fonttest.cpp
# End Source File
# Begin Source File

SOURCE=.\gopolytri.cpp
# End Source File
# Begin Source File

SOURCE=.\heidio.cpp
# End Source File
# Begin Source File

SOURCE=.\imageopts.cpp
# End Source File
# Begin Source File

SOURCE=.\imagetest.cpp
# End Source File
# Begin Source File

SOURCE=.\polyline.cpp
# End Source File
# Begin Source File

SOURCE=.\polyline_dci.cpp
# End Source File
# Begin Source File

SOURCE=.\polytri.cpp
# End Source File
# Begin Source File

SOURCE=.\polytri_dci.cpp
# End Source File
# Begin Source File

SOURCE=.\rdimage.cpp
# End Source File
# Begin Source File

SOURCE=.\readgif.cpp
# End Source File
# Begin Source File

SOURCE=.\register.cpp
# End Source File
# Begin Source File

SOURCE=.\stdafx.cpp
# End Source File
# Begin Source File

SOURCE=.\testobj.cpp
# End Source File
# Begin Source File

SOURCE=.\txpolytri.cpp
# End Source File
# Begin Source File

SOURCE=.\txtropts.cpp
# End Source File
# Begin Source File

SOURCE=.\unigotri.cpp
# End Source File
# Begin Source File

SOURCE=.\unitline.cpp
# End Source File
# Begin Source File

SOURCE=.\unitline3d.cpp
# End Source File
# Begin Source File

SOURCE=.\unitline_dci.cpp
# End Source File
# Begin Source File

SOURCE=.\unitopts.cpp
# End Source File
# Begin Source File

SOURCE=.\unitopts3d.cpp
# End Source File
# Begin Source File

SOURCE=.\unittri.cpp
# End Source File
# Begin Source File

SOURCE=.\unittri_dci.cpp
# End Source File
# Begin Source File

SOURCE=.\unitxtri.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# Begin Source File

SOURCE=.\cmplopts.h
# End Source File
# Begin Source File

SOURCE=.\dib.h
# End Source File
# Begin Source File

SOURCE=.\fontopts.h
# End Source File
# Begin Source File

SOURCE=.\fonttest.h
# End Source File
# Begin Source File

SOURCE=.\gopolytri.h
# End Source File
# Begin Source File

SOURCE=.\imageopts.h
# End Source File
# Begin Source File

SOURCE=.\imagetest.h
# End Source File
# Begin Source File

SOURCE=.\polyline.h
# End Source File
# Begin Source File

SOURCE=.\polyline_dci.h
# End Source File
# Begin Source File

SOURCE=.\polytri.h
# End Source File
# Begin Source File

SOURCE=.\polytri_dci.h
# End Source File
# Begin Source File

SOURCE=.\stdafx.h
# End Source File
# Begin Source File

SOURCE=.\txpolytri.h
# End Source File
# Begin Source File

SOURCE=.\txtropts.h
# End Source File
# Begin Source File

SOURCE=.\unigotri.h
# End Source File
# Begin Source File

SOURCE=.\unitline.h
# End Source File
# Begin Source File

SOURCE=.\unitline3d.h
# End Source File
# Begin Source File

SOURCE=.\unitline_dci.h
# End Source File
# Begin Source File

SOURCE=.\unitopts.h
# End Source File
# Begin Source File

SOURCE=.\unitopts3d.h
# End Source File
# Begin Source File

SOURCE=.\unittri.h
# End Source File
# Begin Source File

SOURCE=.\unittri_dci.h
# End Source File
# Begin Source File

SOURCE=.\unitxtri.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
