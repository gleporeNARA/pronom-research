VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Begin VB.Form frmPulseHeight 
   Caption         =   "LEE PHA"
   ClientHeight    =   5790
   ClientLeft      =   5775
   ClientTop       =   4935
   ClientWidth     =   8535
   Icon            =   "PulseHeight.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5790
   ScaleWidth      =   8535
   Begin VB.Frame Frame1 
      Caption         =   "Pulser Calibration Manager"
      Height          =   2955
      Left            =   3270
      TabIndex        =   38
      Top             =   30
      Width           =   2655
      Begin VB.CommandButton btnCalCapture 
         Caption         =   "Capture"
         Height          =   285
         Left            =   1410
         TabIndex        =   44
         Top             =   300
         Width           =   1005
      End
      Begin VB.VScrollBar vsbWheel 
         Height          =   855
         Index           =   0
         Left            =   210
         Max             =   9
         TabIndex        =   43
         Top             =   1080
         Width           =   195
      End
      Begin VB.CheckBox ckbAttenuator 
         Caption         =   "Check1"
         Height          =   225
         Index           =   0
         Left            =   210
         TabIndex        =   41
         Top             =   2430
         Width           =   255
      End
      Begin VB.CommandButton btnOpenCalFile 
         Caption         =   "OPEN"
         Height          =   285
         Left            =   180
         TabIndex        =   39
         Top             =   300
         Width           =   1095
      End
      Begin VB.Label lblWheel 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   0
         Left            =   210
         TabIndex        =   42
         Top             =   780
         Width           =   165
      End
      Begin VB.Label lblAttenuator 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "2"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   0
         Left            =   240
         TabIndex        =   40
         Top             =   2160
         Width           =   135
      End
   End
   Begin Threed.SSFrame SSFrame2 
      Height          =   5715
      Left            =   5940
      TabIndex        =   2
      Top             =   30
      Width           =   2355
      _Version        =   65536
      _ExtentX        =   4154
      _ExtentY        =   10081
      _StockProps     =   14
      Caption         =   "Raw Data"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   31
         Left            =   1050
         TabIndex        =   34
         Top             =   4140
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   30
         Left            =   1050
         TabIndex        =   33
         Top             =   3870
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   29
         Left            =   1050
         TabIndex        =   32
         Top             =   3603
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   28
         Left            =   1050
         TabIndex        =   31
         Top             =   3336
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   27
         Left            =   1050
         TabIndex        =   30
         Top             =   3069
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   26
         Left            =   1050
         TabIndex        =   29
         Top             =   2802
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   25
         Left            =   1050
         TabIndex        =   28
         Top             =   2535
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   24
         Left            =   1050
         TabIndex        =   27
         Top             =   2268
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   23
         Left            =   1050
         TabIndex        =   26
         Top             =   2001
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   22
         Left            =   1050
         TabIndex        =   25
         Top             =   1734
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   21
         Left            =   1050
         TabIndex        =   24
         Top             =   1467
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   20
         Left            =   1050
         TabIndex        =   23
         Top             =   1200
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   19
         Left            =   180
         TabIndex        =   22
         Top             =   5220
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   18
         Left            =   180
         TabIndex        =   21
         Top             =   5040
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   17
         Left            =   180
         TabIndex        =   20
         Top             =   4680
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   16
         Left            =   180
         TabIndex        =   19
         Top             =   4500
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   15
         Left            =   180
         TabIndex        =   18
         Top             =   4140
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   14
         Left            =   180
         TabIndex        =   17
         Top             =   3960
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   13
         Left            =   180
         TabIndex        =   16
         Top             =   3660
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   12
         Left            =   180
         TabIndex        =   15
         Top             =   3480
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   11
         Left            =   180
         TabIndex        =   14
         Top             =   3120
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   10
         Left            =   180
         TabIndex        =   13
         Top             =   2940
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   9
         Left            =   180
         TabIndex        =   12
         Top             =   2610
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   8
         Left            =   180
         TabIndex        =   11
         Top             =   2370
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   7
         Left            =   180
         TabIndex        =   10
         Top             =   2040
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   6
         Left            =   180
         TabIndex        =   9
         Top             =   1860
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   5
         Left            =   180
         TabIndex        =   8
         Top             =   1560
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   4
         Left            =   180
         TabIndex        =   7
         Top             =   1380
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   3
         Left            =   180
         TabIndex        =   6
         Top             =   1020
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   2
         Left            =   180
         TabIndex        =   5
         Top             =   840
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   1
         Left            =   180
         TabIndex        =   4
         Top             =   480
         Width           =   555
      End
      Begin VB.Label lblIndByte 
         AutoSize        =   -1  'True
         Caption         =   "Byte"
         Height          =   195
         Index           =   0
         Left            =   180
         TabIndex        =   3
         Top             =   300
         Width           =   555
      End
   End
   Begin Threed.SSFrame SSFrame1 
      Height          =   5715
      Left            =   30
      TabIndex        =   0
      Top             =   30
      Width           =   3225
      _Version        =   65536
      _ExtentX        =   5689
      _ExtentY        =   10081
      _StockProps     =   14
      Caption         =   "Pulseheights"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.Label lblPulseHeightAverage 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Average"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   0
         Left            =   1890
         TabIndex        =   37
         Top             =   360
         Width           =   720
      End
      Begin VB.Label lblNomenclature 
         Caption         =   "T???"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   0
         Left            =   420
         TabIndex        =   36
         Top             =   360
         Width           =   585
      End
      Begin VB.Label lblnPulseHeightMasterSeen 
         AutoSize        =   -1  'True
         Caption         =   "nPulseMaster"
         Height          =   195
         Left            =   60
         TabIndex        =   35
         Top             =   4050
         Width           =   1155
      End
      Begin VB.Label lblPulseHeight 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Pulse"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   0
         Left            =   1200
         TabIndex        =   1
         Top             =   360
         Width           =   480
      End
   End
End
Attribute VB_Name = "frmPulseHeight"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim CalFileOpen As Boolean
Dim Average16(9) As Single


Public Static Sub Process()
Dim I As Integer
Dim J As Integer
Dim Temp As Long
Dim cPHA As Long
Dim nByte As Integer
Dim IndByte(31) As Integer
Dim Last16(9, 15) As Single
Dim AvgWork As Single
Dim MemoryPointer As Integer
Dim OutputString As String
If RejectBad And Not PHAGood Then
  frmPanel.LogMessage "PHA Rejected"
  ImportStats(1, 4) = ImportStats(1, 4) + 1
  Exit Sub
End If
ImportStats(0, 4) = ImportStats(0, 4) + 1
'Each PHA occupies two bytes, which are then just
'strung together in the three-byte "words" used in
'the telemetry.
'First, get the bytes separated out so they
'can be regrouped easily
nByte = 2
For I = 0 To PulseHeightMaster_Last
 Temp = PulseHeightMaster_Raw(I)
 IndByte(nByte) = Temp And 255
 lblIndByte(nByte).Caption = Format$(IndByte(nByte))
 nByte = nByte - 1
 Temp = Temp \ 256
 IndByte(nByte) = Temp And 255
 lblIndByte(nByte).Caption = Format$(IndByte(nByte))
 nByte = nByte - 1
 Temp = Temp \ 256
 IndByte(nByte) = Temp And 255
 lblIndByte(nByte).Caption = Format$(IndByte(nByte))
 nByte = nByte + 5
Next I
'Now work through two bytes at a time to reconstruct
'the PHA's
GenerateTimeStamp OutputString
OutputString = "EV: " + OutputString + " "
MemoryPointer = (MemoryPointer + 1) And 15
For I = 0 To LastLEEPulseHeight
 'The codes 128 (for PHA0) and 129 (for PHA1)
 'on one of the PHA cards, in the high order byte,
 'indicate that the PHA was not triggered for this
 'event. In this case the low order byte contains a
 'counter to indicate aliveness.
 'The format for the 12 bit ADC data word is:
 'High byte =  X,B11,B10,B9,B8,B7,B6,B5;where X may be undefined.
 'Low byte  =  B4,B3,B2,B1,B0,0,0,0
 If (IndByte(2 * I) And 128) = 0 Then
  'This is indeed a valid PHA. Reconstruct it.
  cPHA = IndByte(2 * I) * 32
  cPHA = cPHA + IndByte(2 * I + 1) \ 8
  'Put the PHA in the display
  LEEPulseHeightEvent(I) = cPHA
  'Keep a running average of the last 16 PHA
  Last16(I, MemoryPointer) = cPHA
  AvgWork = 0
  For J = 0 To 15
    AvgWork = AvgWork + Last16(I, J)
  Next J
  AvgWork = AvgWork / 16#
  Average16(I) = AvgWork
  lblPulseHeight(I).Caption = Format$(cPHA)
  lblPulseHeightAverage(I).Caption = Format$(AvgWork, "##0.00")
 Else
  'Indicate the null PHA with a negative number
  lblPulseHeight(I).Caption = "-1"
  Last16(I, MemoryPointer) = -1#
  LEEPulseHeightEvent(I) = 0
 End If
 'Build the report
 OutputString = OutputString + " " + lblPulseHeight(I).Caption
Next I
EventHistograms
Print #2, OutputString
If RecordLee Then Print #4, OutputString
If ShowLEEPHA Then frmLEEData.AddText OutputString
End Sub

Private Sub btnCalCapture_Click()
Dim CalString As String
Dim CurAtten As Double
Dim CurWheel As Double
Dim CurSetting As Double
Dim I As Integer
CalString = ""
'CalString = "A: "
'For I = 0 To 3
' CalString = CalString + Format$(ckbAttenuator(I).Value) + " "
'Next I
CurAtten = 1#
If ckbAttenuator(0).Value = 1 Then CurAtten = CurAtten * 2#
If ckbAttenuator(1).Value = 1 Then CurAtten = CurAtten * 5#
If ckbAttenuator(2).Value = 1 Then CurAtten = CurAtten * 10#
If ckbAttenuator(3).Value = 1 Then CurAtten = CurAtten * 10#
'CalString = CalString + Format$(CurAtten) + " "
'CalString = CalString + "W: "
CurWheel = 0#
CurWheel = CurWheel + CDbl(lblWheel(3).Caption) / 10#
CurWheel = CurWheel + CDbl(lblWheel(2).Caption) * 10#
CurWheel = CurWheel + CDbl(lblWheel(1).Caption) * 100#
CurWheel = CurWheel + CDbl(lblWheel(0).Caption) * 1000#
CurSetting = CurWheel * CurAtten / 20#
CalString = CalString + Right$("       " & Format$(CurSetting, "##0.0"), 7)
'For I = 0 To 3
' CalString = CalString + Format$(vsbWheel(I).Value) + " "
'Next I
'CalString = CalString + Format$(CurWheel, "####0.0") + " "
'CalString = CalString + "PH:"
For I = 0 To 9
 CalString = CalString + Right$("       " & Format$(Average16(I), "##0.0"), 7)
Next I
If CalFileOpen Then
Print #3, CalString
End If
End Sub

Private Static Sub btnOpenCalFile_Click()
Dim LEECalTag As String
Dim LEENextCal As Integer
Dim Parameters As String
Select Case btnOpenCalFile.Caption
Case "OPEN"
  Open "C:\LEECal\NextCalRun.txt" For Input As #3
  Input #3, LEENextCal
  Close #3
  LEECalTag = "LCAL" + Right$("000" + Format$(LEENextCal), 4)
  LEENextCal = LEENextCal + 1
  Open "C:\LEECal\NextCalRun.txt" For Output As #3
  Write #3, LEENextCal
  Close #3
  btnOpenCalFile.Caption = LEECalTag
  Open "C:\LEECal\" & LEECalTag & ".CAL" For Output As #3
  Print #3, "Open at " + frmPanel.lblCurTime.Caption
  Parameters = frmPanel.lblAltitude(0).Caption + " " + frmPanel.lblAltimeterTemperature(0) + " " + frmPanel.lblAltitude(1).Caption + " " + frmPanel.lblAltimeterTemperature(1)
  Print #3, Parameters
  frmPanel.LogMessage ("Calibration File " & LEECalTag & " Open")
  CalFileOpen = True
Case Else
  btnOpenCalFile.Caption = "OPEN"
  Parameters = frmPanel.lblAltitude(0).Caption + " " + frmPanel.lblAltimeterTemperature(0) + " " + frmPanel.lblAltitude(1).Caption + " " + frmPanel.lblAltimeterTemperature(1)
  Print #3, Parameters
  Print #3, "Close at " + frmPanel.lblCurTime.Caption
  Close #3
  frmPanel.LogMessage ("Calibration File " & LEECalTag & " Closed")
  CalFileOpen = False
End Select
End Sub


Private Sub Form_Load()
Dim I As Integer
lblPulseHeight(0).Top = lblNomenclature(0).Top
lblNomenclature(0).Caption = frmPMTVolts.btnHiVolt(LastHiVolt + 1).Caption
For I = 1 To 9
 Load lblPulseHeight(I)
 Load lblPulseHeightAverage(I)
 lblPulseHeight(I).Top = lblPulseHeight(I - 1).Top + 250
 lblPulseHeight(I).Visible = True
 lblPulseHeightAverage(I).Top = lblPulseHeight(I).Top
 lblPulseHeightAverage(I).Visible = True
 Load lblNomenclature(I)
 lblNomenclature(I).Top = lblPulseHeight(I).Top
 lblNomenclature(I).Visible = True
 lblNomenclature(I).Caption = frmPMTVolts.btnHiVolt(LastHiVolt + 1 + I).Caption
Next I
For I = 1 To 3
 Load ckbAttenuator(I)
 ckbAttenuator(I).Left = ckbAttenuator(I - 1).Left + 400
 ckbAttenuator(I).Visible = True
 Load lblAttenuator(I)
 lblAttenuator(I).Left = lblAttenuator(I - 1).Left + 400
 lblAttenuator(I).Visible = True
Next I
ckbAttenuator(0).Value = 1
lblAttenuator(0).Caption = "2"
ckbAttenuator(1).Value = 0
lblAttenuator(1).Caption = "5"
ckbAttenuator(2).Value = 1
lblAttenuator(2).Caption = "10"
ckbAttenuator(3).Value = 0
lblAttenuator(3).Caption = "10"
lblWheel(0).Left = lblAttenuator(0).Left
vsbWheel(0).Left = lblWheel(0).Left
For I = 1 To 3
 Load lblWheel(I)
 lblWheel(I).Left = lblWheel(I - 1).Left + 400
 lblWheel(I).Visible = True
 Load vsbWheel(I)
 vsbWheel(I).Left = vsbWheel(I - 1).Left + 400
 vsbWheel(I).Visible = True
Next I
vsbWheel(3).Max = 99
vsbWheel(3).LargeChange = 10
CalFileOpen = False
End Sub

Private Sub vsbWheel_Change(Index As Integer)
lblWheel(Index).Caption = Format$(vsbWheel(Index).Value)
End Sub


