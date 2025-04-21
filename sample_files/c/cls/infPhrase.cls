VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infPhrase"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Private mDefinition As String
Private mProcedureName As String
Private mIndex As Long

Public Property Let Index(ByVal lIndex As Long)
    mIndex = lIndex
End Property

Public Property Get Index() As Long
    Index = mIndex
End Property

Public Property Let ProcedureName(ByVal vData As String)
    mProcedureName = vData
End Property

Public Property Get ProcedureName() As String
    ProcedureName = mProcedureName
End Property

Public Property Let Definition(ByVal vData As String)
    mDefinition = vData
End Property

Public Property Get Definition() As String
    Definition = mDefinition
End Property



