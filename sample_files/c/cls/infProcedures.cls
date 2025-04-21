VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infProcedures"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Collection" ,"infProcedure"
Attribute VB_Ext_KEY = "Member0" ,"infProcedure"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Private mIndex As Long
Private mCol As Collection

Public Sub Add(Name As String, Code As String)
    Dim objNewMember As infProcedure
    Set objNewMember = New infProcedure

    mIndex = mIndex + 1

    objNewMember.Index = mIndex
    objNewMember.Name = Name
    objNewMember.Code = Code
    objNewMember.Replace = False
    mCol.Add objNewMember, Name

    Set objNewMember = Nothing
End Sub

Public Function Find(vntIndexKey As Variant) As Long
    Dim lSearch As Long
    Dim tmpPrc As infProcedure
    If IsNumeric(vntIndexKey) Then
        If CLng(vntIndexKey) < mIndex Then
            Find = vntIndexKey
            Exit Function
        Else
            Find = 0
            Exit Function
        End If
    Else
        For lSearch = 1 To mIndex
            Set tmpPrc = mCol(lSearch)
            If tmpPrc.Name = vntIndexKey Then
                Find = lSearch
                Exit Function
            End If
        Next lSearch
    End If
End Function

Public Property Get Item(vntIndexKey As Variant) As infProcedure
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
    mIndex = 0
End Sub

Private Sub Class_Terminate()
    Set mCol = Nothing
End Sub

Public Sub Clear()
    Set mCol = Nothing
    Set mCol = New Collection
    mIndex = 0
End Sub

