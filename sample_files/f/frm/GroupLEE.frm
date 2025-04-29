VERSION 5.00
Begin VB.Form GroupLog 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "FILE CONCATENATE AND REFORMAT"
   ClientHeight    =   6795
   ClientLeft      =   1035
   ClientTop       =   1095
   ClientWidth     =   7770
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000008&
   Icon            =   "GroupLEE.frx":0000
   LinkTopic       =   "Form1"
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   6795
   ScaleWidth      =   7770
   Begin VB.CommandButton btnReformatIridium 
      Caption         =   "Iridium Reformat"
      Height          =   435
      Left            =   180
      TabIndex        =   10
      Top             =   4050
      Width           =   2175
   End
   Begin VB.CheckBox chkAddFilename 
      Caption         =   "Include File Name In Output"
      Height          =   255
      Left            =   2730
      TabIndex        =   9
      Top             =   3630
      Width           =   2775
   End
   Begin VB.OptionButton optBPD 
      Caption         =   "BPD"
      Height          =   375
      Left            =   4410
      TabIndex        =   8
      Top             =   810
      Width           =   1065
   End
   Begin VB.OptionButton optCRD 
      Caption         =   "CRD"
      Height          =   375
      Left            =   4410
      TabIndex        =   7
      Top             =   420
      Value           =   -1  'True
      Width           =   1065
   End
   Begin VB.FileListBox File1 
      Height          =   2430
      Left            =   2400
      Pattern         =   "*.CRD"
      TabIndex        =   3
      Top             =   240
      Width           =   1815
   End
   Begin VB.DirListBox Dir1 
      Height          =   1665
      Left            =   360
      TabIndex        =   2
      Top             =   1080
      Width           =   1815
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   360
      TabIndex        =   1
      Top             =   720
      Width           =   1815
   End
   Begin VB.CommandButton btnConcat 
      Appearance      =   0  'Flat
      Caption         =   "CONCATENATE"
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   1815
   End
   Begin VB.Label lblVersion 
      Caption         =   "2.01 Bartol 5/30/11"
      Height          =   255
      Left            =   150
      TabIndex        =   6
      Top             =   3690
      Width           =   2085
   End
   Begin VB.Label lblCurrentRec 
      Caption         =   "Label1"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   3240
      Width           =   5295
   End
   Begin VB.Label lblSelFile 
      Caption         =   "Label1"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   2880
      Width           =   5295
   End
End
Attribute VB_Name = "GroupLog"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim iDummy As Integer
Dim nFile As Integer
Dim DataRec As String

Private Sub btnConcat_Click()
Dim numRec As Long
Open File1.Path & "\" + "CONCAT.TXT" For Output As #2
For nFile = 0 To File1.ListCount - 1
 File1.ListIndex = nFile
 lblSelFile = File1.Path + "\" + File1.FileName
 Open lblSelFile.Caption For Input As #1
 If chkAddFilename.Value = 1 Then Print #2, "C: Filename=""" + File1.FileName + """"
 numRec = 0
 Do While Not EOF(1)
  Line Input #1, DataRec
  numRec = numRec + 1
  Print #2, DataRec
  If ((numRec Mod 100) = 0) Then lblCurrentRec.Caption = Format$(numRec) + DataRec
  iDummy = DoEvents
 Loop
 Close #1
Next nFile
Close #2
End Sub

Private Sub btnReformatIridium_Click()
Dim numRec As Long
Dim sDummy As String
Dim iSkip As Integer
Dim OutRec As String
Dim FirstRec As Boolean
Open File1.Path & "\" + "Iridium.Dat" For Output As #2
Print #2, "DOY2011    Write  DelWri  delMin  WrRate"
lblSelFile = File1.Path + "\" + File1.FileName
Open lblSelFile.Caption For Input As #1
FirstRec = True
'The only important entries are indicated by letters, explained below.
'
'DLM: 05/27/2011 00:04:54  02 80 29 1 0 0 0 2 15 0 0 0 0 0 51 541698 541536
'                          Q0 Q1 MC         A  B X X X X X  C      D      E
'
'(The first three entries are Hex, indicating the status of internal logic.)
'
'A: Number of commands received since reset
'B: Total number of records (Rates+commands+events): modulo 256 so not too useful
'C: Memory card errors: there should be a lot at startup, but then no more
'D: Write address: THE MOST IMPORTANT THING TO MONITOR, See below
'E: Read address: This is initialized to the first address written at power up; if it
'   changes something funny has happened.
'
Do While Not EOF(1)
  Line Input #1, DataRec
  numRec = numRec + 1
  If ((numRec Mod 100) = 0) Then
    lblCurrentRec.Caption = Format$(numRec) + DataRec
    iDummy = DoEvents
  End If
  If InStr(DataRec, "DLM:") > 0 Then
    StandardizeString DataRec
    sDummy = NextParm(DataRec)
    sDate = NextParm(DataRec)
    sTime = NextParm(DataRec)
    For iSkip = 1 To 15
      sDummy = NextParm(DataRec)
    Next iSkip
    nWrite = CLng(NextParm(DataRec))
    FullDate = CDate(sDate & " " & sTime)
    DOY2011 = 1# + (FullDate - CDate("1/1/2011 00:00:00"))
    OutRec = Format$(DOY2011, "0.0000")
    OutRec = OutRec & Right("          " & Format$(nWrite), 8)
    delWrite = nWrite - lWrite
    lWrite = nWrite
    OutRec = OutRec & Right("           " & Format$(delWrite), 8)
    delMinute = 1440# * (DOY2011 - lDOY2011)
    lDOY2011 = DOY2011
    OutRec = OutRec & Right("          " & Format$(delMinute, "0.00"), 8)
    If delMinute > 0# Then
      WriteRate = delWrite / delMinute
    Else
      WriteRate = 0#
    End If
    OutRec = OutRec & Right("          " & Format$(WriteRate, "0.00"), 8)
    If Not FirstRec Then Print #2, OutRec
    FirstRec = False
  End If
Loop
Close #1
Close #2
End Sub

Private Sub Dir1_Change()
File1.Path = Dir1.Path
End Sub

Private Sub Drive1_Change()
On Error GoTo Out
Dir1.Path = Drive1.Drive + "\"
Out: Exit Sub
End Sub

Private Sub File1_Click()
lblSelFile = Dir1.Path + File1.Path + "\" + File1.FileName
End Sub

Private Sub Form_Load()
Drive1.Drive = "C"
LineFeed = Chr$(10)
CarRet = Chr$(13)
TabChar = Chr$(9)
End Sub

Private Sub optBPD_Click()
File1.Pattern = "*.BPD"
End Sub

Private Sub optCRD_Click()
File1.Pattern = "*.CRD"
End Sub


