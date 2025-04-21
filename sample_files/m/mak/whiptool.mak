# Microsoft Developer Studio Generated NMAKE File, Based on whiptool.dsp
!IF "$(CFG)" == ""
CFG=whiptool - Win32 i386 Full Debug
!MESSAGE No configuration specified. Defaulting to whiptool - Win32 i386 Full Debug.
!ENDIF 

!IF "$(CFG)" != "whiptool - Win32 i386 Debug" && "$(CFG)" != "whiptool - Win32 i386 ProfACAP" && "$(CFG)" != "whiptool - Win32 i386 Release" && "$(CFG)" != "whiptool - Win32 i386 Profile" && "$(CFG)" != "whiptool - Win32 i386 Release With Symbols" && "$(CFG)" != "whiptool - Win32 i386 Full Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
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
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "whiptool - Win32 i386 Debug"

OUTDIR=.\bin\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\bin\Debug
# End Custom Macros

ALL : "$(OUTDIR)\whiptk7.dll"


CLEAN :
	-@erase "$(INTDIR)\assert.obj"
	-@erase "$(INTDIR)\attribute.obj"
	-@erase "$(INTDIR)\backgrnd.obj"
	-@erase "$(INTDIR)\code_page.obj"
	-@erase "$(INTDIR)\color.obj"
	-@erase "$(INTDIR)\colormap.obj"
	-@erase "$(INTDIR)\compdata.obj"
	-@erase "$(INTDIR)\contour_set.obj"
	-@erase "$(INTDIR)\dashpat.obj"
	-@erase "$(INTDIR)\drawable.obj"
	-@erase "$(INTDIR)\dwfhead.obj"
	-@erase "$(INTDIR)\dwginfo.obj"
	-@erase "$(INTDIR)\ellipse.obj"
	-@erase "$(INTDIR)\embed.obj"
	-@erase "$(INTDIR)\endofdwf.obj"
	-@erase "$(INTDIR)\file.obj"
	-@erase "$(INTDIR)\fill.obj"
	-@erase "$(INTDIR)\fillpat.obj"
	-@erase "$(INTDIR)\font.obj"
	-@erase "$(INTDIR)\font_options.obj"
	-@erase "$(INTDIR)\gouraud_pointset.obj"
	-@erase "$(INTDIR)\gouraud_polyline.obj"
	-@erase "$(INTDIR)\gouraud_polytri.obj"
	-@erase "$(INTDIR)\group_begin.obj"
	-@erase "$(INTDIR)\group_end.obj"
	-@erase "$(INTDIR)\heuristics.obj"
	-@erase "$(INTDIR)\image.obj"
	-@erase "$(INTDIR)\informational.obj"
	-@erase "$(INTDIR)\inked_area.obj"
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
	-@erase "$(INTDIR)\merge_control.obj"
	-@erase "$(INTDIR)\named_view.obj"
	-@erase "$(INTDIR)\named_view_list.obj"
	-@erase "$(INTDIR)\object.obj"
	-@erase "$(INTDIR)\opcode.obj"
	-@erase "$(INTDIR)\origin.obj"
	-@erase "$(INTDIR)\pch.obj"
	-@erase "$(INTDIR)\Plot_Optimized.obj"
	-@erase "$(INTDIR)\plotinfo.obj"
	-@erase "$(INTDIR)\PNGGroup4image.obj"
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
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\view.obj"
	-@erase "$(INTDIR)\viewport.obj"
	-@erase "$(INTDIR)\viewport_options.obj"
	-@erase "$(INTDIR)\visible.obj"
	-@erase "$(INTDIR)\whiptk.res"
	-@erase "$(INTDIR)\whiptool.pch"
	-@erase "$(OUTDIR)\whiptk7.dll"
	-@erase "$(OUTDIR)\whiptk7.exp"
	-@erase "$(OUTDIR)\whiptk7.ilk"
	-@erase "$(OUTDIR)\whiptk7.lib"
	-@erase "$(OUTDIR)\whiptk7.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

F90=fl32.exe
CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /I ".." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /Fp"$(INTDIR)\whiptool.pch" /Yu"whiptk/pch.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\whiptk.res" /i ".." /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\whiptool.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=zlib\Debug\zlib.lib user32.lib /nologo /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\whiptk7.pdb" /debug /machine:I386 /out:"$(OUTDIR)\whiptk7.dll" /implib:"$(OUTDIR)\whiptk7.lib" 
LINK32_OBJS= \
	"$(INTDIR)\assert.obj" \
	"$(INTDIR)\attribute.obj" \
	"$(INTDIR)\backgrnd.obj" \
	"$(INTDIR)\code_page.obj" \
	"$(INTDIR)\color.obj" \
	"$(INTDIR)\colormap.obj" \
	"$(INTDIR)\compdata.obj" \
	"$(INTDIR)\contour_set.obj" \
	"$(INTDIR)\dashpat.obj" \
	"$(INTDIR)\drawable.obj" \
	"$(INTDIR)\dwfhead.obj" \
	"$(INTDIR)\dwginfo.obj" \
	"$(INTDIR)\ellipse.obj" \
	"$(INTDIR)\embed.obj" \
	"$(INTDIR)\endofdwf.obj" \
	"$(INTDIR)\file.obj" \
	"$(INTDIR)\fill.obj" \
	"$(INTDIR)\fillpat.obj" \
	"$(INTDIR)\font.obj" \
	"$(INTDIR)\font_options.obj" \
	"$(INTDIR)\gouraud_pointset.obj" \
	"$(INTDIR)\gouraud_polyline.obj" \
	"$(INTDIR)\gouraud_polytri.obj" \
	"$(INTDIR)\group_begin.obj" \
	"$(INTDIR)\group_end.obj" \
	"$(INTDIR)\heuristics.obj" \
	"$(INTDIR)\image.obj" \
	"$(INTDIR)\informational.obj" \
	"$(INTDIR)\inked_area.obj" \
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
	"$(INTDIR)\merge_control.obj" \
	"$(INTDIR)\named_view.obj" \
	"$(INTDIR)\named_view_list.obj" \
	"$(INTDIR)\object.obj" \
	"$(INTDIR)\opcode.obj" \
	"$(INTDIR)\origin.obj" \
	"$(INTDIR)\pch.obj" \
	"$(INTDIR)\Plot_Optimized.obj" \
	"$(INTDIR)\plotinfo.obj" \
	"$(INTDIR)\PNGGroup4image.obj" \
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

"$(OUTDIR)\whiptk7.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 ProfACAP"

OUTDIR=.\bin\ProfACAP
INTDIR=.\ProfACAP
# Begin Custom Macros
OutDir=.\bin\ProfACAP
# End Custom Macros

ALL : "$(OUTDIR)\whiptk7.dll"


CLEAN :
	-@erase "$(INTDIR)\assert.obj"
	-@erase "$(INTDIR)\attribute.obj"
	-@erase "$(INTDIR)\backgrnd.obj"
	-@erase "$(INTDIR)\code_page.obj"
	-@erase "$(INTDIR)\color.obj"
	-@erase "$(INTDIR)\colormap.obj"
	-@erase "$(INTDIR)\compdata.obj"
	-@erase "$(INTDIR)\contour_set.obj"
	-@erase "$(INTDIR)\dashpat.obj"
	-@erase "$(INTDIR)\drawable.obj"
	-@erase "$(INTDIR)\dwfhead.obj"
	-@erase "$(INTDIR)\dwginfo.obj"
	-@erase "$(INTDIR)\ellipse.obj"
	-@erase "$(INTDIR)\embed.obj"
	-@erase "$(INTDIR)\endofdwf.obj"
	-@erase "$(INTDIR)\file.obj"
	-@erase "$(INTDIR)\fill.obj"
	-@erase "$(INTDIR)\fillpat.obj"
	-@erase "$(INTDIR)\font.obj"
	-@erase "$(INTDIR)\font_options.obj"
	-@erase "$(INTDIR)\gouraud_pointset.obj"
	-@erase "$(INTDIR)\gouraud_polyline.obj"
	-@erase "$(INTDIR)\gouraud_polytri.obj"
	-@erase "$(INTDIR)\group_begin.obj"
	-@erase "$(INTDIR)\group_end.obj"
	-@erase "$(INTDIR)\heuristics.obj"
	-@erase "$(INTDIR)\image.obj"
	-@erase "$(INTDIR)\informational.obj"
	-@erase "$(INTDIR)\inked_area.obj"
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
	-@erase "$(INTDIR)\merge_control.obj"
	-@erase "$(INTDIR)\named_view.obj"
	-@erase "$(INTDIR)\named_view_list.obj"
	-@erase "$(INTDIR)\object.obj"
	-@erase "$(INTDIR)\opcode.obj"
	-@erase "$(INTDIR)\origin.obj"
	-@erase "$(INTDIR)\pch.obj"
	-@erase "$(INTDIR)\Plot_Optimized.obj"
	-@erase "$(INTDIR)\plotinfo.obj"
	-@erase "$(INTDIR)\PNGGroup4image.obj"
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
	-@erase "$(INTDIR)\view.obj"
	-@erase "$(INTDIR)\viewport.obj"
	-@erase "$(INTDIR)\viewport_options.obj"
	-@erase "$(INTDIR)\visible.obj"
	-@erase "$(INTDIR)\whiptk.res"
	-@erase "$(INTDIR)\whiptool.pch"
	-@erase "$(OUTDIR)\whiptk7.dll"
	-@erase "$(OUTDIR)\whiptk7.exp"
	-@erase "$(OUTDIR)\whiptk7.lib"
	-@erase "$(OUTDIR)\whiptk7.pdb"
	-@erase "..\bin\i386\ProfACAP\whiptk7.idb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

F90=fl32.exe
CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /Zd /O2 /I "../.. .." /I ".." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "ACAP" /Fp"$(INTDIR)\whiptool.pch" /Yu"whiptk/pch.h" /Fo"$(INTDIR)\\" /Fd"..\..\..\bin\i386\ProfACAP\whiptk7.pdb" /FD /Gh /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\whiptk.res" /i ".." /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\whiptool.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=zlib\ProfACAP\zlib.lib user32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\whiptk7.pdb" /debug /machine:I386 /out:"$(OUTDIR)\whiptk7.dll" /implib:"$(OUTDIR)\whiptk7.lib" 
LINK32_OBJS= \
	"$(INTDIR)\assert.obj" \
	"$(INTDIR)\attribute.obj" \
	"$(INTDIR)\backgrnd.obj" \
	"$(INTDIR)\code_page.obj" \
	"$(INTDIR)\color.obj" \
	"$(INTDIR)\colormap.obj" \
	"$(INTDIR)\compdata.obj" \
	"$(INTDIR)\contour_set.obj" \
	"$(INTDIR)\dashpat.obj" \
	"$(INTDIR)\drawable.obj" \
	"$(INTDIR)\dwfhead.obj" \
	"$(INTDIR)\dwginfo.obj" \
	"$(INTDIR)\ellipse.obj" \
	"$(INTDIR)\embed.obj" \
	"$(INTDIR)\endofdwf.obj" \
	"$(INTDIR)\file.obj" \
	"$(INTDIR)\fill.obj" \
	"$(INTDIR)\fillpat.obj" \
	"$(INTDIR)\font.obj" \
	"$(INTDIR)\font_options.obj" \
	"$(INTDIR)\gouraud_pointset.obj" \
	"$(INTDIR)\gouraud_polyline.obj" \
	"$(INTDIR)\gouraud_polytri.obj" \
	"$(INTDIR)\group_begin.obj" \
	"$(INTDIR)\group_end.obj" \
	"$(INTDIR)\heuristics.obj" \
	"$(INTDIR)\image.obj" \
	"$(INTDIR)\informational.obj" \
	"$(INTDIR)\inked_area.obj" \
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
	"$(INTDIR)\merge_control.obj" \
	"$(INTDIR)\named_view.obj" \
	"$(INTDIR)\named_view_list.obj" \
	"$(INTDIR)\object.obj" \
	"$(INTDIR)\opcode.obj" \
	"$(INTDIR)\origin.obj" \
	"$(INTDIR)\pch.obj" \
	"$(INTDIR)\Plot_Optimized.obj" \
	"$(INTDIR)\plotinfo.obj" \
	"$(INTDIR)\PNGGroup4image.obj" \
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

"$(OUTDIR)\whiptk7.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 Release"

OUTDIR=.\bin\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\bin\Release
# End Custom Macros

ALL : "$(OUTDIR)\whiptk7.dll"


CLEAN :
	-@erase "$(INTDIR)\assert.obj"
	-@erase "$(INTDIR)\attribute.obj"
	-@erase "$(INTDIR)\backgrnd.obj"
	-@erase "$(INTDIR)\code_page.obj"
	-@erase "$(INTDIR)\color.obj"
	-@erase "$(INTDIR)\colormap.obj"
	-@erase "$(INTDIR)\compdata.obj"
	-@erase "$(INTDIR)\contour_set.obj"
	-@erase "$(INTDIR)\dashpat.obj"
	-@erase "$(INTDIR)\drawable.obj"
	-@erase "$(INTDIR)\dwfhead.obj"
	-@erase "$(INTDIR)\dwginfo.obj"
	-@erase "$(INTDIR)\ellipse.obj"
	-@erase "$(INTDIR)\embed.obj"
	-@erase "$(INTDIR)\endofdwf.obj"
	-@erase "$(INTDIR)\file.obj"
	-@erase "$(INTDIR)\fill.obj"
	-@erase "$(INTDIR)\fillpat.obj"
	-@erase "$(INTDIR)\font.obj"
	-@erase "$(INTDIR)\font_options.obj"
	-@erase "$(INTDIR)\gouraud_pointset.obj"
	-@erase "$(INTDIR)\gouraud_polyline.obj"
	-@erase "$(INTDIR)\gouraud_polytri.obj"
	-@erase "$(INTDIR)\group_begin.obj"
	-@erase "$(INTDIR)\group_end.obj"
	-@erase "$(INTDIR)\heuristics.obj"
	-@erase "$(INTDIR)\image.obj"
	-@erase "$(INTDIR)\informational.obj"
	-@erase "$(INTDIR)\inked_area.obj"
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
	-@erase "$(INTDIR)\merge_control.obj"
	-@erase "$(INTDIR)\named_view.obj"
	-@erase "$(INTDIR)\named_view_list.obj"
	-@erase "$(INTDIR)\object.obj"
	-@erase "$(INTDIR)\opcode.obj"
	-@erase "$(INTDIR)\origin.obj"
	-@erase "$(INTDIR)\pch.obj"
	-@erase "$(INTDIR)\Plot_Optimized.obj"
	-@erase "$(INTDIR)\plotinfo.obj"
	-@erase "$(INTDIR)\PNGGroup4image.obj"
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
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\view.obj"
	-@erase "$(INTDIR)\viewport.obj"
	-@erase "$(INTDIR)\viewport_options.obj"
	-@erase "$(INTDIR)\visible.obj"
	-@erase "$(INTDIR)\whiptk.res"
	-@erase "$(INTDIR)\whiptool.pch"
	-@erase "$(OUTDIR)\whiptk7.dll"
	-@erase "$(OUTDIR)\whiptk7.exp"
	-@erase "$(OUTDIR)\whiptk7.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

F90=fl32.exe
CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "../.. .." /I ".." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fp"$(INTDIR)\whiptool.pch" /Yu"whiptk/pch.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\whiptk.res" /i ".." /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\whiptool.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=zlib\Release\zlib.lib user32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\whiptk7.pdb" /machine:I386 /out:"$(OUTDIR)\whiptk7.dll" /implib:"$(OUTDIR)\whiptk7.lib" 
LINK32_OBJS= \
	"$(INTDIR)\assert.obj" \
	"$(INTDIR)\attribute.obj" \
	"$(INTDIR)\backgrnd.obj" \
	"$(INTDIR)\code_page.obj" \
	"$(INTDIR)\color.obj" \
	"$(INTDIR)\colormap.obj" \
	"$(INTDIR)\compdata.obj" \
	"$(INTDIR)\contour_set.obj" \
	"$(INTDIR)\dashpat.obj" \
	"$(INTDIR)\drawable.obj" \
	"$(INTDIR)\dwfhead.obj" \
	"$(INTDIR)\dwginfo.obj" \
	"$(INTDIR)\ellipse.obj" \
	"$(INTDIR)\embed.obj" \
	"$(INTDIR)\endofdwf.obj" \
	"$(INTDIR)\file.obj" \
	"$(INTDIR)\fill.obj" \
	"$(INTDIR)\fillpat.obj" \
	"$(INTDIR)\font.obj" \
	"$(INTDIR)\font_options.obj" \
	"$(INTDIR)\gouraud_pointset.obj" \
	"$(INTDIR)\gouraud_polyline.obj" \
	"$(INTDIR)\gouraud_polytri.obj" \
	"$(INTDIR)\group_begin.obj" \
	"$(INTDIR)\group_end.obj" \
	"$(INTDIR)\heuristics.obj" \
	"$(INTDIR)\image.obj" \
	"$(INTDIR)\informational.obj" \
	"$(INTDIR)\inked_area.obj" \
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
	"$(INTDIR)\merge_control.obj" \
	"$(INTDIR)\named_view.obj" \
	"$(INTDIR)\named_view_list.obj" \
	"$(INTDIR)\object.obj" \
	"$(INTDIR)\opcode.obj" \
	"$(INTDIR)\origin.obj" \
	"$(INTDIR)\pch.obj" \
	"$(INTDIR)\Plot_Optimized.obj" \
	"$(INTDIR)\plotinfo.obj" \
	"$(INTDIR)\PNGGroup4image.obj" \
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

"$(OUTDIR)\whiptk7.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 Profile"

OUTDIR=.\bin\Profile
INTDIR=.\Profile
# Begin Custom Macros
OutDir=.\bin\Profile
# End Custom Macros

ALL : "$(OUTDIR)\whiptk7.dll"


CLEAN :
	-@erase "$(INTDIR)\assert.obj"
	-@erase "$(INTDIR)\attribute.obj"
	-@erase "$(INTDIR)\backgrnd.obj"
	-@erase "$(INTDIR)\code_page.obj"
	-@erase "$(INTDIR)\color.obj"
	-@erase "$(INTDIR)\colormap.obj"
	-@erase "$(INTDIR)\compdata.obj"
	-@erase "$(INTDIR)\contour_set.obj"
	-@erase "$(INTDIR)\dashpat.obj"
	-@erase "$(INTDIR)\drawable.obj"
	-@erase "$(INTDIR)\dwfhead.obj"
	-@erase "$(INTDIR)\dwginfo.obj"
	-@erase "$(INTDIR)\ellipse.obj"
	-@erase "$(INTDIR)\embed.obj"
	-@erase "$(INTDIR)\endofdwf.obj"
	-@erase "$(INTDIR)\file.obj"
	-@erase "$(INTDIR)\fill.obj"
	-@erase "$(INTDIR)\fillpat.obj"
	-@erase "$(INTDIR)\font.obj"
	-@erase "$(INTDIR)\font_options.obj"
	-@erase "$(INTDIR)\gouraud_pointset.obj"
	-@erase "$(INTDIR)\gouraud_polyline.obj"
	-@erase "$(INTDIR)\gouraud_polytri.obj"
	-@erase "$(INTDIR)\group_begin.obj"
	-@erase "$(INTDIR)\group_end.obj"
	-@erase "$(INTDIR)\heuristics.obj"
	-@erase "$(INTDIR)\image.obj"
	-@erase "$(INTDIR)\informational.obj"
	-@erase "$(INTDIR)\inked_area.obj"
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
	-@erase "$(INTDIR)\merge_control.obj"
	-@erase "$(INTDIR)\named_view.obj"
	-@erase "$(INTDIR)\named_view_list.obj"
	-@erase "$(INTDIR)\object.obj"
	-@erase "$(INTDIR)\opcode.obj"
	-@erase "$(INTDIR)\origin.obj"
	-@erase "$(INTDIR)\pch.obj"
	-@erase "$(INTDIR)\Plot_Optimized.obj"
	-@erase "$(INTDIR)\plotinfo.obj"
	-@erase "$(INTDIR)\PNGGroup4image.obj"
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
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\view.obj"
	-@erase "$(INTDIR)\viewport.obj"
	-@erase "$(INTDIR)\viewport_options.obj"
	-@erase "$(INTDIR)\visible.obj"
	-@erase "$(INTDIR)\whiptk.res"
	-@erase "$(INTDIR)\whiptool.pch"
	-@erase "$(OUTDIR)\whiptk7.dll"
	-@erase "$(OUTDIR)\whiptk7.exp"
	-@erase "$(OUTDIR)\whiptk7.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

F90=fl32.exe
CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "../.. .." /I ".." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fp"$(INTDIR)\whiptool.pch" /Yu"whiptk/pch.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\whiptk.res" /i ".." /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\whiptool.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=zlib\Profile\zlib.lib user32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\whiptk7.pdb" /machine:I386 /out:"$(OUTDIR)\whiptk7.dll" /implib:"$(OUTDIR)\whiptk7.lib" 
LINK32_OBJS= \
	"$(INTDIR)\assert.obj" \
	"$(INTDIR)\attribute.obj" \
	"$(INTDIR)\backgrnd.obj" \
	"$(INTDIR)\code_page.obj" \
	"$(INTDIR)\color.obj" \
	"$(INTDIR)\colormap.obj" \
	"$(INTDIR)\compdata.obj" \
	"$(INTDIR)\contour_set.obj" \
	"$(INTDIR)\dashpat.obj" \
	"$(INTDIR)\drawable.obj" \
	"$(INTDIR)\dwfhead.obj" \
	"$(INTDIR)\dwginfo.obj" \
	"$(INTDIR)\ellipse.obj" \
	"$(INTDIR)\embed.obj" \
	"$(INTDIR)\endofdwf.obj" \
	"$(INTDIR)\file.obj" \
	"$(INTDIR)\fill.obj" \
	"$(INTDIR)\fillpat.obj" \
	"$(INTDIR)\font.obj" \
	"$(INTDIR)\font_options.obj" \
	"$(INTDIR)\gouraud_pointset.obj" \
	"$(INTDIR)\gouraud_polyline.obj" \
	"$(INTDIR)\gouraud_polytri.obj" \
	"$(INTDIR)\group_begin.obj" \
	"$(INTDIR)\group_end.obj" \
	"$(INTDIR)\heuristics.obj" \
	"$(INTDIR)\image.obj" \
	"$(INTDIR)\informational.obj" \
	"$(INTDIR)\inked_area.obj" \
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
	"$(INTDIR)\merge_control.obj" \
	"$(INTDIR)\named_view.obj" \
	"$(INTDIR)\named_view_list.obj" \
	"$(INTDIR)\object.obj" \
	"$(INTDIR)\opcode.obj" \
	"$(INTDIR)\origin.obj" \
	"$(INTDIR)\pch.obj" \
	"$(INTDIR)\Plot_Optimized.obj" \
	"$(INTDIR)\plotinfo.obj" \
	"$(INTDIR)\PNGGroup4image.obj" \
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

"$(OUTDIR)\whiptk7.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 Release With Symbols"

OUTDIR=.\bin\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\bin\Release
# End Custom Macros

ALL : "$(OUTDIR)\whiptk7.dll"


CLEAN :
	-@erase "$(INTDIR)\assert.obj"
	-@erase "$(INTDIR)\attribute.obj"
	-@erase "$(INTDIR)\backgrnd.obj"
	-@erase "$(INTDIR)\code_page.obj"
	-@erase "$(INTDIR)\color.obj"
	-@erase "$(INTDIR)\colormap.obj"
	-@erase "$(INTDIR)\compdata.obj"
	-@erase "$(INTDIR)\contour_set.obj"
	-@erase "$(INTDIR)\dashpat.obj"
	-@erase "$(INTDIR)\drawable.obj"
	-@erase "$(INTDIR)\dwfhead.obj"
	-@erase "$(INTDIR)\dwginfo.obj"
	-@erase "$(INTDIR)\ellipse.obj"
	-@erase "$(INTDIR)\embed.obj"
	-@erase "$(INTDIR)\endofdwf.obj"
	-@erase "$(INTDIR)\file.obj"
	-@erase "$(INTDIR)\fill.obj"
	-@erase "$(INTDIR)\fillpat.obj"
	-@erase "$(INTDIR)\font.obj"
	-@erase "$(INTDIR)\font_options.obj"
	-@erase "$(INTDIR)\gouraud_pointset.obj"
	-@erase "$(INTDIR)\gouraud_polyline.obj"
	-@erase "$(INTDIR)\gouraud_polytri.obj"
	-@erase "$(INTDIR)\group_begin.obj"
	-@erase "$(INTDIR)\group_end.obj"
	-@erase "$(INTDIR)\heuristics.obj"
	-@erase "$(INTDIR)\image.obj"
	-@erase "$(INTDIR)\informational.obj"
	-@erase "$(INTDIR)\inked_area.obj"
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
	-@erase "$(INTDIR)\merge_control.obj"
	-@erase "$(INTDIR)\named_view.obj"
	-@erase "$(INTDIR)\named_view_list.obj"
	-@erase "$(INTDIR)\object.obj"
	-@erase "$(INTDIR)\opcode.obj"
	-@erase "$(INTDIR)\origin.obj"
	-@erase "$(INTDIR)\pch.obj"
	-@erase "$(INTDIR)\Plot_Optimized.obj"
	-@erase "$(INTDIR)\plotinfo.obj"
	-@erase "$(INTDIR)\PNGGroup4image.obj"
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
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\view.obj"
	-@erase "$(INTDIR)\viewport.obj"
	-@erase "$(INTDIR)\viewport_options.obj"
	-@erase "$(INTDIR)\visible.obj"
	-@erase "$(INTDIR)\whiptk.res"
	-@erase "$(INTDIR)\whiptool.pch"
	-@erase "$(OUTDIR)\whiptk7.dll"
	-@erase "$(OUTDIR)\whiptk7.exp"
	-@erase "$(OUTDIR)\whiptk7.lib"
	-@erase "$(OUTDIR)\whiptk7.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

F90=fl32.exe
CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /Z7 /O2 /I "../.. .." /I ".." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fp"$(INTDIR)\whiptool.pch" /Yu"whiptk/pch.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\whiptk.res" /i ".." /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\whiptool.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=zlib\Release\zlib.lib user32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\whiptk7.pdb" /debug /machine:I386 /out:"$(OUTDIR)\whiptk7.dll" /implib:"$(OUTDIR)\whiptk7.lib" 
LINK32_OBJS= \
	"$(INTDIR)\assert.obj" \
	"$(INTDIR)\attribute.obj" \
	"$(INTDIR)\backgrnd.obj" \
	"$(INTDIR)\code_page.obj" \
	"$(INTDIR)\color.obj" \
	"$(INTDIR)\colormap.obj" \
	"$(INTDIR)\compdata.obj" \
	"$(INTDIR)\contour_set.obj" \
	"$(INTDIR)\dashpat.obj" \
	"$(INTDIR)\drawable.obj" \
	"$(INTDIR)\dwfhead.obj" \
	"$(INTDIR)\dwginfo.obj" \
	"$(INTDIR)\ellipse.obj" \
	"$(INTDIR)\embed.obj" \
	"$(INTDIR)\endofdwf.obj" \
	"$(INTDIR)\file.obj" \
	"$(INTDIR)\fill.obj" \
	"$(INTDIR)\fillpat.obj" \
	"$(INTDIR)\font.obj" \
	"$(INTDIR)\font_options.obj" \
	"$(INTDIR)\gouraud_pointset.obj" \
	"$(INTDIR)\gouraud_polyline.obj" \
	"$(INTDIR)\gouraud_polytri.obj" \
	"$(INTDIR)\group_begin.obj" \
	"$(INTDIR)\group_end.obj" \
	"$(INTDIR)\heuristics.obj" \
	"$(INTDIR)\image.obj" \
	"$(INTDIR)\informational.obj" \
	"$(INTDIR)\inked_area.obj" \
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
	"$(INTDIR)\merge_control.obj" \
	"$(INTDIR)\named_view.obj" \
	"$(INTDIR)\named_view_list.obj" \
	"$(INTDIR)\object.obj" \
	"$(INTDIR)\opcode.obj" \
	"$(INTDIR)\origin.obj" \
	"$(INTDIR)\pch.obj" \
	"$(INTDIR)\Plot_Optimized.obj" \
	"$(INTDIR)\plotinfo.obj" \
	"$(INTDIR)\PNGGroup4image.obj" \
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

"$(OUTDIR)\whiptk7.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 Full Debug"

OUTDIR=.\bin\Debug
INTDIR=.\debug
# Begin Custom Macros
OutDir=.\bin\Debug
# End Custom Macros

ALL : "$(OUTDIR)\whiptk7.dll"


CLEAN :
	-@erase "$(INTDIR)\assert.obj"
	-@erase "$(INTDIR)\attribute.obj"
	-@erase "$(INTDIR)\backgrnd.obj"
	-@erase "$(INTDIR)\code_page.obj"
	-@erase "$(INTDIR)\color.obj"
	-@erase "$(INTDIR)\colormap.obj"
	-@erase "$(INTDIR)\compdata.obj"
	-@erase "$(INTDIR)\contour_set.obj"
	-@erase "$(INTDIR)\dashpat.obj"
	-@erase "$(INTDIR)\drawable.obj"
	-@erase "$(INTDIR)\dwfhead.obj"
	-@erase "$(INTDIR)\dwginfo.obj"
	-@erase "$(INTDIR)\ellipse.obj"
	-@erase "$(INTDIR)\embed.obj"
	-@erase "$(INTDIR)\endofdwf.obj"
	-@erase "$(INTDIR)\file.obj"
	-@erase "$(INTDIR)\fill.obj"
	-@erase "$(INTDIR)\fillpat.obj"
	-@erase "$(INTDIR)\font.obj"
	-@erase "$(INTDIR)\font_options.obj"
	-@erase "$(INTDIR)\gouraud_pointset.obj"
	-@erase "$(INTDIR)\gouraud_polyline.obj"
	-@erase "$(INTDIR)\gouraud_polytri.obj"
	-@erase "$(INTDIR)\group_begin.obj"
	-@erase "$(INTDIR)\group_end.obj"
	-@erase "$(INTDIR)\heuristics.obj"
	-@erase "$(INTDIR)\image.obj"
	-@erase "$(INTDIR)\informational.obj"
	-@erase "$(INTDIR)\inked_area.obj"
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
	-@erase "$(INTDIR)\merge_control.obj"
	-@erase "$(INTDIR)\named_view.obj"
	-@erase "$(INTDIR)\named_view_list.obj"
	-@erase "$(INTDIR)\object.obj"
	-@erase "$(INTDIR)\opcode.obj"
	-@erase "$(INTDIR)\origin.obj"
	-@erase "$(INTDIR)\pch.obj"
	-@erase "$(INTDIR)\Plot_Optimized.obj"
	-@erase "$(INTDIR)\plotinfo.obj"
	-@erase "$(INTDIR)\PNGGroup4image.obj"
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
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\view.obj"
	-@erase "$(INTDIR)\viewport.obj"
	-@erase "$(INTDIR)\viewport_options.obj"
	-@erase "$(INTDIR)\visible.obj"
	-@erase "$(INTDIR)\whiptk.res"
	-@erase "$(INTDIR)\whiptool.pch"
	-@erase "$(OUTDIR)\whiptk7.dll"
	-@erase "$(OUTDIR)\whiptk7.exp"
	-@erase "$(OUTDIR)\whiptk7.ilk"
	-@erase "$(OUTDIR)\whiptk7.lib"
	-@erase "$(OUTDIR)\whiptk7.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

F90=fl32.exe
CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /I ".." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /Fp"$(INTDIR)\whiptool.pch" /Yu"whiptk/pch.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\whiptk.res" /i ".." /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\whiptool.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=zlib\Debug\zlib.lib user32.lib /nologo /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\whiptk7.pdb" /debug /machine:I386 /out:"$(OUTDIR)\whiptk7.dll" /implib:"$(OUTDIR)\whiptk7.lib" 
LINK32_OBJS= \
	"$(INTDIR)\assert.obj" \
	"$(INTDIR)\attribute.obj" \
	"$(INTDIR)\backgrnd.obj" \
	"$(INTDIR)\code_page.obj" \
	"$(INTDIR)\color.obj" \
	"$(INTDIR)\colormap.obj" \
	"$(INTDIR)\compdata.obj" \
	"$(INTDIR)\contour_set.obj" \
	"$(INTDIR)\dashpat.obj" \
	"$(INTDIR)\drawable.obj" \
	"$(INTDIR)\dwfhead.obj" \
	"$(INTDIR)\dwginfo.obj" \
	"$(INTDIR)\ellipse.obj" \
	"$(INTDIR)\embed.obj" \
	"$(INTDIR)\endofdwf.obj" \
	"$(INTDIR)\file.obj" \
	"$(INTDIR)\fill.obj" \
	"$(INTDIR)\fillpat.obj" \
	"$(INTDIR)\font.obj" \
	"$(INTDIR)\font_options.obj" \
	"$(INTDIR)\gouraud_pointset.obj" \
	"$(INTDIR)\gouraud_polyline.obj" \
	"$(INTDIR)\gouraud_polytri.obj" \
	"$(INTDIR)\group_begin.obj" \
	"$(INTDIR)\group_end.obj" \
	"$(INTDIR)\heuristics.obj" \
	"$(INTDIR)\image.obj" \
	"$(INTDIR)\informational.obj" \
	"$(INTDIR)\inked_area.obj" \
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
	"$(INTDIR)\merge_control.obj" \
	"$(INTDIR)\named_view.obj" \
	"$(INTDIR)\named_view_list.obj" \
	"$(INTDIR)\object.obj" \
	"$(INTDIR)\opcode.obj" \
	"$(INTDIR)\origin.obj" \
	"$(INTDIR)\pch.obj" \
	"$(INTDIR)\Plot_Optimized.obj" \
	"$(INTDIR)\plotinfo.obj" \
	"$(INTDIR)\PNGGroup4image.obj" \
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

"$(OUTDIR)\whiptk7.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("whiptool.dep")
!INCLUDE "whiptool.dep"
!ELSE 
!MESSAGE Warning: cannot find "whiptool.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "whiptool - Win32 i386 Debug" || "$(CFG)" == "whiptool - Win32 i386 ProfACAP" || "$(CFG)" == "whiptool - Win32 i386 Release" || "$(CFG)" == "whiptool - Win32 i386 Profile" || "$(CFG)" == "whiptool - Win32 i386 Release With Symbols" || "$(CFG)" == "whiptool - Win32 i386 Full Debug"
SOURCE=.\assert.cpp

"$(INTDIR)\assert.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\attribute.cpp

"$(INTDIR)\attribute.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\backgrnd.cpp

"$(INTDIR)\backgrnd.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\code_page.cpp

"$(INTDIR)\code_page.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\color.cpp

"$(INTDIR)\color.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\colormap.cpp

"$(INTDIR)\colormap.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\compdata.cpp

"$(INTDIR)\compdata.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\contour_set.cpp

"$(INTDIR)\contour_set.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\dashpat.cpp

"$(INTDIR)\dashpat.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\drawable.cpp

"$(INTDIR)\drawable.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\dwfhead.cpp

"$(INTDIR)\dwfhead.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\dwginfo.cpp

"$(INTDIR)\dwginfo.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\ellipse.cpp

"$(INTDIR)\ellipse.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\embed.cpp

"$(INTDIR)\embed.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\endofdwf.cpp

"$(INTDIR)\endofdwf.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\file.cpp

"$(INTDIR)\file.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\fill.cpp

"$(INTDIR)\fill.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\fillpat.cpp

"$(INTDIR)\fillpat.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\font.cpp

"$(INTDIR)\font.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\font_options.cpp

"$(INTDIR)\font_options.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\gouraud_pointset.cpp

"$(INTDIR)\gouraud_pointset.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\gouraud_polyline.cpp

"$(INTDIR)\gouraud_polyline.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\gouraud_polytri.cpp

"$(INTDIR)\gouraud_polytri.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\group_begin.cpp

"$(INTDIR)\group_begin.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\group_end.cpp

"$(INTDIR)\group_end.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\heuristics.cpp

"$(INTDIR)\heuristics.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\image.cpp

"$(INTDIR)\image.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\informational.cpp

"$(INTDIR)\informational.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\inked_area.cpp

"$(INTDIR)\inked_area.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\layer.cpp

"$(INTDIR)\layer.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\layer_list.cpp

"$(INTDIR)\layer_list.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\linepat.cpp

"$(INTDIR)\linepat.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\linestyle.cpp

"$(INTDIR)\linestyle.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\lweight.cpp

"$(INTDIR)\lweight.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\lz77comp.cpp

"$(INTDIR)\lz77comp.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\lz77decp.cpp

"$(INTDIR)\lz77decp.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\marksize.cpp

"$(INTDIR)\marksize.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\marksymb.cpp

"$(INTDIR)\marksymb.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\matrix.cpp

"$(INTDIR)\matrix.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\merge_control.cpp

"$(INTDIR)\merge_control.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\named_view.cpp

"$(INTDIR)\named_view.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\named_view_list.cpp

"$(INTDIR)\named_view_list.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\object.cpp

"$(INTDIR)\object.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\opcode.cpp

"$(INTDIR)\opcode.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\origin.cpp

"$(INTDIR)\origin.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\pch.cpp

!IF  "$(CFG)" == "whiptool - Win32 i386 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /I ".." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /Fp"$(INTDIR)\whiptool.pch" /Yc"whiptk/pch.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\pch.obj"	"$(INTDIR)\whiptool.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 ProfACAP"

CPP_SWITCHES=/nologo /MD /W3 /GX /Zd /O2 /I "../.. .." /I ".." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "ACAP" /Fp"$(INTDIR)\whiptool.pch" /Yc"whiptk/pch.h" /Fo"$(INTDIR)\\" /Fd"..\..\..\bin\i386\ProfACAP\whiptk7.pdb" /FD /Gh /c 

"$(INTDIR)\pch.obj"	"$(INTDIR)\whiptool.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /I "../.. .." /I ".." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fp"$(INTDIR)\whiptool.pch" /Yc"whiptk/pch.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\pch.obj"	"$(INTDIR)\whiptool.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 Profile"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /I "../.. .." /I ".." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fp"$(INTDIR)\whiptool.pch" /Yc"whiptk/pch.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\pch.obj"	"$(INTDIR)\whiptool.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 Release With Symbols"

CPP_SWITCHES=/nologo /MD /W3 /GX /Z7 /O2 /I "../.. .." /I ".." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fp"$(INTDIR)\whiptool.pch" /Yc"whiptk/pch.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\pch.obj"	"$(INTDIR)\whiptool.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "whiptool - Win32 i386 Full Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /ZI /Od /I ".." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /Fp"$(INTDIR)\whiptool.pch" /Yc"whiptk/pch.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\pch.obj"	"$(INTDIR)\whiptool.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\Plot_Optimized.cpp

"$(INTDIR)\Plot_Optimized.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\plotinfo.cpp

"$(INTDIR)\plotinfo.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\PNGGroup4image.cpp

"$(INTDIR)\PNGGroup4image.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\pointset.cpp

"$(INTDIR)\pointset.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\polygon.cpp

"$(INTDIR)\polygon.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\polyline.cpp

"$(INTDIR)\polyline.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\polymark.cpp

"$(INTDIR)\polymark.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\polytri.cpp

"$(INTDIR)\polytri.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\rendition.cpp

"$(INTDIR)\rendition.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\rendopts.cpp

"$(INTDIR)\rendopts.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\settings.cpp

"$(INTDIR)\settings.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\string.cpp

"$(INTDIR)\string.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\text.cpp

"$(INTDIR)\text.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\text_options.cpp

"$(INTDIR)\text_options.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\timestamp.cpp

"$(INTDIR)\timestamp.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\units.cpp

"$(INTDIR)\units.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\unknown.cpp

"$(INTDIR)\unknown.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\url.cpp

"$(INTDIR)\url.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\url_list.cpp

"$(INTDIR)\url_list.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\view.cpp

"$(INTDIR)\view.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\viewport.cpp

"$(INTDIR)\viewport.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\viewport_options.cpp

"$(INTDIR)\viewport_options.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\visible.cpp

"$(INTDIR)\visible.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\whiptool.pch"


SOURCE=.\whiptk.rc

"$(INTDIR)\whiptk.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)



!ENDIF 

