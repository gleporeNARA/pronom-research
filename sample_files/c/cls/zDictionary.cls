VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "zDictionary"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Option Compare Text
Public EntryCount As Long
Public InputCodeCount As Long
Private alp(3)
Private szEntry() As String
Private lEntryAddress() As Long
Private szInputCode() As String
Private EntryLen As Byte
Private Ver As Byte
Private Type ZString
    zCh(100) As Byte
    Length As Long
End Type
Dim zBuffer As ZString
Private Abb() As String

Public Function LoadDictionary(Story() As Byte, Offset As Long)
    Dim addr As Long
    Dim i As Long
    alp(0) = "abcdefghijklmnopqrstuvwxyz"
    alp(1) = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    alp(2) = "~^0123456789.,!?_#'" & Chr(34) & "/\-:()"
    InputCodeCount = Story(Offset)
    ReDim szInputCode(InputCodeCount)
    For addr = Offset + 1 To Offset + InputCodeCount
        szInputCode(addr - Offset) = Story(addr)
    Next
    Offset = addr
    EntryLen = Story(Offset)
    EntryCount = GetWord(Story, Offset + 1)
    Ver = GetByte(Story(), 0)
    ReDim szEntry(EntryCount)
    ReDim lEntryAddress(EntryCount)
    For i = 1 To EntryCount
        addr = Offset + 3 + (EntryLen * (i - 1))
        zRanslate Story(), addr
        If Ver < 4 Then
            zBuffer.Length = 6
        Else
            zBuffer.Length = 9
        End If
        szEntry(i) = ZPrint(zBuffer)
        lEntryAddress(i) = addr
    Next
End Function
Private Function zRanslate(ach() As Byte, Optional Offset As Long) 'As ZString
    'On Error GoTo handler
    Dim EOS As Boolean
    Dim zA As Byte
    Dim zB As Byte
    Dim i As Long
    Dim zcounter As Long
    For i = Offset To UBound(ach) - 1 Step 2
        zA = ach(i)
        zB = ach(i + 1)
        EOS = ((zA And 128) = 128)
        zBuffer.zCh(zcounter) = (zA And 124) \ 4
        zBuffer.zCh(zcounter + 2) = zB And 31
        zBuffer.zCh(zcounter + 1) = ((zA And 3) * 8) + (zB And 224) \ 32
        zcounter = zcounter + 3
        If EOS Then
            zBuffer.Length = zcounter
            Exit Function
        End If
    Next
Exit Function
handler:
    If MsgBox("Runtime Error: " & Err.Number & vbCrLf & Err.Description, vbExclamation + vbOKCancel) = vbCancel Then Err.Raise Err.Number, Err.Source, Err.Description, Err.HelpFile, Err.HelpContext
End Function
Private Function ZPrint(zs As ZString) As String
    Dim alph As Byte
    Dim abbr As Byte
    Dim cnt As Long
    Dim shift As Byte
    Dim shiftlock As Byte
    Dim i As Long
    Dim t As Byte
    For i = 0 To zs.Length - 1
        t = zs.zCh(i)
        Select Case t
        Case 0
            ZPrint = ZPrint + " "
        Case 1
            If Ver = 1 Then
                ZPrint = ZPrint + "^"
            Else
                i = i + 1
                ZPrint = ZPrint + Abb(zs.zCh(i))
            End If
        Case 2 To 3
            Select Case Ver
            Case 1 To 2
                shift = t - 1
            Case 3 To 9
                i = i + 1
                ZPrint = ZPrint + Abb(32 * (t - 1) + zs.zCh(i))
            End Select
        Case 4 To 5
            Select Case Ver
            Case 1 To 2
                shiftlock = t - 3
            Case 3 To 9
                shift = t - 3
            End Select
        Case 6 To 31
            alph = (alph + 3 + shift) Mod 3
            alph = (alph + 3 + shiftlock) Mod 3
            shiftlock = 0
            If alph = 2 And t = 6 Then
                If 32 * zs.zCh(i + 1) + zs.zCh(i + 2) < 256 Then
                    ZPrint = ZPrint + Chr(32 * zs.zCh(i + 1) + zs.zCh(i + 2))
                    i = i + 2
                End If
            Else
                ZPrint = ZPrint + Mid(alp(alph), t - 5, 1)
            End If
            alph = (alph + 3 - shift) Mod 3
            shift = 0
        End Select
    Next
End Function
Public Function LookupAddress(ByVal LookupWord As String) As Long
    If Ver < 4 Then
        LookupWord = Left(LookupWord, 6)
    Else
        LookupWord = Left(LookupWord, 9)
    End If
    Dim i As Integer
    For i = 1 To EntryCount
        If Trim(szEntry(i)) = Trim(LookupWord) Then LookupAddress = lEntryAddress(i): Exit Function
    Next
End Function
Public Function Tokenise(Story() As Byte, TextOffset As Long, ParseOffset As Long, Optional IgnoreNoMatch As Boolean)
    Dim inputstr As String
    Dim word As String
    Dim c As Integer
    Dim i As Integer
    Dim lastfound As Integer
    Dim addr As Long
    Dim foundcount As Integer
    If Ver > 4 Then c = 1 Else c = 0
    inputstr = String(Story(TextOffset + c), " ")
    For i = 1 To Story(TextOffset + c)
        If Story(TextOffset + c + i) = 0 Then
            inputstr = Left(inputstr, i - 1)
            Exit For
        End If
        Mid(inputstr, i, 1) = Chr(Story(TextOffset + c + i))
    Next
    inputstr = inputstr & " "
    lastfound = 1
    For i = 1 To Len(inputstr)
        If CheckInputCode(Mid(inputstr, i, 1)) Or Mid(inputstr, i, 1) = " " Then
            If word = "" Then
            Else
                addr = LookupAddress(word)
                If addr = 0 And IgnoreNoMatch Then
                    
                Else
                    foundcount = foundcount + 1
                    SetWord Story(), 2 + ParseOffset + 4 * (foundcount - 1), addr
                    Story(4 + ParseOffset + 4 * (foundcount - 1)) = Len(word)
                    Story(5 + ParseOffset + 4 * (foundcount - 1)) = lastfound + c
                    lastfound = i + 1
                End If
                If Mid(inputstr, i, 1) <> " " Then
                    word = Mid(inputstr, i, 1)
                    addr = LookupAddress(word)
                    If addr = 0 And IgnoreNoMatch Then
                        
                    Else
                        foundcount = foundcount + 1
                        SetWord Story(), 2 + ParseOffset + 4 * (foundcount - 1), addr
                        Story(4 + ParseOffset + 4 * (foundcount - 1)) = Len(word)
                        Story(5 + ParseOffset + 4 * (foundcount - 1)) = lastfound - 1 + c
                    End If
                End If
                word = ""
            End If
        Else
            word = word & Mid(inputstr, i, 1)
        End If
    Next
    Story(ParseOffset + 1) = foundcount
End Function
Private Function CheckInputCode(char As String) As Boolean
    Dim i As Byte
    'If char = " " Then CheckInputCode = True: Exit Function
    For i = 1 To InputCodeCount
        If Asc(char) = szInputCode(i) Then CheckInputCode = True: Exit Function
    Next
End Function
