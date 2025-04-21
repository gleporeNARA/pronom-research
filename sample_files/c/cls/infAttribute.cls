VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infAttribute"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Private mName As String
Private mValue As Boolean
Private mIndex As Long

Public Property Let Index(ByVal lIndex As Long)
    mIndex = lIndex
End Property

Public Property Get Index() As Long
    Index = mIndex
End Property

Public Property Let Value(ByVal bValue As Boolean)
    mValue = bValue
End Property

Public Property Get Value() As Boolean
    Value = mValue
End Property

Public Property Let Name(ByVal sName As String)
    mName = sName
End Property

Public Property Get Name() As String
    Name = mName
End Property



