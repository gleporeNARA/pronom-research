; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CDockPane
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "odview.h"
LastPage=0

ClassCount=3
Class1=CDockPane
Class2=CSampleListView
Class3=CToolBarEx

ResourceCount=2
Resource1="IDR_POPUP_DLG"
Resource2=IDR_MAINFRAME

[CLS:CDockPane]
Type=0
BaseClass=CAdUiDockControlBar
HeaderFile=DockPane.h
ImplementationFile=DockPane.cpp
LastObject=CDockPane

[CLS:CSampleListView]
Type=0
BaseClass=CListView
HeaderFile=SampleListView.h
ImplementationFile=SampleListView.cpp

[CLS:CToolBarEx]
Type=0
BaseClass=CToolBar
HeaderFile=ToolBarEx.h
ImplementationFile=ToolBarEx.cpp

[MNU:"IDR_POPUP_DLG"]
Type=1
Class=?
Command1=ID_POPUP_DOCK
Command2=ID_POPUP_HIDE
CommandCount=2

[TB:IDR_MAINFRAME]
Type=1
Class=?
Command1=ID_VIEW_OBJECTDATA
Command2=ID_VIEW_ODTABLES
CommandCount=2

