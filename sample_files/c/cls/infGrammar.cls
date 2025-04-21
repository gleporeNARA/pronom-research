VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infGrammar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Collection" ,"infGrammarDefs"
Attribute VB_Ext_KEY = "Member0" ,"infGrammarDefs"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Private mCol As Collection
Private mKey As Long

Public Function Add(GType As GrammarTypes, Meta As Boolean, Only As Boolean, AllWords As String, Keyword As GrammarKeywords, Definition As String) As String
    Dim objNewMember As infGrammarDefs
    Set objNewMember = New infGrammarDefs

    mKey = mKey + 1
    objNewMember.GType = GType
    objNewMember.Meta = Meta
    objNewMember.AllWords = AllWords
    objNewMember.Keyword = Keyword
    objNewMember.Only = Only
    objNewMember.Index = mKey
    objNewMember.Definition = Definition
    mCol.Add objNewMember, "G" & mKey

    Add = "G" & mKey
    Set objNewMember = Nothing
End Function

Public Property Get Item(vntIndexKey As Variant) As infGrammarDefs
Attribute Item.VB_UserMemId = 0
  Set Item = mCol(vntIndexKey)
End Property

Public Property Get Count() As Long
    Count = mCol.Count
End Property

Public Sub Remove(vntIndexKey As Variant)
    mCol.Remove vntIndexKey
    mKey = mKey - 1
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

