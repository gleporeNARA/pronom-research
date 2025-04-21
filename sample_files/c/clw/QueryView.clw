; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CDockPane
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "queryview.h"
LastPage=0

ClassCount=5
Class1=CDockPane
Class2=CMyPropertyPage1
Class3=CMyPropertyPage2
Class4=CMyPropertySheet
Class5=CTreeCtrlEx

ResourceCount=7
Resource1=IDD_FORMVIEW
Resource2=IDD_PROPPAGE1
Resource3=IDD_PROPPAGE2
Resource4=IDR_QL_POPUP_DLG
Resource5=IDR_QCAT_POPUP_DLG
Resource6=IDR_QRY_POPUP_DLG
Resource7=IDR_CURQRY_POPUP_DLG

[CLS:CDockPane]
Type=0
BaseClass=CAdUiDockControlBar
HeaderFile=DockPane.h
ImplementationFile=DockPane.cpp
LastObject=CDockPane
Filter=W
VirtualFilter=WC

[CLS:CMyPropertyPage1]
Type=0
BaseClass=CPropertyPage
HeaderFile=MyPropertyPage1.h
ImplementationFile=MyPropertyPage1.cpp

[CLS:CMyPropertyPage2]
Type=0
BaseClass=CPropertyPage
HeaderFile=MyPropertyPage1.h
ImplementationFile=MyPropertyPage1.cpp

[CLS:CMyPropertySheet]
Type=0
BaseClass=CPropertySheet
HeaderFile=MyPropertySheet.h
ImplementationFile=MyPropertySheet.cpp

[CLS:CTreeCtrlEx]
Type=0
BaseClass=CTreeCtrl
HeaderFile=TreeCtrlEx.h
ImplementationFile=TreeCtrlEx.cpp

[DLG:IDD_PROPPAGE1]
Type=1
Class=CMyPropertyPage1
ControlCount=1
Control1=IDC_TREE1,SysTreeView32,1350631424

[DLG:IDD_PROPPAGE2]
Type=1
Class=CMyPropertyPage2
ControlCount=1
Control1=IDC_TREE2,SysTreeView32,1350631424

[DLG:IDD_FORMVIEW]
Type=1
Class=?
ControlCount=0

[MNU:IDR_QL_POPUP_DLG]
Type=1
Class=?
Command1=ID_POPUP_NEWCATEGORY
Command2=ID_POPUP_ADMINISTRATION
CommandCount=2

[MNU:IDR_QCAT_POPUP_DLG]
Type=1
Class=?
Command1=ID_QCAT_POPUP_DEFINE
Command2=ID_QCAT_POPUP_RENAME
Command3=ID_QCAT_POPUP_DELETE
CommandCount=3

[MNU:IDR_QRY_POPUP_DLG]
Type=1
Class=?
Command1=ID_QRY_POPUP_SETASCURRENT
Command2=ID_QRY_POPUP_EXECUTEASPREVIEW
Command3=ID_QRY_POPUP_EXECUTEASDEFINED
Command4=ID_QRY_POPUP_EDIT
Command5=ID_QRY_POPUP_DELETE
CommandCount=5

[MNU:IDR_CURQRY_POPUP_DLG]
Type=1
Class=?
Command1=ID_CURQRY_POPUP_DEFINE
Command2=ID_CURQRY_POPUP_EXECUTEASPREVIEW
Command3=ID_CURQRY_POPUP_EXECUTEASDEFINED
Command4=ID_CURQRY_POPUP_CLEAR
CommandCount=4

