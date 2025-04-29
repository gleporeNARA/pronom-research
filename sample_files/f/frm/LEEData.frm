VERSION 5.00
Object = "{A8B3B723-0B5A-101B-B22E-00AA0037B2FC}#1.0#0"; "GRID32.OCX"
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmLEEData 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000005&
   Caption         =   "LEE Data"
   ClientHeight    =   7305
   ClientLeft      =   1440
   ClientTop       =   1620
   ClientWidth     =   8715
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
   Icon            =   "LEEData.frx":0000
   LinkTopic       =   "Form1"
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   7305
   ScaleWidth      =   8715
   Begin VB.TextBox txtDisplayText 
      Appearance      =   0  'Flat
      Height          =   6912
      Left            =   390
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   20
      Top             =   270
      Width           =   5292
   End
   Begin Threed.SSFrame fraOptions 
      Height          =   4035
      Left            =   6060
      TabIndex        =   3
      Top             =   750
      Width           =   2655
      _Version        =   65536
      _ExtentX        =   4678
      _ExtentY        =   7112
      _StockProps     =   14
      Caption         =   "Options"
      ForeColor       =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.CheckBox ckbStandardLimits 
         Caption         =   "Standard"
         Height          =   255
         Left            =   210
         TabIndex        =   34
         Top             =   3570
         Value           =   1  'Checked
         Width           =   1215
      End
      Begin VB.CommandButton btnImportFile 
         Caption         =   "Import"
         Height          =   252
         Left            =   270
         TabIndex        =   33
         Top             =   3150
         Width           =   972
      End
      Begin VB.CommandButton btnQuickStats 
         Caption         =   "Quick"
         Height          =   252
         Left            =   1530
         TabIndex        =   32
         Top             =   3330
         Width           =   972
      End
      Begin VB.CommandButton btnPrintSummary 
         Caption         =   "Prt Sum"
         Height          =   252
         Left            =   1500
         TabIndex        =   24
         Top             =   1200
         Width           =   972
      End
      Begin VB.CommandButton btnPrintSeries 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Prt Series"
         Height          =   252
         Left            =   1500
         TabIndex        =   23
         Top             =   600
         Width           =   972
      End
      Begin VB.CommandButton btnShowSeries 
         Caption         =   "<Series>"
         Height          =   252
         Left            =   300
         TabIndex        =   22
         Top             =   2700
         Width           =   972
      End
      Begin VB.CommandButton btnShowTxt 
         Caption         =   ">Text<"
         Height          =   252
         Left            =   180
         TabIndex        =   21
         Top             =   300
         Width           =   972
      End
      Begin VB.CommandButton btnLoadFile 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "LOAD"
         Height          =   252
         Left            =   1500
         TabIndex        =   19
         Top             =   3000
         Width           =   972
      End
      Begin VB.CommandButton btnSaveFile 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "SAVE"
         Height          =   252
         Left            =   1500
         TabIndex        =   18
         Top             =   2700
         Width           =   972
      End
      Begin VB.CommandButton btnShowHist 
         Caption         =   "Drw Hist"
         Height          =   252
         Left            =   300
         TabIndex        =   17
         Top             =   2400
         Width           =   972
      End
      Begin VB.CommandButton btnShowGph 
         Caption         =   "<Graph>"
         Height          =   252
         Left            =   180
         TabIndex        =   16
         Top             =   2100
         Width           =   972
      End
      Begin VB.CommandButton btnShowLim 
         Caption         =   "<Limits>"
         Height          =   252
         Left            =   180
         TabIndex        =   15
         Top             =   1800
         Width           =   972
      End
      Begin VB.CommandButton btnShowDan 
         Caption         =   "<Anlys>"
         Height          =   252
         Left            =   180
         TabIndex        =   14
         Top             =   1500
         Width           =   972
      End
      Begin VB.CommandButton btnShowPHA 
         Caption         =   "<PHA>"
         Height          =   252
         Left            =   300
         TabIndex        =   13
         Top             =   600
         Width           =   972
      End
      Begin VB.CommandButton btnFakeData 
         Caption         =   "Fake "
         Height          =   252
         Left            =   1500
         TabIndex        =   7
         Top             =   2100
         Width           =   972
      End
      Begin VB.CommandButton btnClearForm 
         Caption         =   "Clr Txt"
         Height          =   252
         Left            =   1500
         TabIndex        =   6
         Top             =   1800
         Width           =   972
      End
      Begin VB.CommandButton btnClearStat 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Clr Stat"
         Height          =   252
         Left            =   1500
         TabIndex        =   5
         Top             =   1500
         Width           =   972
      End
      Begin VB.CommandButton btnPrintHisto 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Prt Hist"
         Height          =   252
         Left            =   1500
         TabIndex        =   4
         Top             =   300
         Width           =   972
      End
   End
   Begin VB.PictureBox picGraphics 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   804
      Left            =   8970
      ScaleHeight     =   794.621
      ScaleMode       =   0  'User
      ScaleWidth      =   462.428
      TabIndex        =   0
      Top             =   240
      Visible         =   0   'False
      Width           =   384
   End
   Begin Threed.SSFrame fraSelect 
      Height          =   795
      Left            =   6060
      TabIndex        =   8
      Top             =   0
      Width           =   2655
      _Version        =   65536
      _ExtentX        =   4678
      _ExtentY        =   1397
      _StockProps     =   14
      Caption         =   "Select/Edit"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.TextBox txtLimits 
         Appearance      =   0  'Flat
         Height          =   288
         Left            =   1860
         TabIndex        =   11
         Text            =   "Limit"
         Top             =   360
         Width           =   672
      End
      Begin VB.CommandButton btnHisType 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "S"
         Height          =   252
         Left            =   1500
         TabIndex        =   10
         Top             =   360
         Width           =   252
      End
      Begin VB.VScrollBar vsbHisNum 
         Height          =   312
         Left            =   300
         Max             =   20
         TabIndex        =   9
         Top             =   300
         Width           =   192
      End
      Begin VB.Label lblHisTag 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "HisTag"
         ForeColor       =   &H80000008&
         Height          =   192
         Left            =   600
         TabIndex        =   12
         Top             =   360
         Width           =   912
      End
   End
   Begin Threed.SSFrame SSFrame1 
      Height          =   2475
      Left            =   5730
      TabIndex        =   25
      Top             =   4800
      Width           =   3015
      _Version        =   65536
      _ExtentX        =   5318
      _ExtentY        =   4366
      _StockProps     =   14
      Caption         =   "Quick Statistics"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.Label lblTypeTag 
         AutoSize        =   -1  'True
         Caption         =   "Tag"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   54
         Top             =   1080
         Width           =   345
      End
      Begin VB.Label lblType 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "#"
         Height          =   195
         Index           =   0
         Left            =   765
         TabIndex        =   53
         Top             =   1080
         Width           =   135
      End
      Begin VB.Label lblTypeRate 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Rate"
         Height          =   195
         Index           =   0
         Left            =   1200
         TabIndex        =   52
         Top             =   1080
         Width           =   405
      End
      Begin VB.Label lblTypeTag 
         AutoSize        =   -1  'True
         Caption         =   "Tag"
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   51
         Top             =   1260
         Width           =   345
      End
      Begin VB.Label lblType 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "#"
         Height          =   195
         Index           =   1
         Left            =   780
         TabIndex        =   50
         Top             =   1260
         Width           =   120
      End
      Begin VB.Label lblTypeRate 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Rate"
         Height          =   195
         Index           =   1
         Left            =   1200
         TabIndex        =   49
         Top             =   1260
         Width           =   405
      End
      Begin VB.Label lblTypeTag 
         AutoSize        =   -1  'True
         Caption         =   "Tag"
         Height          =   195
         Index           =   2
         Left            =   120
         TabIndex        =   48
         Top             =   1440
         Width           =   345
      End
      Begin VB.Label lblType 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "#"
         Height          =   195
         Index           =   2
         Left            =   780
         TabIndex        =   47
         Top             =   1440
         Width           =   120
      End
      Begin VB.Label lblTypeRate 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Rate"
         Height          =   195
         Index           =   2
         Left            =   1200
         TabIndex        =   46
         Top             =   1440
         Width           =   405
      End
      Begin VB.Label lblTypeTag 
         AutoSize        =   -1  'True
         Caption         =   "Tag"
         Height          =   195
         Index           =   3
         Left            =   120
         TabIndex        =   45
         Top             =   1620
         Width           =   345
      End
      Begin VB.Label lblType 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "#"
         Height          =   195
         Index           =   3
         Left            =   780
         TabIndex        =   44
         Top             =   1620
         Width           =   120
      End
      Begin VB.Label lblTypeRate 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Rate"
         Height          =   195
         Index           =   3
         Left            =   1200
         TabIndex        =   43
         Top             =   1620
         Width           =   405
      End
      Begin VB.Label lblTypeTag 
         AutoSize        =   -1  'True
         Caption         =   "Tag"
         Height          =   195
         Index           =   4
         Left            =   120
         TabIndex        =   42
         Top             =   1800
         Width           =   345
      End
      Begin VB.Label lblType 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "#"
         Height          =   195
         Index           =   4
         Left            =   780
         TabIndex        =   41
         Top             =   1800
         Width           =   120
      End
      Begin VB.Label lblTypeRate 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Rate"
         Height          =   195
         Index           =   4
         Left            =   1200
         TabIndex        =   40
         Top             =   1800
         Width           =   405
      End
      Begin VB.Label lblTypePrcnt 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "%"
         Height          =   195
         Index           =   0
         Left            =   1920
         TabIndex        =   39
         Top             =   1080
         Width           =   165
      End
      Begin VB.Label lblTypePrcnt 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "%"
         Height          =   195
         Index           =   1
         Left            =   1920
         TabIndex        =   38
         Top             =   1260
         Width           =   165
      End
      Begin VB.Label lblTypePrcnt 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "%"
         Height          =   195
         Index           =   2
         Left            =   1920
         TabIndex        =   37
         Top             =   1440
         Width           =   165
      End
      Begin VB.Label lblTypePrcnt 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "%"
         Height          =   195
         Index           =   3
         Left            =   1920
         TabIndex        =   36
         Top             =   1620
         Width           =   165
      End
      Begin VB.Label lblTypePrcnt 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "%"
         Height          =   195
         Index           =   4
         Left            =   1920
         TabIndex        =   35
         Top             =   1800
         Width           =   165
      End
      Begin VB.Label lblStartTag 
         AutoSize        =   -1  'True
         Caption         =   "Start:"
         Height          =   195
         Left            =   120
         TabIndex        =   31
         Top             =   300
         Width           =   450
      End
      Begin VB.Label lblStopTag 
         AutoSize        =   -1  'True
         Caption         =   "Stop:"
         Height          =   195
         Left            =   120
         TabIndex        =   30
         Top             =   540
         Width           =   450
      End
      Begin VB.Label lblStartTime 
         AutoSize        =   -1  'True
         Caption         =   "Start:"
         Height          =   195
         Left            =   720
         TabIndex        =   29
         Top             =   300
         Width           =   450
      End
      Begin VB.Label lblStopTime 
         AutoSize        =   -1  'True
         Caption         =   "Stop:"
         Height          =   195
         Left            =   720
         TabIndex        =   28
         Top             =   540
         Width           =   450
      End
      Begin VB.Label lblElapsedMinutesTag 
         AutoSize        =   -1  'True
         Caption         =   "Elapsed:"
         Height          =   195
         Left            =   120
         TabIndex        =   27
         Top             =   780
         Width           =   750
      End
      Begin VB.Label lblElapsedMinutes 
         AutoSize        =   -1  'True
         Caption         =   "Elapsed"
         Height          =   195
         Left            =   960
         TabIndex        =   26
         Top             =   780
         Width           =   705
      End
   End
   Begin MSComDlg.CommonDialog CMDialog1 
      Left            =   8940
      Top             =   1290
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSGrid.Grid gridLimits 
      Height          =   732
      Left            =   0
      TabIndex        =   2
      Top             =   3780
      Visible         =   0   'False
      Width           =   372
      _Version        =   65536
      _ExtentX        =   656
      _ExtentY        =   1291
      _StockProps     =   77
   End
   Begin MSGrid.Grid gridDanal 
      Height          =   672
      Left            =   60
      TabIndex        =   1
      Top             =   240
      Visible         =   0   'False
      Width           =   372
      _Version        =   65536
      _ExtentX        =   656
      _ExtentY        =   1185
      _StockProps     =   77
      Cols            =   10
      FixedCols       =   2
   End
End
Attribute VB_Name = "frmLEEData"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit




Private Sub btnClearForm_Click()
txtDisplayText = ""
End Sub

Public Sub btnClearStat_Click()
Dim I As Integer
Dim J As Integer
Dim K As Integer
'CLEARS THE STATISTICS ACCUMULATORS
LEENewRun = True
For I = 0 To 1
  For J = 0 To LEEHisFinal
    LEERingLoc(J, 0) = 0
    For K = 0 To LEEHisLastChan
      LEEHis(K, J, I) = 0
    Next K
    For K = 0 To LEERingLast
      LEERing(K, J, I) = 0
    Next K
  Next J
Next I
For I = 0 To 3
  LeeEventType(I) = 0
Next I
LEERunStart = CurTime
LEERunEnd = CurTime
AddText "LEE Statistics Cleared"
End Sub

Private Sub btnFakeData_Click()
Dim J As Integer
Dim I As Integer
For J = 0 To LEEHisFinal
  LEERingLoc(J, 0) = LEERingLast / 2
  LEERingLoc(J, 1) = LEERingLast / 4
  For I = 0 To LEEHisLastChan
    LEEHis(I, J, 0) = I
    LEEHis(I, J, 1) = I + 200
  Next I
  For I = 0 To LEERingLast
    LEERing(I, J, 0) = I
    LEERing(I, J, 1) = I - 100
  Next I
Next J
End Sub

Private Sub btnHisType_Click()
If btnHisType.Caption = "S" Then
btnHisType.Caption = "U"
LEEHisType = 0
Else
btnHisType.Caption = "S"
LEEHisType = 1
End If
End Sub




Private Sub btnImportFile_Click()
Dim InString As String
Dim iFor As Integer
Dim iChange As Integer
Dim Value As Single
Dim NumHis As Integer
Dim TypHis As Integer
Dim nVertBar As Integer
Dim TimeString As String
Dim DateString As String
Dim PrintString As String
Dim nBlank As Integer
'On Error GoTo NoFile2
CMDialog1.FileName = ImportLEEFile
CMDialog1.DefaultExt = "bpd"
CMDialog1.Filter = "LEE Data |*.bpd|"
CMDialog1.InitDir = "C:\LEEMIP\Data"
CMDialog1.Action = 1
ImportLEEFile = CMDialog1.FileName
Open ImportLEEFile For Input As #10
frmPanel.LogMessage "Start Import of " & ImportLEEFile
LEEDataSource = ImportLEEFile
btnClearStat_Click
LEEFirstPHASeen = False
InitialImportTimeSeen = False
FirstDownlinkSeen = False
ImportLEE = True
'Open "C:\LEEMIP\LEE Diagnostic.dat" For Output As #11
'Print #11, ImportLEEFile
Do While (Not EOF(10))
  Line Input #10, InString
  'Print #11, InString
  If InStr(InString, "PHA:") > 0 Then
    DateAndTime InString
    FillLongArrayB LEEPulseHeightEvent, LastLEEPulseHeight, InString
    If Not LEEFirstPHASeen Then
      LEERunStart = DateSettings(2)
      LEEFirstPHASeen = True
    End If
    LEERunEnd = DateSettings(2)
    For iFor = 0 To LastLEEPulseHeight
     If LEEPulseHeightEvent(iFor) < 0# Then LEEPulseHeightEvent(iFor) = 0#
    Next iFor
    EventHistograms
  ElseIf InStr(InString, "EV:") > 0 Then
    DateAndTime InString
    FillLongArrayB LEEPulseHeightEvent, LastLEEPulseHeight, InString
    If Not LEEFirstPHASeen Then
      LEERunStart = DateSettings(2)
      LEEFirstPHASeen = True
    End If
    LEERunEnd = DateSettings(2)
    For iFor = 0 To LastLEEPulseHeight
     If LEEPulseHeightEvent(iFor) < 0# Then LEEPulseHeightEvent(iFor) = 0#
    Next iFor
    EventHistograms
  'DLM: 06:29:21  02 80 29 1 0 0 0 3 80 0 0 0 0 0 26 142718 142532
  ElseIf InStr(InString, "DLM:") > 0 Then
    DateAndTime InString
    DownlinkData(0, 0) = "Import"
    For iFor = 1 To 17
      nBlank = InStr(InString, " ")
      If nBlank > 0 Then
        DownlinkData(iFor, 0) = Left$(InString, nBlank - 1)
        InString = Mid$(InString, nBlank + 1)
      Else
        DownlinkData(iFor, 0) = ""
      End If
    Next iFor
    frmPanel.ProcessDownlink
  'PB: 17:33:44  1547526523 32.40 0.63 0.00 0.00 0.00 0.00 0.00 0.00 751.62 25.88 751.62 26.16
  ElseIf InStr(InString, "PB:") > 0 Then
    DateAndTime InString
    FillDoubleArrayB PowerBoard, lPowerBoard, InString
    PowerHistograms
  ElseIf InStr(InString, "C1:") > 0 Then
    DateAndTime InString
    FillDoubleArrayB Counter1, lCounter1, InString
    Counter1Histograms
  ElseIf (InStr(InString, "C2:") > 0) Then
    DateAndTime InString
    FillDoubleArrayB Counter2, lCounter2, InString
    Counter2Histograms
  ElseIf (InStr(InString, "C3:") > 0) Then
    DateAndTime InString
    FillDoubleArrayB Counter3, lCounter3, InString
    Counter3Histograms
  ElseIf InStr(InString, "ME:") > 0 Then
    iChange = InStr(InString, "Date Change")
    If iChange > 0 Then
      DateAndTime InString
    End If
    iChange = InStr(InString, "Terminating")
    If iChange > 0 Then
      DateAndTime InString
    End If
    iChange = InStr(InString, "Start at")
    If iChange > 0 Then
      InString = Mid$(InString, iChange + 9)
      DateAndTime InString
    End If
  ElseIf InStr(InString, "LM:") > 0 Then
    DateAndTime InString
  End If
Loop
Close #10
'Close #11
frmPanel.LogMessage "Import operation complete"
ImportLEE = False
Exit Sub
NoFile2:
frmPanel.LogMessage "Import LEE Get Error"
Exit Sub
End Sub

Private Sub btnLoadFile_Click()
On Error GoTo NoFile2
CMDialog1.FileName = DisplaySettingFile
CMDialog1.DefaultExt = "dsu"
CMDialog1.Filter = "LEE Display Setup |*.dsu|"
CMDialog1.InitDir = PersonalityDirectory
CMDialog1.Action = 1
DisplaySettingFile = CMDialog1.FileName
GetSettings
Exit Sub
NoFile2:
frmPanel.LogMessage "LEE Set Get Error"
Exit Sub
End Sub

Private Sub btnPrintHisto_Click()
GraphDest = "Printer"
ShowLEEHis LEEHisNum, LEEHisType
GraphDest = " "
End Sub



Private Sub btnPrintSeries_Click()
GraphDest = "Printer"
ShowLEESeries LEEHisNum, LEEHisType
GraphDest = " "
End Sub

Private Sub btnPrintSummary_Click()
Dim I As Integer
Dim K As Integer
Dim OutLine As String
Dim Number As Single
Dim Avg As Double
Dim RelSig As Double
Dim Skew As Double
Dim EVT As Long
Dim LOW As Long
Dim HI As Long
Dim TotalEvents As Double
btnQuickStats_Click
Printer.FontName = "Courier"
Printer.FontSize = 8
Printer.ScaleLeft = 0#
Printer.ScaleTop = 2.54 * (Printer.Height / 1440#)
Printer.ScaleWidth = 2.54 * (Printer.Width / 1440#)
Printer.ScaleHeight = -2.54 * (Printer.Height / 1440#)
Printer.CurrentX = GraphOrX - 0.5
Printer.CurrentY = GraphOrY + GraphHeight + 6#
Printer.Print "LEE Data Summary, printed: " + Format$(CurTime, "mm/dd/yyyy HH:NN:SS")
Printer.Print Tab(15); "Data Source: " + LEEDataSource
Printer.Print Tab(15); lblStartTag.Caption & " " & lblStartTime.Caption
Printer.Print Tab(15); lblStopTag.Caption & " " & lblStopTime.Caption
Printer.Print Tab(15); lblElapsedMinutesTag.Caption & " " & lblElapsedMinutes.Caption
For I = 0 To 4
 OutLine = ""
 OutLine = OutLine & lblTypeTag(I).Caption
 OutLine = OutLine & lblType(I).Caption
 OutLine = OutLine & lblTypeRate(I).Caption
 OutLine = OutLine & lblTypePrcnt(I).Caption
 Printer.Print Tab(15); OutLine
Next I
For K = 0 To 1
  For I = 0 To LEEHisFinal
    If K = 0 Then
      OutLine = "U " + LEEHisTag(I)
    Else
      OutLine = "S " + LEEHisTag(I)
    End If
    LEEStats I, K, Avg, RelSig, Skew, EVT, LOW, HI
    Number = EVT + LOW + HI
    If (Number > 0) Then
      Printer.Print Tab(15); Right$(OutLine, 19); RtJus2S(Avg, 8); RtJus2S(RelSig, 6); RtJus2S(Skew, 7); RtJus0S(Number, 6); RtJus2S(LOW / Number, 6); RtJus2S(EVT / Number, 6); RtJus2S(HI / Number, 6); RtJus0S(LEELimit(0, I), 6); RtJus0S(LEELimit(1, I), 6)
    End If
  Next I
Next K
Printer.EndDoc
End Sub

Private Sub btnQuickStats_Click()
Dim I As Integer
lblStartTime.Caption = Format$(LEERunStart, "m/d/yyyy HH:NN:SS")
lblStopTime.Caption = Format$(LEERunEnd, "m/d/yyyy HH:NN:SS")
LEEElapsedTime = 1440# * (LEERunEnd - LEERunStart)
lblElapsedMinutes = Format$(LEEElapsedTime, "0.0")
LeeTotalEvents = 0
For I = 0 To 3
  LeeTotalEvents = LeeTotalEvents + LeeEventType(I)
  lblType(I).Caption = Right$("      " + Format$(LeeEventType(I), "0"), 6)
  lblTypePrcnt(I).Caption = "N/A"
  If (LEEElapsedTime > 0) Then
    lblTypeRate(I).Caption = Right$("      " + Format$(LeeEventType(I) / LEEElapsedTime, "0.00"), 6)
  Else
    lblTypeRate(I).Caption = "N/A"
  End If
Next I
If LeeTotalEvents > 0 Then
  For I = 0 To 3
    lblTypePrcnt(I).Caption = Right$("      " + Format$(100# * (LeeEventType(I) / LeeTotalEvents), "0.0"), 6)
  Next I
End If
If LEEElapsedTime > 0 Then
  lblTypeRate(4).Caption = Right$("      " + Format$(LeeTotalEvents / LEEElapsedTime, "0.00"), 6)
Else
  lblTypeRate(4).Caption = "N/A"
End If
lblType(4).Caption = Right$("      " + Format$(LeeTotalEvents, "0"), 6)
lblTypePrcnt(4).Caption = " 100.0"
End Sub


Private Sub btnSaveFile_Click()
On Error GoTo NoFile
CMDialog1.FileName = DisplaySettingFile
CMDialog1.DefaultExt = "dsu"
CMDialog1.Filter = "Display Set Up |*.dsu|"
CMDialog1.InitDir = PersonalityDirectory
CMDialog1.Action = 2
DisplaySettingFile = CMDialog1.FileName
SaveSettings
Exit Sub
NoFile:
Exit Sub
End Sub

Private Sub btnShowDan_Click()
'DISPLAY ANALYSIS OF THE ACCUMULATED HISTOGRAMS
Dim K As Integer
Dim I As Integer
Dim J As Integer
Dim Number As Single
Dim Avg As Double
Dim RelSig As Double
Dim Skew As Double
Dim EVT As Long
Dim LOW As Long
Dim HI As Long
Dim GridWidth As Long
Select Case btnShowDan.Caption
Case "<Anlys>"
  btnShowDan.Caption = ">Anlys<"
gridDanal.Rows = 2 * (LEEHisFinal + 1) + 1
gridDanal.Cols = LEEDaColLast + 1
gridDanal.Visible = True
gridDanal.Left = 240
gridDanal.Top = 240
gridDanal.Height = 2000
gridDanal.Row = 0
GridWidth = 300
For K = 0 To (LEEDaColLast)
  GridWidth = GridWidth + LEEDaColWidth(K)
  gridDanal.ColWidth(K) = LEEDaColWidth(K)
  gridDanal.Col = K
  gridDanal.Text = LEEDaColLabel(K)
Next K
gridDanal.Width = GridWidth
For K = 0 To 1
  For I = 0 To LEEHisFinal
    gridDanal.Row = K * (LEEHisFinal + 1) + I + 1
    gridDanal.Col = 0
    If K = 0 Then
      gridDanal.Text = "U"
    Else
      gridDanal.Text = "S"
    End If
    gridDanal.Col = 1
    gridDanal.Text = LEEHisTag(I)
    LEEStats I, K, Avg, RelSig, Skew, EVT, LOW, HI
    Number = EVT + LOW + HI
    If (Number > 0) Then
      gridDanal.Col = 2
      gridDanal.Text = Format$(LEELimit(0, I), "####0")
      gridDanal.Col = 3
      gridDanal.Text = Format$(LEELimit(1, I), "####0")
      gridDanal.Col = 4
      gridDanal.Text = Format$(Number, "#######")
      gridDanal.Col = 5
      gridDanal.Text = Format$(LOW / Number, "####0.00")
      gridDanal.Col = 6
      gridDanal.Text = Format$(EVT / Number, "####0.00")
      gridDanal.Col = 7
      gridDanal.Text = Format$(HI / Number, "####0.00")
      gridDanal.Col = 8
      gridDanal.Text = Format$(Avg, "####0.00")
      gridDanal.Col = 9
      gridDanal.Text = Format$(RelSig, "####0.00")
      gridDanal.Col = 10
      gridDanal.Text = Format$(Skew, "####0.00")
    Else
      gridDanal.Col = 2
      gridDanal.Text = "Empty"
      For J = 3 To 10
        gridDanal.Col = J
        gridDanal.Text = ""
      Next J
    End If
  Next I
Next K
Case Else
  btnShowDan.Caption = "<Anlys>"
  For K = 0 To (LEEDaColLast)
    LEEDaColWidth(K) = gridDanal.ColWidth(K)
  Next K
  gridDanal.Visible = False
End Select
End Sub

Private Sub btnShowGph_Click()
Select Case btnShowGph.Caption
Case "<Graph>"
  btnShowGph.Caption = ">Graph<"
  picGraphics.Visible = True
Case Else
  btnShowGph.Caption = "<Graph>"
  picGraphics.Visible = False
End Select
End Sub

Private Sub btnShowHist_Click()
GraphDest = "LEE"
ShowLEEHis LEEHisNum, LEEHisType
GraphDest = " "
End Sub


Private Sub btnShowLim_Click()
'Manage Limits
Dim K As Integer
Dim I As Integer
Dim GridWidth As Long
Select Case btnShowLim.Caption
Case "<Limits>"
  btnShowLim.Caption = ">Limits<"
  gridLimits.Rows = LEEHisFinal + 2
  gridLimits.Cols = LEELimLast + 2
  gridLimits.Left = 240
  gridLimits.Top = 240
  gridLimits.Height = 2000
  gridLimits.Row = 0
  GridWidth = 300
  For K = 0 To LEELimColLast
    gridLimits.ColWidth(K) = LEELimColWidth(K)
    GridWidth = GridWidth + LEELimColWidth(K)
    gridLimits.Col = K
    gridLimits.Text = LEELimColLabel(K)
  Next K
  gridLimits.Width = GridWidth
  For I = 0 To LEEHisFinal
    gridLimits.Col = 0
    gridLimits.Row = I + 1
    gridLimits.Text = LEEHisTag(I)
  Next I
  For I = 0 To LEELimLast
    gridLimits.Col = I + 1
    For K = 0 To LEEHisFinal
      gridLimits.Row = K + 1
      gridLimits.Text = Format$(LEELimit(I, K))
    Next K
  Next I
  gridLimits.Visible = True
Case Else
  btnShowLim.Caption = "<Limits>"
  gridLimits.Visible = False
  For K = 0 To (LEELimColLast)
    LEELimColWidth(K) = gridLimits.ColWidth(K)
  Next K
  For I = 0 To LEELimLast
    gridLimits.Col = I + 1
    For K = 0 To LEEHisFinal
      gridLimits.Row = K + 1
      LEELimit(I, K) = CSng(gridLimits.Text)
    Next K
  Next I
End Select
End Sub


Private Sub btnShowPHA_Click()
Select Case btnShowPHA.Caption
Case "<PHA>"
  btnShowPHA.Caption = ">PHA<"
  ShowLEEPHA = True
Case Else
  btnShowPHA.Caption = "<PHA>"
  ShowLEEPHA = False
End Select
End Sub



Private Sub btnShowSeries_Click()
Select Case btnShowSeries.Caption
Case "<Series>"
  btnShowSeries.Caption = ">Series<"
  AnimateLEESeries = True
  GraphDest = "LEE"
  ShowLEESeries LEEHisNum, LEEHisType
  GraphDest = " "
Case Else
  btnShowSeries.Caption = "<Series>"
  AnimateLEESeries = False
End Select
End Sub

Private Sub btnShowTxt_Click()
Select Case btnShowTxt.Caption
Case "<Text>"
  btnShowTxt.Caption = ">Text<"
  txtDisplayText.Visible = True
Case Else
  btnShowTxt.Caption = "<Text>"
  txtDisplayText.Visible = False
End Select
End Sub


Private Sub Form_Load()
Dim I As Integer
DisplaySettingFile = PersonalityDirectory + "Baseline.dsu"
GetSettings
lblType(0).Left = lblTypeTag(0).Left + 800
lblTypeRate(0).Left = lblType(0).Left + 800
lblTypePrcnt(0).Left = lblTypeRate(0).Left + 800
lblType(0).Top = lblTypeTag(0).Top
lblTypeRate(0).Top = lblType(0).Top
lblTypePrcnt(0).Top = lblTypeRate(0).Top
For I = 1 To 4
 lblTypeTag(I).Left = lblTypeTag(0).Left
 lblType(I).Left = lblType(0).Left
 lblTypeRate(I).Left = lblTypeRate(0).Left
 lblTypePrcnt(I).Left = lblTypePrcnt(0).Left
 lblTypeTag(I).Top = lblTypeTag(I - 1).Top + 200
 lblType(I).Top = lblType(I - 1).Top + 200
 lblTypeRate(I).Top = lblTypeRate(I - 1).Top + 200
 lblTypePrcnt(I).Top = lblTypePrcnt(I - 1).Top + 200
Next I
lblTypeTag(0) = "T0:"
lblTypeTag(1) = "T1:"
lblTypeTag(2) = "T2:"
lblTypeTag(3) = "T3:"
lblTypeTag(4) = "All"
LEEHisType = 0
btnHisType.Caption = "U"
LEEHisNum = 0
lblHisTag.Caption = LEEHisTag(LEEHisNum)
vsbHisNum.Min = 0
vsbHisNum.Max = LEEHisFinal
lblHisTag.Caption = LEEHisTag(LEEHisNum)
picGraphics.Cls
picGraphics.Scale
'Position the graphics window
picGraphics.Left = 180
picGraphics.Top = 180
'Adjust the height to fit the frame
picGraphics.Height = 7000
'Make it the same aspect ratio as the printer
picGraphics.Width = picGraphics.Height * (Printer.Width / Printer.Height)
'Then set it up so that it "looks like" the printed page
picGraphics.Scale
picGraphics.ScaleLeft = 0
picGraphics.ScaleTop = 2.54 * (Printer.Height / 1440#)
picGraphics.ScaleWidth = 2.54 * (Printer.Width / 1440#)
picGraphics.ScaleHeight = -2.54 * (Printer.Height / 1440#)
frmLEEData.Show
btnShowTxt.SetFocus
End Sub

Private Sub GetSettings()
'On Error GoTo ErrHan
Dim TempSng(10) As Single
Dim TempStr As String
Dim I As Integer
Dim J As Integer
Dim InLine As String
Dim Msg As String
Close #1
Msg = "Display Settings Load " & DisplaySettingFile
Open DisplaySettingFile For Input As #1
frmPanel.LogMessage Msg
For I = 0 To LEEHisFinal
  Line Input #1, InLine
  LEEHisTag(I) = Left$(InLine, 8)
  TempStr = Mid$(InLine, 9)
  FillSingleArray TempSng(), LEELimLast, TempStr
  For J = 0 To LEELimLast
    LEELimit(J, I) = TempSng(J)
  Next J
Next I
Line Input #1, InLine
InLine = Mid$(InLine, 11)
FillLongArray LEELimColWidth(), LEELimColLast, InLine
Line Input #1, InLine
InLine = Mid$(InLine, 11)
FillLongArray LEEDaColWidth(), LEEDaColLast, InLine
Close #1
Exit Sub
ErrHan:
frmPanel.LogMessage "Display Settings Load Error"
Exit Sub
End Sub

Private Sub gridDanal_Click()
If gridDanal.Row <= LEEHisFinal + 1 Then
  btnHisType.Caption = "U"
  LEEHisType = 0
  LEEHisNum = gridDanal.Row - 1
Else
  btnHisType.Caption = "S"
  LEEHisType = 1
  LEEHisNum = (gridDanal.Row - LEEHisFinal - 2)
End If
lblHisTag.Caption = LEEHisTag(LEEHisNum)
End Sub

Private Sub gridLimits_Click()
btnHisType.Caption = "U"
LEEHisType = 0
LEEHisNum = gridLimits.Row - 1
lblHisTag.Caption = LEEHisTag(LEEHisNum)
End Sub

Private Sub gridLimits_SelChange()
txtLimits.Text = gridLimits.Text
txtLimits.SetFocus
End Sub

Private Sub SaveSettings()
On Error GoTo ErrHan:
Dim I As Integer
Dim J As Integer
Dim OutLine As String
Dim Msg As String
Close #1
Open DisplaySettingFile For Output As #1
Msg = "LEE Set Save " & DisplaySettingFile
frmPanel.LogMessage Msg
'Debug.Print Msg
For I = 0 To LEEHisFinal
  OutLine = Left$(LEEHisTag(I) + "         ", 8)
  For J = 0 To LEELimLast
    OutLine = OutLine + " " + Right$("         " & Format$(LEELimit(J, I), "#####0.00"), 10) + ","
  Next J
  Print #1, OutLine
Next I
OutLine = Left$("Limit Cols       ", 10)
For J = 0 To LEELimColLast
  OutLine = OutLine + Format$(LEELimColWidth(J), "#####0") + ","
Next J
Print #1, OutLine
OutLine = Left$("Data Cols       ", 10)
For J = 0 To LEEDaColLast
  OutLine = OutLine + Format$(LEEDaColWidth(J), "#####0") + ","
Next J
Print #1, OutLine
Close #1
Exit Sub
ErrHan:
frmPanel.LogMessage "LEE Set Save Fail"
Exit Sub
End Sub

Private Sub txtLimits_Change()
gridLimits.Text = txtLimits.Text
End Sub

Private Sub vsbHisNum_Change()
LEEHisNum = vsbHisNum.Value
lblHisTag.Caption = LEEHisTag(LEEHisNum)
End Sub


Public Sub AddText(InputString As String)
If Len(txtDisplayText.Text) > 1400 Then
  txtDisplayText.Text = InputString + Chr$(13) + Chr$(10)
Else
  txtDisplayText.Text = txtDisplayText.Text + InputString + Chr$(13) + Chr$(10)
End If
End Sub
