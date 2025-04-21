VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infProcedure"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Private mName As String
Private mIndex As Long
Private mArguments As String
Private mCode As String
Private mReplace As Boolean
Private mComments As New infComments
Public Property Let Index(ByVal lIndex As Long)
    mIndex = lIndex
End Property

Public Property Get Index() As Long
    Index = mIndex
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

Public Property Let Name(ByVal vData As String)
    mName = vData
End Property

Public Property Get Name() As String
    Name = mName
End Property

Public Property Let Arguments(ByVal vData As String)
    mArguments = vData
End Property

Public Property Get Arguments() As String
    Arguments = mArguments
End Property

Public Property Let Code(ByVal vData As String)
    mCode = vData
End Property

Public Property Get Code() As String
    Code = mCode
End Property

Public Property Let Replace(ByVal vData As Boolean)
    mReplace = vData
End Property

Public Property Get Replace() As Boolean
    Replace = mReplace
End Property



