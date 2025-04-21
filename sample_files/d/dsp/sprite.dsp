# Microsoft Developer Studio Project File - Name="sprite" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=sprite - Win32 i386 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "sprite.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "sprite.mak" CFG="sprite - Win32 i386 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "sprite - Win32 i386 Debug" (based on "Win32 (x86) Application")
!MESSAGE "sprite - Win32 i386 Release" (based on "Win32 (x86) Application")
!MESSAGE "sprite - Win32 i386 Profile" (based on "Win32 (x86) Application")
!MESSAGE "sprite - Win32 i386 ProfACAP" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/heidi/samples/sprite", BRAAAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "sprite - Win32 i386 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\Debug"
# PROP BASE Intermediate_Dir ".\Debug"
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\Debug"
# PROP Intermediate_Dir ".\Debug"
# ADD BASE CPP /nologo /MD /W3 /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_AFXDLL" /FR /Yu"stdafx.h" -QIfdiv- /c
# ADD CPP /nologo /G5 /Gz /MDd /W3 /Gm /GX /ZI /Od /I "..\..\source" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /YX /FD -QIfdiv- /c
# SUBTRACT CPP /Fr
# ADD MTL /mktyplib203
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 ..\..\lib\i386\Debug\heidi7.lib ..\..\lib\i386\Debug\mtl7.lib ..\..\lib\i386\Debug\texture7.lib ..\..\lib\i386\Debug\appkit7.lib /nologo /subsystem:windows /debug /machine:I386
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "sprite - Win32 i386 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\Release"
# PROP BASE Intermediate_Dir ".\Release"
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\Release"
# PROP Intermediate_Dir ".\Release"
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_AFXDLL" /FR /Yu"stdafx.h" /c
# ADD CPP /nologo /G5 /Gz /MD /W3 /GX /O2 /I "..\..\source" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /FD /c
# SUBTRACT CPP /Fr
# ADD MTL /mktyplib203
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 ..\..\lib\i386\Release\heidi7.lib ..\..\lib\i386\Release\mtl7.lib ..\..\lib\i386\Release\texture7.lib ..\..\lib\i386\Release\appkit7.lib /nologo /subsystem:windows /machine:I386
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "sprite - Win32 i386 Profile"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\Win32_Pr"
# PROP BASE Intermediate_Dir ".\Win32_Pr"
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\Profile"
# PROP Intermediate_Dir ".\Profile"
# ADD BASE CPP /nologo /Gz /MD /W3 /GX /O2 /I "..\..\source" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_AFXDLL" /FR /Yu"stdafx.h" /c
# ADD CPP /nologo /G5 /Gz /MD /W3 /Gm /GX /Zi /O2 /I "..\..\source" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /FD /c
# SUBTRACT CPP /Fr
# ADD MTL /mktyplib203
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 ..\..\lib\i386\Profile\heidi7.lib ..\..\lib\i386\Profile\mtl7.lib ..\..\lib\i386\Profile\texture7.lib ..\..\lib\i386\Profile\appkit7.lib /nologo /subsystem:windows /profile /debug /machine:I386

!ELSEIF  "$(CFG)" == "sprite - Win32 i386 ProfACAP"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\sprite__"
# PROP BASE Intermediate_Dir ".\sprite__"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\ProfACAP"
# PROP Intermediate_Dir ".\ProfACAP"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G5 /Gz /MD /W3 /Gm /GX /Zi /O2 /I "..\..\source" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# SUBTRACT BASE CPP /Fr
# ADD CPP /nologo /G5 /Gz /MD /W3 /Gm /GX /Zi /O2 /I "..\..\source" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /D "ACAP" /Yu"stdafx.h" /FD /c
# SUBTRACT CPP /Fr
# ADD MTL /mktyplib203
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 ..\..\lib\i386\ProfACAP\heidi7.lib ..\..\lib\i386\ProfACAP\mtl7.lib ..\..\lib\i386\ProfACAP\texture7.lib ..\..\lib\i386\ProfACAP\appkit7.lib /nologo /subsystem:windows /profile /debug /machine:I386
# ADD LINK32 ..\..\lib\i386\acap.lib ..\..\lib\i386\ProfACAP\heidi7.lib ..\..\lib\i386\ProfACAP\mtl7.lib ..\..\lib\i386\ProfACAP\texture7.lib ..\..\lib\i386\ProfACAP\appkit7.lib /nologo /subsystem:windows /profile /debug /machine:I386

!ENDIF 

# Begin Target

# Name "sprite - Win32 i386 Debug"
# Name "sprite - Win32 i386 Release"
# Name "sprite - Win32 i386 Profile"
# Name "sprite - Win32 i386 ProfACAP"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat;for;f90"
# Begin Source File

SOURCE=.\acap.cpp
# End Source File
# Begin Source File

SOURCE=.\dib.cpp
# End Source File
# Begin Source File

SOURCE=.\dib.h
# End Source File
# Begin Source File

SOURCE=.\mainfrm.cpp
# End Source File
# Begin Source File

SOURCE=.\mainfrm.h
# End Source File
# Begin Source File

SOURCE=.\readme.txt
# End Source File
# Begin Source File

SOURCE=.\resource.h
# End Source File
# Begin Source File

SOURCE=.\spritdoc.cpp
# End Source File
# Begin Source File

SOURCE=.\spritdoc.h
# End Source File
# Begin Source File

SOURCE=.\sprite.cpp
# End Source File
# Begin Source File

SOURCE=.\sprite.h
# End Source File
# Begin Source File

SOURCE=.\sprite.rc
# End Source File
# Begin Source File

SOURCE=.\spritvw.cpp
# End Source File
# Begin Source File

SOURCE=.\spritvw.h
# End Source File
# Begin Source File

SOURCE=.\stdafx.cpp
# ADD BASE CPP /Yc"stdafx.h"
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\stdafx.h
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\res\spritdoc.ico
# End Source File
# Begin Source File

SOURCE=.\res\sprite.ico
# End Source File
# Begin Source File

SOURCE=.\res\sprite.rc2
# End Source File
# Begin Source File

SOURCE=.\res\toolbar.bmp
# End Source File
# End Group
# End Target
# End Project
