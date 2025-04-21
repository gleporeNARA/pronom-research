VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infPhrases"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Collection" ,"infPhrase"
Attribute VB_Ext_KEY = "Member0" ,"infPhrase"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Private mCol As Collection
Private mIndex As Long

Public Sub Add(Definition As String, ProcedureName As String)
    Dim objNewMember As infPhrase
    Set objNewMember = New infPhrase

    mIndex = mIndex + 1
    objNewMember.Definition = Definition
    objNewMember.ProcedureName = ProcedureName
    objNewMember.Index = mIndex
    mCol.Add objNewMember, "P" & mIndex

    Set objNewMember = Nothing
End Sub

Public Property Get Item(vntIndexKey As Variant) As infPhrase
Attribute Item.VB_UserMemId = 0
  Set Item = mCol(vntIndexKey)
End Property

Public Property Get Count() As Long
    Count = mCol.Count
End Property

Public Sub Remove(vntIndexKey As Variant)
    mCol.Remove vntIndexKey
    mIndex = mIndex - 1
End Sub

Public Property Get NewEnum() As IUnknown
Attribute NewEnum.VB_UserMemId = -4
Attribute NewEnum.VB_MemberFlags = "40"
    Set NewEnum = mCol.[_NewEnum]
End Property

Private Sub Class_Initialize()
    Set mCol = New Collection
End Sub

Private Sub Class_Terminate()
    Set mCol = Nothing
End Sub

Public Sub Clear()
    Set mCol = Nothing
    Set mCol = New Collection
End Sub

