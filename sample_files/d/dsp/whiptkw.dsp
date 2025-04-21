# Microsoft Developer Studio Project File - Name="whiptkw" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=whiptkw - Win32 i386 Profile
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "whiptkw.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "whiptkw.mak" CFG="whiptkw - Win32 i386 Profile"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "whiptkw - Win32 i386 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "whiptkw - Win32 i386 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "whiptkw - Win32 i386 Profile" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/web/R4/Source/Internal/Heidi/toolkit/whiptk", TOCBAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "whiptkw_"
# PROP BASE Intermediate_Dir "whiptkw_"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\..\..\Lib\i386"
# PROP Intermediate_Dir ".\Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /I "..\\" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# SUBTRACT BASE CPP /Fr
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\\" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /Fr /Yu"whiptk/pch.h" /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /i "..\\" /d "_DEBUG"
# ADD RSC /l 0x409 /i "..\\" /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 user32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"..\..\..\..\..\Bin\i386\Debug\whiptkw.dll" /pdbtype:sept
# ADD LINK32 user32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"..\..\..\..\..\Bin\i386\Debug\whiptkw.dll" /pdbtype:sept

!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "whiptkw0"
# PROP BASE Intermediate_Dir "whiptkw0"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\..\..\Lib\i386"
# PROP Intermediate_Dir ".\Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /I "..\\" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# SUBTRACT BASE CPP /Fr
# ADD CPP /nologo /MT /W3 /GX /O2 /I "..\\" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /Yu"whiptk/pch.h" /FD /c
# SUBTRACT CPP /Fr
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /i "..\\" /d "NDEBUG"
# ADD RSC /l 0x409 /i "..\\" /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 user32.lib /nologo /subsystem:windows /dll /machine:I386 /out:"..\..\..\..\..\Bin\i386\Release\whiptkw.dll"
# ADD LINK32 user32.lib /nologo /subsystem:windows /dll /machine:I386 /out:"..\..\..\..\..\Bin\i386\Release\whiptkw.dll"

!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "whiptkw1"
# PROP BASE Intermediate_Dir "whiptkw1"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\..\..\Lib\i386"
# PROP Intermediate_Dir ".\Profile"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /I "..\\" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# SUBTRACT BASE CPP /Fr
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\\" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /Yu"whiptk/pch.h" /FD /c
# SUBTRACT CPP /Fr
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /i "..\\" /d "_DEBUG"
# ADD RSC /l 0x409 /i "..\\" /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 user32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"..\..\..\..\..\Bin\i386\Debug\whiptkw.dll" /pdbtype:sept
# ADD LINK32 user32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"..\..\..\..\..\Bin\i386\Profile\whiptkw.dll" /pdbtype:sept

!ENDIF 

# Begin Target

# Name "whiptkw - Win32 i386 Debug"
# Name "whiptkw - Win32 i386 Release"
# Name "whiptkw - Win32 i386 Profile"
# Begin Group "Header Files"

# PROP Default_Filter "*.h,*.hpp,*.hxx"
# Begin Source File

SOURCE=.\allclass.h
# End Source File
# Begin Source File

SOURCE=.\attribute.h
# End Source File
# Begin Source File

SOURCE=.\backgrnd.h
# End Source File
# Begin Source File

SOURCE=.\code_page.h
# End Source File
# Begin Source File

SOURCE=.\color.h
# End Source File
# Begin Source File

SOURCE=.\colormap.h
# End Source File
# Begin Source File

SOURCE=.\compdata.h
# End Source File
# Begin Source File

SOURCE=.\compress.h
# End Source File
# Begin Source File

SOURCE=.\contour_set.h
# End Source File
# Begin Source File

SOURCE=.\dashpat.h
# End Source File
# Begin Source File

SOURCE=.\dpat_list.h
# End Source File
# Begin Source File

SOURCE=.\drawable.h
# End Source File
# Begin Source File

SOURCE=.\dwfhead.h
# End Source File
# Begin Source File

SOURCE=.\dwginfo.h
# End Source File
# Begin Source File

SOURCE=.\ellipse.h
# End Source File
# Begin Source File

SOURCE=.\embed.h
# End Source File
# Begin Source File

SOURCE=.\endian.h
# End Source File
# Begin Source File

SOURCE=.\endofdwf.h
# End Source File
# Begin Source File

SOURCE=.\fifo.h
# End Source File
# Begin Source File

SOURCE=.\file.h
# End Source File
# Begin Source File

SOURCE=.\fileops.h
# End Source File
# Begin Source File

SOURCE=.\fill.h
# End Source File
# Begin Source File

SOURCE=.\font.h
# End Source File
# Begin Source File

SOURCE=.\font_options.h
# End Source File
# Begin Source File

SOURCE=.\gouraud_pointset.h
# End Source File
# Begin Source File

SOURCE=.\gouraud_polyline.h
# End Source File
# Begin Source File

SOURCE=.\gouraud_polytri.h
# End Source File
# Begin Source File

SOURCE=.\heuristics.h
# End Source File
# Begin Source File

SOURCE=.\image.h
# End Source File
# Begin Source File

SOURCE=.\informational.h
# End Source File
# Begin Source File

SOURCE=.\layer.h
# End Source File
# Begin Source File

SOURCE=.\layer_list.h
# End Source File
# Begin Source File

SOURCE=.\linecap.h
# End Source File
# Begin Source File

SOURCE=.\linejoin.h
# End Source File
# Begin Source File

SOURCE=.\linepat.h
# End Source File
# Begin Source File

SOURCE=.\linestyle.h
# End Source File
# Begin Source File

SOURCE=.\list.h
# End Source File
# Begin Source File

SOURCE=.\lweight.h
# End Source File
# Begin Source File

SOURCE=.\lz77comp.h
# End Source File
# Begin Source File

SOURCE=.\lz77decp.h
# End Source File
# Begin Source File

SOURCE=.\lzdefs.h
# End Source File
# Begin Source File

SOURCE=.\marksize.h
# End Source File
# Begin Source File

SOURCE=.\marksymb.h
# End Source File
# Begin Source File

SOURCE=.\matrix.h
# End Source File
# Begin Source File

SOURCE=.\named_view.h
# End Source File
# Begin Source File

SOURCE=.\named_view_list.h
# End Source File
# Begin Source File

SOURCE=.\node.h
# End Source File
# Begin Source File

SOURCE=.\object.h
# End Source File
# Begin Source File

SOURCE=.\objstr.h
# End Source File
# Begin Source File

SOURCE=.\opcode.h
# End Source File
# Begin Source File

SOURCE=.\origin.h
# End Source File
# Begin Source File

SOURCE=.\palette.h
# End Source File
# Begin Source File

SOURCE=.\pch.h
# End Source File
# Begin Source File

SOURCE=.\plotinfo.h
# End Source File
# Begin Source File

SOURCE=.\pointset.h
# End Source File
# Begin Source File

SOURCE=.\polygon.h
# End Source File
# Begin Source File

SOURCE=.\polyline.h
# End Source File
# Begin Source File

SOURCE=.\polymark.h
# End Source File
# Begin Source File

SOURCE=.\polytri.h
# End Source File
# Begin Source File

SOURCE=.\preload.h
# End Source File
# Begin Source File

SOURCE=.\rendition.h
# End Source File
# Begin Source File

SOURCE=.\rendopts.h
# End Source File
# Begin Source File

SOURCE=.\resource.h
# End Source File
# Begin Source File

SOURCE=.\settings.h
# End Source File
# Begin Source File

SOURCE=.\text.h
# End Source File
# Begin Source File

SOURCE=.\text_options.h
# End Source File
# Begin Source File

SOURCE=.\timestamp.h
# End Source File
# Begin Source File

SOURCE=.\units.h
# End Source File
# Begin Source File

SOURCE=.\unknown.h
# End Source File
# Begin Source File

SOURCE=.\url.h
# End Source File
# Begin Source File

SOURCE=.\url_list.h
# End Source File
# Begin Source File

SOURCE=.\view.h
# End Source File
# Begin Source File

SOURCE=.\viewport.h
# End Source File
# Begin Source File

SOURCE=.\viewport_options.h
# End Source File
# Begin Source File

SOURCE=.\visible.h
# End Source File
# Begin Source File

SOURCE=.\whip_toolkit.h
# End Source File
# Begin Source File

SOURCE=.\whipcore.h
# End Source File
# Begin Source File

SOURCE=.\whiperrs.h
# End Source File
# Begin Source File

SOURCE=.\wtstring.h
# End Source File
# Begin Source File

SOURCE=.\wversion.h
# End Source File
# End Group
# Begin Group "Source Files"

# PROP Default_Filter "*.c, *.cpp, *.cxx"
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

SOURCE=.\compress.cpp
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

SOURCE=.\fileops.cpp
# End Source File
# Begin Source File

SOURCE=.\fill.cpp
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

SOURCE=.\heuristics.cpp
# End Source File
# Begin Source File

SOURCE=.\image.cpp
# End Source File
# Begin Source File

SOURCE=.\informational.cpp
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
# ADD CPP /Yc"whiptk/pch.h"
# End Source File
# Begin Source File

SOURCE=.\plotinfo.cpp
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
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "*.rc"
# Begin Source File

SOURCE=.\whiptk.rc
# End Source File
# End Group
# Begin Source File

SOURCE=..\..\..\..\..\Scripts\fixmak.perl

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

# PROP BASE Ignore_Default_Tool 1
# PROP Ignore_Default_Tool 1
# Begin Custom Build
WkspDir=.
InputPath=..\..\..\..\..\Scripts\fixmak.perl

"notafile.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	perl $(InputPath) $(WkspDir)\whiptkw.mak

# End Custom Build

!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

# PROP BASE Ignore_Default_Tool 1
# PROP Ignore_Default_Tool 1
# Begin Custom Build
WkspDir=.
InputPath=..\..\..\..\..\Scripts\fixmak.perl

"notafile.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	perl $(InputPath) $(WkspDir)\whiptkw.mak

# End Custom Build

!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

# PROP BASE Ignore_Default_Tool 1
# PROP Ignore_Default_Tool 1
# Begin Custom Build
WkspDir=.
InputPath=..\..\..\..\..\Scripts\fixmak.perl

"notafile.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	perl $(InputPath) $(WkspDir)\whiptkw.mak

# End Custom Build

!ENDIF 

# End Source File
# End Target
# End Project
