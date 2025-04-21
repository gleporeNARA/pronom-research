# Microsoft Developer Studio Project File - Name="AcMapOrclApiTest" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=AcMapOrclApiTest - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "AcMapOrclApiTest.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "AcMapOrclApiTest.mak" CFG="AcMapOrclApiTest - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "AcMapOrclApiTest - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "AcMapOrclApiTest - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "AcMapOrclApiTest - Win32 Release"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\..\exports_release.nti"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /O2 /I ".\Include" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /i ".\Include" /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 acge15.lib rxapi.lib acrx15.lib acdb15.lib acutil15.lib acgiapi.lib achapi15.lib acISMobj15.lib acad.lib acedapi.lib acsiobj.lib adui15.lib acui15.lib Oraclm32.lib AcMapOrclApi.lib /nologo /subsystem:windows /dll /machine:I386 /out:".\Release\AcMapOrclApiTest.arx"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "AcMapOrclApiTest - Win32 Debug"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\..\exports_debug.nti"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MD /W3 /Gm /GR- /GX /ZI /Od /I ".\Include" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_AFXEXT" /Yu"stdafx.h" /FD /GZ /c
# SUBTRACT CPP /Fr
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /i ".\Include" /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 acge15.lib rxapi.lib acrx15.lib acdb15.lib acutil15.lib acgiapi.lib achapi15.lib acISMobj15.lib acad.lib acedapi.lib acsiobj.lib adui15.lib acui15.lib Oraclm32.lib AcMapOrclApi.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:".\Debug\AcMapOrclApiTest.arx" /pdbtype:sept /libpath:"..\..\..\exports_debug.nti"
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "AcMapOrclApiTest - Win32 Release"
# Name "AcMapOrclApiTest - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\AcMapOrclApiTest.cpp
# End Source File
# Begin Source File

SOURCE=.\AcMapOrclApiTest.def
# End Source File
# Begin Source File

SOURCE=.\AcMapOrclApiTest.rc
# End Source File
# Begin Source File

SOURCE=.\AcMapOrclApiTestCommands.cpp
# End Source File
# Begin Source File

SOURCE=.\AcMapOrclApiTestConnectDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\AcMapOrclApiTestDescribeTableDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\AcMapOrclApiTestDisplayTextDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\AcMapOrclApiTestImportDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\AcMapOrclApiTestInformationDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\AcMapOrclApiTestLoadQueryDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\AcMapOrclApiTestTools.cpp
# End Source File
# Begin Source File

SOURCE=.\AcMapOrclApiTestViewSqlDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\DocData.cpp
# End Source File
# Begin Source File

SOURCE=.\rxdebug.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\Include\AcMapOrclApiTestConnectDlg.h
# End Source File
# Begin Source File

SOURCE=.\Include\AcMapOrclApiTestDescribeTableDlg.h
# End Source File
# Begin Source File

SOURCE=.\Include\AcMapOrclApiTestDisplayTextDlg.h
# End Source File
# Begin Source File

SOURCE=.\Include\AcMapOrclApiTestImportDlg.h
# End Source File
# Begin Source File

SOURCE=.\Include\AcMapOrclApiTestInformationDlg.h
# End Source File
# Begin Source File

SOURCE=.\Include\AcMapOrclApiTestLoadQueryDlg.h
# End Source File
# Begin Source File

SOURCE=.\Include\AcMapOrclApiTestResource.h
# End Source File
# Begin Source File

SOURCE=.\Include\AcMapOrclApiTestTools.h
# End Source File
# Begin Source File

SOURCE=.\Include\AcMapOrclApiTestViewSqlDlg.h
# End Source File
# Begin Source File

SOURCE=.\Include\AdskDMgr.h
# End Source File
# Begin Source File

SOURCE=.\Include\DocData.h
# End Source File
# Begin Source File

SOURCE=.\Include\rxdebug.h
# End Source File
# Begin Source File

SOURCE=.\Include\StdAfx.h
# End Source File
# Begin Source File

SOURCE=.\Include\StdArx.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\res\AcMapOrclApiTest.rc2
# End Source File
# End Group
# Begin Source File

SOURCE=.\ObjectARX.prj
# End Source File
# End Target
# End Project
