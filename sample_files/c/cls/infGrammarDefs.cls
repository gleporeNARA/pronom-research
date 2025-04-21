VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infGrammarDefs"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Public Enum GrammarTypes
    gtVERB
    gtEXTEND
    gtSYNONYM
End Enum

Private mIndex As Long
Private mGType As GrammarTypes
Private mMeta As Boolean
Private mAllWords As String
Private mOnly As Boolean
Private mKeyword As GrammarKeywords
Private mPhrases As New infPhrases
Private mComments As New infComments
Private mWords As New infGrammarWords
Private mDefinition As String

Public Property Let Index(ByVal lIndex As Long)
    mIndex = lIndex
End Property

Public Property Get Index() As Long
    Index = mIndex
End Property

Public Property Let GType(ByVal vData As GrammarTypes)
    mGType = vData
End Property

Public Property Get GType() As GrammarTypes
    GType = mGType
End Property

Public Property Let Meta(ByVal vData As Boolean)
    mMeta = vData
End Property

Public Property Get Meta() As Boolean
    Meta = mMeta
End Property

Public Property Let Only(ByVal vData As Boolean)
    mOnly = vData
End Property

Public Property Get Only() As Boolean
    Only = mOnly
End Property

Public Property Let AllWords(ByVal vData As String)
    mAllWords = vData
End Property

Public Property Get AllWords() As String
    AllWords = mAllWords
End Property

Public Property Let Definition(ByVal vData As String)
    mDefinition = vData
End Property

Public Property Get Definition() As String
    Definition = mDefinition
End Property

Public Property Let Keyword(ByVal vData As GrammarKeywords)
    mKeyword = vData
End Property

Public Property Get Keyword() As GrammarKeywords
    Keyword = mKeyword
End Property

Public Property Set Phrases(ByVal vData As infPhrases)
    Set mPhrases = vData
End Property

Public Property Get Phrases() As infPhrases
    Set Phrases = mPhrases
End Property

Public Property Set Words(ByVal vData As infGrammarWords)
    Set mWords = vData
End Property

Public Property Get Words() As infGrammarWords
    Set Words = mWords
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

