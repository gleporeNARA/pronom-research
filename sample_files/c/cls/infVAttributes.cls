VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infVAttributes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Collection" ,"infVAttribute"
Attribute VB_Ext_KEY = "Member0" ,"infVAttribute"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Private mCol As Collection

Public Sub Add(Name As String, Library As Boolean, Used As Boolean)
    Dim objNewMember As infVAttribute
    Set objNewMember = New infVAttribute

    objNewMember.Used = Used
    objNewMember.Library = Library
    objNewMember.Name = Name
    mCol.Add objNewMember, Name

    Set objNewMember = Nothing
End Sub

Public Property Get Item(vntIndexKey As Variant) As infVAttribute
Attribute Item.VB_UserMemId = 0
  Set Item = mCol(vntIndexKey)
End Property

Public Property Get Count() As Long
    Count = mCol.Count
End Property

Public Function Find(vntIndexKey As Variant) As Long
    Dim lSearch As Long
    Dim tmpAttr As infVAttribute
    For Each tmpAttr In mCol
        If tmpAttr.Name = vntIndexKey Then
            Find = 1
            Exit Function
        End If
    Next
    Find = 0
End Function

Public Sub Remove(vntIndexKey As Variant)
    mCol.Remove vntIndexKey
End Sub

Public Property Get NewEnum() As IUnknown
Attribute NewEnum.VB_UserMemId = -4
Attribute NewEnum.VB_MemberFlags = "40"
    Set NewEnum = mCol.[_NewEnum]
End Property

Public Sub Clear()
    Set mCol = Nothing
    Set mCol = New Collection
End Sub

Private Sub Class_Initialize()
    Set mCol = New Collection
End Sub

Private Sub Class_Terminate()
    Set mCol = Nothing
End Sub

