VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form MULTI 
   Caption         =   "EXTRACT MULTIPLICITY DATA"
   ClientHeight    =   8580
   ClientLeft      =   4035
   ClientTop       =   3360
   ClientWidth     =   8865
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Multi.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8580
   ScaleWidth      =   8865
   Begin VB.CommandButton cmdMinuteFile 
      Caption         =   "Make Minute"
      Height          =   315
      Left            =   2160
      TabIndex        =   21
      Top             =   120
      Width           =   1695
   End
   Begin VB.CommandButton cmdAllStandard 
      Caption         =   "Make All Standard"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   120
      TabIndex        =   19
      Top             =   1200
      Width           =   1755
   End
   Begin VB.DirListBox Dir2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1440
      Left            =   6120
      TabIndex        =   18
      Top             =   3960
      Width           =   2205
   End
   Begin VB.FileListBox File1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2430
      Left            =   6120
      Pattern         =   "*.DAT"
      TabIndex        =   17
      Top             =   5760
      Width           =   2205
   End
   Begin VB.CommandButton cmdStandard 
      Caption         =   "Make One Standard"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   120
      TabIndex        =   16
      Top             =   840
      Width           =   1755
   End
   Begin VB.HScrollBar hscRecordTrap 
      Height          =   195
      LargeChange     =   1000
      Left            =   3780
      Max             =   30000
      Min             =   1
      TabIndex        =   15
      Top             =   2220
      Value           =   1
      Width           =   1515
   End
   Begin Threed.SSCheck chkDataTrap 
      Height          =   255
      Left            =   600
      TabIndex        =   12
      Top             =   2160
      Width           =   1215
      _Version        =   65536
      _ExtentX        =   2143
      _ExtentY        =   450
      _StockProps     =   78
      Caption         =   "Process only"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Value           =   -1  'True
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   2280
      TabIndex        =   10
      Text            =   "0"
      Top             =   2520
      Width           =   975
   End
   Begin Threed.SSCheck chkCorrectTime 
      Height          =   255
      Left            =   600
      TabIndex        =   8
      Top             =   2880
      Width           =   1815
      _Version        =   65536
      _ExtentX        =   3201
      _ExtentY        =   450
      _StockProps     =   78
      Caption         =   "Correct Time To UT"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.CommandButton cmdProcess 
      Caption         =   "Extract Multiplicity"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   120
      TabIndex        =   7
      Top             =   480
      Width           =   1725
   End
   Begin VB.DirListBox Dir1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1440
      Left            =   480
      TabIndex        =   3
      Top             =   3960
      Width           =   4815
   End
   Begin MSComDlg.CommonDialog cdlSelect 
      Left            =   8280
      Top             =   120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label lblVersion 
      Caption         =   "Version 6.00, Mercer, March 28, 2006"
      Height          =   255
      Left            =   600
      TabIndex        =   20
      Top             =   5880
      Width           =   4695
   End
   Begin VB.Label Label5 
      Caption         =   "Records"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2700
      TabIndex        =   14
      Top             =   2220
      Width           =   915
   End
   Begin VB.Label lblDataTrap 
      Alignment       =   2  'Center
      Caption         =   "1000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1800
      TabIndex        =   13
      Top             =   2220
      Width           =   855
   End
   Begin VB.Label Label3 
      Caption         =   "Seconds to Computer Time"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3360
      TabIndex        =   11
      Top             =   2520
      Width           =   2175
   End
   Begin VB.Label Label2 
      Caption         =   "Time Correction:  Add"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   600
      TabIndex        =   9
      Top             =   2520
      Width           =   1575
   End
   Begin VB.Label lblWorking 
      BackColor       =   &H0000FF00&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5760
      TabIndex        =   6
      Top             =   480
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "FIRST STEP: SELECT OUTPUT DIRECTORY \/   AND (FIRST) INPUT FILE  \/"
      Height          =   255
      Left            =   1080
      TabIndex        =   5
      Top             =   3480
      Width           =   6975
   End
   Begin VB.Label lblPath1 
      Caption         =   "PATH"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   180
      TabIndex        =   4
      Top             =   1620
      Width           =   5775
   End
   Begin VB.Label lblTest 
      Caption         =   "TEST"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2280
      TabIndex        =   2
      Top             =   1080
      Width           =   3135
   End
   Begin VB.Label lblProgress 
      Caption         =   "PROGRESS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2280
      TabIndex        =   1
      Top             =   720
      Width           =   2655
   End
   Begin VB.Label lblFileName 
      AutoSize        =   -1  'True
      BackColor       =   &H0000FF00&
      Caption         =   "INPUT FILE NAME"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   1380
   End
End
Attribute VB_Name = "MULTI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DataRec As String
Dim DataTrap As Long
Dim CurrentFile As String
Dim FileTag As String
Dim OutString As String
Dim NowDate As String
Dim ReadDate As String
Dim OutFile As String
Dim OutDir As String
Dim nHouse As Long
Dim bOutOpen As Boolean
Dim MoreCodes As Boolean
Dim BigOne As String
Dim FormCode(10) As String
Dim nowCode As String
Dim nxtCode As Integer
Dim locCode As Integer
Dim maxCode As Integer

Private Sub cmdAllStandard_Click()
Dim I As Integer
For I = 0 To File1.ListCount - 1
File1.ListIndex = I
cmdStandard_Click
Next I
End Sub

Private Sub cmdMinuteFile_Click()
Dim I As Integer
Dim J As Integer
Dim Trap As Long
Dim InHr As Long
Dim InMin As Long
Dim InSec As Long
Dim SecOfDay As Long
Dim WorkString As String
Dim nSent As Integer
Dim nTotal As Integer
Dim cPHA As Integer
Dim cTime As Long
Dim LineOut As String
Dim ParsedLP(11) As String
Dim ParsedLW(19) As String
Dim PrevMin(2) As Long
Dim DelMin(2) As Long
Dim CurCts(2) As Long
lblWorking.BackColor = &HFF&
lblWorking.Refresh
NowDate = " "
Open CurrentFile For Input As #1
Open Dir1.Path & "\" & FileTag & "_Minute.dat" For Output As #2
Print #2, "Time   SecOfDay  Baro     Sc0 Del0     Sc1 Del1     Sc2 Del2"
bOutOpen = True
Trap = 0
Do While Not EOF(1) And ((Not chkDataTrap.Value) Or Trap < DataTrap) ' Loop until end of file.
'Do While Not EOF(1) ' Loop until end of file.
  Line Input #1, DataRec ' Read line into variable.
  If Left$(DataRec, 4) = "LP: " Then
    'LP: 00/02/07 00:05:00 00:04:57 725.5 00:04:59 725.7 724.95 17.51 736.250
    FillStringArray ParsedLP, DataRec
    LineOut = ParsedLP(2)
    SecOfDay = CLng(Left$(ParsedLP(2), 2)) * 3600
    SecOfDay = SecOfDay + CLng(Mid$(ParsedLP(2), 4, 2)) * CLng(60)
    SecOfDay = SecOfDay + CLng(Right$(ParsedLP(2), 2)) * CLng(60)
    LineOut = LineOut & " " & Right$("      " & Format$(SecOfDay, 0), 6)
    LineOut = LineOut & Right$("        " & ParsedLP(4), 6)
  ElseIf Left$(DataRec, 4) = "LW: " Then
    FillStringArray ParsedLW, DataRec
    On Error Resume Next
    CurCts(0) = 0
    CurCts(0) = CLng(ParsedLW(11))
    CurCts(1) = 0
    CurCts(1) = CLng(ParsedLW(12))
    CurCts(2) = 0
    CurCts(2) = CLng(ParsedLW(13))
    On Error GoTo 0
    For I = 0 To 2
      DelMin(I) = CurCts(I) - PrevMin(I)
      PrevMin(I) = CurCts(I)
      LineOut = LineOut & " " & Right$("        " & Format$(CurCts(I), 0), 7)
      LineOut = LineOut & " " & Right$("        " & Format$(DelMin(I), 0), 4)
    Next I
    Print #2, LineOut
  End If
  Trap = Trap + 1
  I = DoEvents
Loop
lblWorking.BackColor = &HFF00&
lblWorking.Refresh
Close #1
Close #2
End Sub

Private Sub cmdProcess_Click()
Dim I As Integer
Dim J As Integer
Dim Trap As Long
Dim InHr As Long
Dim InMin As Long
Dim InSec As Long
Dim SecOfDay As Long
Dim WorkString As String
Dim nSent As Integer
Dim nTotal As Integer
Dim cPHA As Integer
Dim cTime As Long
Dim LineOut As String
lblWorking.BackColor = &HFF&
lblWorking.Refresh
NowDate = " "
Open CurrentFile For Input As #1
Open Dir1.Path & "\" & FileTag & "_RollPitch.dat" For Output As #2
Print #2, "Time Pitch1 Roll1 Pitch2 Roll2 Win0 Win1 Win2"
Open Dir1.Path & "\" & FileTag & "_Chaff.txt" For Output As #3
Open Dir1.Path & "\" & FileTag & "_M10.dat" For Output As #4
Print #4, "PHA TIME"
Open Dir1.Path & "\" & FileTag & "_M11.dat" For Output As #5
Print #5, "PHA TIME"
Open Dir1.Path & "\" & FileTag & "_M20.dat" For Output As #6
Print #6, "PHA TIME"
Open Dir1.Path & "\" & FileTag & "_M21.dat" For Output As #7
Print #7, "PHA TIME"
Open Dir1.Path & "\" & FileTag & "_M00.dat" For Output As #8
Print #6, "PHA TIME"
Open Dir1.Path & "\" & FileTag & "_M01.dat" For Output As #9
Print #7, "PHA TIME"
bOutOpen = True
Trap = 0
Do While Not EOF(1) And ((Not chkDataTrap.Value) Or Trap < DataTrap) ' Loop until end of file.
'Do While Not EOF(1) ' Loop until end of file.
  Line Input #1, DataRec ' Read line into variable.
  If Left$(DataRec, 4) = "LP: " Then
    'LP: 00/02/07 00:05:00 00:04:57 725.5 00:04:59 725.7 724.95 17.51 736.250
    OutString = Mid$(DataRec, 5)
    InHr = CInt(Mid$(DataRec, 14, 2))
    InMin = CInt(Mid$(DataRec, 17, 2))
    InSec = CInt(Mid$(DataRec, 20, 2))
'    Print #2, OutString
    SecOfDay = 3600 * InHr
    SecOfDay = SecOfDay + 60 * InMin + InSec
'    Print #2, Format$(SecOfDay, "00000")
  ElseIf Left$(DataRec, 4) = "LS: " Then
    'LS: -22.5 6.6 -3.2 3.2 3 15 12
    OutString = Format$(SecOfDay, "0")
    OutString = OutString + " " + Mid$(DataRec, 5)
    Print #2, OutString
    SecOfDay = SecOfDay + 1
  ElseIf Left$(DataRec, 5) = "LM: 0" Then
    'LM: 1 7 7 +353 48305 +324 61197 +337 37755 +331 11898 +346 34035 -61 6108 +339 7453
    WorkString = Mid$(DataRec, 6)
    nSent = ChopInt(WorkString)
    nTotal = ChopInt(WorkString)
'    Print #4, DataRec
'    Print #4, nSent, nTotal
'    Print #5, DataRec
'    Print #5, nSent, nTotal
    If nSent > 0 Then
      For I = 1 To nSent
        cPHA = ChopPHA(WorkString)
        cTime = ChopTime(WorkString)
        LineOut = Format$(Abs(cPHA), "0") + " " + Format$(cTime, "0")
        If cPHA > 0 Then
          Print #8, LineOut
        Else
          Print #9, LineOut
        End If
      Next I
    End If
  ElseIf Left$(DataRec, 5) = "LM: 1" Then
    'LM: 1 7 7 +353 48305 +324 61197 +337 37755 +331 11898 +346 34035 -61 6108 +339 7453
    WorkString = Mid$(DataRec, 6)
    nSent = ChopInt(WorkString)
    nTotal = ChopInt(WorkString)
'    Print #4, DataRec
'    Print #4, nSent, nTotal
'    Print #5, DataRec
'    Print #5, nSent, nTotal
    If nSent > 0 Then
      For I = 1 To nSent
        cPHA = ChopPHA(WorkString)
        cTime = ChopTime(WorkString)
        LineOut = Format$(Abs(cPHA), "0") + " " + Format$(cTime, "0")
        If cPHA > 0 Then
          Print #4, LineOut
        Else
          Print #5, LineOut
        End If
      Next I
    End If
  ElseIf Left$(DataRec, 5) = "LM: 2" Then
    'LM: 2 6 7 +410 19675 +345 16008 +386 18966 +152 133 +368 1872 +388 44725
    WorkString = Mid$(DataRec, 6)
    nSent = ChopInt(WorkString)
    nTotal = ChopInt(WorkString)
'    Print #6, DataRec
'    Print #6, nSent, nTotal
'    Print #7, DataRec
'    Print #7, nSent, nTotal
    If nSent > 0 Then
      For I = 1 To nSent
        cPHA = ChopPHA(WorkString)
        cTime = ChopTime(WorkString)
        LineOut = Format$(Abs(cPHA), "0") + " " + Format$(cTime, "0")
        If cPHA > 0 Then
          Print #6, LineOut
        Else
          Print #7, LineOut
        End If
      Next I
    End If
  Else
    Print #3, DataRec
  End If
  Trap = Trap + 1
  I = DoEvents
Loop
lblWorking.BackColor = &HFF00&
lblWorking.Refresh
Close #1
Close #2
Close #3
Close #4
Close #5
Close #6
Close #7
Close #8
Close #9
End Sub




Public Static Function NumLetter(InString) As Integer
Dim iLast As Integer
Dim nCur As Integer
Dim I As Integer
iLast = Len(InString)
NumLetter = 0
For I = 1 To iLast
  nCur = Asc(Mid$(InString, I, 1))
  If ((nCur > 64) And (nCur < 91)) Then
   NumLetter = NumLetter + 1
  ElseIf ((nCur > 96) And (nCur < 123)) Then
   NumLetter = NumLetter + 1
  Else
  End If
Next I
End Function

Private Sub cmdStandard_Click()
Dim I As Integer
Dim J As Integer
Dim Trap As Long
Dim InHr As Long
Dim InMin As Long
Dim InSec As Long
Dim SecOfDay As Long
Dim WorkString As String
Dim nSent As Integer
Dim nTotal As Integer
Dim cPHA As Integer
Dim cTime As Long
Dim LineOut As String
Dim ThisLSCount As String
Dim LastLSCount As String
Dim LastWasLS As Boolean
lblWorking.BackColor = &HFF&
lblWorking.Refresh
NowDate = " "
Open CurrentFile For Input As #1
Open Dir1.Path & "\" & File1.FileName For Output As #2
bOutOpen = True
Trap = 0
' Loop until end of file
Do While Not EOF(1) And ((Not chkDataTrap.Value) Or Trap < DataTrap)
  Line Input #1, DataRec ' Read line into variable.
  If Left$(DataRec, 4) = "LP: " Then
    'Set up references for possible use
    'LP: 00/02/07 00:05:00 00:04:57 725.5 00:04:59 725.7 724.95 17.51 736.250
    InHr = CInt(Mid$(DataRec, 14, 2))
    InMin = CInt(Mid$(DataRec, 17, 2))
    InSec = CInt(Mid$(DataRec, 20, 2))
    SecOfDay = 3600 * InHr
    SecOfDay = SecOfDay + 60 * InMin + InSec
    Print #2, DataRec
    LastWasLS = False
  ElseIf Left$(DataRec, 4) = "LS: " Then
    'LS: -22.5 6.6 -3.2 3.2 3 15 12
    'Eliminate extra LS: records (caused by stray DONE codes in the
    'datastream) if they (a) Immediately follow another LS: and
    '(b) Have identical counts.
    ThisLSCount = Mid$(DataRec, 5)
    For I = 1 To 4
      J = InStr(ThisLSCount, " ")
      ThisLSCount = Mid$(ThisLSCount, J + 1)
    Next I
    If LastWasLS Then
      If ThisLSCount = LastLSCount Then
        'Just ignore it
      Else
        LastLSCount = ThisLSCount
        Print #2, DataRec
      End If
    Else
      'There was an intervening record
      LastLSCount = ThisLSCount
      LastWasLS = True
      Print #2, DataRec
    End If
    SecOfDay = SecOfDay + 1
  ElseIf Left$(DataRec, 5) = "LM: 0" Then
    'LM: 1 7 7 +353 48305 +324 61197 +337 37755 +331 11898 +346 34035 -61 6108 +339 7453
    LastWasLS = False
  ElseIf Left$(DataRec, 5) = "LM: 1" Then
    'LM: 2 6 7 +410 19675 +345 16008 +386 18966 +152 133 +368 1872 +388 44725
    LastWasLS = False
  ElseIf Left$(DataRec, 5) = "LM: 2" Then
    'LM: 2 6 7 +410 19675 +345 16008 +386 18966 +152 133 +368 1872 +388 44725
  Else
    Print #2, DataRec
    LastWasLS = False
  End If
  Trap = Trap + 1
  I = DoEvents
Loop
lblWorking.BackColor = &HFF00&
lblWorking.Refresh
Close #1
Close #2
End Sub

Private Sub Dir1_Change()
lblPath1.Caption = Dir1.Path
End Sub


Private Sub Dir2_Change()
File1.Path = Dir2.Path
End Sub

Private Sub File1_Click()
Dim iDot As Integer
lblPath1.Caption = File1.Path & "\" & File1.FileName
CurrentFile = lblPath1.Caption
lblFileName.Caption = File1.FileName
iDot = InStr(lblFileName.Caption, ".")
If iDot > 1 Then
  FileTag = Left$(lblFileName.Caption, iDot - 1)
Else
  FileTag = lblFileName.Caption
End If
End Sub

Private Sub Form_Load()
FormCode(0) = "P: "
FormCode(1) = "G: "
FormCode(2) = "L: "
FormCode(3) = "T: "
FormCode(4) = "C: "
FormCode(5) = "W: "
FormCode(6) = "H: "
FormCode(7) = "R: "
FormCode(8) = "TRA"
maxCode = 8
lblTest = FormCode(2) + FormCode(5)
Dir1.Path = "C:\Documents and Settings\PENGUIN\My Documents\Proposals\2006 NSF Pole\Bare Tests\Processed Data"
Dir2.Path = "C:\Documents and Settings\PENGUIN\My Documents\Proposals\2006 NSF Pole\Bare Tests\Original Data"
hscRecordTrap.Value = 10
End Sub


Public Static Function ChopInt(InString As String) As Integer
Dim lBlank As Integer
ChopInt = 0
Do While Len(InString) > 0
  If Left$(InString, 1) = " " Then
    InString = Mid$(InString, 2)
  ElseIf InStr(InString, " ") = 0 Then
    ChopInt = CInt(InString)
    InString = ""
    Exit Function
  Else
    lBlank = InStr(InString, " ")
    ChopInt = CInt(Left$(InString, lBlank - 1))
    InString = Mid$(InString, lBlank + 1)
    Exit Function
  End If
Loop
End Function
Public Static Function ChopPHA(InString As String) As Integer
Dim lBlank As Integer
ChopPHA = 0
Do While Len(InString) > 0
  If Left$(InString, 1) = " " Then
    InString = Mid$(InString, 2)
  ElseIf InStr(InString, " ") = 0 Then
    ChopPHA = CInt(InString)
    InString = ""
    Exit Function
  Else
    lBlank = InStr(InString, " ")
    ChopPHA = CInt(Left$(InString, lBlank - 1))
    InString = Mid$(InString, lBlank + 1)
    Exit Function
  End If
Loop
End Function
Public Static Function ChopTime(InString As String) As Long
Dim lBlank As Integer
ChopTime = 0
Do While Len(InString) > 0
  If Left$(InString, 1) = " " Then
    InString = Mid$(InString, 2)
  ElseIf InStr(InString, " ") = 0 Then
    ChopTime = CLng(InString)
    InString = ""
    Exit Function
  Else
    lBlank = InStr(InString, " ")
    ChopTime = CLng(Left$(InString, lBlank - 1))
    InString = Mid$(InString, lBlank + 1)
    Exit Function
  End If
Loop
End Function

Private Sub hscRecordTrap_Change()
DataTrap = CLng(hscRecordTrap.Value) * 100
lblDataTrap.Caption = DataTrap
End Sub


