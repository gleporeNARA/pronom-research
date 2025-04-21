VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infConstants"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Collection" ,"infNameValueDef"
Attribute VB_Ext_KEY = "Member0" ,"infNameValueDef"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Private mCol As Collection

Public Sub Add(Name As String, Value As String)
    Dim objNewMember As infNameValueDef
    Set objNewMember = New infNameValueDef
    
    objNewMember.Name = Name
    objNewMember.Value = Value
    mCol.Add objNewMember, Name

    Set objNewMember = Nothing
End Sub

Public Property Get Item(vntIndexKey As Variant) As infNameValueDef
Attribute Item.VB_UserMemId = 0
  Set Item = mCol(vntIndexKey)
End Property

Public Property Get Count() As Long
    Count = mCol.Count
End Property

Public Function Find(vntIndexKey As Variant) As Long
    Dim lSearch As Long
    Dim tmpNVD As infNameValueDef
    For Each tmpNVD In mCol
        If tmpNVD.Name = vntIndexKey Then
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

