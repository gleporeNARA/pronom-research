VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infObject"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Private mName As String
Private mParentName As String
Private mClassName As String
Private mShortName As String
Private mDepth As Long
Private mCode As String
Private mAttributes As New infAttributes
Private mProperties As New infProperties
Private mComments As New infComments
Private mSackObject As Boolean
Private mIndex As Long
Private mPrinted As Boolean

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

Public Property Let Printed(ByVal lPrinted As Long)
    mPrinted = lPrinted
End Property

Public Property Get Printed() As Long
    Printed = mPrinted
End Property

Public Property Let ShortName(ByVal sShortName As String)
    mShortName = sShortName
End Property

Public Property Get ShortName() As String
    ShortName = mShortName
End Property

Public Property Let ClassName(ByVal sClassName As String)
    mClassName = sClassName
End Property

Public Property Get ClassName() As String
    ClassName = mClassName
End Property

Public Property Let ParentName(ByVal sParentName As String)
    mParentName = sParentName
End Property

Public Property Get ParentName() As String
    ParentName = mParentName
End Property

Public Property Let Depth(ByVal lDepth As Long)
    mDepth = lDepth
End Property

Public Property Get Depth() As Long
    Depth = mDepth
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

Public Property Get Properties() As infProperties
    Set Properties = mProperties
End Property

Public Property Set Properties(ByVal colProperties As infProperties)
    Set mProperties = colProperties
End Property

Public Property Get Attributes() As infAttributes
    Set Attributes = mAttributes
End Property

Public Property Set Attributes(ByVal colAttributes As infAttributes)
    Set mAttributes = colAttributes
End Property

Public Property Let Code(ByVal sCode As String)
    mCode = sCode
End Property

Public Property Get Code() As String
    Code = mCode
End Property

Public Property Let isSackObject(ByVal bisSackObject As Boolean)
    mSackObject = bisSackObject
End Property

Public Property Get isSackObject() As Boolean
    isSackObject = mSackObject
End Property

