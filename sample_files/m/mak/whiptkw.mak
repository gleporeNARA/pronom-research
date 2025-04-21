# Microsoft Developer Studio Generated NMAKE File, Based on whiptkw.dsp
!IF "$(CFG)" == ""
CFG=whiptkw - Win32 i386 Profile
!MESSAGE No configuration specified. Defaulting to whiptkw - Win32 i386\
 Profile.
!ENDIF 

!IF "$(CFG)" != "whiptkw - Win32 i386 Debug" && "$(CFG)" !=\
 "whiptkw - Win32 i386 Release" && "$(CFG)" != "whiptkw - Win32 i386 Profile"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "whiptkw.mak" CFG="whiptkw - Win32 i386 Profile"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "whiptkw - Win32 i386 Debug" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "whiptkw - Win32 i386 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "whiptkw - Win32 i386 Profile" (based on\
 "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

OUTDIR=.\..\..\..\..\..\Lib\i386
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\..\..\..\..\..\Lib\i386
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "notafile.txt" "..\..\..\..\..\Bin\i386\Debug\whiptkw.dll"\
 "$(OUTDIR)\whiptkw.bsc"

!ELSE 

ALL : "notafile.txt" "..\..\..\..\..\Bin\i386\Debug\whiptkw.dll"\
 "$(OUTDIR)\whiptkw.bsc"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\assert.obj"
	-@erase "$(INTDIR)\assert.sbr"
	-@erase "$(INTDIR)\attribute.obj"
	-@erase "$(INTDIR)\attribute.sbr"
	-@erase "$(INTDIR)\backgrnd.obj"
	-@erase "$(INTDIR)\backgrnd.sbr"
	-@erase "$(INTDIR)\code_page.obj"
	-@erase "$(INTDIR)\code_page.sbr"
	-@erase "$(INTDIR)\color.obj"
	-@erase "$(INTDIR)\color.sbr"
	-@erase "$(INTDIR)\colormap.obj"
	-@erase "$(INTDIR)\colormap.sbr"
	-@erase "$(INTDIR)\compdata.obj"
	-@erase "$(INTDIR)\compdata.sbr"
	-@erase "$(INTDIR)\compress.obj"
	-@erase "$(INTDIR)\compress.sbr"
	-@erase "$(INTDIR)\contour_set.obj"
	-@erase "$(INTDIR)\contour_set.sbr"
	-@erase "$(INTDIR)\dashpat.obj"
	-@erase "$(INTDIR)\dashpat.sbr"
	-@erase "$(INTDIR)\drawable.obj"
	-@erase "$(INTDIR)\drawable.sbr"
	-@erase "$(INTDIR)\dwfhead.obj"
	-@erase "$(INTDIR)\dwfhead.sbr"
	-@erase "$(INTDIR)\dwginfo.obj"
	-@erase "$(INTDIR)\dwginfo.sbr"
	-@erase "$(INTDIR)\ellipse.obj"
	-@erase "$(INTDIR)\ellipse.sbr"
	-@erase "$(INTDIR)\embed.obj"
	-@erase "$(INTDIR)\embed.sbr"
	-@erase "$(INTDIR)\endofdwf.obj"
	-@erase "$(INTDIR)\endofdwf.sbr"
	-@erase "$(INTDIR)\file.obj"
	-@erase "$(INTDIR)\file.sbr"
	-@erase "$(INTDIR)\fileops.obj"
	-@erase "$(INTDIR)\fileops.sbr"
	-@erase "$(INTDIR)\fill.obj"
	-@erase "$(INTDIR)\fill.sbr"
	-@erase "$(INTDIR)\font.obj"
	-@erase "$(INTDIR)\font.sbr"
	-@erase "$(INTDIR)\font_options.obj"
	-@erase "$(INTDIR)\font_options.sbr"
	-@erase "$(INTDIR)\gouraud_pointset.obj"
	-@erase "$(INTDIR)\gouraud_pointset.sbr"
	-@erase "$(INTDIR)\gouraud_polyline.obj"
	-@erase "$(INTDIR)\gouraud_polyline.sbr"
	-@erase "$(INTDIR)\gouraud_polytri.obj"
	-@erase "$(INTDIR)\gouraud_polytri.sbr"
	-@erase "$(INTDIR)\heuristics.obj"
	-@erase "$(INTDIR)\heuristics.sbr"
	-@erase "$(INTDIR)\image.obj"
	-@erase "$(INTDIR)\image.sbr"
	-@erase "$(INTDIR)\informational.obj"
	-@erase "$(INTDIR)\informational.sbr"
	-@erase "$(INTDIR)\layer.obj"
	-@erase "$(INTDIR)\layer.sbr"
	-@erase "$(INTDIR)\layer_list.obj"
	-@erase "$(INTDIR)\layer_list.sbr"
	-@erase "$(INTDIR)\linepat.obj"
	-@erase "$(INTDIR)\linepat.sbr"
	-@erase "$(INTDIR)\linestyle.obj"
	-@erase "$(INTDIR)\linestyle.sbr"
	-@erase "$(INTDIR)\lweight.obj"
	-@erase "$(INTDIR)\lweight.sbr"
	-@erase "$(INTDIR)\lz77comp.obj"
	-@erase "$(INTDIR)\lz77comp.sbr"
	-@erase "$(INTDIR)\lz77decp.obj"
	-@erase "$(INTDIR)\lz77decp.sbr"
	-@erase "$(INTDIR)\marksize.obj"
	-@erase "$(INTDIR)\marksize.sbr"
	-@erase "$(INTDIR)\marksymb.obj"
	-@erase "$(INTDIR)\marksymb.sbr"
	-@erase "$(INTDIR)\matrix.obj"
	-@erase "$(INTDIR)\matrix.sbr"
	-@erase "$(INTDIR)\named_view.obj"
	-@erase "$(INTDIR)\named_view.sbr"
	-@erase "$(INTDIR)\named_view_list.obj"
	-@erase "$(INTDIR)\named_view_list.sbr"
	-@erase "$(INTDIR)\object.obj"
	-@erase "$(INTDIR)\object.sbr"
	-@erase "$(INTDIR)\opcode.obj"
	-@erase "$(INTDIR)\opcode.sbr"
	-@erase "$(INTDIR)\origin.obj"
	-@erase "$(INTDIR)\origin.sbr"
	-@erase "$(INTDIR)\pch.obj"
	-@erase "$(INTDIR)\pch.sbr"
	-@erase "$(INTDIR)\plotinfo.obj"
	-@erase "$(INTDIR)\plotinfo.sbr"
	-@erase "$(INTDIR)\pointset.obj"
	-@erase "$(INTDIR)\pointset.sbr"
	-@erase "$(INTDIR)\polygon.obj"
	-@erase "$(INTDIR)\polygon.sbr"
	-@erase "$(INTDIR)\polyline.obj"
	-@erase "$(INTDIR)\polyline.sbr"
	-@erase "$(INTDIR)\polymark.obj"
	-@erase "$(INTDIR)\polymark.sbr"
	-@erase "$(INTDIR)\polytri.obj"
	-@erase "$(INTDIR)\polytri.sbr"
	-@erase "$(INTDIR)\rendition.obj"
	-@erase "$(INTDIR)\rendition.sbr"
	-@erase "$(INTDIR)\rendopts.obj"
	-@erase "$(INTDIR)\rendopts.sbr"
	-@erase "$(INTDIR)\settings.obj"
	-@erase "$(INTDIR)\settings.sbr"
	-@erase "$(INTDIR)\string.obj"
	-@erase "$(INTDIR)\string.sbr"
	-@erase "$(INTDIR)\text.obj"
	-@erase "$(INTDIR)\text.sbr"
	-@erase "$(INTDIR)\text_options.obj"
	-@erase "$(INTDIR)\text_options.sbr"
	-@erase "$(INTDIR)\timestamp.obj"
	-@erase "$(INTDIR)\timestamp.sbr"
	-@erase "$(INTDIR)\units.obj"
	-@erase "$(INTDIR)\units.sbr"
	-@erase "$(INTDIR)\unknown.obj"
	-@erase "$(INTDIR)\unknown.sbr"
	-@erase "$(INTDIR)\url.obj"
	-@erase "$(INTDIR)\url.sbr"
	-@erase "$(INTDIR)\url_list.obj"
	-@erase "$(INTDIR)\url_list.sbr"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(INTDIR)\view.obj"
	-@erase "$(INTDIR)\view.sbr"
	-@erase "$(INTDIR)\viewport.obj"
	-@erase "$(INTDIR)\viewport.sbr"
	-@erase "$(INTDIR)\viewport_options.obj"
	-@erase "$(INTDIR)\viewport_options.sbr"
	-@erase "$(INTDIR)\visible.obj"
	-@erase "$(INTDIR)\visible.sbr"
	-@erase "$(INTDIR)\whiptk.res"
	-@erase "$(INTDIR)\whiptkw.pch"
	-@erase "$(OUTDIR)\whiptkw.bsc"
	-@erase "$(OUTDIR)\whiptkw.exp"
	-@erase "$(OUTDIR)\whiptkw.lib"
	-@erase "$(OUTDIR)\whiptkw.pdb"
	-@erase "..\..\..\..\..\Bin\i386\Debug\whiptkw.dll"
	-@erase "..\..\..\..\..\Bin\i386\Debug\whiptkw.ilk"
	-@erase "notafile.txt"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

F90=fl32.exe
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /Zi /Od /I "..\\" /D "WIN32" /D "_DEBUG" /D\
 "_WINDOWS" /Fr"$(INTDIR)\\" /Fp"$(INTDIR)\whiptkw.pch" /Yu"whiptk/pch.h"\
 /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.\Debug/
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o NUL /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\whiptk.res" /i "..\\" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\whiptkw.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\assert.sbr" \
	"$(INTDIR)\attribute.sbr" \
	"$(INTDIR)\backgrnd.sbr" \
	"$(INTDIR)\code_page.sbr" \
	"$(INTDIR)\color.sbr" \
	"$(INTDIR)\colormap.sbr" \
	"$(INTDIR)\compdata.sbr" \
	"$(INTDIR)\compress.sbr" \
	"$(INTDIR)\contour_set.sbr" \
	"$(INTDIR)\dashpat.sbr" \
	"$(INTDIR)\drawable.sbr" \
	"$(INTDIR)\dwfhead.sbr" \
	"$(INTDIR)\dwginfo.sbr" \
	"$(INTDIR)\ellipse.sbr" \
	"$(INTDIR)\embed.sbr" \
	"$(INTDIR)\endofdwf.sbr" \
	"$(INTDIR)\file.sbr" \
	"$(INTDIR)\fileops.sbr" \
	"$(INTDIR)\fill.sbr" \
	"$(INTDIR)\font.sbr" \
	"$(INTDIR)\font_options.sbr" \
	"$(INTDIR)\gouraud_pointset.sbr" \
	"$(INTDIR)\gouraud_polyline.sbr" \
	"$(INTDIR)\gouraud_polytri.sbr" \
	"$(INTDIR)\heuristics.sbr" \
	"$(INTDIR)\image.sbr" \
	"$(INTDIR)\informational.sbr" \
	"$(INTDIR)\layer.sbr" \
	"$(INTDIR)\layer_list.sbr" \
	"$(INTDIR)\linepat.sbr" \
	"$(INTDIR)\linestyle.sbr" \
	"$(INTDIR)\lweight.sbr" \
	"$(INTDIR)\lz77comp.sbr" \
	"$(INTDIR)\lz77decp.sbr" \
	"$(INTDIR)\marksize.sbr" \
	"$(INTDIR)\marksymb.sbr" \
	"$(INTDIR)\matrix.sbr" \
	"$(INTDIR)\named_view.sbr" \
	"$(INTDIR)\named_view_list.sbr" \
	"$(INTDIR)\object.sbr" \
	"$(INTDIR)\opcode.sbr" \
	"$(INTDIR)\origin.sbr" \
	"$(INTDIR)\pch.sbr" \
	"$(INTDIR)\plotinfo.sbr" \
	"$(INTDIR)\pointset.sbr" \
	"$(INTDIR)\polygon.sbr" \
	"$(INTDIR)\polyline.sbr" \
	"$(INTDIR)\polymark.sbr" \
	"$(INTDIR)\polytri.sbr" \
	"$(INTDIR)\rendition.sbr" \
	"$(INTDIR)\rendopts.sbr" \
	"$(INTDIR)\settings.sbr" \
	"$(INTDIR)\string.sbr" \
	"$(INTDIR)\text.sbr" \
	"$(INTDIR)\text_options.sbr" \
	"$(INTDIR)\timestamp.sbr" \
	"$(INTDIR)\units.sbr" \
	"$(INTDIR)\unknown.sbr" \
	"$(INTDIR)\url.sbr" \
	"$(INTDIR)\url_list.sbr" \
	"$(INTDIR)\view.sbr" \
	"$(INTDIR)\viewport.sbr" \
	"$(INTDIR)\viewport_options.sbr" \
	"$(INTDIR)\visible.sbr"

"$(OUTDIR)\whiptkw.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=user32.lib /nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)\whiptkw.pdb" /debug /machine:I386\
 /out:"..\..\..\..\..\Bin\i386\Debug\whiptkw.dll"\
 /implib:"$(OUTDIR)\whiptkw.lib" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\assert.obj" \
	"$(INTDIR)\attribute.obj" \
	"$(INTDIR)\backgrnd.obj" \
	"$(INTDIR)\code_page.obj" \
	"$(INTDIR)\color.obj" \
	"$(INTDIR)\colormap.obj" \
	"$(INTDIR)\compdata.obj" \
	"$(INTDIR)\compress.obj" \
	"$(INTDIR)\contour_set.obj" \
	"$(INTDIR)\dashpat.obj" \
	"$(INTDIR)\drawable.obj" \
	"$(INTDIR)\dwfhead.obj" \
	"$(INTDIR)\dwginfo.obj" \
	"$(INTDIR)\ellipse.obj" \
	"$(INTDIR)\embed.obj" \
	"$(INTDIR)\endofdwf.obj" \
	"$(INTDIR)\file.obj" \
	"$(INTDIR)\fileops.obj" \
	"$(INTDIR)\fill.obj" \
	"$(INTDIR)\font.obj" \
	"$(INTDIR)\font_options.obj" \
	"$(INTDIR)\gouraud_pointset.obj" \
	"$(INTDIR)\gouraud_polyline.obj" \
	"$(INTDIR)\gouraud_polytri.obj" \
	"$(INTDIR)\heuristics.obj" \
	"$(INTDIR)\image.obj" \
	"$(INTDIR)\informational.obj" \
	"$(INTDIR)\layer.obj" \
	"$(INTDIR)\layer_list.obj" \
	"$(INTDIR)\linepat.obj" \
	"$(INTDIR)\linestyle.obj" \
	"$(INTDIR)\lweight.obj" \
	"$(INTDIR)\lz77comp.obj" \
	"$(INTDIR)\lz77decp.obj" \
	"$(INTDIR)\marksize.obj" \
	"$(INTDIR)\marksymb.obj" \
	"$(INTDIR)\matrix.obj" \
	"$(INTDIR)\named_view.obj" \
	"$(INTDIR)\named_view_list.obj" \
	"$(INTDIR)\object.obj" \
	"$(INTDIR)\opcode.obj" \
	"$(INTDIR)\origin.obj" \
	"$(INTDIR)\pch.obj" \
	"$(INTDIR)\plotinfo.obj" \
	"$(INTDIR)\pointset.obj" \
	"$(INTDIR)\polygon.obj" \
	"$(INTDIR)\polyline.obj" \
	"$(INTDIR)\polymark.obj" \
	"$(INTDIR)\polytri.obj" \
	"$(INTDIR)\rendition.obj" \
	"$(INTDIR)\rendopts.obj" \
	"$(INTDIR)\settings.obj" \
	"$(INTDIR)\string.obj" \
	"$(INTDIR)\text.obj" \
	"$(INTDIR)\text_options.obj" \
	"$(INTDIR)\timestamp.obj" \
	"$(INTDIR)\units.obj" \
	"$(INTDIR)\unknown.obj" \
	"$(INTDIR)\url.obj" \
	"$(INTDIR)\url_list.obj" \
	"$(INTDIR)\view.obj" \
	"$(INTDIR)\viewport.obj" \
	"$(INTDIR)\viewport_options.obj" \
	"$(INTDIR)\visible.obj" \
	"$(INTDIR)\whiptk.res"

"..\..\..\..\..\Bin\i386\Debug\whiptkw.dll" : "$(OUTDIR)" $(DEF_FILE)\
 $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

OUTDIR=.\..\..\..\..\..\Lib\i386
INTDIR=.\Release

!IF "$(RECURSE)" == "0" 

ALL : "notafile.txt" "..\..\..\..\..\Bin\i386\Release\whiptkw.dll"

!ELSE 

ALL : "notafile.txt" "..\..\..\..\..\Bin\i386\Release\whiptkw.dll"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\assert.obj"
	-@erase "$(INTDIR)\attribute.obj"
	-@erase "$(INTDIR)\backgrnd.obj"
	-@erase "$(INTDIR)\code_page.obj"
	-@erase "$(INTDIR)\color.obj"
	-@erase "$(INTDIR)\colormap.obj"
	-@erase "$(INTDIR)\compdata.obj"
	-@erase "$(INTDIR)\compress.obj"
	-@erase "$(INTDIR)\contour_set.obj"
	-@erase "$(INTDIR)\dashpat.obj"
	-@erase "$(INTDIR)\drawable.obj"
	-@erase "$(INTDIR)\dwfhead.obj"
	-@erase "$(INTDIR)\dwginfo.obj"
	-@erase "$(INTDIR)\ellipse.obj"
	-@erase "$(INTDIR)\embed.obj"
	-@erase "$(INTDIR)\endofdwf.obj"
	-@erase "$(INTDIR)\file.obj"
	-@erase "$(INTDIR)\fileops.obj"
	-@erase "$(INTDIR)\fill.obj"
	-@erase "$(INTDIR)\font.obj"
	-@erase "$(INTDIR)\font_options.obj"
	-@erase "$(INTDIR)\gouraud_pointset.obj"
	-@erase "$(INTDIR)\gouraud_polyline.obj"
	-@erase "$(INTDIR)\gouraud_polytri.obj"
	-@erase "$(INTDIR)\heuristics.obj"
	-@erase "$(INTDIR)\image.obj"
	-@erase "$(INTDIR)\informational.obj"
	-@erase "$(INTDIR)\layer.obj"
	-@erase "$(INTDIR)\layer_list.obj"
	-@erase "$(INTDIR)\linepat.obj"
	-@erase "$(INTDIR)\linestyle.obj"
	-@erase "$(INTDIR)\lweight.obj"
	-@erase "$(INTDIR)\lz77comp.obj"
	-@erase "$(INTDIR)\lz77decp.obj"
	-@erase "$(INTDIR)\marksize.obj"
	-@erase "$(INTDIR)\marksymb.obj"
	-@erase "$(INTDIR)\matrix.obj"
	-@erase "$(INTDIR)\named_view.obj"
	-@erase "$(INTDIR)\named_view_list.obj"
	-@erase "$(INTDIR)\object.obj"
	-@erase "$(INTDIR)\opcode.obj"
	-@erase "$(INTDIR)\origin.obj"
	-@erase "$(INTDIR)\pch.obj"
	-@erase "$(INTDIR)\plotinfo.obj"
	-@erase "$(INTDIR)\pointset.obj"
	-@erase "$(INTDIR)\polygon.obj"
	-@erase "$(INTDIR)\polyline.obj"
	-@erase "$(INTDIR)\polymark.obj"
	-@erase "$(INTDIR)\polytri.obj"
	-@erase "$(INTDIR)\rendition.obj"
	-@erase "$(INTDIR)\rendopts.obj"
	-@erase "$(INTDIR)\settings.obj"
	-@erase "$(INTDIR)\string.obj"
	-@erase "$(INTDIR)\text.obj"
	-@erase "$(INTDIR)\text_options.obj"
	-@erase "$(INTDIR)\timestamp.obj"
	-@erase "$(INTDIR)\units.obj"
	-@erase "$(INTDIR)\unknown.obj"
	-@erase "$(INTDIR)\url.obj"
	-@erase "$(INTDIR)\url_list.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\view.obj"
	-@erase "$(INTDIR)\viewport.obj"
	-@erase "$(INTDIR)\viewport_options.obj"
	-@erase "$(INTDIR)\visible.obj"
	-@erase "$(INTDIR)\whiptk.res"
	-@erase "$(INTDIR)\whiptkw.pch"
	-@erase "$(OUTDIR)\whiptkw.exp"
	-@erase "$(OUTDIR)\whiptkw.lib"
	-@erase "..\..\..\..\..\Bin\i386\Release\whiptkw.dll"
	-@erase "notafile.txt"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

F90=fl32.exe
CPP_PROJ=/nologo /MT /W3 /GX /O2 /I "..\\" /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)\whiptkw.pch" /Yu"whiptk/pch.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\"\
 /FD /c 
CPP_OBJS=.\Release/
CPP_SBRS=.
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /o NUL /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\whiptk.res" /i "..\\" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\whiptkw.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=user32.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)\whiptkw.pdb" /machine:I386\
 /out:"..\..\..\..\..\Bin\i386\Release\whiptkw.dll"\
 /implib:"$(OUTDIR)\whiptkw.lib" 
LINK32_OBJS= \
	"$(INTDIR)\assert.obj" \
	"$(INTDIR)\attribute.obj" \
	"$(INTDIR)\backgrnd.obj" \
	"$(INTDIR)\code_page.obj" \
	"$(INTDIR)\color.obj" \
	"$(INTDIR)\colormap.obj" \
	"$(INTDIR)\compdata.obj" \
	"$(INTDIR)\compress.obj" \
	"$(INTDIR)\contour_set.obj" \
	"$(INTDIR)\dashpat.obj" \
	"$(INTDIR)\drawable.obj" \
	"$(INTDIR)\dwfhead.obj" \
	"$(INTDIR)\dwginfo.obj" \
	"$(INTDIR)\ellipse.obj" \
	"$(INTDIR)\embed.obj" \
	"$(INTDIR)\endofdwf.obj" \
	"$(INTDIR)\file.obj" \
	"$(INTDIR)\fileops.obj" \
	"$(INTDIR)\fill.obj" \
	"$(INTDIR)\font.obj" \
	"$(INTDIR)\font_options.obj" \
	"$(INTDIR)\gouraud_pointset.obj" \
	"$(INTDIR)\gouraud_polyline.obj" \
	"$(INTDIR)\gouraud_polytri.obj" \
	"$(INTDIR)\heuristics.obj" \
	"$(INTDIR)\image.obj" \
	"$(INTDIR)\informational.obj" \
	"$(INTDIR)\layer.obj" \
	"$(INTDIR)\layer_list.obj" \
	"$(INTDIR)\linepat.obj" \
	"$(INTDIR)\linestyle.obj" \
	"$(INTDIR)\lweight.obj" \
	"$(INTDIR)\lz77comp.obj" \
	"$(INTDIR)\lz77decp.obj" \
	"$(INTDIR)\marksize.obj" \
	"$(INTDIR)\marksymb.obj" \
	"$(INTDIR)\matrix.obj" \
	"$(INTDIR)\named_view.obj" \
	"$(INTDIR)\named_view_list.obj" \
	"$(INTDIR)\object.obj" \
	"$(INTDIR)\opcode.obj" \
	"$(INTDIR)\origin.obj" \
	"$(INTDIR)\pch.obj" \
	"$(INTDIR)\plotinfo.obj" \
	"$(INTDIR)\pointset.obj" \
	"$(INTDIR)\polygon.obj" \
	"$(INTDIR)\polyline.obj" \
	"$(INTDIR)\polymark.obj" \
	"$(INTDIR)\polytri.obj" \
	"$(INTDIR)\rendition.obj" \
	"$(INTDIR)\rendopts.obj" \
	"$(INTDIR)\settings.obj" \
	"$(INTDIR)\string.obj" \
	"$(INTDIR)\text.obj" \
	"$(INTDIR)\text_options.obj" \
	"$(INTDIR)\timestamp.obj" \
	"$(INTDIR)\units.obj" \
	"$(INTDIR)\unknown.obj" \
	"$(INTDIR)\url.obj" \
	"$(INTDIR)\url_list.obj" \
	"$(INTDIR)\view.obj" \
	"$(INTDIR)\viewport.obj" \
	"$(INTDIR)\viewport_options.obj" \
	"$(INTDIR)\visible.obj" \
	"$(INTDIR)\whiptk.res"

"..\..\..\..\..\Bin\i386\Release\whiptkw.dll" : "$(OUTDIR)" $(DEF_FILE)\
 $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

OUTDIR=.\..\..\..\..\..\Lib\i386
INTDIR=.\Profile

!IF "$(RECURSE)" == "0" 

ALL : "notafile.txt" "..\..\..\..\..\Bin\i386\Profile\whiptkw.dll"

!ELSE 

ALL : "notafile.txt" "..\..\..\..\..\Bin\i386\Profile\whiptkw.dll"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\assert.obj"
	-@erase "$(INTDIR)\attribute.obj"
	-@erase "$(INTDIR)\backgrnd.obj"
	-@erase "$(INTDIR)\code_page.obj"
	-@erase "$(INTDIR)\color.obj"
	-@erase "$(INTDIR)\colormap.obj"
	-@erase "$(INTDIR)\compdata.obj"
	-@erase "$(INTDIR)\compress.obj"
	-@erase "$(INTDIR)\contour_set.obj"
	-@erase "$(INTDIR)\dashpat.obj"
	-@erase "$(INTDIR)\drawable.obj"
	-@erase "$(INTDIR)\dwfhead.obj"
	-@erase "$(INTDIR)\dwginfo.obj"
	-@erase "$(INTDIR)\ellipse.obj"
	-@erase "$(INTDIR)\embed.obj"
	-@erase "$(INTDIR)\endofdwf.obj"
	-@erase "$(INTDIR)\file.obj"
	-@erase "$(INTDIR)\fileops.obj"
	-@erase "$(INTDIR)\fill.obj"
	-@erase "$(INTDIR)\font.obj"
	-@erase "$(INTDIR)\font_options.obj"
	-@erase "$(INTDIR)\gouraud_pointset.obj"
	-@erase "$(INTDIR)\gouraud_polyline.obj"
	-@erase "$(INTDIR)\gouraud_polytri.obj"
	-@erase "$(INTDIR)\heuristics.obj"
	-@erase "$(INTDIR)\image.obj"
	-@erase "$(INTDIR)\informational.obj"
	-@erase "$(INTDIR)\layer.obj"
	-@erase "$(INTDIR)\layer_list.obj"
	-@erase "$(INTDIR)\linepat.obj"
	-@erase "$(INTDIR)\linestyle.obj"
	-@erase "$(INTDIR)\lweight.obj"
	-@erase "$(INTDIR)\lz77comp.obj"
	-@erase "$(INTDIR)\lz77decp.obj"
	-@erase "$(INTDIR)\marksize.obj"
	-@erase "$(INTDIR)\marksymb.obj"
	-@erase "$(INTDIR)\matrix.obj"
	-@erase "$(INTDIR)\named_view.obj"
	-@erase "$(INTDIR)\named_view_list.obj"
	-@erase "$(INTDIR)\object.obj"
	-@erase "$(INTDIR)\opcode.obj"
	-@erase "$(INTDIR)\origin.obj"
	-@erase "$(INTDIR)\pch.obj"
	-@erase "$(INTDIR)\plotinfo.obj"
	-@erase "$(INTDIR)\pointset.obj"
	-@erase "$(INTDIR)\polygon.obj"
	-@erase "$(INTDIR)\polyline.obj"
	-@erase "$(INTDIR)\polymark.obj"
	-@erase "$(INTDIR)\polytri.obj"
	-@erase "$(INTDIR)\rendition.obj"
	-@erase "$(INTDIR)\rendopts.obj"
	-@erase "$(INTDIR)\settings.obj"
	-@erase "$(INTDIR)\string.obj"
	-@erase "$(INTDIR)\text.obj"
	-@erase "$(INTDIR)\text_options.obj"
	-@erase "$(INTDIR)\timestamp.obj"
	-@erase "$(INTDIR)\units.obj"
	-@erase "$(INTDIR)\unknown.obj"
	-@erase "$(INTDIR)\url.obj"
	-@erase "$(INTDIR)\url_list.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(INTDIR)\view.obj"
	-@erase "$(INTDIR)\viewport.obj"
	-@erase "$(INTDIR)\viewport_options.obj"
	-@erase "$(INTDIR)\visible.obj"
	-@erase "$(INTDIR)\whiptk.res"
	-@erase "$(INTDIR)\whiptkw.pch"
	-@erase "$(OUTDIR)\whiptkw.exp"
	-@erase "$(OUTDIR)\whiptkw.lib"
	-@erase "$(OUTDIR)\whiptkw.pdb"
	-@erase "..\..\..\..\..\Bin\i386\Profile\whiptkw.dll"
	-@erase "..\..\..\..\..\Bin\i386\Profile\whiptkw.ilk"
	-@erase "notafile.txt"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

F90=fl32.exe
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /Zi /Od /I "..\\" /D "WIN32" /D "_DEBUG" /D\
 "_WINDOWS" /Fp"$(INTDIR)\whiptkw.pch" /Yu"whiptk/pch.h" /Fo"$(INTDIR)\\"\
 /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Profile/
CPP_SBRS=.
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o NUL /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\whiptk.res" /i "..\\" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\whiptkw.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=user32.lib /nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)\whiptkw.pdb" /debug /machine:I386\
 /out:"..\..\..\..\..\Bin\i386\Profile\whiptkw.dll"\
 /implib:"$(OUTDIR)\whiptkw.lib" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\assert.obj" \
	"$(INTDIR)\attribute.obj" \
	"$(INTDIR)\backgrnd.obj" \
	"$(INTDIR)\code_page.obj" \
	"$(INTDIR)\color.obj" \
	"$(INTDIR)\colormap.obj" \
	"$(INTDIR)\compdata.obj" \
	"$(INTDIR)\compress.obj" \
	"$(INTDIR)\contour_set.obj" \
	"$(INTDIR)\dashpat.obj" \
	"$(INTDIR)\drawable.obj" \
	"$(INTDIR)\dwfhead.obj" \
	"$(INTDIR)\dwginfo.obj" \
	"$(INTDIR)\ellipse.obj" \
	"$(INTDIR)\embed.obj" \
	"$(INTDIR)\endofdwf.obj" \
	"$(INTDIR)\file.obj" \
	"$(INTDIR)\fileops.obj" \
	"$(INTDIR)\fill.obj" \
	"$(INTDIR)\font.obj" \
	"$(INTDIR)\font_options.obj" \
	"$(INTDIR)\gouraud_pointset.obj" \
	"$(INTDIR)\gouraud_polyline.obj" \
	"$(INTDIR)\gouraud_polytri.obj" \
	"$(INTDIR)\heuristics.obj" \
	"$(INTDIR)\image.obj" \
	"$(INTDIR)\informational.obj" \
	"$(INTDIR)\layer.obj" \
	"$(INTDIR)\layer_list.obj" \
	"$(INTDIR)\linepat.obj" \
	"$(INTDIR)\linestyle.obj" \
	"$(INTDIR)\lweight.obj" \
	"$(INTDIR)\lz77comp.obj" \
	"$(INTDIR)\lz77decp.obj" \
	"$(INTDIR)\marksize.obj" \
	"$(INTDIR)\marksymb.obj" \
	"$(INTDIR)\matrix.obj" \
	"$(INTDIR)\named_view.obj" \
	"$(INTDIR)\named_view_list.obj" \
	"$(INTDIR)\object.obj" \
	"$(INTDIR)\opcode.obj" \
	"$(INTDIR)\origin.obj" \
	"$(INTDIR)\pch.obj" \
	"$(INTDIR)\plotinfo.obj" \
	"$(INTDIR)\pointset.obj" \
	"$(INTDIR)\polygon.obj" \
	"$(INTDIR)\polyline.obj" \
	"$(INTDIR)\polymark.obj" \
	"$(INTDIR)\polytri.obj" \
	"$(INTDIR)\rendition.obj" \
	"$(INTDIR)\rendopts.obj" \
	"$(INTDIR)\settings.obj" \
	"$(INTDIR)\string.obj" \
	"$(INTDIR)\text.obj" \
	"$(INTDIR)\text_options.obj" \
	"$(INTDIR)\timestamp.obj" \
	"$(INTDIR)\units.obj" \
	"$(INTDIR)\unknown.obj" \
	"$(INTDIR)\url.obj" \
	"$(INTDIR)\url_list.obj" \
	"$(INTDIR)\view.obj" \
	"$(INTDIR)\viewport.obj" \
	"$(INTDIR)\viewport_options.obj" \
	"$(INTDIR)\visible.obj" \
	"$(INTDIR)\whiptk.res"

"..\..\..\..\..\Bin\i386\Profile\whiptkw.dll" : "$(OUTDIR)" $(DEF_FILE)\
 $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(CFG)" == "whiptkw - Win32 i386 Debug" || "$(CFG)" ==\
 "whiptkw - Win32 i386 Release" || "$(CFG)" == "whiptkw - Win32 i386 Profile"
SOURCE=.\assert.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_ASSER=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\assert.obj"	"$(INTDIR)\assert.sbr" : $(SOURCE) $(DEP_CPP_ASSER)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_ASSER=\
	".\wversion.h"\
	
NODEP_CPP_ASSER=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\assert.obj" : $(SOURCE) $(DEP_CPP_ASSER) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_ASSER=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\assert.obj" : $(SOURCE) $(DEP_CPP_ASSER) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\attribute.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_ATTRI=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\attribute.obj"	"$(INTDIR)\attribute.sbr" : $(SOURCE)\
 $(DEP_CPP_ATTRI) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_ATTRI=\
	".\wversion.h"\
	
NODEP_CPP_ATTRI=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\attribute.obj" : $(SOURCE) $(DEP_CPP_ATTRI) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_ATTRI=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\attribute.obj" : $(SOURCE) $(DEP_CPP_ATTRI) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\backgrnd.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_BACKG=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\backgrnd.obj"	"$(INTDIR)\backgrnd.sbr" : $(SOURCE) $(DEP_CPP_BACKG)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_BACKG=\
	".\wversion.h"\
	
NODEP_CPP_BACKG=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\backgrnd.obj" : $(SOURCE) $(DEP_CPP_BACKG) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_BACKG=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\backgrnd.obj" : $(SOURCE) $(DEP_CPP_BACKG) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\code_page.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_CODE_=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\code_page.obj"	"$(INTDIR)\code_page.sbr" : $(SOURCE)\
 $(DEP_CPP_CODE_) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_CODE_=\
	".\wversion.h"\
	
NODEP_CPP_CODE_=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\code_page.obj" : $(SOURCE) $(DEP_CPP_CODE_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_CODE_=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\code_page.obj" : $(SOURCE) $(DEP_CPP_CODE_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\color.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_COLOR=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\color.obj"	"$(INTDIR)\color.sbr" : $(SOURCE) $(DEP_CPP_COLOR)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_COLOR=\
	".\wversion.h"\
	
NODEP_CPP_COLOR=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\color.obj" : $(SOURCE) $(DEP_CPP_COLOR) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_COLOR=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\color.obj" : $(SOURCE) $(DEP_CPP_COLOR) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\colormap.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_COLORM=\
	".\palette.h"\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\colormap.obj"	"$(INTDIR)\colormap.sbr" : $(SOURCE) $(DEP_CPP_COLORM)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_COLORM=\
	".\palette.h"\
	".\wversion.h"\
	
NODEP_CPP_COLORM=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\colormap.obj" : $(SOURCE) $(DEP_CPP_COLORM) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_COLORM=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\palette.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\colormap.obj" : $(SOURCE) $(DEP_CPP_COLORM) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\compdata.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_COMPD=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\compdata.obj"	"$(INTDIR)\compdata.sbr" : $(SOURCE) $(DEP_CPP_COMPD)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_COMPD=\
	".\wversion.h"\
	
NODEP_CPP_COMPD=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\compdata.obj" : $(SOURCE) $(DEP_CPP_COMPD) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_COMPD=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\compdata.obj" : $(SOURCE) $(DEP_CPP_COMPD) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\compress.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_COMPR=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\compress.obj"	"$(INTDIR)\compress.sbr" : $(SOURCE) $(DEP_CPP_COMPR)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_COMPR=\
	".\wversion.h"\
	
NODEP_CPP_COMPR=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\compress.obj" : $(SOURCE) $(DEP_CPP_COMPR) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_COMPR=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\compress.obj" : $(SOURCE) $(DEP_CPP_COMPR) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\contour_set.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_CONTO=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\contour_set.obj"	"$(INTDIR)\contour_set.sbr" : $(SOURCE)\
 $(DEP_CPP_CONTO) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_CONTO=\
	".\wversion.h"\
	
NODEP_CPP_CONTO=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\contour_set.obj" : $(SOURCE) $(DEP_CPP_CONTO) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_CONTO=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\contour_set.obj" : $(SOURCE) $(DEP_CPP_CONTO) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\dashpat.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_DASHP=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\dashpat.obj"	"$(INTDIR)\dashpat.sbr" : $(SOURCE) $(DEP_CPP_DASHP)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_DASHP=\
	".\wversion.h"\
	
NODEP_CPP_DASHP=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\dashpat.obj" : $(SOURCE) $(DEP_CPP_DASHP) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_DASHP=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\dashpat.obj" : $(SOURCE) $(DEP_CPP_DASHP) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\drawable.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_DRAWA=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\drawable.obj"	"$(INTDIR)\drawable.sbr" : $(SOURCE) $(DEP_CPP_DRAWA)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_DRAWA=\
	".\wversion.h"\
	
NODEP_CPP_DRAWA=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\drawable.obj" : $(SOURCE) $(DEP_CPP_DRAWA) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_DRAWA=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\drawable.obj" : $(SOURCE) $(DEP_CPP_DRAWA) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\dwfhead.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_DWFHE=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\dwfhead.obj"	"$(INTDIR)\dwfhead.sbr" : $(SOURCE) $(DEP_CPP_DWFHE)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_DWFHE=\
	".\wversion.h"\
	
NODEP_CPP_DWFHE=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\dwfhead.obj" : $(SOURCE) $(DEP_CPP_DWFHE) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_DWFHE=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\dwfhead.obj" : $(SOURCE) $(DEP_CPP_DWFHE) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\dwginfo.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_DWGIN=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\dwginfo.obj"	"$(INTDIR)\dwginfo.sbr" : $(SOURCE) $(DEP_CPP_DWGIN)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_DWGIN=\
	".\wversion.h"\
	
NODEP_CPP_DWGIN=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\dwginfo.obj" : $(SOURCE) $(DEP_CPP_DWGIN) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_DWGIN=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\dwginfo.obj" : $(SOURCE) $(DEP_CPP_DWGIN) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\ellipse.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_ELLIP=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\ellipse.obj"	"$(INTDIR)\ellipse.sbr" : $(SOURCE) $(DEP_CPP_ELLIP)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_ELLIP=\
	".\wversion.h"\
	
NODEP_CPP_ELLIP=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\ellipse.obj" : $(SOURCE) $(DEP_CPP_ELLIP) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_ELLIP=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\ellipse.obj" : $(SOURCE) $(DEP_CPP_ELLIP) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\embed.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_EMBED=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\embed.obj"	"$(INTDIR)\embed.sbr" : $(SOURCE) $(DEP_CPP_EMBED)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_EMBED=\
	".\wversion.h"\
	
NODEP_CPP_EMBED=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\embed.obj" : $(SOURCE) $(DEP_CPP_EMBED) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_EMBED=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\embed.obj" : $(SOURCE) $(DEP_CPP_EMBED) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\endofdwf.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_ENDOF=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\endofdwf.obj"	"$(INTDIR)\endofdwf.sbr" : $(SOURCE) $(DEP_CPP_ENDOF)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_ENDOF=\
	".\wversion.h"\
	
NODEP_CPP_ENDOF=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\endofdwf.obj" : $(SOURCE) $(DEP_CPP_ENDOF) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_ENDOF=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\endofdwf.obj" : $(SOURCE) $(DEP_CPP_ENDOF) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\file.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_FILE_=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\file.obj"	"$(INTDIR)\file.sbr" : $(SOURCE) $(DEP_CPP_FILE_)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_FILE_=\
	".\wversion.h"\
	
NODEP_CPP_FILE_=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\file.obj" : $(SOURCE) $(DEP_CPP_FILE_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_FILE_=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\file.obj" : $(SOURCE) $(DEP_CPP_FILE_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\fileops.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_FILEO=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\fileops.obj"	"$(INTDIR)\fileops.sbr" : $(SOURCE) $(DEP_CPP_FILEO)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_FILEO=\
	".\wversion.h"\
	
NODEP_CPP_FILEO=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\fileops.obj" : $(SOURCE) $(DEP_CPP_FILEO) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_FILEO=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\fileops.obj" : $(SOURCE) $(DEP_CPP_FILEO) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\fill.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_FILL_=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\fill.obj"	"$(INTDIR)\fill.sbr" : $(SOURCE) $(DEP_CPP_FILL_)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_FILL_=\
	".\wversion.h"\
	
NODEP_CPP_FILL_=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\fill.obj" : $(SOURCE) $(DEP_CPP_FILL_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_FILL_=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\fill.obj" : $(SOURCE) $(DEP_CPP_FILL_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\font.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_FONT_=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\font.obj"	"$(INTDIR)\font.sbr" : $(SOURCE) $(DEP_CPP_FONT_)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_FONT_=\
	".\wversion.h"\
	
NODEP_CPP_FONT_=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\font.obj" : $(SOURCE) $(DEP_CPP_FONT_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_FONT_=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\font.obj" : $(SOURCE) $(DEP_CPP_FONT_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\font_options.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_FONT_O=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\font_options.obj"	"$(INTDIR)\font_options.sbr" : $(SOURCE)\
 $(DEP_CPP_FONT_O) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_FONT_O=\
	".\wversion.h"\
	
NODEP_CPP_FONT_O=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\font_options.obj" : $(SOURCE) $(DEP_CPP_FONT_O) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_FONT_O=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\font_options.obj" : $(SOURCE) $(DEP_CPP_FONT_O) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\gouraud_pointset.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_GOURA=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\gouraud_pointset.obj"	"$(INTDIR)\gouraud_pointset.sbr" : $(SOURCE)\
 $(DEP_CPP_GOURA) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_GOURA=\
	".\wversion.h"\
	
NODEP_CPP_GOURA=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\gouraud_pointset.obj" : $(SOURCE) $(DEP_CPP_GOURA) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_GOURA=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\gouraud_pointset.obj" : $(SOURCE) $(DEP_CPP_GOURA) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\gouraud_polyline.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_GOURAU=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\gouraud_polyline.obj"	"$(INTDIR)\gouraud_polyline.sbr" : $(SOURCE)\
 $(DEP_CPP_GOURAU) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_GOURAU=\
	".\wversion.h"\
	
NODEP_CPP_GOURAU=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\gouraud_polyline.obj" : $(SOURCE) $(DEP_CPP_GOURAU) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_GOURAU=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\gouraud_polyline.obj" : $(SOURCE) $(DEP_CPP_GOURAU) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\gouraud_polytri.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_GOURAUD=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\gouraud_polytri.obj"	"$(INTDIR)\gouraud_polytri.sbr" : $(SOURCE)\
 $(DEP_CPP_GOURAUD) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_GOURAUD=\
	".\wversion.h"\
	
NODEP_CPP_GOURAUD=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\gouraud_polytri.obj" : $(SOURCE) $(DEP_CPP_GOURAUD) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_GOURAUD=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\gouraud_polytri.obj" : $(SOURCE) $(DEP_CPP_GOURAUD) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\heuristics.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_HEURI=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\heuristics.obj"	"$(INTDIR)\heuristics.sbr" : $(SOURCE)\
 $(DEP_CPP_HEURI) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_HEURI=\
	".\wversion.h"\
	
NODEP_CPP_HEURI=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\heuristics.obj" : $(SOURCE) $(DEP_CPP_HEURI) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_HEURI=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\heuristics.obj" : $(SOURCE) $(DEP_CPP_HEURI) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\image.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_IMAGE=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\image.obj"	"$(INTDIR)\image.sbr" : $(SOURCE) $(DEP_CPP_IMAGE)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_IMAGE=\
	".\wversion.h"\
	
NODEP_CPP_IMAGE=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\image.obj" : $(SOURCE) $(DEP_CPP_IMAGE) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_IMAGE=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\image.obj" : $(SOURCE) $(DEP_CPP_IMAGE) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\informational.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_INFOR=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\informational.obj"	"$(INTDIR)\informational.sbr" : $(SOURCE)\
 $(DEP_CPP_INFOR) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_INFOR=\
	".\wversion.h"\
	
NODEP_CPP_INFOR=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\informational.obj" : $(SOURCE) $(DEP_CPP_INFOR) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_INFOR=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\informational.obj" : $(SOURCE) $(DEP_CPP_INFOR) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\layer.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_LAYER=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\layer.obj"	"$(INTDIR)\layer.sbr" : $(SOURCE) $(DEP_CPP_LAYER)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_LAYER=\
	".\wversion.h"\
	
NODEP_CPP_LAYER=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\layer.obj" : $(SOURCE) $(DEP_CPP_LAYER) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_LAYER=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\layer.obj" : $(SOURCE) $(DEP_CPP_LAYER) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\layer_list.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_LAYER_=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\layer_list.obj"	"$(INTDIR)\layer_list.sbr" : $(SOURCE)\
 $(DEP_CPP_LAYER_) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_LAYER_=\
	".\wversion.h"\
	
NODEP_CPP_LAYER_=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\layer_list.obj" : $(SOURCE) $(DEP_CPP_LAYER_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_LAYER_=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\layer_list.obj" : $(SOURCE) $(DEP_CPP_LAYER_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\linepat.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_LINEP=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\linepat.obj"	"$(INTDIR)\linepat.sbr" : $(SOURCE) $(DEP_CPP_LINEP)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_LINEP=\
	".\wversion.h"\
	
NODEP_CPP_LINEP=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\linepat.obj" : $(SOURCE) $(DEP_CPP_LINEP) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_LINEP=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\linepat.obj" : $(SOURCE) $(DEP_CPP_LINEP) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\linestyle.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_LINES=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\linestyle.obj"	"$(INTDIR)\linestyle.sbr" : $(SOURCE)\
 $(DEP_CPP_LINES) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_LINES=\
	".\wversion.h"\
	
NODEP_CPP_LINES=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\linestyle.obj" : $(SOURCE) $(DEP_CPP_LINES) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_LINES=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\linestyle.obj" : $(SOURCE) $(DEP_CPP_LINES) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\lweight.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_LWEIG=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\lweight.obj"	"$(INTDIR)\lweight.sbr" : $(SOURCE) $(DEP_CPP_LWEIG)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_LWEIG=\
	".\wversion.h"\
	
NODEP_CPP_LWEIG=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\lweight.obj" : $(SOURCE) $(DEP_CPP_LWEIG) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_LWEIG=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\lweight.obj" : $(SOURCE) $(DEP_CPP_LWEIG) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\lz77comp.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_LZ77C=\
	".\preload.h"\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\lz77comp.obj"	"$(INTDIR)\lz77comp.sbr" : $(SOURCE) $(DEP_CPP_LZ77C)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_LZ77C=\
	".\preload.h"\
	".\wversion.h"\
	
NODEP_CPP_LZ77C=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\lz77comp.obj" : $(SOURCE) $(DEP_CPP_LZ77C) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_LZ77C=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\preload.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\lz77comp.obj" : $(SOURCE) $(DEP_CPP_LZ77C) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\lz77decp.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_LZ77D=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\lz77decp.obj"	"$(INTDIR)\lz77decp.sbr" : $(SOURCE) $(DEP_CPP_LZ77D)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_LZ77D=\
	".\wversion.h"\
	
NODEP_CPP_LZ77D=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\lz77decp.obj" : $(SOURCE) $(DEP_CPP_LZ77D) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_LZ77D=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\lz77decp.obj" : $(SOURCE) $(DEP_CPP_LZ77D) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\marksize.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_MARKS=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\marksize.obj"	"$(INTDIR)\marksize.sbr" : $(SOURCE) $(DEP_CPP_MARKS)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_MARKS=\
	".\wversion.h"\
	
NODEP_CPP_MARKS=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\marksize.obj" : $(SOURCE) $(DEP_CPP_MARKS) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_MARKS=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\marksize.obj" : $(SOURCE) $(DEP_CPP_MARKS) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\marksymb.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_MARKSY=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\marksymb.obj"	"$(INTDIR)\marksymb.sbr" : $(SOURCE) $(DEP_CPP_MARKSY)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_MARKSY=\
	".\wversion.h"\
	
NODEP_CPP_MARKSY=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\marksymb.obj" : $(SOURCE) $(DEP_CPP_MARKSY) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_MARKSY=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\marksymb.obj" : $(SOURCE) $(DEP_CPP_MARKSY) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\matrix.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_MATRI=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\matrix.obj"	"$(INTDIR)\matrix.sbr" : $(SOURCE) $(DEP_CPP_MATRI)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_MATRI=\
	".\wversion.h"\
	
NODEP_CPP_MATRI=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\matrix.obj" : $(SOURCE) $(DEP_CPP_MATRI) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_MATRI=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\matrix.obj" : $(SOURCE) $(DEP_CPP_MATRI) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\named_view.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_NAMED=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\named_view.obj"	"$(INTDIR)\named_view.sbr" : $(SOURCE)\
 $(DEP_CPP_NAMED) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_NAMED=\
	".\wversion.h"\
	
NODEP_CPP_NAMED=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\named_view.obj" : $(SOURCE) $(DEP_CPP_NAMED) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_NAMED=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\named_view.obj" : $(SOURCE) $(DEP_CPP_NAMED) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\named_view_list.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_NAMED_=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\named_view_list.obj"	"$(INTDIR)\named_view_list.sbr" : $(SOURCE)\
 $(DEP_CPP_NAMED_) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_NAMED_=\
	".\wversion.h"\
	
NODEP_CPP_NAMED_=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\named_view_list.obj" : $(SOURCE) $(DEP_CPP_NAMED_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_NAMED_=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\named_view_list.obj" : $(SOURCE) $(DEP_CPP_NAMED_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\object.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_OBJEC=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\object.obj"	"$(INTDIR)\object.sbr" : $(SOURCE) $(DEP_CPP_OBJEC)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_OBJEC=\
	".\wversion.h"\
	
NODEP_CPP_OBJEC=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\object.obj" : $(SOURCE) $(DEP_CPP_OBJEC) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_OBJEC=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\object.obj" : $(SOURCE) $(DEP_CPP_OBJEC) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\opcode.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_OPCOD=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\opcode.obj"	"$(INTDIR)\opcode.sbr" : $(SOURCE) $(DEP_CPP_OPCOD)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_OPCOD=\
	".\wversion.h"\
	
NODEP_CPP_OPCOD=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\opcode.obj" : $(SOURCE) $(DEP_CPP_OPCOD) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_OPCOD=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\opcode.obj" : $(SOURCE) $(DEP_CPP_OPCOD) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\origin.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_ORIGI=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\origin.obj"	"$(INTDIR)\origin.sbr" : $(SOURCE) $(DEP_CPP_ORIGI)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_ORIGI=\
	".\wversion.h"\
	
NODEP_CPP_ORIGI=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\origin.obj" : $(SOURCE) $(DEP_CPP_ORIGI) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_ORIGI=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\origin.obj" : $(SOURCE) $(DEP_CPP_ORIGI) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\pch.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_PCH_C=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	
CPP_SWITCHES=/nologo /MTd /W3 /Gm /GX /Zi /Od /I "..\\" /D "WIN32" /D "_DEBUG"\
 /D "_WINDOWS" /Fr"$(INTDIR)\\" /Fp"$(INTDIR)\whiptkw.pch" /Yc"whiptk/pch.h"\
 /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\pch.obj"	"$(INTDIR)\pch.sbr"	"$(INTDIR)\whiptkw.pch" : $(SOURCE)\
 $(DEP_CPP_PCH_C) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_PCH_C=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	
NODEP_CPP_PCH_C=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	
CPP_SWITCHES=/nologo /MT /W3 /GX /O2 /I "..\\" /D "WIN32" /D "NDEBUG" /D\
 "_WINDOWS" /Fp"$(INTDIR)\whiptkw.pch" /Yc"whiptk/pch.h" /Fo"$(INTDIR)\\"\
 /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\pch.obj"	"$(INTDIR)\whiptkw.pch" : $(SOURCE) $(DEP_CPP_PCH_C)\
 "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_PCH_C=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	
CPP_SWITCHES=/nologo /MTd /W3 /Gm /GX /Zi /Od /I "..\\" /D "WIN32" /D "_DEBUG"\
 /D "_WINDOWS" /Fp"$(INTDIR)\whiptkw.pch" /Yc"whiptk/pch.h" /Fo"$(INTDIR)\\"\
 /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\pch.obj"	"$(INTDIR)\whiptkw.pch" : $(SOURCE) $(DEP_CPP_PCH_C)\
 "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\plotinfo.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_PLOTI=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\plotinfo.obj"	"$(INTDIR)\plotinfo.sbr" : $(SOURCE) $(DEP_CPP_PLOTI)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_PLOTI=\
	".\wversion.h"\
	
NODEP_CPP_PLOTI=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\plotinfo.obj" : $(SOURCE) $(DEP_CPP_PLOTI) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_PLOTI=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\plotinfo.obj" : $(SOURCE) $(DEP_CPP_PLOTI) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\pointset.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_POINT=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\pointset.obj"	"$(INTDIR)\pointset.sbr" : $(SOURCE) $(DEP_CPP_POINT)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_POINT=\
	".\wversion.h"\
	
NODEP_CPP_POINT=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\pointset.obj" : $(SOURCE) $(DEP_CPP_POINT) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_POINT=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\pointset.obj" : $(SOURCE) $(DEP_CPP_POINT) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\polygon.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_POLYG=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\polygon.obj"	"$(INTDIR)\polygon.sbr" : $(SOURCE) $(DEP_CPP_POLYG)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_POLYG=\
	".\wversion.h"\
	
NODEP_CPP_POLYG=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\polygon.obj" : $(SOURCE) $(DEP_CPP_POLYG) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_POLYG=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\polygon.obj" : $(SOURCE) $(DEP_CPP_POLYG) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\polyline.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_POLYL=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\polyline.obj"	"$(INTDIR)\polyline.sbr" : $(SOURCE) $(DEP_CPP_POLYL)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_POLYL=\
	".\wversion.h"\
	
NODEP_CPP_POLYL=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\polyline.obj" : $(SOURCE) $(DEP_CPP_POLYL) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_POLYL=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\polyline.obj" : $(SOURCE) $(DEP_CPP_POLYL) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\polymark.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_POLYM=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\polymark.obj"	"$(INTDIR)\polymark.sbr" : $(SOURCE) $(DEP_CPP_POLYM)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_POLYM=\
	".\wversion.h"\
	
NODEP_CPP_POLYM=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\polymark.obj" : $(SOURCE) $(DEP_CPP_POLYM) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_POLYM=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\polymark.obj" : $(SOURCE) $(DEP_CPP_POLYM) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\polytri.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_POLYT=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\polytri.obj"	"$(INTDIR)\polytri.sbr" : $(SOURCE) $(DEP_CPP_POLYT)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_POLYT=\
	".\wversion.h"\
	
NODEP_CPP_POLYT=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\polytri.obj" : $(SOURCE) $(DEP_CPP_POLYT) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_POLYT=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\polytri.obj" : $(SOURCE) $(DEP_CPP_POLYT) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\rendition.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_RENDI=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\rendition.obj"	"$(INTDIR)\rendition.sbr" : $(SOURCE)\
 $(DEP_CPP_RENDI) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_RENDI=\
	".\wversion.h"\
	
NODEP_CPP_RENDI=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\rendition.obj" : $(SOURCE) $(DEP_CPP_RENDI) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_RENDI=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\rendition.obj" : $(SOURCE) $(DEP_CPP_RENDI) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\rendopts.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_RENDO=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\rendopts.obj"	"$(INTDIR)\rendopts.sbr" : $(SOURCE) $(DEP_CPP_RENDO)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_RENDO=\
	".\wversion.h"\
	
NODEP_CPP_RENDO=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\rendopts.obj" : $(SOURCE) $(DEP_CPP_RENDO) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_RENDO=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\rendopts.obj" : $(SOURCE) $(DEP_CPP_RENDO) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\settings.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_SETTI=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\settings.obj"	"$(INTDIR)\settings.sbr" : $(SOURCE) $(DEP_CPP_SETTI)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_SETTI=\
	".\wversion.h"\
	
NODEP_CPP_SETTI=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\settings.obj" : $(SOURCE) $(DEP_CPP_SETTI) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_SETTI=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\settings.obj" : $(SOURCE) $(DEP_CPP_SETTI) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\string.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_STRIN=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\string.obj"	"$(INTDIR)\string.sbr" : $(SOURCE) $(DEP_CPP_STRIN)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_STRIN=\
	".\wversion.h"\
	
NODEP_CPP_STRIN=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\string.obj" : $(SOURCE) $(DEP_CPP_STRIN) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_STRIN=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\string.obj" : $(SOURCE) $(DEP_CPP_STRIN) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\text.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_TEXT_=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\text.obj"	"$(INTDIR)\text.sbr" : $(SOURCE) $(DEP_CPP_TEXT_)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_TEXT_=\
	".\wversion.h"\
	
NODEP_CPP_TEXT_=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\text.obj" : $(SOURCE) $(DEP_CPP_TEXT_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_TEXT_=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\text.obj" : $(SOURCE) $(DEP_CPP_TEXT_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\text_options.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_TEXT_O=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\text_options.obj"	"$(INTDIR)\text_options.sbr" : $(SOURCE)\
 $(DEP_CPP_TEXT_O) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_TEXT_O=\
	".\wversion.h"\
	
NODEP_CPP_TEXT_O=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\text_options.obj" : $(SOURCE) $(DEP_CPP_TEXT_O) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_TEXT_O=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\text_options.obj" : $(SOURCE) $(DEP_CPP_TEXT_O) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\timestamp.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_TIMES=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\timestamp.obj"	"$(INTDIR)\timestamp.sbr" : $(SOURCE)\
 $(DEP_CPP_TIMES) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_TIMES=\
	".\wversion.h"\
	
NODEP_CPP_TIMES=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\timestamp.obj" : $(SOURCE) $(DEP_CPP_TIMES) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_TIMES=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\timestamp.obj" : $(SOURCE) $(DEP_CPP_TIMES) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\units.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_UNITS=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\units.obj"	"$(INTDIR)\units.sbr" : $(SOURCE) $(DEP_CPP_UNITS)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_UNITS=\
	".\wversion.h"\
	
NODEP_CPP_UNITS=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\units.obj" : $(SOURCE) $(DEP_CPP_UNITS) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_UNITS=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\units.obj" : $(SOURCE) $(DEP_CPP_UNITS) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\unknown.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_UNKNO=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\unknown.obj"	"$(INTDIR)\unknown.sbr" : $(SOURCE) $(DEP_CPP_UNKNO)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_UNKNO=\
	".\wversion.h"\
	
NODEP_CPP_UNKNO=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\unknown.obj" : $(SOURCE) $(DEP_CPP_UNKNO) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_UNKNO=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\unknown.obj" : $(SOURCE) $(DEP_CPP_UNKNO) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\url.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_URL_C=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\url.obj"	"$(INTDIR)\url.sbr" : $(SOURCE) $(DEP_CPP_URL_C)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_URL_C=\
	".\wversion.h"\
	
NODEP_CPP_URL_C=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\url.obj" : $(SOURCE) $(DEP_CPP_URL_C) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_URL_C=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\url.obj" : $(SOURCE) $(DEP_CPP_URL_C) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\url_list.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_URL_L=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\url_list.obj"	"$(INTDIR)\url_list.sbr" : $(SOURCE) $(DEP_CPP_URL_L)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_URL_L=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\url_list.obj" : $(SOURCE) $(DEP_CPP_URL_L) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_URL_L=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\url_list.obj" : $(SOURCE) $(DEP_CPP_URL_L) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\view.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_VIEW_=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\view.obj"	"$(INTDIR)\view.sbr" : $(SOURCE) $(DEP_CPP_VIEW_)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_VIEW_=\
	".\wversion.h"\
	
NODEP_CPP_VIEW_=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\view.obj" : $(SOURCE) $(DEP_CPP_VIEW_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_VIEW_=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\view.obj" : $(SOURCE) $(DEP_CPP_VIEW_) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\viewport.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_VIEWP=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\viewport.obj"	"$(INTDIR)\viewport.sbr" : $(SOURCE) $(DEP_CPP_VIEWP)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_VIEWP=\
	".\wversion.h"\
	
NODEP_CPP_VIEWP=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\viewport.obj" : $(SOURCE) $(DEP_CPP_VIEWP) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_VIEWP=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\viewport.obj" : $(SOURCE) $(DEP_CPP_VIEWP) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\viewport_options.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_VIEWPO=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\viewport_options.obj"	"$(INTDIR)\viewport_options.sbr" : $(SOURCE)\
 $(DEP_CPP_VIEWPO) "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_VIEWPO=\
	".\wversion.h"\
	
NODEP_CPP_VIEWPO=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\viewport_options.obj" : $(SOURCE) $(DEP_CPP_VIEWPO) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_VIEWPO=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\viewport_options.obj" : $(SOURCE) $(DEP_CPP_VIEWPO) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\visible.cpp

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

DEP_CPP_VISIB=\
	".\url_list.h"\
	".\wversion.h"\
	

"$(INTDIR)\visible.obj"	"$(INTDIR)\visible.sbr" : $(SOURCE) $(DEP_CPP_VISIB)\
 "$(INTDIR)" "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

DEP_CPP_VISIB=\
	".\wversion.h"\
	
NODEP_CPP_VISIB=\
	".\hash_map.h"\
	".\url_hash_map.h"\
	

"$(INTDIR)\visible.obj" : $(SOURCE) $(DEP_CPP_VISIB) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

DEP_CPP_VISIB=\
	".\allclass.h"\
	".\attribute.h"\
	".\backgrnd.h"\
	".\code_page.h"\
	".\color.h"\
	".\colormap.h"\
	".\compdata.h"\
	".\contour_set.h"\
	".\dashpat.h"\
	".\dpat_list.h"\
	".\drawable.h"\
	".\dwfhead.h"\
	".\dwginfo.h"\
	".\ellipse.h"\
	".\embed.h"\
	".\endian.h"\
	".\endofdwf.h"\
	".\fifo.h"\
	".\file.h"\
	".\fill.h"\
	".\font.h"\
	".\font_options.h"\
	".\gouraud_pointset.h"\
	".\gouraud_polyline.h"\
	".\gouraud_polytri.h"\
	".\heuristics.h"\
	".\image.h"\
	".\informational.h"\
	".\layer.h"\
	".\layer_list.h"\
	".\linepat.h"\
	".\linestyle.h"\
	".\list.h"\
	".\lweight.h"\
	".\lz77comp.h"\
	".\lz77decp.h"\
	".\lzdefs.h"\
	".\marksize.h"\
	".\marksymb.h"\
	".\matrix.h"\
	".\named_view.h"\
	".\named_view_list.h"\
	".\node.h"\
	".\object.h"\
	".\opcode.h"\
	".\origin.h"\
	".\pch.h"\
	".\plotinfo.h"\
	".\pointset.h"\
	".\polygon.h"\
	".\polyline.h"\
	".\polymark.h"\
	".\polytri.h"\
	".\rendition.h"\
	".\rendopts.h"\
	".\settings.h"\
	".\string.h"\
	".\text.h"\
	".\text_options.h"\
	".\timestamp.h"\
	".\units.h"\
	".\unknown.h"\
	".\url.h"\
	".\url_list.h"\
	".\view.h"\
	".\viewport.h"\
	".\viewport_options.h"\
	".\visible.h"\
	".\whipcore.h"\
	".\whiperrs.h"\
	".\wtstring.h"\
	".\wversion.h"\
	{$(INCLUDE)}"string.h"\
	

"$(INTDIR)\visible.obj" : $(SOURCE) $(DEP_CPP_VISIB) "$(INTDIR)"\
 "$(INTDIR)\whiptkw.pch"


!ENDIF 

SOURCE=.\whiptk.rc
DEP_RSC_WHIPT=\
	".\resource.h"\
	".\wversion.h"\
	

"$(INTDIR)\whiptk.res" : $(SOURCE) $(DEP_RSC_WHIPT) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=..\..\..\..\..\Scripts\fixmak.perl

!IF  "$(CFG)" == "whiptkw - Win32 i386 Debug"

WkspDir=.
InputPath=..\..\..\..\..\Scripts\fixmak.perl

"notafile.txt"	 : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	perl $(InputPath) $(WkspDir)\whiptkw.mak

!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Release"

WkspDir=.
InputPath=..\..\..\..\..\Scripts\fixmak.perl

"notafile.txt"	 : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	perl $(InputPath) $(WkspDir)\whiptkw.mak

!ELSEIF  "$(CFG)" == "whiptkw - Win32 i386 Profile"

WkspDir=.
InputPath=..\..\..\..\..\Scripts\fixmak.perl

"notafile.txt"	 : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	perl $(InputPath) $(WkspDir)\whiptkw.mak

!ENDIF 


!ENDIF 

