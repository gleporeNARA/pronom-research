# Microsoft Developer Studio Project File - Name="whiptool" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=whiptool - Win32 i386 Full Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "whiptool.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "whiptool.mak" CFG="whiptool - Win32 i386 Full Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "whiptool - Win32 i386 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "whiptool - Win32 i386 ProfACAP" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "whiptool - Win32 i386 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "whiptool - Win32 i386 Profile" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "whiptool - Win32 i386 Release With Symbols" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "whiptool - Win32 i386 Full Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/heidi/source/toolkit/whiptk", BSABAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "whiptool - Win32 i386 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "whiptoo0"
# PROP BASE Intermediate_Dir "whiptoo0"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "bin\Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /G5 /MDd /W3 /Gm /GX /Zi /Od /I "../.." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /FR /Yu"whiptk/pch.h" /FD /c
# SUBTRACT BASE CPP /WX
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I ".." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /Yu"whiptk/pch.h" /FD /c
# SUBTRACT CPP /WX /Fr
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "../.." /d "_DEBUG"
# ADD RSC /l 0x409 /i ".." /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 user32.lib /nologo /base:"0x33e40000" /subsystem:windows /dll /debug /machine:I386 /out:"..\..\..\BIN\I386\whiptk.dll"
# ADD LINK32 zlib\Debug\zlib.lib user32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"bin\Debug\whiptk7.dll"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 ProfACAP"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "whiptoo1"
# PROP BASE Intermediate_Dir "whiptoo1"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "bin\ProfACAP"
# PROP Intermediate_Dir "ProfACAP"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /G5 /MD /W3 /GX /O2 /I "../.." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Yu"whiptk/pch.h" /FD /c
# SUBTRACT BASE CPP /WX
# ADD CPP /nologo /MD /W3 /GX /Zd /O2 /I "../.. .." /I ".." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "ACAP" /Yu"whiptk/pch.h" /Fd"..\..\..\bin\i386\ProfACAP\whiptk7.pdb" /FD /Gh /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "../.." /d "NDEBUG"
# ADD RSC /l 0x409 /i ".." /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 user32.lib /nologo /base:"0x33e40000" /subsystem:windows /dll /machine:I386 /out:"..\..\..\BIN\I386\whiptk.dll"
# SUBTRACT BASE LINK32 /debug
# ADD LINK32 zlib\ProfACAP\zlib.lib user32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"bin\ProfACAP\whiptk7.dll"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "whiptool"
# PROP BASE Intermediate_Dir "whiptool"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "bin\Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /G5 /MD /W3 /GX /O2 /I "../.." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Yu"whiptk/pch.h" /FD /c
# SUBTRACT BASE CPP /WX
# ADD CPP /nologo /MD /W3 /GX /O2 /I "../.. .." /I ".." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Yu"whiptk/pch.h" /FD /c
# SUBTRACT CPP /WX /Fr
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "../.." /d "NDEBUG"
# ADD RSC /l 0x409 /i ".." /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 user32.lib /nologo /base:"0x33e40000" /subsystem:windows /dll /machine:I386 /out:"..\..\..\BIN\I386\whiptk.dll"
# SUBTRACT BASE LINK32 /debug
# ADD LINK32 zlib\Release\zlib.lib user32.lib /nologo /subsystem:windows /dll /machine:I386 /out:"bin\Release\whiptk7.dll"
# SUBTRACT LINK32 /pdb:none /debug

!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 Profile"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "whiptoo2"
# PROP BASE Intermediate_Dir "whiptoo2"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "bin\Profile"
# PROP Intermediate_Dir "Profile"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /G5 /MD /W3 /GX /O2 /I "../.." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Yu"whiptk/pch.h" /FD /c
# SUBTRACT BASE CPP /WX
# ADD CPP /nologo /MD /W3 /GX /O2 /I "../.. .." /I ".." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Yu"whiptk/pch.h" /FD /c
# SUBTRACT CPP /WX /Fr
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "../.." /d "NDEBUG"
# ADD RSC /l 0x409 /i ".." /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 user32.lib /nologo /base:"0x33e40000" /subsystem:windows /dll /machine:I386 /out:"..\..\..\BIN\I386\whiptk.dll"
# SUBTRACT BASE LINK32 /debug
# ADD LINK32 zlib\Profile\zlib.lib user32.lib /nologo /subsystem:windows /dll /machine:I386 /out:"bin\Profile\whiptk7.dll"
# SUBTRACT LINK32 /pdb:none /debug

!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 Release With Symbols"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "whiptool"
# PROP BASE Intermediate_Dir "whiptool"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "bin\Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /G5 /MD /W3 /GX /O2 /I "../.. .." /I ".." /I "../.." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Yu"whiptk/pch.h" /FD /c
# SUBTRACT BASE CPP /WX
# ADD CPP /nologo /MD /W3 /GX /Z7 /O2 /I "../.. .." /I ".." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Yu"whiptk/pch.h" /FD /c
# SUBTRACT CPP /WX /Fr
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "../.." /i ".." /d "NDEBUG"
# ADD RSC /l 0x409 /i ".." /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 user32.lib /nologo /base:"0x33e40000" /subsystem:windows /dll /machine:I386 /out:"..\..\..\BIN\I386\Release\whiptk7.dll"
# SUBTRACT BASE LINK32 /debug
# ADD LINK32 zlib\Release\zlib.lib user32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"bin\Release\whiptk7.dll"
# SUBTRACT LINK32 /pdb:none /incremental:yes

!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 Full Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "whiptool"
# PROP BASE Intermediate_Dir "whiptool"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "bin\Debug"
# PROP Intermediate_Dir "debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /G5 /MDd /W3 /Gm /GX /Zi /Od /I ".." /I "../.." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /Yu"whiptk/pch.h" /FD /c
# SUBTRACT BASE CPP /WX /Fr
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I ".." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /Yu"whiptk/pch.h" /FD /c
# SUBTRACT CPP /WX /Fr
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i ".." /i "../.." /d "_DEBUG"
# ADD RSC /l 0x409 /i ".." /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 user32.lib /nologo /base:"0x33e40000" /subsystem:windows /dll /debug /machine:I386 /out:"..\..\..\BIN\I386\Debug\whiptk7.dll"
# ADD LINK32 zlib\Debug\zlib.lib user32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"bin\Debug\whiptk7.dll"
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "whiptool - Win32 i386 Debug"
# Name "whiptool - Win32 i386 ProfACAP"
# Name "whiptool - Win32 i386 Release"
# Name "whiptool - Win32 i386 Profile"
# Name "whiptool - Win32 i386 Release With Symbols"
# Name "whiptool - Win32 i386 Full Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat;for;f90"
# Begin Source File

SOURCE=.\assert.cpp
# End Source File
# Begin Source File

SOURCE=.\attribute.cpp
# End Source File
# Begin Source File

SOURCE=.\backgrnd.cpp
# End Source File
# Begin Source File

SOURCE=.\code_page.cpp
# End Source File
# Begin Source File

SOURCE=.\color.cpp
# End Source File
# Begin Source File

SOURCE=.\colormap.cpp
# End Source File
# Begin Source File

SOURCE=.\compdata.cpp
# End Source File
# Begin Source File

SOURCE=.\contour_set.cpp
# End Source File
# Begin Source File

SOURCE=.\dashpat.cpp
# End Source File
# Begin Source File

SOURCE=.\drawable.cpp
# End Source File
# Begin Source File

SOURCE=.\dwfhead.cpp
# End Source File
# Begin Source File

SOURCE=.\dwginfo.cpp
# End Source File
# Begin Source File

SOURCE=.\ellipse.cpp
# End Source File
# Begin Source File

SOURCE=.\embed.cpp
# End Source File
# Begin Source File

SOURCE=.\endofdwf.cpp
# End Source File
# Begin Source File

SOURCE=.\file.cpp
# End Source File
# Begin Source File

SOURCE=.\fill.cpp
# End Source File
# Begin Source File

SOURCE=.\fillpat.cpp
# End Source File
# Begin Source File

SOURCE=.\font.cpp
# End Source File
# Begin Source File

SOURCE=.\font_options.cpp
# End Source File
# Begin Source File

SOURCE=.\gouraud_pointset.cpp
# End Source File
# Begin Source File

SOURCE=.\gouraud_polyline.cpp
# End Source File
# Begin Source File

SOURCE=.\gouraud_polytri.cpp
# End Source File
# Begin Source File

SOURCE=.\group_begin.cpp
# End Source File
# Begin Source File

SOURCE=.\group_end.cpp
# End Source File
# Begin Source File

SOURCE=.\heuristics.cpp
# End Source File
# Begin Source File

SOURCE=.\image.cpp
# End Source File
# Begin Source File

SOURCE=.\informational.cpp
# End Source File
# Begin Source File

SOURCE=.\inked_area.cpp
# End Source File
# Begin Source File

SOURCE=.\layer.cpp
# End Source File
# Begin Source File

SOURCE=.\layer_list.cpp
# End Source File
# Begin Source File

SOURCE=.\linepat.cpp
# End Source File
# Begin Source File

SOURCE=.\linestyle.cpp
# End Source File
# Begin Source File

SOURCE=.\lweight.cpp
# End Source File
# Begin Source File

SOURCE=.\lz77comp.cpp
# End Source File
# Begin Source File

SOURCE=.\lz77decp.cpp
# End Source File
# Begin Source File

SOURCE=.\marksize.cpp
# End Source File
# Begin Source File

SOURCE=.\marksymb.cpp
# End Source File
# Begin Source File

SOURCE=.\matrix.cpp
# End Source File
# Begin Source File

SOURCE=.\merge_control.cpp
# End Source File
# Begin Source File

SOURCE=.\named_view.cpp
# End Source File
# Begin Source File

SOURCE=.\named_view_list.cpp
# End Source File
# Begin Source File

SOURCE=.\object.cpp
# End Source File
# Begin Source File

SOURCE=.\opcode.cpp
# End Source File
# Begin Source File

SOURCE=.\origin.cpp
# End Source File
# Begin Source File

SOURCE=.\pch.cpp
# ADD BASE CPP /Yc"whiptk/pch.h"
# ADD CPP /Yc"whiptk/pch.h"
# End Source File
# Begin Source File

SOURCE=.\Plot_Optimized.cpp
# End Source File
# Begin Source File

SOURCE=.\plotinfo.cpp
# End Source File
# Begin Source File

SOURCE=.\PNGGroup4image.cpp
# End Source File
# Begin Source File

SOURCE=.\pointset.cpp
# End Source File
# Begin Source File

SOURCE=.\polygon.cpp
# End Source File
# Begin Source File

SOURCE=.\polyline.cpp
# End Source File
# Begin Source File

SOURCE=.\polymark.cpp
# End Source File
# Begin Source File

SOURCE=.\polytri.cpp
# End Source File
# Begin Source File

SOURCE=.\rendition.cpp
# End Source File
# Begin Source File

SOURCE=.\rendopts.cpp
# End Source File
# Begin Source File

SOURCE=.\settings.cpp
# End Source File
# Begin Source File

SOURCE=.\string.cpp
# End Source File
# Begin Source File

SOURCE=.\text.cpp
# End Source File
# Begin Source File

SOURCE=.\text_options.cpp
# End Source File
# Begin Source File

SOURCE=.\timestamp.cpp
# End Source File
# Begin Source File

SOURCE=.\units.cpp
# End Source File
# Begin Source File

SOURCE=.\unknown.cpp
# End Source File
# Begin Source File

SOURCE=.\url.cpp
# End Source File
# Begin Source File

SOURCE=.\url_list.cpp
# End Source File
# Begin Source File

SOURCE=.\view.cpp
# End Source File
# Begin Source File

SOURCE=.\viewport.cpp
# End Source File
# Begin Source File

SOURCE=.\viewport_options.cpp
# End Source File
# Begin Source File

SOURCE=.\visible.cpp
# End Source File
# Begin Source File

SOURCE=.\whiptk.rc
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# Begin Source File

SOURCE=.\whiptk\allclass.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\attribute.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\backgrnd.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\code_page.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\color.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\colormap.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\compdata.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\compress.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\contour_set.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\dashpat.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\dpat_list.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\drawable.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\dwfhead.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\dwginfo.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\ellipse.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\embed.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\endian.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\endofdwf.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\fifo.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\file.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\fileext.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\fileops.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\fill.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\fillpat.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\font.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\font_options.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\gouraud_pointset.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\gouraud_polyline.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\gouraud_polytri.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\group_begin.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\group_end.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\heuristics.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\image.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\informational.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\inked_area.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\layer.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\layer_list.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\linepat.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\linestyle.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\list.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\lweight.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\lz77comp.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\lz77decp.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\lzdefs.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\marksize.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\marksymb.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\matrix.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\merge_control.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\named_view.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\named_view_list.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\node.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\object.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\objstr.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\opcode.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\origin.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\palette.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\pch.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\plot_optimized.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\plotinfo.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\pnggroup4image.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\pointset.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\polygon.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\polyline.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\polymark.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\polytri.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\preload.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\rendition.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\rendopts.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\resource.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\settings.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\text.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\text_options.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\timestamp.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\units.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\unknown.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\url.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\url_list.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\view.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\viewport.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\viewport_options.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\visible.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\whip_toolkit.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\whipcore.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\whiperrs.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\wtstring.h
# End Source File
# Begin Source File

SOURCE=.\whiptk\wversion.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
