VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infVAttribute"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Private mName As String
Private mLibrary As Boolean
Private mUsed As Boolean

Public Property Let Name(ByVal vData As String)
    mName = vData
End Property

Public Property Get Name() As String
    Name = mName
End Property

Public Property Let Library(ByVal vData As Boolean)
    mLibrary = vData
End Property

Public Property Get Library() As Boolean
    Library = mLibrary
End Property

Public Property Let Used(ByVal vData As Boolean)
    mUsed = vData
End Property

Public Property Get Used() As Boolean
    Used = mUsed
End Property

