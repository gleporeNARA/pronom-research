VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infArray"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Public Enum ArrayTypes
    atBYTE_ARRAY
    atWORD_ARRAY
    atTABLE_ARRAY
    atSTRING_ARRAY
End Enum

Private mName As String
Private mAType As ArrayTypes
Private mValue As String
Private mComments As New infComments

Public Property Set Comments(ByVal vData As infComments)
    Dim cm As infComment
    For Each cm In vData
        mComments.Add cm.Text
    Next
End Property

Public Property Get Comments() As infComments
    Set Comments = mComments
End Property

Public Property Let Name(ByVal vData As String)
    mName = vData
End Property

Public Property Get Name() As String
    Name = mName
End Property

Public Property Let AType(ByVal vData As ArrayTypes)
    mAType = vData
End Property

Public Property Get AType() As ArrayTypes
    AType = mAType
End Property
Public Property Let Value(ByVal vData As String)
    mValue = vData
End Property

Public Property Get Value() As String
    Value = mValue
End Property



