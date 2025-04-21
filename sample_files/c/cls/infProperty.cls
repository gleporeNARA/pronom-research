VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infProperty"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Public Enum infPROPERTY_TYPE
   infptNUMERIC
   infptNUMERIC_ARRAY
   infptSTRING
   infptSTRING_ARRAY
   infptIDENTIFIER
   infptIDENTIFIER_ARRAY
   infptPROCEDURE
End Enum

Private mName As String
Private mMode As Long
Private mArguments As String
Private mCode As String
Private mIndex As Long
Private mPrivate As Boolean

Public Property Let Index(ByVal lIndex As Long)
    mIndex = lIndex
End Property

Public Property Get Index() As Long
    Index = mIndex
End Property

Public Property Let Name(ByVal sName As String)
    mName = sName
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

Public Property Let Mode(ByVal lMode As infPROPERTY_TYPE)
    mMode = lMode
End Property

Public Property Get Mode() As infPROPERTY_TYPE
    Mode = mMode
End Property

Public Property Let Code(ByVal sCode As String)
    mCode = sCode
End Property

Public Property Get Code() As String
    Code = mCode
End Property

Public Property Let isPrivate(ByVal bPrivate As Boolean)
    mPrivate = bPrivate
End Property

Public Property Get isPrivate() As Boolean
    isPrivate = mPrivate
End Property


