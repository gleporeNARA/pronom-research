# Microsoft Developer Studio Project File - Name="stdtest" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=stdtest - Win32 i386 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "stdtest.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "stdtest.mak" CFG="stdtest - Win32 i386 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "stdtest - Win32 i386 Release" (based on "Win32 (x86) Application")
!MESSAGE "stdtest - Win32 i386 Debug" (based on "Win32 (x86) Application")
!MESSAGE "stdtest - Win32 i386 ProfACAP" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/heidi/samples/stdtest", TWCAAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "stdtest - Win32 i386 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\Release"
# PROP BASE Intermediate_Dir ".\Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\Release"
# PROP Intermediate_Dir ".\Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "..\..\source" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /i "..\..\source" /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 ..\..\lib\i386\Release\heidi7.lib ..\..\lib\i386\Release\mtl7.lib ..\..\lib\i386\Release\texture7.lib /nologo /subsystem:windows /machine:I386

!ELSEIF  "$(CFG)" == "stdtest - Win32 i386 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\Debug"
# PROP BASE Intermediate_Dir ".\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\Debug"
# PROP Intermediate_Dir ".\Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I "..\..\source" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /i "..\..\source" /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 ..\..\lib\i386\Debug\heidi7.lib ..\..\lib\i386\Debug\mtl7.lib ..\..\lib\i386\Debug\texture7.lib /nologo /subsystem:windows /debug /machine:I386

!ELSEIF  "$(CFG)" == "stdtest - Win32 i386 ProfACAP"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\stdtest_"
# PROP BASE Intermediate_Dir ".\stdtest_"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\ProfACAP"
# PROP Intermediate_Dir ".\ProfACAP"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /I "..\..\source" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "..\..\source" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "..\..\source" /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /i "..\..\source" /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 ..\..\lib\i386\ProfACAP\heidi7.lib ..\..\lib\i386\ProfACAP\mtl7.lib ..\..\lib\i386\ProfACAP\texture7.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 ..\..\lib\i386\ProfACAP\heidi7.lib ..\..\lib\i386\ProfACAP\mtl7.lib ..\..\lib\i386\ProfACAP\texture7.lib /nologo /subsystem:windows /machine:I386

!ENDIF 

# Begin Target

# Name "stdtest - Win32 i386 Release"
# Name "stdtest - Win32 i386 Debug"
# Name "stdtest - Win32 i386 ProfACAP"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat;for;f90"
# Begin Source File

SOURCE=.\CAutomation.cpp
# End Source File
# Begin Source File

SOURCE=.\CCommandLine.cpp
# End Source File
# Begin Source File

SOURCE=.\CDialogAbout.cpp
# End Source File
# Begin Source File

SOURCE=.\CDialogOptions.cpp
# End Source File
# Begin Source File

SOURCE=.\CDialogResults.cpp
# End Source File
# Begin Source File

SOURCE=.\CDIB.cpp
# End Source File
# Begin Source File

SOURCE=.\CDIBHeidi.cpp
# End Source File
# Begin Source File

SOURCE=.\COptions.cpp
# End Source File
# Begin Source File

SOURCE=.\CResults.cpp
# End Source File
# Begin Source File

SOURCE=.\CTest.cpp
# End Source File
# Begin Source File

SOURCE=.\CTest2DImage.cpp
# End Source File
# Begin Source File

SOURCE=.\CTest2DPolygon.cpp
# End Source File
# Begin Source File

SOURCE=.\CTest2DPolyline.cpp
# End Source File
# Begin Source File

SOURCE=.\CTest3DPolygon.cpp
# End Source File
# Begin Source File

SOURCE=.\CTest3DPolyline.cpp
# End Source File
# Begin Source File

SOURCE=.\CTestDCImage.cpp
# End Source File
# Begin Source File

SOURCE=.\CTestDCPolygon.cpp
# End Source File
# Begin Source File

SOURCE=.\CTestDCPolyline.cpp
# End Source File
# Begin Source File

SOURCE=.\CTestDCPolytriangle.cpp
# End Source File
# Begin Source File

SOURCE=.\CTimes.cpp
# End Source File
# Begin Source File

SOURCE=.\debug.cpp
# End Source File
# Begin Source File

SOURCE=.\dprintf.cpp
# End Source File
# Begin Source File

SOURCE=.\heidio.cpp
# End Source File
# Begin Source File

SOURCE=.\MainFrm.cpp
# End Source File
# Begin Source File

SOURCE=.\ReadMe.txt
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\stdtest.cpp
# End Source File
# Begin Source File

SOURCE=.\stdtest.rc
# End Source File
# Begin Source File

SOURCE=.\stdtestDoc.cpp
# End Source File
# Begin Source File

SOURCE=.\stdtestView.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# Begin Source File

SOURCE=.\assert.h
# End Source File
# Begin Source File

SOURCE=.\CAutomation.h
# End Source File
# Begin Source File

SOURCE=.\CCommandLine.h
# End Source File
# Begin Source File

SOURCE=.\CDialogAbout.h
# End Source File
# Begin Source File

SOURCE=.\CDialogOptions.h
# End Source File
# Begin Source File

SOURCE=.\CDialogResults.h
# End Source File
# Begin Source File

SOURCE=.\CDIB.h
# End Source File
# Begin Source File

SOURCE=.\CDIBHeidi.h
# End Source File
# Begin Source File

SOURCE=.\COptions.h
# End Source File
# Begin Source File

SOURCE=.\CPtrToArray.h
# End Source File
# Begin Source File

SOURCE=.\CResults.h
# End Source File
# Begin Source File

SOURCE=.\CTest.h
# End Source File
# Begin Source File

SOURCE=.\CTest2DImage.h
# End Source File
# Begin Source File

SOURCE=.\CTest2DPolygon.h
# End Source File
# Begin Source File

SOURCE=.\CTest2DPolyline.h
# End Source File
# Begin Source File

SOURCE=.\CTest3DPolygon.h
# End Source File
# Begin Source File

SOURCE=.\CTest3DPolyline.h
# End Source File
# Begin Source File

SOURCE=.\CTestDCImage.h
# End Source File
# Begin Source File

SOURCE=.\CTestDCPolygon.h
# End Source File
# Begin Source File

SOURCE=.\CTestDCPolyline.h
# End Source File
# Begin Source File

SOURCE=.\CTestDCPolytriangle.h
# End Source File
# Begin Source File

SOURCE=.\CTimes.h
# End Source File
# Begin Source File

SOURCE=.\debug.h
# End Source File
# Begin Source File

SOURCE=.\heidio.h
# End Source File
# Begin Source File

SOURCE=.\MainFrm.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# Begin Source File

SOURCE=.\stdtest.h
# End Source File
# Begin Source File

SOURCE=.\stdtestDoc.h
# End Source File
# Begin Source File

SOURCE=.\stdtestView.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\res\stdtest.ico
# End Source File
# Begin Source File

SOURCE=.\res\stdtest.rc2
# End Source File
# Begin Source File

SOURCE=.\res\stdtestDoc.ico
# End Source File
# Begin Source File

SOURCE=.\res\toolbar.bmp
# End Source File
# End Group
# End Target
# End Project
