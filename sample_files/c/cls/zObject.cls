VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "zObject"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Private bAttribute(6) As Byte
Public Parent As Long
Public Child As Long
Public Sibling As Long
Public ObjTableAddr As Long
Public PropTableAddr As Long
Public Ver As Byte
Public ShortName As String
Public ObjNo As Long
Private lProp(64) As Long
Private lPropAddr(64) As Long
Private lPropNo(64) As Long
Private lPropLen(64) As Long
Private lPropDefault(64) As Long
Property Let AttribByte(Index As Integer, expr As Byte)
    bAttribute(Index) = expr
End Property
Property Get AttribByte(Index As Integer) As Byte
    AttribByte = bAttribute(Index)
End Property
Public Function GetAttribute(ByVal AttrIdx As Byte) As Boolean
    GetAttribute = ((bAttribute(AttrIdx \ 8) And 2 ^ (7 - (AttrIdx Mod 8))) = 2 ^ (7 - (AttrIdx Mod 8)))
End Function
Public Function SetAttribute(ByVal AttrIdx As Byte)
    bAttribute(AttrIdx \ 8) = bAttribute(AttrIdx \ 8) Or 2 ^ (7 - (AttrIdx Mod 8))
End Function
Public Function ClearAttribute(ByVal AttrIdx As Byte)
    bAttribute(AttrIdx \ 8) = bAttribute(AttrIdx \ 8) Or 2 ^ (7 - (AttrIdx Mod 8))
    bAttribute(AttrIdx \ 8) = bAttribute(AttrIdx \ 8) Xor 2 ^ (7 - (AttrIdx Mod 8))
End Function
Property Get Prop(ByVal Index As Integer) As Long
    Dim i As Integer
    For i = 1 To 64
        If lPropNo(i) = 0 Then Prop = lPropDefault(Index): Exit Property
        If lPropNo(i) = Index Then Prop = lProp(i): Exit Property
    Next
    If lPropNo(i) = 0 Then Prop = lPropDefault(Index): Exit Property
End Property
Property Let Prop(ByVal Index As Integer, ByVal expr As Long)
    Dim i As Integer
    For i = 1 To 64
        If lPropNo(i) = 0 Then lPropNo(i) = Index: lProp(i) = expr: Exit Property
        If lPropNo(i) = Index Then lProp(i) = expr: Exit Property
    Next
End Property
Property Get PropAddr(Index As Integer) As Long
    Dim i As Integer
    For i = 1 To 64
        If lPropNo(i) = 0 Then PropAddr = 0: Exit Property
        If lPropNo(i) = Index Then PropAddr = lPropAddr(i): Exit Property
    Next
End Property
Property Let PropAddr(Index As Integer, expr As Long)
    Dim i As Integer
    For i = 1 To 64
        If lPropNo(i) = 0 Then lPropNo(i) = Index: lPropAddr(i) = expr: Exit Property
        If lPropNo(i) = Index Then lPropAddr(i) = expr: Exit Property
    Next
End Property
Property Get PropLen(Index As Integer) As Long
    Dim i As Integer
    For i = 1 To 64
        If lPropNo(i) = 0 Then PropLen = 0: Exit Property
        If lPropNo(i) = Index Then PropLen = lPropLen(i): Exit Property
    Next
End Property
Property Let PropLen(Index As Integer, expr As Long)
    Dim i As Integer
    For i = 1 To 64
        If lPropNo(i) = 0 Then lPropNo(i) = Index: lPropLen(i) = expr: Exit Property
        If lPropNo(i) = Index Then lPropLen(i) = expr: Exit Property
    Next
End Property
Property Let PropDefault(Index As Integer, expr As Long)
    lPropDefault(Index) = expr
End Property
Public Function SetProp(ByVal PropNo As Integer, ByVal PropVal As Long, ByVal PropLen As Integer, ByVal PropAddr As Long)
    Dim i As Integer
    For i = 1 To 64
        If lPropNo(i) = 0 Or lPropNo(i) = PropNo Then lPropNo(i) = PropNo: lProp(i) = PropVal: lPropAddr(i) = PropAddr: lPropLen(i) = PropLen: Exit Function
    Next
End Function
Public Function NextProp(ByVal PropNo As Integer) As Integer
    Dim i As Integer
    For i = 1 To 63
        If lPropNo(i) = 0 Or lPropNo(i) = PropNo Then NextProp = lPropNo(i + 1): Exit Function
    Next
End Function
Public Function WriteObject(Story() As Byte)
    Dim addr As Long
    Dim ReachedEnd As Boolean
    Dim Offset As Long
    Dim ObjectLen As Integer
    Dim proptablelen As Integer
    Dim AttribByteCount As Byte
    Dim i As Integer
    Dim PropLen As Integer
    Dim PropAddr As Long
    Dim Prop As Long
    Dim PropNo As Integer
    Select Case Ver
    Case 1 To 3
        proptablelen = 62
        ObjectLen = 9
        AttribByteCount = 4
    Case 4 To 6
        proptablelen = 126
        ObjectLen = 14
        AttribByteCount = 6
    End Select
    Offset = ObjTableAddr
    For i = 0 To AttribByteCount - 1
        Story(Offset + i) = AttribByte(i)
    Next
    If Ver < 4 Then
        Story(Offset + i) = Parent
        Story(Offset + i + 1) = Sibling
        Story(Offset + i + 2) = Child
        SetWord Story(), Offset + i + 3, PropTableAddr
    Else
        SetWord Story(), Offset + i, Parent
        SetWord Story(), Offset + i + 2, Sibling
        SetWord Story(), Offset + i + 4, Child
        SetWord Story(), Offset + i + 6, PropTableAddr
    End If
    addr = PropTableAddr + Story(PropTableAddr) * 2 + 1
    Do
        If Story(addr) = 0 Then Exit Do
        If Ver < 4 Then
            PropLen = (Story(addr) \ 32) + 1
            PropNo = Story(addr) Mod 32
        Else
            PropNo = Story(addr) Mod 64
            If (Story(addr) And 128) = 128 Then
                addr = addr + 1
                PropLen = Story(addr) Mod 64
            Else
                If (Story(addr) And 64) = 64 Then PropLen = 2 Else PropLen = 1
            End If
        End If
        PropAddr = addr + 1
        Select Case PropLen
            Case 1
                Story(PropAddr) = Me.Prop(PropNo) And 255
            Case 2
                SetWord Story(), PropAddr, Me.Prop(PropNo)
'           Case Else
'               Prop = 0
        End Select
'       GetObject.SetProp PropNo, Prop, PropLen, PropAddr
        addr = PropLen + PropAddr
    Loop
End Function
