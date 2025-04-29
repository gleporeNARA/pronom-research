VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmSumIceTop 
   Caption         =   "Summarize IceTop  Data"
   ClientHeight    =   6030
   ClientLeft      =   4470
   ClientTop       =   4140
   ClientWidth     =   6180
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmSumIceTop.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   6030
   ScaleWidth      =   6180
   Begin VB.Frame Frame4 
      Caption         =   "Software Version"
      Height          =   555
      Left            =   0
      TabIndex        =   4
      Top             =   5490
      Width           =   6135
      Begin VB.Label lblSoftwareVersion 
         Caption         =   "Version 9.00 Bartol 10/01/09"
         Height          =   255
         Left            =   180
         TabIndex        =   5
         Top             =   240
         Width           =   4005
      End
   End
   Begin VB.Frame frmGeneral 
      Caption         =   "Control"
      Height          =   5445
      Left            =   30
      TabIndex        =   0
      Top             =   0
      Width           =   6135
      Begin VB.VScrollBar vsbReadingMinimum 
         Height          =   465
         Left            =   270
         Max             =   60
         Min             =   1
         TabIndex        =   12
         Top             =   3750
         Value           =   60
         Width           =   255
      End
      Begin VB.CheckBox chkLogNVM 
         Caption         =   "Write NVM to Log"
         Height          =   315
         Left            =   270
         TabIndex        =   11
         Top             =   3300
         Width           =   2205
      End
      Begin VB.FileListBox flbAllFiles 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3600
         Left            =   3480
         Pattern         =   "*.bpd"
         TabIndex        =   8
         Top             =   1320
         Width           =   2385
      End
      Begin VB.CommandButton btnProcess 
         Caption         =   "PROCESS"
         Height          =   315
         Left            =   1830
         TabIndex        =   2
         Top             =   360
         Visible         =   0   'False
         Width           =   1425
      End
      Begin VB.CommandButton btnOpenInput 
         Caption         =   "OPEN INPUT"
         Height          =   315
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Width           =   1395
      End
      Begin VB.Label Label1 
         Caption         =   "Readings required for a valid minute average"
         Height          =   675
         Left            =   1170
         TabIndex        =   14
         Top             =   3750
         Width           =   1725
      End
      Begin VB.Label lblreadingMinimum 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Min"
         Height          =   195
         Left            =   660
         TabIndex        =   13
         Top             =   3900
         Width           =   315
      End
      Begin VB.Label lblFullFileName 
         AutoSize        =   -1  'True
         Caption         =   "FullFile Name"
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
         Left            =   120
         TabIndex        =   10
         Top             =   5160
         Width           =   945
      End
      Begin VB.Label lblRunType 
         AutoSize        =   -1  'True
         Caption         =   "ONE FILE"
         Height          =   195
         Left            =   390
         TabIndex        =   9
         Top             =   960
         Width           =   855
      End
      Begin VB.Label lblAverageType 
         AutoSize        =   -1  'True
         BackColor       =   &H0000C000&
         Caption         =   "HOUR"
         Height          =   195
         Left            =   2220
         TabIndex        =   7
         Top             =   960
         Width           =   555
      End
      Begin VB.Label lblBaseFileName 
         AutoSize        =   -1  'True
         Caption         =   "Base File Name"
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
         Left            =   270
         TabIndex        =   6
         Top             =   2640
         Width           =   1110
      End
      Begin VB.Label lblBusy 
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
         Height          =   315
         Left            =   3450
         TabIndex        =   3
         Top             =   360
         Width           =   435
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   6720
      Top             =   90
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
End
Attribute VB_Name = "frmSumIceTop"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub btnOpenInput_Click()
'Find the input directory and open the first (or only) file
Dim iBPD As Integer
Dim nFileName As Integer
ProcessFirstFile = True
Select Case lblRunType.Caption
Case "ALL FILES"
  On Error GoTo NoFile
  CommonDialog1.DefaultExt = "bpd"
  CommonDialog1.Filter = "IceTop Data |*.bpd|"
  CommonDialog1.InitDir = LatestFiles
  CommonDialog1.Action = 1
  InputDataFile = CommonDialog1.FileName
  FileTitle = CommonDialog1.FileTitle
  nFileName = InStr(InputDataFile, FileTitle)
  flbAllFiles.Visible = True
  flbAllFiles.Path = Left$(InputDataFile, nFileName - 1)
  FileListCount = flbAllFiles.ListCount
  If FileListCount <= 0 Then Exit Sub
  flbAllFiles.ListIndex = 0
  FileTitle = flbAllFiles.FileName
  iBPD = InStr(FileTitle, ".bpd")
  If iBPD = 0 Then iBPD = InStr(FileTitle, ".BPD")
  lblBaseFileName = Left$(FileTitle, iBPD - 1)
  InputDataFile = flbAllFiles.Path + "\" + flbAllFiles.FileName
  lblFullFileName = InputDataFile
  Open InputDataFile For Input As #1
Case Else
  On Error GoTo NoFile
  CommonDialog1.DefaultExt = "bpd"
  CommonDialog1.Filter = "IceTop Data |*.bpd|"
  CommonDialog1.InitDir = LatestFiles
  CommonDialog1.Action = 1
  InputDataFile = CommonDialog1.FileName
  FileTitle = CommonDialog1.FileTitle
  nFileName = InStr(InputDataFile, FileTitle)
  FileListCount = 1
  iBPD = InStr(FileTitle, ".bpd")
  If iBPD = 0 Then iBPD = InStr(FileTitle, ".BPD")
  lblBaseFileName = Left$(FileTitle, iBPD - 1)
  lblFullFileName = InputDataFile
  Open InputDataFile For Input As #1
End Select
btnProcess.Visible = True
btnOpenInput.Visible = False
Exit Sub
NoFile:
Exit Sub
End Sub

Private Static Sub btnProcess_Click()
Dim ParameterTitle As String
Dim TemperatureTitle As String
Dim StatusTitle As String
Dim nFileNow As Integer
Dim nCtrl As Integer
Dim iBPD As Integer
Dim TankTag As String
lblBusy.BackColor = &HFF&
lblBusy.Refresh
btnProcess.Visible = False
For nCtrl = 1 To lCtrl
  InitialTimeSeen(nCtrl) = False
Next nCtrl
For nFileNow = 0 To FileListCount - 1
  PrepareFolder SummDir & "Logs"
  Open SummDir & "Logs\" & lblBaseFileName.Caption & ".LOG" For Output As #2
  PrepareFolder SummDir & "StraySensors"
  Open SummDir & "StraySensors\Stray_" & lblBaseFileName.Caption & ".DAT" For Output As #3
  CurYear = CInt(Left$(lblBaseFileName.Caption, 2))
  CurMonth = CInt(Mid$(lblBaseFileName.Caption, 4, 2))
  CurDay = CInt(Mid$(lblBaseFileName.Caption, 7, 2))
  DOY CurYear, CurMonth, CurDay
  If CurYear = 8 Then DayOfYear = DayOfYear + 365#
  ParameterTitle = "Year DoY Time SecOfDay Day07 Ballast Sump BoardT Volt5 Volt12 Volt24 InAmp NileV Relay Q0 DeltaBal DeltaSump"
  TemperatureTitle = "Year DoY Time SecOfDay Day07 T00 T01 T02 T03 T04 T05 T06 T07 T08 T09 T10 T11 T12 T13 T14 T15 T16 T17 T18 T19 T20 T21 T22 T23 T24 T25 T26 T27 T28 T29"
  StatusTitle = "Year DoY Time SecOfDay Day07  HtrB Vac HtrC Sump HtrA Efan oCfan Inver PowOn COP lxVac lxSum lxHeat ThHeP lxCool lxCoM"
  Select Case lblAverageType.Caption
  Case "HOUR"
    For nCtrl = 1 To lCtrl
      TankTag = "T" & Right$("00" & Format$(AddressTable(0, TankIndex(nCtrl))), 2)
      If TankIndex(nCtrl) Mod 2 = 0 Then
        TankTag = TankTag & "A"
      Else
        TankTag = TankTag & "B"
      End If
      WriteBPD Format$(nCtrl) & " " & Format$(TankIndex(nCtrl)) & " " & TankTag
      PrepareFolder SummDir & "HourFiles"
      If (nFileNow = 0) And (lblRunType.Caption <> "APPEND ONE FILE") Then
        Open SummDir & "HourFiles\" & TankTag & "_Par.dat" For Output As #(nCtrl + 100)
        Open SummDir & "HourFiles\" & TankTag & "_Tem.dat" For Output As #(nCtrl + 200)
        Open SummDir & "HourFiles\" & TankTag & "_Sta.dat" For Output As #(nCtrl + 300)
        Print #(nCtrl + 100), ParameterTitle
        Print #(nCtrl + 200), TemperatureTitle
        Print #(nCtrl + 300), StatusTitle
      Else
        Open SummDir & "HourFiles\" & TankTag & "_Par.dat" For Append As #(nCtrl + 100)
        Open SummDir & "HourFiles\" & TankTag & "_Tem.dat" For Append As #(nCtrl + 200)
        Open SummDir & "HourFiles\" & TankTag & "_Sta.dat" For Append As #(nCtrl + 300)
      End If
    Next nCtrl
  Case Else
    For nCtrl = 1 To lCtrl
      TankTag = "T" & Right$("00" & Format$(AddressTable(0, TankIndex(nCtrl))), 2)
      If TankIndex(nCtrl) Mod 2 = 0 Then
        TankTag = TankTag & "A"
      Else
        TankTag = TankTag & "B"
      End If
      PrepareFolder SummDir & TankTag
      Open SummDir & TankTag & "\" & TankTag & "_" & lblBaseFileName.Caption & "_Par.dat" For Output As #(nCtrl + 100)
      Open SummDir & TankTag & "\" & TankTag & "_" & lblBaseFileName.Caption & "_Tem.dat" For Output As #(nCtrl + 200)
      Open SummDir & TankTag & "\" & TankTag & "_" & lblBaseFileName.Caption & "_Sta.dat" For Output As #(nCtrl + 300)
      Print #(nCtrl + 100), ParameterTitle
      Print #(nCtrl + 200), TemperatureTitle
      Print #(nCtrl + 300), StatusTitle
    Next nCtrl
  End Select
  ProcessOneFile
  Close #1
  Close #2
  Close #3
  For nCtrl = 1 To lCtrl
    Close #(nCtrl + 100)
    Close #(nCtrl + 200)
    Close #(nCtrl + 300)
  Next nCtrl
  If nFileNow < FileListCount - 1 Then
    'There are more files to process, so open the next one
    flbAllFiles.ListIndex = nFileNow + 1
    FileTitle = flbAllFiles.FileName
    iBPD = InStr(FileTitle, ".bpd")
    If iBPD = 0 Then iBPD = InStr(FileTitle, ".BPD")
    lblBaseFileName = Left$(FileTitle, iBPD - 1)
    InputDataFile = flbAllFiles.Path + "\" + flbAllFiles.FileName
    lblFullFileName = InputDataFile
    Open InputDataFile For Input As #1
  End If
Next nFileNow
lblBusy.BackColor = &HFF00&
lblBusy.Refresh
btnProcess.Visible = False
btnOpenInput.Visible = True
End Sub



Private Sub Form_Load()
Dim TimeSet(5) As Integer
Dim iFor As Integer
Dim jFor As Integer
Dim LineIn As String
Dim Parsed(4) As String
Dim ConstructLine As String
'Directory Names
IceTopRoot = "C:\09IceTop\"
Table_Dir = IceTopRoot & "Tables\"
Open IceTopRoot & "SumIceTop Debug.lis" For Output As #20
FillIntegerArray Days, 11, "0 31 59 90 120 151 181 212 243 273 304 334 "
FillIntegerArray DaysLeap, 11, "0 31 60 91 121 152 182 213 244 274 305 335 "
lblRunType.Caption = "ONE FILE"
flbAllFiles.Visible = False
flbAllFiles.Path = LatestFiles
lblAverageType.Caption = "HOUR"
lblAverageType.BackColor = ColorGreen
MinimalNumber = 60
vsbReadingMinimum.Value = 5
'Use the root table to figure out the number of tanks
'and to get the information on the various components
ControllerRange(0) = 63
ControllerRange(1) = 1
For iFor = 0 To 63
  'Initialize to all no tanks registered
  TankIndex(iFor) = -1
Next iFor
lTank = -1
Open Table_Dir & "RootTable.txt" For Input As #4
ConstructLine = "M: "
AddTimeStamp ConstructLine
ConstructLine = ConstructLine & " " & Table_Dir & "AddressTable.txt" & " opened"
WriteBPD ConstructLine
Do While Not EOF(4)
  Line Input #4, LineIn
  ConstructLine = "M: "
  AddTimeStamp ConstructLine
  ConstructLine = ConstructLine & " " & LineIn
  WriteBPD ConstructLine
  If Left$(LineIn, 1) <> "*" Then
    lTank = lTank + 1
    FillStringArray Parsed, LineIn
    'The tanks must be grouped by stations
    If (lTank Mod 2) = 0 Then
      'The first tank of a station
      'Station number (need not really be unique)
      AddressTable(0, lTank) = CInt(Parsed(0))
      'This must be the A tank
      If Parsed(1) <> "A" Then
        ConstructLine = "M: "
        AddTimeStamp ConstructLine
        ConstructLine = ConstructLine & " This is not the A tank"
        WriteBPD ConstructLine
        End
      End If
      'Controller data file
      FileTable(0, lTank) = Parsed(2)
      'Tank data file
      FileTable(1, lTank) = Parsed(3)
      'Controller Address
      AddressTable(1, lTank) = CInt(Parsed(4))
    Else
      'The second tank of a station
      'Station number (need not really be unique)
      AddressTable(0, lTank) = CInt(Parsed(0))
      'but it must agree with that of the "even" tank
      If AddressTable(0, lTank) <> AddressTable(0, lTank - 1) Then
        ConstructLine = "M: "
        AddTimeStamp ConstructLine
        ConstructLine = ConstructLine & " Tanks must be in pairs"
        WriteBPD ConstructLine
        End
      End If
     'This must be the A tank
      If Parsed(1) <> "B" Then
        ConstructLine = "M: "
        AddTimeStamp ConstructLine
        ConstructLine = ConstructLine & " This is not the B tank"
        WriteBPD ConstructLine
        End
      End If
      'Controller production number
      FileTable(0, lTank) = Parsed(2)
      'Tank production number
      FileTable(1, lTank) = Parsed(3)
      'Controller Address
      AddressTable(1, lTank) = CInt(Parsed(4))
    End If
    'Find the minimum and maximum controller serial numbers
    If ControllerRange(0) > AddressTable(1, lTank) Then ControllerRange(0) = AddressTable(1, lTank)
    If ControllerRange(1) < AddressTable(1, lTank) Then ControllerRange(1) = AddressTable(1, lTank)
    'Set up translation table between
    'tank index and controller address
    TankIndex(AddressTable(1, lTank)) = lTank
  End If
Loop
Close #4
AddTimeStamp ConstructLine
ConstructLine = ConstructLine & " Total Tanks: " & Format$(lTank + 1)
WriteBPD ConstructLine
ConstructLine = "M: "
AddTimeStamp ConstructLine
ConstructLine = ConstructLine & " Controller Serial Range: " & Format$(ControllerRange(0)) & " to " & Format$(ControllerRange(1))
WriteBPD ConstructLine
If lTank < 0 Then
  ConstructLine = "M: "
  AddTimeStamp ConstructLine
  ConstructLine = ConstructLine & " There must be at least one tank "
  WriteBPD ConstructLine
  End
Else
  ConstructLine = "M: "
  AddTimeStamp ConstructLine
  ConstructLine = ConstructLine & " Root Table Interpreted:"
  WriteBPD ConstructLine
  For iFor = 0 To lTank
    ConstructLine = "M: "
    AddTimeStamp ConstructLine
    ConstructLine = ConstructLine & " " & Right$("00" & Format$(iFor), 2)
    If iFor Mod 2 = 0 Then
      ConstructLine = ConstructLine & " A"
    Else
      ConstructLine = ConstructLine & " B"
    End If
    ConstructLine = ConstructLine & Right$("    " & Format$(AddressTable(0, iFor)), 3)
    ConstructLine = ConstructLine & " " & Left$(FileTable(0, iFor), 3)
    ConstructLine = ConstructLine & " " & Left$(FileTable(1, iFor), 4)
    ConstructLine = ConstructLine & Right$("    " & Format$(AddressTable(1, iFor)), 4)
    WriteBPD ConstructLine
  Next iFor
  ConstructLine = "M: "
  AddTimeStamp ConstructLine
  ConstructLine = ConstructLine & " Index Table Interpreted:"
  WriteBPD ConstructLine
  For iFor = 0 To 56 Step 8
    ConstructLine = "M: "
    AddTimeStamp ConstructLine
    ConstructLine = ConstructLine & " " & Right$("00" & Format$(iFor), 2)
    For jFor = 0 To 7
      ConstructLine = ConstructLine & Right$("    " & Format$(TankIndex(iFor + jFor)), 3)
    Next jFor
    WriteBPD ConstructLine
  Next iFor
End If
End Sub




Private Sub Form_Unload(Cancel As Integer)
Close #20
End Sub


Private Sub lblAverageType_Click()
Select Case lblAverageType.Caption
Case "ALL"
  lblAverageType.Caption = "MINUTE"
  lblAverageType.BackColor = ColorYellow
  MinimalNumber = 5
Case "MINUTE"
  lblAverageType.Caption = "HOUR"
  lblAverageType.BackColor = ColorGreen
  MinimalNumber = 60
Case "HOUR"
  lblAverageType.Caption = "ALL"
  lblAverageType.BackColor = ColorRed
  MinimalNumber = 1
End Select
End Sub



Private Sub lblRunType_Click()
Select Case lblRunType.Caption
Case "ALL FILES"
  flbAllFiles.Visible = False
  lblRunType.Caption = "ONE FILE"
Case "ONE FILE"
  flbAllFiles.Visible = False
  lblRunType.Caption = "APPEND ONE FILE"
Case "APPEND ONE FILE"
  lblRunType.Caption = "ALL FILES"
  flbAllFiles.Visible = True
  flbAllFiles.Path = LatestFiles
End Select
End Sub



Public Static Sub ProcessOneFile()
Dim InString As String
Dim RecType As String
Dim ErrorReport As String
Dim DateString As String
Dim WorkString As String
Dim PrintString As String
Dim RBDPulse As String
Dim Selected As Boolean
Dim nColon As Integer
Dim nBlank As Integer
Dim nLBrack As Integer
Dim nRBrack As Integer
Dim i As Integer
Dim iTest As Integer
Dim jTest As Integer
Dim nCtrl As Integer
Dim sWork As Single
Dim FillArray(LastADC) As Single
Dim InTempArray(LastTemp) As Single
Do While (Not EOF(1))
 i = DoEvents
 Line Input #1, InString
 nCtrl = 1
 nColon = InStr(InString, ":")
 'InString = Mid$(InString, nColon + 1)
 If (Left$(InString, 2) = "CV") Then
   'Command verifications go into the log
   'Due to a bug in the main program these are not fully time tagged
   'so use the latest time string to make one up
   Print #2, "{" & TimeString & "} Command Verify: " & Mid$(InString, 5)
 ElseIf (Left$(InString, 2) = "M:") Then
   'All messages go into the log
   InString = Mid$(InString, 4)
   Print #2, InString
 ElseIf (Left$(InString, 5) = "BARO:") Then
   'For now, barometer readouts just go into the raw temperature data
   InString = Mid$(InString, 7)
   Print #3, InString
 ElseIf (Left$(InString, 2) = "RT") Then
   'Raw temperature data (these are generally unrecognized sensors)
   'go into a separate file
   InString = Mid$(InString, 2)
   Print #3, InString
 ElseIf (Left$(InString, 3) = "NVF") Then
   'NVM verifications go into the log on request
   If chkLogNVM.Value = 1 Then Print #2, InString
 ElseIf (Left$(InString, 3) = "NVR") Then
   'Invalid NVM verifications go into the log unconditionally
   Print #2, InString
ElseIf (Left$(InString, 2) <> "TS") And (nColon > 0) Then
   'This is something that must be sorted by controller number
   RecType = Left$(InString, nColon)
   On Error GoTo NoGood1
   nCtrl = CInt(Mid$(RecType, 3, 2))
   nLBrack = InStr(InString, "[")
   If nLBrack > 0 Then
     'There is a time stamp in this record, so process it
     nRBrack = InStr(InString, "]")
     TimeString = Mid$(InString, nLBrack + 1, nRBrack - nLBrack - 1)
     ClockTime = Mid$(TimeString, 8, 8)
     'Hour
     cTime(0, nCtrl) = CInt(Mid$(TimeString, 8, 2))
     'Minute
     cTime(1, nCtrl) = CInt(Mid$(TimeString, 11, 2))
     'Second
     cTime(2, nCtrl) = CInt(Right$(TimeString, 2))
     'Year
     cTime(4, nCtrl) = CInt(Mid$(TimeString, 1, 2))
     'Day of 2009
     cTime(3, nCtrl) = CInt(Mid$(TimeString, 4, 3)) + 365 * (cTime(4, nCtrl) - 9)
     SecOfDay = cTime(0, nCtrl) * 3600# + cTime(1, nCtrl) * 60# + cTime(2, nCtrl)
   End If
   InString = Mid$(InString, nColon + 1)
   Select Case Left$(RecType, 2)
   Case "FT"
     'FTnn:
     'Temperature record
     InString = Mid$(InString, nRBrack - nColon + 1)
     Select Case lblAverageType.Caption
     Case "HOUR"
       If cTime(0, nCtrl) <> pTimeTmp(0, nCtrl) Then
         OutputTemperatureStats nCtrl
       End If
     Case Else
       OutputTemperatureStats nCtrl
     End Select
     For i = 0 To 4
       pTimeTmp(i, nCtrl) = cTime(i, nCtrl)
     Next i
     FillSingleArray InTempArray, LastTemp, InString
     nTemp(nCtrl) = nTemp(nCtrl) + 1
     TmpAvgSec(nCtrl) = TmpAvgSec(nCtrl) + SecOfDay
     For i = 0 To LastTemp
       TempSum(i, nCtrl) = TempSum(i, nCtrl) + InTempArray(i)
       pTempArray(i, nCtrl) = InTempArray(i)
     Next i
   Case "AD"
     'ADCn:
     'Control board record
     Select Case lblAverageType.Caption
     Case "HOUR"
       If cTime(0, nCtrl) <> pTime(0, nCtrl) Then
         OutputParameterStats nCtrl
       End If
     Case "MINUTE"
       If cTime(1, nCtrl) <> pTime(1, nCtrl) Then
         OutputParameterStats nCtrl
       End If
     Case "ALL"
       OutputParameterStats nCtrl
     End Select
     InString = Mid$(InString, nRBrack - nColon + 1)
     FillSingleArray FillArray, LastADC, InString
     'There is too much jitter in the sump and ballast
     'to compute "delta's" reliably with individual readings
     'so use one minute averages
     If cTime(1, nCtrl) <> pTime(1, nCtrl) Then
       If nReading(nCtrl) >= CInt(lblreadingMinimum.Caption) Then
         Ballast(nCtrl) = Ballast(nCtrl) / nReading(nCtrl)
         Sump(nCtrl) = Sump(nCtrl) / nReading(nCtrl)
         If InitialTimeSeen(nCtrl) Then
           sWork = Ballast(nCtrl) - PrevBallast(nCtrl)
           If sWork > -4 Then
             DeltaBal(nCtrl) = DeltaBal(nCtrl) + sWork
           End If
           'Print #(nCtrl +100), Format$(Ballast(nCtrl)) & " " & Format$(DeltaBal(nCtrl)) & " " & Format$(nReading(nCtrl))
           sWork = Sump(nCtrl) - PrevSump(nCtrl)
           If sWork > -4 Then
             DeltaSump(nCtrl) = DeltaSump(nCtrl) + sWork
           End If
           'Print #(nCtrl +100), Format$(Sump(nCtrl)) & " " & Format$(DeltaSump(nCtrl)) & " " & Format$(nReading(nCtrl))
         Else
           InitialTimeSeen(nCtrl) = True
         End If
         PrevBallast(nCtrl) = Ballast(nCtrl)
         PrevSump(nCtrl) = Sump(nCtrl)
       End If
       Ballast(nCtrl) = 0#
       Sump(nCtrl) = 0#
       nReading(nCtrl) = 0#
     End If
     Ballast(nCtrl) = Ballast(nCtrl) + FillArray(0)
     Sump(nCtrl) = Sump(nCtrl) + FillArray(1)
     nReading(nCtrl) = nReading(nCtrl) + 1#
     nADC(nCtrl) = nADC(nCtrl) + 1
     ADCAvgSec(nCtrl) = ADCAvgSec(nCtrl) + SecOfDay
     For i = 0 To LastADC
       ADCSum(i, nCtrl) = ADCSum(i, nCtrl) + FillArray(i)
       pADCArray(i, nCtrl) = FillArray(i)
     Next i
     For i = 0 To 7
       iTest = 2 ^ i
       jTest = CInt(FillArray(8)) And iTest
       If jTest > 0 Then CMDBits(i, nCtrl) = CMDBits(i, nCtrl) + 0.5
       jTest = CInt(FillArray(9)) And iTest
       If jTest Then Q0Bits(i, nCtrl) = Q0Bits(i, nCtrl) + 0.5
     Next i
     For i = 0 To 4
       pTime(i, nCtrl) = cTime(i, nCtrl)
     Next i
   Case Else
   End Select
NoGood1:       On Error GoTo 0
 End If
Loop
'Clean up any data left over
For nCtrl = 1 To lCtrl
  OutputTemperatureStats nCtrl
  OutputParameterStats nCtrl
Next nCtrl
End Sub

Public Static Sub OutputParameterStats(TankNumber As Integer)
Dim i As Integer
If nADC(TankNumber) >= MinimalNumber Then
  SecDay = ADCAvgSec(TankNumber) / nADC(TankNumber)
  FracDay = SecDay / 86400# + CDbl(pTimeTmp(3, TankNumber))
  'Year DoY Time SecOfDay Day07
  ParameterString = Right$("       " & Format$(pTimeTmp(4, TankNumber)), 3)
  ParameterString = ParameterString & Right$("       " & Format$(pTimeTmp(3, TankNumber)), 4)
  ParameterString = ParameterString & " " & ClockTime
  ParameterString = ParameterString & " " & Mid$(Right$("       " & Format$(SecDay, "0.0"), 8), 1, 6)
  ParameterString = ParameterString & Right$("       " & Format$(FracDay, "0.0000"), 9)
  StatusString = ParameterString
  For i = 0 To LastADC
    ADCSum(i, TankNumber) = ADCSum(i, TankNumber) / nADC(TankNumber)
    ParameterString = ParameterString & " " & Format$(ADCSum(i, TankNumber), "0.00")
  Next i
  ParameterString = ParameterString & " " & Format$(DeltaBal(TankNumber), "0.00")
  ParameterString = ParameterString & " " & Format$(DeltaSump(TankNumber), "0.00")
  Print #(TankNumber + 100), ParameterString
  For i = 0 To 7
    StatusString = StatusString & " " & Format$((CMDBits(i, TankNumber) / nADC(TankNumber)) + CSng(7 - i), "0.00")
  Next i
  For i = 0 To 7
    StatusString = StatusString & " " & Format$((Q0Bits(i, TankNumber) / nADC(TankNumber)) + CSng(15 - i), "0.00")
  Next i
  Print #(TankNumber + 300), StatusString
End If
For i = 0 To LastADC
  ADCSum(i, TankNumber) = 0
Next i
For i = 0 To 7
  CMDBits(i, TankNumber) = 0#
  Q0Bits(i, TankNumber) = 0#
Next i
DeltaBal(TankNumber) = 0#
DeltaSump(TankNumber) = 0#
nADC(TankNumber) = 0#
ADCAvgSec(TankNumber) = 0#
End Sub

Public Sub OutputTemperatureStats(ByVal TankNumber As Integer)
Dim i As Integer
If nTemp(TankNumber) > 0 Then
  SecDay = TmpAvgSec(TankNumber) / nTemp(TankNumber)
  FracDay = SecDay / 86400# + CDbl(pTimeTmp(3, TankNumber))
  'Year DoY Time SecOfDay Day07
  TemperatureString = Right$("       " & Format$(pTimeTmp(4, TankNumber)), 3)
  TemperatureString = TemperatureString & Right$("       " & Format$(pTimeTmp(3, TankNumber)), 4)
  TemperatureString = TemperatureString & " " & ClockTime
  TemperatureString = TemperatureString & " " & Mid$(Right$("       " & Format$(SecDay, "0.0"), 8), 1, 6)
  TemperatureString = TemperatureString & Right$("       " & Format$(FracDay, "0.0000"), 9)
  If nTemp(TankNumber) > 0 Then
    For i = 0 To LastTemp
      TempSum(i, TankNumber) = TempSum(i, TankNumber) / nTemp(TankNumber)
      TemperatureString = TemperatureString & " " & Format$(TempSum(i, TankNumber), "0.00")
    Next i
  End If
  Print #(TankNumber + 200), TemperatureString
End If
For i = 0 To LastTemp
  TempSum(i, TankNumber) = 0
Next i
nTemp(TankNumber) = 0#
TmpAvgSec(TankNumber) = 0#
End Sub


Private Sub vsbReadingMinimum_Change()
lblreadingMinimum.Caption = Format$(vsbReadingMinimum.Value)

End Sub


