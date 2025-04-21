VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infNameDef"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Private mName As String
Private mComments As New infComments
Private mAdditive As Boolean ' for property definitions

Public Property Let isAdditive(ByVal bAdditive As Boolean)
    mAdditive = bAdditive
End Property

Public Property Get isAdditive() As Boolean
    isAdditive = mAdditive
End Property

Public Property Set Comments(ByVal vData As infComments)
    Dim cm As infComment
    For Each cm In vData
        mComments.Add cm.Text
    Next
End Property

Public Property Get Comments() As infComments
    Set Comments = mComments
End Property

Public Property Let Name(ByVal sName As String)
    mName = sName
End Property

Public Property Get Name() As String
    Name = mName
End Property

