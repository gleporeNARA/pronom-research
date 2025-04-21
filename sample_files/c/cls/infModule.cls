VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infModule"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Public Enum infMODULE_TYPE
    infmtMAIN
    infmtLIB_PARSER
    infmtLIB_PARSERM
    infmtLIB_VERBLIB
    infmtLIB_VERBLIBM
    infmtLIB_ENGLISH
    infmtLIB_GRAMMAR
    infmtLIB_LINKLPA
    infmtLIB_LINKLV
    infmtUSER_DEFINED
End Enum

Private mParseSuccessful As Boolean
Private mRelease As Long
Private mReleaseComments As New infComments
Private mSerial As Date
Private mSerialComments As New infComments
Private mHeaderComments As New infComments
Private mSwitches As String
Private mName As String
Private mmType As infMODULE_TYPE
Private mIncludes As New infIncludes
Private mObjects As New infObjects
Private mComments As New infComments
Private mClasses As New infClasses
Private mAttributeDefs As New infAttributeDefs
Private mPropertyDefs As New infPropertyDefs
Private mGlobals As New infGlobals
Private mConstants As New infConstants
Private mProcedures As New infProcedures
Private mGrammar As New infGrammar
Private mReplace As New infReplaces
Private mArrays As New infArrays
Private mParseErrors As New infParseErrors

Public Property Let ParseSuccessful(ByVal vData As Boolean)
    mParseSuccessful = vData
End Property

Public Property Get ParseSuccessful() As Boolean
    ParseSuccessful = mParseSuccessful
End Property

Public Property Set ParseErrors(ByVal vData As infParseErrors)
    Set mParseErrors = vData
End Property

Public Property Get ParseErrors() As infParseErrors
    Set ParseErrors = mParseErrors
End Property

Public Property Set Arrays(ByVal vData As infArrays)
    Set mArrays = vData
End Property

Public Property Get Arrays() As infArrays
    Set Arrays = mArrays
End Property

Public Property Set Includes(ByVal vData As infIncludes)
    Set mIncludes = vData
End Property

Public Property Get Includes() As infIncludes
    Set Includes = mIncludes
End Property

Public Property Set HeaderComments(ByVal vData As infComments)
    Dim cm As infComment
    For Each cm In vData
        mHeaderComments.Add cm.Text
    Next
End Property

Public Property Get HeaderComments() As infComments
    Set HeaderComments = mHeaderComments
End Property

Public Property Set Replaces(ByVal vData As infReplaces)
    Set mReplace = vData
End Property

Public Property Get Replaces() As infReplaces
    Set Replaces = mReplace
End Property

Public Property Set SerialComments(ByVal vData As infComments)
    Dim cm As infComment
    For Each cm In vData
        mSerialComments.Add cm.Text
    Next
End Property

Public Property Get SerialComments() As infComments
    Set SerialComments = mSerialComments
End Property

Public Property Set ReleaseComments(ByVal vData As infComments)
    Dim cm As infComment
    For Each cm In vData
        mReleaseComments.Add cm.Text
    Next
End Property

Public Property Get ReleaseComments() As infComments
    Set ReleaseComments = mReleaseComments
End Property

Public Property Let Serial(ByVal dtSerial As Date)
    mSerial = dtSerial
End Property

Public Property Get Serial() As Date
    Serial = mSerial
End Property

Public Property Let Release(ByVal lRelease As Long)
    mRelease = lRelease
End Property

Public Property Get Release() As Long
    Release = mRelease
End Property

Public Property Set Grammar(ByVal vData As infGrammar)
    Set mGrammar = vData
End Property

Public Property Get Grammar() As infGrammar
    Set Grammar = mGrammar
End Property

Public Property Set Procedures(ByVal vData As infProcedures)
    Set mProcedures = vData
End Property

Public Property Get Procedures() As infProcedures
    Set Procedures = mProcedures
End Property

Public Property Set Constants(ByVal vData As infConstants)
    Set mConstants = vData
End Property

Public Property Get Constants() As infConstants
    Set Constants = mConstants
End Property

Public Property Set Globals(ByVal vData As infGlobals)
    Set mGlobals = vData
End Property

Public Property Get Globals() As infGlobals
    Set Globals = mGlobals
End Property

Public Property Set PropertyDefs(ByVal vData As infPropertyDefs)
    Set mPropertyDefs = vData
End Property

Public Property Get PropertyDefs() As infPropertyDefs
    Set PropertyDefs = mPropertyDefs
End Property

Public Property Set AttributeDefs(ByVal vData As infAttributeDefs)
    Set mAttributeDefs = vData
End Property

Public Property Get AttributeDefs() As infAttributeDefs
    Set AttributeDefs = mAttributeDefs
End Property

Public Property Set Classes(ByVal vData As infClasses)
    Set mClasses = vData
End Property

Public Property Get Classes() As infClasses
    Set Classes = mClasses
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

Public Property Let MType(ByVal infmtType As infMODULE_TYPE)
    mmType = infmtType
End Property

Public Property Get MType() As infMODULE_TYPE
    MType = mmType
End Property

Public Property Let Switches(ByVal sSwitches As String)
    mSwitches = sSwitches
End Property

Public Property Get Switches() As String
    Switches = mSwitches
End Property

Public Property Let Name(ByVal sName As String)
    mName = sName
End Property

Public Property Get Name() As String
    Name = mName
End Property

Public Property Get Objects() As infObjects
    Set Objects = mObjects
End Property

Public Property Set Objects(ByVal colObjects As infObjects)
    Set mObjects = colObjects
End Property

