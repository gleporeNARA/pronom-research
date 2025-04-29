VERSION 5.00
Begin VB.Form OdenProcess 
   Caption         =   "Oden Data Conversion"
   ClientHeight    =   9585
   ClientLeft      =   1050
   ClientTop       =   1815
   ClientWidth     =   13800
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "OdenProcess.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9585
   ScaleWidth      =   13800
   Begin VB.Frame Frame4 
      Caption         =   "MoniSum"
      Height          =   4095
      Left            =   10890
      TabIndex        =   25
      Top             =   0
      Width           =   2325
      Begin VB.CommandButton btnProcessMonisum 
         Caption         =   "Process"
         Height          =   255
         Left            =   180
         TabIndex        =   30
         Top             =   3600
         Width           =   915
      End
      Begin VB.CommandButton btnScanMoniSum 
         Caption         =   "Scan"
         Height          =   255
         Left            =   180
         TabIndex        =   27
         Top             =   3270
         Width           =   915
      End
      Begin VB.FileListBox File4 
         Height          =   2625
         Left            =   90
         Pattern         =   "*_MoniSum.dat"
         TabIndex        =   26
         Top             =   540
         Width           =   1815
      End
      Begin VB.Label Label6a 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "_MoniSum.dat Files"
         Height          =   195
         Left            =   195
         TabIndex        =   29
         Top             =   300
         Width           =   1695
      End
      Begin VB.Label lblRunning4 
         BackColor       =   &H0000FF00&
         Height          =   315
         Left            =   1230
         TabIndex        =   28
         Top             =   3270
         Width           =   555
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Barometer"
      Height          =   4335
      Left            =   10890
      TabIndex        =   19
      Top             =   4110
      Width           =   2325
      Begin VB.CheckBox chkBaroOut 
         Caption         =   "File Output"
         Height          =   255
         Left            =   180
         TabIndex        =   24
         Top             =   3630
         Value           =   1  'Checked
         Width           =   1455
      End
      Begin VB.FileListBox File3 
         Height          =   2625
         Left            =   30
         Pattern         =   "*.baro"
         TabIndex        =   21
         Top             =   510
         Width           =   1815
      End
      Begin VB.CommandButton btnLoadBaro 
         Caption         =   "Load"
         Height          =   255
         Left            =   120
         TabIndex        =   20
         Top             =   3240
         Width           =   915
      End
      Begin VB.Label lblRunning3 
         BackColor       =   &H0000FF00&
         Height          =   315
         Left            =   1170
         TabIndex        =   23
         Top             =   3240
         Width           =   555
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         Caption         =   ".baro Files"
         Height          =   225
         Left            =   300
         TabIndex        =   22
         Top             =   270
         Width           =   1125
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Program Information"
      Height          =   615
      Left            =   -30
      TabIndex        =   10
      Top             =   8460
      Width           =   3585
      Begin VB.Label lblVersion 
         AutoSize        =   -1  'True
         Caption         =   "Version 3.32 Delaware 5/5/11"
         Height          =   195
         Left            =   180
         TabIndex        =   11
         Top             =   300
         Width           =   2595
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Produce Moni Summary Files"
      Height          =   8445
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10875
      Begin VB.OptionButton optDOM 
         Caption         =   "DOM"
         Height          =   195
         Index           =   3
         Left            =   9870
         TabIndex        =   80
         Top             =   8190
         Width           =   855
      End
      Begin VB.OptionButton optDOM 
         Caption         =   "DOM"
         Height          =   195
         Index           =   2
         Left            =   9870
         TabIndex        =   79
         Top             =   7970
         Width           =   855
      End
      Begin VB.OptionButton optDOM 
         Caption         =   "DOM"
         Height          =   195
         Index           =   1
         Left            =   9870
         TabIndex        =   78
         Top             =   7750
         Width           =   855
      End
      Begin VB.OptionButton optDOM 
         Caption         =   "DOM"
         Height          =   195
         Index           =   0
         Left            =   9870
         TabIndex        =   77
         Top             =   7530
         Value           =   -1  'True
         Width           =   855
      End
      Begin VB.CheckBox chk8Thresh 
         Caption         =   "Thres"
         Height          =   195
         Left            =   5670
         TabIndex        =   76
         Top             =   7770
         Width           =   855
      End
      Begin VB.FileListBox File10 
         Height          =   2625
         Left            =   8730
         Pattern         =   "*.txt"
         TabIndex        =   73
         Top             =   4530
         Width           =   1815
      End
      Begin VB.CommandButton btnScan10 
         Caption         =   "Scan One"
         Height          =   255
         Left            =   8730
         TabIndex        =   72
         Top             =   7170
         Width           =   1065
      End
      Begin VB.CommandButton btnScanAll10 
         Caption         =   "Scan All"
         Height          =   255
         Left            =   8730
         TabIndex        =   71
         Top             =   7440
         Width           =   1065
      End
      Begin VB.CommandButton btnScanAll9 
         Caption         =   "Scan All"
         Height          =   255
         Left            =   6720
         TabIndex        =   68
         Top             =   7440
         Width           =   1065
      End
      Begin VB.CommandButton btnScan9 
         Caption         =   "Scan One"
         Height          =   255
         Left            =   6720
         TabIndex        =   67
         Top             =   7200
         Width           =   1065
      End
      Begin VB.FileListBox File9 
         Height          =   2625
         Left            =   6720
         Pattern         =   "*.BinSum"
         TabIndex        =   66
         Top             =   4530
         Width           =   1815
      End
      Begin VB.CheckBox chk8Keep 
         Caption         =   "GPS OK"
         Height          =   255
         Left            =   4620
         TabIndex        =   58
         Top             =   7740
         Width           =   1245
      End
      Begin VB.HScrollBar hsbSelectCondition 
         Height          =   225
         Left            =   4620
         Max             =   47
         TabIndex        =   56
         Top             =   8070
         Value           =   10
         Width           =   1215
      End
      Begin VB.FileListBox File8 
         Height          =   2625
         Left            =   4590
         Pattern         =   "*.iDOM"
         TabIndex        =   53
         Top             =   4530
         Width           =   1815
      End
      Begin VB.CommandButton btnScan8 
         Caption         =   "Scan One"
         Height          =   255
         Left            =   4590
         TabIndex        =   52
         Top             =   7200
         Width           =   1065
      End
      Begin VB.CommandButton btnScanAll8 
         Caption         =   "Scan All"
         Height          =   255
         Left            =   4590
         TabIndex        =   51
         Top             =   7440
         Width           =   1065
      End
      Begin VB.CheckBox chkSummarize7 
         Caption         =   "Attitude"
         Height          =   315
         Index           =   2
         Left            =   3240
         TabIndex        =   49
         Top             =   7770
         Value           =   1  'Checked
         Width           =   990
      End
      Begin VB.CheckBox chkSummarize7 
         Caption         =   "BinSum"
         Height          =   315
         Index           =   1
         Left            =   2460
         TabIndex        =   48
         Top             =   8040
         Width           =   990
      End
      Begin VB.CheckBox chkSummarize7 
         Caption         =   ".Tilt"
         Height          =   315
         Index           =   0
         Left            =   2460
         TabIndex        =   45
         Top             =   7770
         Width           =   705
      End
      Begin VB.CommandButton btnScanAll7 
         Caption         =   "Scan All"
         Height          =   255
         Left            =   2490
         TabIndex        =   44
         Top             =   7470
         Width           =   1065
      End
      Begin VB.CommandButton btnScan7 
         Caption         =   "Scan One"
         Height          =   255
         Left            =   2490
         TabIndex        =   43
         Top             =   7200
         Width           =   1065
      End
      Begin VB.FileListBox File7 
         Height          =   2625
         Left            =   2430
         Pattern         =   "*.dat"
         TabIndex        =   42
         Top             =   4500
         Width           =   1815
      End
      Begin VB.FileListBox File6 
         Height          =   2625
         Left            =   150
         Pattern         =   "*.outlog"
         TabIndex        =   39
         Top             =   4500
         Width           =   1815
      End
      Begin VB.CommandButton btnScan6 
         Caption         =   "Scan One"
         Height          =   255
         Left            =   180
         TabIndex        =   38
         Top             =   7200
         Width           =   1065
      End
      Begin VB.CommandButton btnScanAll6 
         Caption         =   "Scan All"
         Height          =   255
         Left            =   180
         TabIndex        =   37
         Top             =   7500
         Width           =   1065
      End
      Begin VB.FileListBox File5 
         Height          =   2625
         Left            =   6570
         Pattern         =   "*.ser"
         TabIndex        =   34
         Top             =   510
         Width           =   1815
      End
      Begin VB.CommandButton btnScan1Serap 
         Caption         =   "Scan One"
         Height          =   255
         Left            =   6600
         TabIndex        =   33
         Top             =   3240
         Width           =   1065
      End
      Begin VB.CommandButton btnScanAllSerap 
         Caption         =   "Scan All"
         Height          =   255
         Left            =   6600
         TabIndex        =   32
         Top             =   3510
         Width           =   1065
      End
      Begin VB.CheckBox chkSummarizeSerap 
         Caption         =   "Summary Output"
         Height          =   315
         Left            =   6570
         TabIndex        =   31
         Top             =   3840
         Value           =   1  'Checked
         Width           =   1815
      End
      Begin VB.OptionButton optNameSource 
         Caption         =   "Program Run Date"
         Height          =   285
         Index           =   0
         Left            =   90
         TabIndex        =   15
         Top             =   3510
         Width           =   2295
      End
      Begin VB.OptionButton optNameSource 
         Caption         =   "Input File Name"
         Height          =   285
         Index           =   1
         Left            =   90
         TabIndex        =   14
         Top             =   3810
         Width           =   2295
      End
      Begin VB.CheckBox chkSummarize 
         Caption         =   "Summary Output"
         Height          =   315
         Left            =   2850
         TabIndex        =   13
         Top             =   3840
         Value           =   1  'Checked
         Width           =   1815
      End
      Begin VB.CommandButton btnScanAll 
         Caption         =   "Scan All"
         Height          =   255
         Left            =   2880
         TabIndex        =   12
         Top             =   3510
         Width           =   1065
      End
      Begin VB.CommandButton btnScan2 
         Caption         =   "SCAN"
         Height          =   255
         Left            =   4830
         TabIndex        =   6
         Top             =   3240
         Width           =   915
      End
      Begin VB.CommandButton btnScan1 
         Caption         =   "Scan One"
         Height          =   255
         Left            =   2880
         TabIndex        =   5
         Top             =   3210
         Width           =   1065
      End
      Begin VB.FileListBox File2 
         Height          =   2625
         Left            =   4710
         Pattern         =   "*.runlog"
         TabIndex        =   4
         Top             =   510
         Width           =   1815
      End
      Begin VB.DriveListBox Drive1 
         Height          =   315
         Left            =   120
         TabIndex        =   3
         Top             =   360
         Width           =   1815
      End
      Begin VB.DirListBox Dir1 
         Height          =   2115
         Left            =   90
         TabIndex        =   2
         Top             =   750
         Width           =   2505
      End
      Begin VB.FileListBox File1 
         Height          =   2625
         Left            =   2880
         Pattern         =   "*.moni"
         TabIndex        =   1
         Top             =   510
         Width           =   1815
      End
      Begin VB.Label lblRunning10 
         BackColor       =   &H0000FF00&
         Height          =   315
         Left            =   9870
         TabIndex        =   75
         Top             =   7200
         Width           =   555
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   ".txt PHA Files"
         Height          =   195
         Left            =   9000
         TabIndex        =   74
         Top             =   4230
         Width           =   1185
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   ".BinSum Files"
         Height          =   195
         Left            =   6990
         TabIndex        =   70
         Top             =   4230
         Width           =   1185
      End
      Begin VB.Label lblRunning9 
         BackColor       =   &H0000FF00&
         Height          =   315
         Left            =   7860
         TabIndex        =   69
         Top             =   7200
         Width           =   555
      End
      Begin VB.Label lblSelectCondition 
         AutoSize        =   -1  'True
         Caption         =   "10"
         Height          =   195
         Left            =   6000
         TabIndex        =   57
         Top             =   8070
         Width           =   225
      End
      Begin VB.Label lblRunning8 
         BackColor       =   &H0000FF00&
         Height          =   315
         Left            =   5730
         TabIndex        =   55
         Top             =   7200
         Width           =   555
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   ".iDOM Files"
         Height          =   195
         Left            =   4950
         TabIndex        =   54
         Top             =   4230
         Width           =   1005
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   ".dat Files"
         Height          =   195
         Left            =   2865
         TabIndex        =   47
         Top             =   4230
         Width           =   825
      End
      Begin VB.Label lblRunning7 
         BackColor       =   &H0000FF00&
         Height          =   315
         Left            =   3600
         TabIndex        =   46
         Top             =   7200
         Width           =   555
      End
      Begin VB.Label lblRunning6 
         BackColor       =   &H0000FF00&
         Height          =   315
         Left            =   1320
         TabIndex        =   41
         Top             =   7200
         Width           =   555
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   ".outlog Files"
         Height          =   195
         Left            =   465
         TabIndex        =   40
         Top             =   4230
         Width           =   1065
      End
      Begin VB.Label lblRunning1Serap 
         BackColor       =   &H0000FF00&
         Height          =   315
         Left            =   7740
         TabIndex        =   36
         Top             =   3210
         Width           =   555
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Caption         =   ".ser Files"
         Height          =   255
         Left            =   6690
         TabIndex        =   35
         Top             =   240
         Width           =   1455
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Derive output file name from:"
         Height          =   195
         Left            =   90
         TabIndex        =   18
         Top             =   3240
         Width           =   2475
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         Caption         =   ".runlog Files"
         Height          =   225
         Left            =   5010
         TabIndex        =   17
         Top             =   240
         Width           =   1125
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Caption         =   ".moni Files"
         Height          =   255
         Left            =   2970
         TabIndex        =   16
         Top             =   240
         Width           =   1455
      End
      Begin VB.Label lblRunning2 
         BackColor       =   &H0000FF00&
         Height          =   315
         Left            =   5880
         TabIndex        =   9
         Top             =   3240
         Width           =   555
      End
      Begin VB.Label lblRunning1 
         BackColor       =   &H0000FF00&
         Height          =   315
         Left            =   4020
         TabIndex        =   8
         Top             =   3210
         Width           =   555
      End
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      Caption         =   "ModulationStatus"
      Height          =   195
      Left            =   3570
      TabIndex        =   65
      Top             =   9180
      Width           =   1485
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      Caption         =   "AttitudeStatus"
      Height          =   195
      Left            =   3600
      TabIndex        =   64
      Top             =   8460
      Width           =   1215
   End
   Begin VB.Label lblCutStat 
      AutoSize        =   -1  'True
      Caption         =   "CutoffStatus"
      Height          =   195
      Left            =   3570
      TabIndex        =   63
      Top             =   8700
      Width           =   1065
   End
   Begin VB.Label Label15 
      AutoSize        =   -1  'True
      Caption         =   "BarometerStatus"
      Height          =   195
      Left            =   3570
      TabIndex        =   62
      Top             =   8940
      Width           =   1410
   End
   Begin VB.Label lblModulStatus 
      AutoSize        =   -1  'True
      Caption         =   "ModulationStatus"
      Height          =   195
      Left            =   5460
      TabIndex        =   61
      Top             =   9180
      Width           =   1485
   End
   Begin VB.Label lblBarometerStatus 
      AutoSize        =   -1  'True
      Caption         =   "BarometerStatus"
      Height          =   195
      Left            =   5460
      TabIndex        =   60
      Top             =   8940
      Width           =   1410
   End
   Begin VB.Label lblCutoffStatus 
      AutoSize        =   -1  'True
      Caption         =   "CutoffStatus"
      Height          =   195
      Left            =   5460
      TabIndex        =   59
      Top             =   8700
      Width           =   1065
   End
   Begin VB.Label lblAttitudeStatus 
      AutoSize        =   -1  'True
      Caption         =   "AttitudeStatus"
      Height          =   195
      Left            =   5460
      TabIndex        =   50
      Top             =   8460
      Width           =   1215
   End
   Begin VB.Label lblShowText 
      AutoSize        =   -1  'True
      Caption         =   "Information Message"
      Height          =   195
      Left            =   30
      TabIndex        =   7
      Top             =   9390
      Width           =   1770
   End
End
Attribute VB_Name = "OdenProcess"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub btnLoadBaro_Click()
Dim numFiles As Integer
Dim iFile As Integer
Dim iFor As Integer
Dim nFileRec As Long
Dim BaroFileIn As String
Dim BaroFileOut As String
Dim CourseFileOut As String
Dim OutRec As String
Dim MinSec As String
Dim InRec As String
Dim nLook As Integer
Dim nDOMID As Integer
Dim nDot As Integer
Dim FileTime As Date
Dim DOY As Double
Dim NeutronScaler(1) As Long
Dim LastNeutronScaler(1) As Long
Dim Neutrons(1) As Long
Dim Position(1, 1) As Single
Dim nBlank As Integer
Dim Degrees As Single
Dim Minutes As Single
Dim Tag As String
Dim AIR As Single
Dim Digi As Single
Dim DigiTemp As Single
Dim iYr As Integer
Dim iMonth As Integer
Dim iDay As Integer
Dim iMin As Integer
Dim iHour As Integer
BaroFileOut = "C:\_OdenProcessOutput\Barosum.dat"
CourseFileOut = "C:\_OdenProcessOutput\Course.dat"
Open BaroFileOut For Output As #2
Print #2, "DOY2009  N1 N2 LAT1  LON1   LAT2   LON2   AIR   Digi   DigT"
Open CourseFileOut For Output As #3
Print #3, "YR MONTH DAY HOUR MIN DOY2009  N1 N2 LAT1  LON1   LAT2   LON2   AIR   Digi   DigT"
lblRunning3.BackColor = ColorRed
nLook = DoEvents
numFiles = File3.ListCount
iFile = 0
Do While iFile < numFiles
  File3.ListIndex = iFile
  BaroFileIn = Dir1.Path & "\" & File3.List(File3.ListIndex)
  nLook = 0
  Open BaroFileIn For Input As #1
  nFileRec = 0
  Do While Not EOF(1)
    Line Input #1, InRec
    If (Len(InRec) = 0) Or (InStr(InRec, "Reading") > 0) Then
      lblShowText.Caption = InRec
    Else
      nFileRec = nFileRec + 1
      iYr = 2000 + CInt(Left$(InRec, 2))
      iMonth = CInt(Mid$(InRec, 4, 2))
      iDay = CInt(Mid$(InRec, 7, 2))
      iHour = CInt(Mid$(InRec, 10, 2))
      iMin = CInt(Mid$(InRec, 13, 2))
      MinSec = Mid$(InRec, 13, 5)
      FileTime = CDate(Mid$(InRec, 4, 5) & "/" & Left$(InRec, 2) & Mid$(InRec, 9, 9))
      DOY = (FileTime - CDate("12/31/2008"))
      InRec = Mid$(InRec, 19)
      OutRec = Format$(DOY, "0.0000")
      'The neutron counters
      nBlank = InStr(InRec, " ")
      NeutronScaler(0) = CLng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      NeutronScaler(1) = CLng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      For iFor = 0 To 1
        If NeutronScaler(iFor) > LastNeutronScaler(iFor) Then
          Neutrons(iFor) = NeutronScaler(iFor) - LastNeutronScaler(iFor)
        Else
          Neutrons(iFor) = 0
        End If
        LastNeutronScaler(iFor) = NeutronScaler(iFor)
      Next iFor
      OutRec = OutRec & " " & Format$(Neutrons(0))
      OutRec = OutRec & " " & Format$(Neutrons(1))
      'First Latitude
      nBlank = InStr(InRec, " ")
      If Left$(InRec, nBlank - 1) = "Latitude" Then
        Position(0, 0) = 0#
        InRec = Mid$(InRec, nBlank + 1)
      Else
        Degrees = CSng(Left$(InRec, nBlank - 1))
        InRec = Mid$(InRec, nBlank + 1)
        nBlank = InStr(InRec, " ")
        Minutes = CSng(Left$(InRec, nBlank - 1))
        InRec = Mid$(InRec, nBlank + 1)
        nBlank = InStr(InRec, " ")
        Tag = Left$(InRec, nBlank - 1)
        InRec = Mid$(InRec, nBlank + 1)
        Position(0, 0) = Degrees + Minutes / 60#
        If Tag = "S" Then
          Position(0, 0) = -Position(0, 0)
        End If
      End If
      OutRec = OutRec & " " & Format$(Position(0, 0), "0.000")
      'First Longitude
      nBlank = InStr(InRec, " ")
      If Left$(InRec, nBlank - 1) = "Longitude" Then
        Position(0, 1) = 0#
        InRec = Mid$(InRec, nBlank + 1)
      Else
        Degrees = CSng(Left$(InRec, nBlank - 1))
        InRec = Mid$(InRec, nBlank + 1)
        nBlank = InStr(InRec, " ")
        Minutes = CSng(Left$(InRec, nBlank - 1))
        InRec = Mid$(InRec, nBlank + 1)
        nBlank = InStr(InRec, " ")
        Tag = Left$(InRec, nBlank - 1)
        InRec = Mid$(InRec, nBlank + 1)
        Position(0, 1) = Degrees + Minutes / 60#
        If Tag = "W" Then
          Position(0, 1) = -Position(0, 1)
        End If
      End If
      OutRec = OutRec & " " & Format$(Position(0, 1), "0.000")
      'Second Latitude
      nBlank = InStr(InRec, " ")
      If Left$(InRec, nBlank - 1) = "Latitude" Then
        Position(1, 0) = 0#
        InRec = Mid$(InRec, nBlank + 1)
      Else
        Degrees = CSng(Left$(InRec, nBlank - 1))
        InRec = Mid$(InRec, nBlank + 1)
        nBlank = InStr(InRec, " ")
        Minutes = CSng(Left$(InRec, nBlank - 1))
        InRec = Mid$(InRec, nBlank + 1)
        nBlank = InStr(InRec, " ")
        Tag = Left$(InRec, nBlank - 1)
        InRec = Mid$(InRec, nBlank + 1)
        Position(1, 0) = Degrees + Minutes / 60#
        If Tag = "S" Then
          Position(1, 0) = -Position(1, 0)
        End If
      End If
      OutRec = OutRec & " " & Format$(Position(1, 0), "0.000")
      'Second Longitude
      nBlank = InStr(InRec, " ")
      If Left$(InRec, nBlank - 1) = "Longitude" Then
        Position(1, 1) = 0#
        InRec = Mid$(InRec, nBlank + 1)
      Else
        Degrees = CSng(Left$(InRec, nBlank - 1))
        InRec = Mid$(InRec, nBlank + 1)
        nBlank = InStr(InRec, " ")
        Minutes = CSng(Left$(InRec, nBlank - 1))
        InRec = Mid$(InRec, nBlank + 1)
        nBlank = InStr(InRec, " ")
        Tag = Left$(InRec, nBlank - 1)
        InRec = Mid$(InRec, nBlank + 1)
        Position(1, 1) = Degrees + Minutes / 60#
        If Tag = "W" Then
          Position(1, 1) = -Position(1, 1)
        End If
      End If
      OutRec = OutRec & " " & Format$(Position(1, 1), "0.000")
      'AIR Barometer
      If Left$(InRec, 8) = "Last Rdg" Then
        AIR = 780#
        InRec = Mid$(InRec, 10)
      Else
        nBlank = InStr(InRec, " ")
        AIR = CSng(Left$(InRec, nBlank - 1))
        InRec = Mid$(InRec, nBlank + 1)
      End If
      OutRec = OutRec & " " & Format$(AIR, "0.0")
      'The Digiquartz Barometer
      nBlank = InStr(InRec, " ")
      Digi = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      DigiTemp = CSng(InRec)
      If (Digi > 700#) And (Digi < 800#) And (DigiTemp > 10#) And (DigiTemp < 50#) Then
      Else
        Digi = 780#
        DigiTemp = 30#
      End If
      OutRec = OutRec & " " & Format$(Digi, "0.00")
      OutRec = OutRec & " " & Format$(DigiTemp, "0.00")
      'OutRec = OutRec & "|" & InRec
      Print #2, OutRec
      If MinSec = "00:00" Then
        Print #3, Format$(iYr) & " " & Format$(iMonth) & " " & Format$(iDay) & " " & " " & Format$(iHour) & " " & " " & Format$(iMin) & " " & OutRec
      End If
    End If
  Loop
  Close #1
  iFile = iFile + 1
Loop
Close #2
lblRunning3.BackColor = ColorGreen
End Sub

Private Sub btnProcessMonisum_Click()
Dim Day2009 As Double
Dim InRec, OutRec As String
Dim AvSPE, SdSPE, RaSPE, AvMPE, SdMPE, RaMPE, Temp As Single
Dim tSPE, tMPE, Volt, Pr, nSeen As Integer
Dim nOpenWindow As Integer
Dim nLook As Integer
Dim numFiles As Integer
Dim iFile As Integer
Dim MoniSumFileIn As String
Dim MoniSumFileOut As String
Dim nBlank As Integer
Dim Here As Boolean
Dim iFor As Integer
Dim jFor
Dim iTemp As Integer
Dim curDiscLevel As Integer
If nDiscLevel <= 0 Then Exit Sub
lblRunning4.BackColor = ColorRed
numFiles = File4.ListCount
iFile = 0
MoniSumFileOut = "C:\_OdenProcessOutput\GrandSum.dat"
Open MoniSumFileOut For Output As #2
OutRec = "   DOY2009"
For iFor = 0 To nDiscLevel - 1
  OutRec = OutRec & Right$("       S" & Format$(DiscLevel(iFor), "0"), 7)
Next iFor
Print #2, OutRec
Do While iFile < numFiles
  nOpenWindow = DoEvents
  File4.ListIndex = iFile
  MoniSumFileIn = Dir1.Path & "\" & File4.List(File4.ListIndex)
  nLook = 0
  Open MoniSumFileIn For Input As #1
  Do While Not EOF(1)
    Line Input #1, InRec
'Day2009   AvSPE  SdSPE  RaSPE  AvMPE  SdMPE  RaMPE tSPE tMPE Volt Pr  Temp nSeen
'315.2465 2351.7   39.7  0.820  519.1   21.7  0.951  600  620 2932 42 -10.6   148
    If InStr(InRec, "Day2009") > 0 Then
      lblShowText.Caption = InRec
    ElseIf Len(InRec) = 0 Then
    Else
      InRec = InRec & " "
      Do While Left$(InRec, 1) = " "
        InRec = Mid$(InRec, 2)
      Loop
      Do While InStr(InRec, "  ") > 0
        nBlank = InStr(InRec, "  ")
        InRec = Left$(InRec, nBlank) & Mid$(InRec, nBlank + 2)
      Loop
      nBlank = InStr(InRec, " ")
      Day2009 = CDbl(Left$(InRec, nBlank - 1))
      If Day2009 < 300# Then Day2009 = Day2009 + 365#
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      AvSPE = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      SdSPE = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      RaSPE = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      AvMPE = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      SdMPE = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      RaMPE = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      tSPE = CInt(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      tMPE = CInt(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      Volt = CInt(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      Pr = CInt(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      Temp = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      nSeen = CInt(Left$(InRec, nBlank - 1))
      For iFor = 0 To nDiscLevel - 1
        If DiscLevel(iFor) = tSPE Then curDiscLevel = iFor
      Next iFor
      OutRec = Right$("          " & Format$(Day2009, "0.0000"), 10)
      For iFor = 0 To nDiscLevel - 1
        If iFor = curDiscLevel Then
           OutRec = OutRec & Right$("       " & Format$(AvSPE, "0.0"), 7)
        Else
           OutRec = OutRec & "   -1.0"
        End If
      Next iFor
      Print #2, OutRec
    End If
  Loop
  Close #1
  iFile = iFile + 1
Loop
Close #2
lblRunning4.BackColor = ColorGreen
End Sub

Private Sub btnScan1_Click()
Dim ScanFile As String
Dim OutputFile As String
Dim nLook As Integer
Dim nDot As Integer
Dim nDOMID As Integer
DateTag = Format(Now, "yy_mm_dd")
ScanFile = File1.List(File1.ListIndex)
nLook = 0
OutputFile = "C:\_OdenProcessOutput\"
'Find which DOM this file applies to
Do While nLook < 4
  nDOMID = InStr(ScanFile, DOMID(nLook))
  If nDOMID > 0 Then Exit Do
  nLook = nLook + 1
Loop
If nLook > 3 Then
  lblShowText.Caption = "Unknown DOM ID"
  Exit Sub
End If
OutputFile = OutputFile & DOMName(nLook)
If optNameSource(0).Value = True Then
  'The name is the present date
  OutputFile = OutputFile & "_" & DateTag
Else
  'Construct the name from the input file name
  nDot = InStr(ScanFile, ".")
  If nDOMID = 1 Then
    'The DOMID is at the start of the name
    OutputFile = OutputFile & Mid$(ScanFile, 13, nDot - 13)
  Else
    'The DOMID is embedded in the name
    OutputFile = OutputFile & Left$(ScanFile, nDOMID - 1)
  End If
End If
If chkSummarize = 0 Then
  OutputFile = OutputFile & "_Moni.dat"
Else
  OutputFile = OutputFile & "_MoniSum.dat"
End If
ScanFile = Dir1.Path & "\" & ScanFile
lblShowText.Caption = ScanFile
Open ScanFile For Input As #1
Open OutputFile For Output As #2
lblRunning1.BackColor = ColorRed
nLook = DoEvents
If chkSummarize.Value = 1 Then
    SummarizeMoniFile
  Else
    ReformatMoniFile
End If
lblRunning1.BackColor = ColorGreen
Close #1
Close #2
End Sub

Private Sub btnScan10_Click()
Dim ScanFile As String
Open "C:\_OdenProcessOutput\PHAConv.lis" For Output As #30
ScanFile = File10.List(File10.ListIndex)
PreparePHAtxt ScanFile
Close #30
AttitudeFileOpen = False
BarometerFileOpen = False
CutoffFileOpen = False
ModulFileOpen = False
End Sub

Private Sub btnScan1Serap_Click()
Dim ScanFile As String
Dim OutputFile As String
Dim nLook As Integer
Dim nDot As Integer
Dim nDOMID As Integer
DateTag = Format(Now, "yy_mm_dd")
ScanFile = File5.List(File1.ListIndex)
nLook = 0
OutputFile = "C:\_OdenProcessOutput\"
'Find which DOM this file applies to
Do While nLook < 4
  nDOMID = InStr(ScanFile, DOMID(nLook))
  If nDOMID > 0 Then Exit Do
  nLook = nLook + 1
Loop
If nLook > 3 Then
  lblShowText.Caption = "Unknown DOM ID"
  Exit Sub
End If
OutputFile = OutputFile & DOMName(nLook)
If optNameSource(0).Value = True Then
  'The name is the present date
  OutputFile = OutputFile & "_" & DateTag
Else
  'Construct the name from the input file name
  nDot = InStr(ScanFile, ".")
  If nDOMID = 1 Then
    'The DOMID is at the start of the name
    OutputFile = OutputFile & Mid$(ScanFile, 13, nDot - 13)
  Else
    'The DOMID is embedded in the name
    OutputFile = OutputFile & Left$(ScanFile, nDOMID - 1)
  End If
End If
If chkSummarize = 0 Then
  OutputFile = OutputFile & "_Serap.dat"
Else
  OutputFile = OutputFile & "_SerapSum.dat"
End If
ScanFile = Dir1.Path & "\" & ScanFile
lblShowText.Caption = ScanFile
Open ScanFile For Input As #1
Open OutputFile For Output As #2
lblRunning1.BackColor = ColorRed
nLook = DoEvents
If chkSummarizeSerap.Value = 1 Then
    SummarizeSerap
  Else
    ReformatSerap
End If
lblRunning1Serap.BackColor = ColorGreen
Close #1
Close #2
End Sub


Private Sub btnScan2_Click()
Dim ScanFile As String
Dim FileBytesLeft As Long
Dim InRec As String
Dim ProcString As String
Dim OneLine As String
Dim nBl As Integer
Dim nColon As Integer
Dim nBARTOL As Integer
Dim nRUN As Integer
Dim RecTime As Date
Dim nLF As Integer
Dim nCDT As Integer
Dim lDate As Integer
Dim StartDate As String
Dim YearString As String
Dim EndDate As String
Dim DateString As String
Dim nToRead As Integer
Dim RunTag As String
ScanFile = File2.List(File2.ListIndex)
ScanFile = Dir1.Path & "\" & ScanFile
lblShowText.Caption = ScanFile
Open ScanFile For Input As #1
Open "C:\_OdenProcessOutput\OdenRunLog.lis" For Output As #2
lblRunning2.BackColor = ColorRed
nBl = DoEvents
InRec = ""
FileBytesLeft = LOF(1)
Do While FileBytesLeft > 0
  If FileBytesLeft > 100 Then
    nToRead = 100
  Else
    nToRead = FileBytesLeft
  End If
  InRec = InRec & Input$(nToRead, #1)
  FileBytesLeft = FileBytesLeft - nToRead
  Do While (InStr(InRec, Chr$(10)) > 0)
    nLF = InStr(InRec, Chr$(10))
    OneLine = Left$(InRec, nLF - 1)
    nColon = InStr(OneLine, ":")
    OneLine = Mid$(OneLine, nColon + 1)
    nCDT = InStr(OneLine, "CDT")
    OneLine = Left$(OneLine, nCDT - 2) & Mid$(OneLine, nCDT + 3)
    nBARTOL = InStr(OneLine, "BARTOL")
    nRUN = InStr(OneLine, "RUN")
'    Print #2, OneLine
    If InStr(OneLine, "NEW") Then
      lDate = nBARTOL - nRUN - 9
      DateString = Mid$(OneLine, nRUN + 8, lDate)
      RunTag = Mid$(OneLine, nBARTOL)
      YearString = Right$(DateString, 4)
      DateString = Left$(DateString, Len(DateString) - 5)
      nColon = InStr(DateString, ":")
      DateString = Left$(DateString, nColon - 3) & YearString & Mid$(DateString, nColon - 3)
      CurTime = CDate(DateString)
      GenerateTimeStamp StartDate
    ElseIf InStr(OneLine, "FINISHED") Then
      DateString = Mid$(OneLine, nRUN + 8)
      YearString = Right$(DateString, 4)
      DateString = Left$(DateString, Len(DateString) - 5)
      nColon = InStr(DateString, ":")
      DateString = Left$(DateString, nColon - 3) & YearString & Mid$(DateString, nColon - 3)
      CurTime = CDate(DateString)
      GenerateTimeStamp EndDate
      Print #2, StartDate & " to " & EndDate & " " & RunTag
    End If
    If Len(InRec) >= nLF + 1 Then
      InRec = Mid$(InRec, nLF + 1)
    Else
      InRec = ""
    End If
  Loop
Loop
lblRunning2.BackColor = ColorGreen
Close #1
Close #2
End Sub


Private Sub btnScan6_Click()
Dim ScanFile As String
Dim OutputFile As String
Dim TestString As String
Dim nLook As Integer
Dim nDot As Integer
Dim nDOMID As Integer
Dim iFor As Integer
Dim nOutlog As Integer
Dim BaseFileName As String
Dim nUnder As Integer
Dim sWork As String
Dim PETag As String
Dim ValidFile As Boolean
Open "C:\_OdenProcessOutput\Anomaly.txt" For Output As #30
Open "C:\_OdenProcessOutput\OutlogSum.txt" For Output As #32
Print #32, OutlogSumHeader
ScanFile = File6.List(File6.ListIndex)
nOutlog = InStr(ScanFile, ".outlog")
sWork = Left$(ScanFile, nOutlog - 1)
ScanFile = Dir1.Path & "\" & ScanFile
lblShowText.Caption = ScanFile
Print #30, "Processing: " & ScanFile
ValidFile = True
TestString = "Reformat: "
'Parse the file name
nUnder = InStr(sWork, "_muonrun")
MuonRun = nUnder > 0
If MuonRun Then sWork = Left$(sWork, nUnder - 1)
If MuonRun Then TestString = TestString & "Muon "
sWork = sWork & "_"
nUnder = InStr(sWork, "_")
RunNum = CLng(Left$(sWork, nUnder - 1))
TestString = TestString & " " & Format$(RunNum)
sWork = Mid$(sWork, nUnder + 1)
nUnder = InStr(sWork, "_")
Condition = CInt(Left$(sWork, nUnder - 1))
TestString = TestString & " " & Format$(Condition)
sWork = Mid$(sWork, nUnder + 1)
nUnder = InStr(sWork, "_")
PETag = Left$(sWork, nUnder - 1)
If PETag <> "SPE" Then ValidFile = False
TestString = TestString & " " & PETag
For iFor = 0 To 3
  sWork = Mid$(sWork, nUnder + 1)
  nUnder = InStr(sWork, "_")
  Levels(iFor) = CInt(Left$(sWork, nUnder - 1))
  TestString = TestString & " " & Format$(Levels(iFor))
Next iFor
sWork = Mid$(sWork, nUnder + 1)
nUnder = InStr(sWork, "_")
PETag = Left$(sWork, nUnder - 1)
If PETag <> "MPE" Then ValidFile = False
TestString = TestString & " " & PETag
For iFor = 4 To 7
  sWork = Mid$(sWork, nUnder + 1)
  nUnder = InStr(sWork, "_")
  Levels(iFor) = CInt(Left$(sWork, nUnder - 1))
  TestString = TestString & " " & Format$(Levels(iFor))
Next iFor
For iFor = 1 To 3
  If Levels(iFor) <> Levels(0) Then ValidFile = False
Next iFor
For iFor = 1 To 3
  If Levels(iFor) <> Levels(0) Then ValidFile = False
Next iFor
Print #30, TestString
If ValidFile Then
  Open ScanFile For Input As #1
  OutlogFileLength = LOF(1)
  If OutlogFileLength < 20000 Then
    Print #30, "  File Too Short: " & Format$(OutlogFileLength)
    Close #1
  Else
    BaseFileName = Right$("0000000" & Format$(RunNum), 7) & "_" & Right$("00" & Format$(Condition), 2)
    If MuonRun Then BaseFileName = BaseFileName & "_Muon"
    For iFor = 0 To LastDOM
      nEntry(iFor) = -1
      PrepareFolder DOMOutputDirectory(iFor)
      OutputFile = DOMOutputDirectory(iFor) & BaseFileName & ".iDOM"
      Open OutputFile For Output As #(10 + iFor)
      Print #(iFor + 10), iDOMFileHeader
    Next iFor
    lblRunning6.BackColor = ColorRed
    nLook = DoEvents
    ReformatOutlog
    lblRunning6.BackColor = ColorGreen
    Close #1
    For iFor = 0 To LastDOM
      Close #(iFor + 10)
    Next iFor
  End If
Else
  Print #30, "File is invalid"
End If
Close #30
Close #31
Close #32
AttitudeFileOpen = False
BarometerFileOpen = False
CutoffFileOpen = False
ModulFileOpen = False
End Sub

Private Sub btnScan7_Click()
Dim ScanFile As String
Dim BaseName As String
Dim FirstLine As String
Dim nDot As Integer
Dim iFor As Integer
WriteDatReformat = (chkSummarize7(0).Value = 0) And (chkSummarize7(1).Value = 0) And (chkSummarize7(2).Value = 0)
WriteTiltFile = (chkSummarize7(0).Value = 1)
WriteBinSummary = (chkSummarize7(1).Value = 1)
WriteAttitudeFile = (chkSummarize7(2).Value = 1)
ScanFile = File7.List(File7.ListIndex)
nDot = InStr(ScanFile, ".")
BaseName = Left$(ScanFile, nDot - 1)
ScanFile = Dir1.Path & "\" & ScanFile
lblShowText.Caption = ScanFile
Open ScanFile For Input As #1
If WriteTiltFile Then
  Open "C:\_OdenProcessOutput\" & BaseName & ".Tilt" For Output As #2
  Print #2, " DOY2009 P0 R0 P1 R1 N0 N1"
End If
If WriteDatReformat Then
  Open "C:\_OdenProcessOutput\" & BaseName & "_R.dat" For Output As #2
End If
If WriteAttitudeFile Then
  Open "C:\_OdenProcessOutput\" & "Attitude.dat" For Output As #2
End If
If WriteBinSummary Then
  Open "C:\_OdenProcessOutput\" & "NEU.BinSum" For Output As #3
  Print #3, AttBinHeader
  'Open "C:\_OdenProcessOutput\" & "NeuPitch.BinSum" For Output As #3
  'Print #3, NeuPitchBinHeader
  'Open "C:\_OdenProcessOutput\" & "NeuRoll.BinSum" For Output As #4
  'Print #4, NeuRollBinHeader
End If
lblRunning7.BackColor = ColorRed
ProcessDatFile
lblRunning7.BackColor = ColorGreen
Close #1
Close #2
Close #3
'Close #4
AttitudeFileOpen = False
BarometerFileOpen = False
CutoffFileOpen = False
ModulFileOpen = False
NewRun = True
End Sub

Private Sub btnScan8_Click()
Dim ScanFile As String
Dim BaseName As String
Dim FirstLine As String
Dim nDot As Integer
Dim iFor As Integer
Dim iLook As Integer
Dim nUnder As Integer
ScanFile = File8.List(File8.ListIndex)
nDot = InStr(ScanFile, ".")
BaseName = Left$(ScanFile, nDot - 1)
nUnder = InStr(BaseName, "_")
RunNum = CLng(Left$(BaseName, nUnder - 1))
Condition = CInt(Mid$(BaseName, nUnder + 1))
ScanFile = Dir1.Path & "\" & ScanFile
lblShowText.Caption = ScanFile
KeepOnlyGPSTiming = chk8Keep.Value = 1
'Open "C:\_OdenProcessOutput\DOMTiming.dat" For Output As #35
'Print #35, DelTimeHeader
RecordThresholds = (chk8Thresh.Value = 1)
If RecordThresholds Then
  Open "C:\_OdenProcessOutput\DOMThresh.dat" For Output As #35
End If
If (Not SelectCondition) Or (SelectCondition And (Condition = ThisCondition)) Then
  Open ScanFile For Input As #1
  If LOF(1) > 1000 Then
    Line Input #1, FirstLine
    RunNum = 0
    Open "C:\_OdenProcessOutput\" & "DOM" & Right$("00" & Format$(hsbSelectCondition.Value), 2) & ".BinSum" For Output As #3
    Print #3, AttBinHeader
    lblRunning8.BackColor = ColorRed
    iLook = DoEvents
    ProcessIDOMFile
    lblRunning8.BackColor = ColorGreen
  End If
  Close #1
End If
Close #3
NewRun = True
AttitudeFileOpen = False
BarometerFileOpen = False
CutoffFileOpen = False
ModulFileOpen = False
Close #35
End Sub


Private Sub btnScan9_Click()
Dim ScanFile As String
Dim BaseName As String
Dim FirstLine As String
Dim nDot As Integer
Dim iFor As Integer
Dim iLook As Integer
Dim nUnder As Integer
ScanFile = File9.List(File9.ListIndex)
nDot = InStr(ScanFile, ".")
BaseName = Left$(ScanFile, nDot - 1)
ScanFile = Dir1.Path & "\" & ScanFile
lblShowText.Caption = ScanFile
Open ScanFile For Input As #1
Line Input #1, FirstLine
Open "C:\_OdenProcessOutput\" & BaseName & ".LatSur" For Output As #3
Print #3, LatSurHeader
lblRunning9.BackColor = ColorRed
iLook = DoEvents
ProcessBinSumFile
lblRunning9.BackColor = ColorGreen
Close #1
Close #3
NewRun = True
End Sub


Private Sub btnScanAll_Click()
Dim numFiles As Integer
Dim iFile As Integer
Dim ScanFile As String
Dim OutputFile As String
Dim nLook As Integer
Dim nDOMID As Integer
Dim nDot As Integer
DateTag = Format(Now, "yy_mm_dd_")
numFiles = File1.ListCount
iFile = 0
Do While iFile < numFiles
File1.ListIndex = iFile
ScanFile = File1.List(File1.ListIndex)
nLook = 0
OutputFile = "C:\_OdenProcessOutput\"
'Find which DOM this file applies to
Do While nLook < 4
  nDOMID = InStr(ScanFile, DOMID(nLook))
  If nDOMID > 0 Then Exit Do
  nLook = nLook + 1
Loop
If nLook > 3 Then
  lblShowText.Caption = "Unknown DOM ID"
  Exit Sub
End If
OutputFile = OutputFile & DOMName(nLook)
If optNameSource(0).Value = True Then
  'The name is the present date
  OutputFile = OutputFile & "_" & DateTag
Else
  'Construct the name from the input file name
  nDot = InStr(ScanFile, ".")
  If nDOMID = 1 Then
    'The DOMID is at the start of the name
    OutputFile = OutputFile & Mid$(ScanFile, 13, nDot - 13)
  Else
    'The DOMID is embedded in the name
    OutputFile = OutputFile & Left$(ScanFile, nDOMID - 1)
  End If
End If
If chkSummarize = 0 Then
  OutputFile = OutputFile & "_Moni.dat"
Else
  OutputFile = OutputFile & "_MoniSum.dat"
End If
ScanFile = Dir1.Path & "\" & ScanFile
lblShowText.Caption = ScanFile
Open ScanFile For Input As #1
Open OutputFile For Output As #2
lblRunning1.BackColor = ColorRed
nLook = DoEvents
If chkSummarize.Value = 1 Then
    SummarizeMoniFile
  Else
    ReformatMoniFile
End If
lblRunning1.BackColor = ColorGreen
Close #1
Close #2
iFile = iFile + 1
Loop
End Sub

Private Sub btnScanAll10_Click()
Dim ScanFile As String
Dim numFiles As Long
Dim iFile As Integer
Dim iLook As Integer
Open "C:\_OdenProcessOutput\PHAConv.lis" For Output As #30
numFiles = File10.ListCount
iFile = 0
Do While iFile < numFiles
  File10.ListIndex = iFile
  ScanFile = File10.List(File10.ListIndex)
  If InStr(ScanFile, DOMID(SelectedDOM)) > 0 Then
    lblRunning8.BackColor = ColorGreen
    PreparePHAtxt ScanFile
    lblRunning8.BackColor = ColorGreen
  End If
  iFile = iFile + 1
Loop
Close #30
AttitudeFileOpen = False
BarometerFileOpen = False
CutoffFileOpen = False
ModulFileOpen = False
End Sub

Private Sub btnScanAll6_Click()
Dim numFiles As Integer
Dim iFile As Integer
Dim ScanFile As String
Dim OutputFile As String
Dim TestString As String
Dim nLook As Integer
Dim nDOMID As Integer
Dim nDot As Integer
Dim iFor As Integer
Dim BaseFileName As String
Dim nOutlog As Integer
Dim nUnder As Integer
Dim sWork As String
Dim PETag As String
Dim ValidFile As Boolean
numFiles = File6.ListCount
iFile = 0
Open "C:\_OdenProcessOutput\Anomaly.txt" For Output As #30
Open "C:\_OdenProcessOutput\OutlogSum.txt" For Output As #32
Print #32, OutlogSumHeader
Do While iFile < numFiles
  File6.ListIndex = iFile
  ScanFile = File6.List(File6.ListIndex)
  nOutlog = InStr(ScanFile, ".outlog")
  sWork = Left$(ScanFile, nOutlog - 1)
  ScanFile = Dir1.Path & "\" & ScanFile
  lblShowText.Caption = ScanFile
  Print #30, "Processing: " & ScanFile
  ValidFile = True
  TestString = "Reformat: "
  'Parse the file name
  nUnder = InStr(sWork, "_muonrun")
  MuonRun = nUnder > 0
  If MuonRun Then sWork = Left$(sWork, nUnder - 1)
  If MuonRun Then TestString = TestString & "Muon "
  sWork = sWork & "_"
  nUnder = InStr(sWork, "_")
  RunNum = CLng(Left$(sWork, nUnder - 1))
  TestString = TestString & " " & Format$(RunNum)
  sWork = Mid$(sWork, nUnder + 1)
  nUnder = InStr(sWork, "_")
  Condition = CInt(Left$(sWork, nUnder - 1))
  TestString = TestString & " " & Format$(Condition)
  sWork = Mid$(sWork, nUnder + 1)
  nUnder = InStr(sWork, "_")
  PETag = Left$(sWork, nUnder - 1)
  If PETag <> "SPE" Then ValidFile = False
  TestString = TestString & " " & PETag
  For iFor = 0 To 3
    sWork = Mid$(sWork, nUnder + 1)
    nUnder = InStr(sWork, "_")
    Levels(iFor) = CInt(Left$(sWork, nUnder - 1))
    TestString = TestString & " " & Format$(Levels(iFor))
  Next iFor
  sWork = Mid$(sWork, nUnder + 1)
  nUnder = InStr(sWork, "_")
  PETag = Left$(sWork, nUnder - 1)
  If PETag <> "MPE" Then ValidFile = False
  TestString = TestString & " " & PETag
  For iFor = 4 To 7
    sWork = Mid$(sWork, nUnder + 1)
    nUnder = InStr(sWork, "_")
    Levels(iFor) = CInt(Left$(sWork, nUnder - 1))
    TestString = TestString & " " & Format$(Levels(iFor))
  Next iFor
  For iFor = 1 To 3
    If Levels(iFor) <> Levels(0) Then ValidFile = False
  Next iFor
  For iFor = 1 To 3
    If Levels(iFor) <> Levels(0) Then ValidFile = False
  Next iFor
  Print #30, TestString
  If ValidFile Then
    Open ScanFile For Input As #1
    OutlogFileLength = LOF(1)
    If OutlogFileLength > 20000 Then
      BaseFileName = Right$("0000000" & Format$(RunNum), 7) & "_" & Right$("00" & Format$(Condition), 2)
      If MuonRun Then BaseFileName = BaseFileName & "_Muon"
      'Open a file for each DOM
      For iFor = 0 To LastDOM
        nEntry(iFor) = -1
        PrepareFolder DOMOutputDirectory(iFor)
        OutputFile = DOMOutputDirectory(iFor) & BaseFileName & ".iDOM"
        Open OutputFile For Output As #(10 + iFor)
        Print #(iFor + 10), iDOMFileHeader
      Next iFor
      lblRunning6.BackColor = ColorRed
      nLook = DoEvents
      ReformatOutlog
      lblRunning6.BackColor = ColorGreen
      Close #1
      For iFor = 0 To LastDOM
        Close #(iFor + 10)
      Next iFor
    Else
      Print #30, "  File Too Short: " & Format$(OutlogFileLength)
      Close #1
    End If
  Else
    Print #30, "File is invalid"
  End If
  iFile = iFile + 1
Loop
Close #30
Close #31
Close #32
AttitudeFileOpen = False
BarometerFileOpen = False
CutoffFileOpen = False
ModulFileOpen = False
End Sub


Private Sub btnScanAll7_Click()
Dim ScanFile As String
Dim BaseName As String
Dim FirstLine As String
Dim iFor As Integer
Dim nDot As Integer
Dim numFiles As Integer
WriteDatReformat = (chkSummarize7(0).Value = 0) And (chkSummarize7(1).Value = 0) And (chkSummarize7(2).Value = 0)
WriteTiltFile = (chkSummarize7(0).Value = 1)
WriteBinSummary = (chkSummarize7(1).Value = 1)
WriteAttitudeFile = (chkSummarize7(2).Value = 1)
numFiles = File7.ListCount
Dim iFile As Integer
iFile = 0
If WriteBinSummary Then
  Open "C:\_OdenProcessOutput\" & "NEU.BinSum" For Output As #3
  Print #3, AttBinHeader
  'Open "C:\_OdenProcessOutput\" & "NeuPitch.BinSum" For Output As #3
  'Print #3, DOMPitchBinHeader
  'Open "C:\_OdenProcessOutput\" & "NeuRoll.BinSum" For Output As #4
  'Print #4, DOMRollBinHeader
  RunNum = 0
End If
If WriteAttitudeFile Then
  Open "C:\_OdenProcessOutput\" & "Attitude.dat" For Output As #2
End If
Do While iFile < numFiles
  File7.ListIndex = iFile
  ScanFile = File7.List(File7.ListIndex)
  nDot = InStr(ScanFile, ".")
  BaseName = Left$(ScanFile, nDot - 1)
  ScanFile = Dir1.Path & "\" & ScanFile
  lblShowText.Caption = ScanFile
  Open ScanFile For Input As #1
  If WriteTiltFile Then
    Open "C:\_OdenProcessOutput\" & BaseName & ".Tilt" For Output As #2
    Print #2, " DOY2009 P0 R0 P1 R1 N0 N1"
  End If
  If WriteDatReformat Then
    Open "C:\_OdenProcessOutput\" & BaseName & "_R.dat" For Output As #2
  End If
  lblRunning7.BackColor = ColorRed
  ProcessDatFile
  lblRunning7.BackColor = ColorGreen
  Close #1
  If Not WriteAttitudeFile Then Close #2
  iFile = iFile + 1
Loop
Close #1
Close #2
Close #3
Close #4
AttitudeFileOpen = False
BarometerFileOpen = False
CutoffFileOpen = False
ModulFileOpen = False
NewRun = True
End Sub


Private Sub btnScanAll8_Click()
Dim ScanFile As String
Dim BaseName As String
Dim FirstLine As String
Dim iFor As Integer
Dim nDot As Integer
Dim nUnder As Integer
Dim numFiles As Long
Dim iFile As Integer
Dim iLook As Integer
'Open "C:\_OdenProcessOutput\DOMTiming.dat" For Output As #35
'Print #35, DelTimeHeader
RecordThresholds = (chk8Thresh.Value = 1)
If RecordThresholds Then
  Open "C:\_OdenProcessOutput\DOMThresh.dat" For Output As #35
End If
numFiles = File8.ListCount
iFile = 0
KeepOnlyGPSTiming = chk8Keep.Value = 1
Open "C:\_OdenProcessOutput\" & "DOM" & Right$("00" & Format$(hsbSelectCondition.Value), 2) & ".BinSum" For Output As #3
Print #3, AttBinHeader
Do While iFile < numFiles
  File8.ListIndex = iFile
  ScanFile = File8.List(File8.ListIndex)
  nDot = InStr(ScanFile, ".")
  BaseName = Left$(ScanFile, nDot - 1)
  nUnder = InStr(BaseName, "_")
  RunNum = CLng(Left$(BaseName, nUnder - 1))
  Condition = CInt(Mid$(BaseName, nUnder + 1, 2))
  ScanFile = Dir1.Path & "\" & ScanFile
  lblShowText.Caption = ScanFile
  If (Not SelectCondition) Or (SelectCondition And (Condition = ThisCondition)) Then
    Open ScanFile For Input As #1
    If LOF(1) > 2000 Then
      Line Input #1, FirstLine
      lblRunning8.BackColor = ColorRed
      iLook = DoEvents
      ProcessIDOMFile
      lblRunning8.BackColor = ColorGreen
    End If
    Close #1
  End If
  iFile = iFile + 1
Loop
Close #1
Close #3
NewRun = True
AttitudeFileOpen = False
BarometerFileOpen = False
CutoffFileOpen = False
ModulFileOpen = False
Close #35
End Sub


Private Sub btnScanAllSerap_Click()
Dim numFiles As Integer
Dim iFile As Integer
Dim ScanFile As String
Dim OutputFile As String
Dim nLook As Integer
Dim nDOMID As Integer
Dim nDot As Integer
DateTag = Format(Now, "yy_mm_dd_")
numFiles = File5.ListCount
iFile = 0
Do While iFile < numFiles
File5.ListIndex = iFile
ScanFile = File5.List(File5.ListIndex)
nLook = 0
OutputFile = "C:\_OdenProcessOutput\"
'Find which DOM this file applies to
Do While nLook < 4
  nDOMID = InStr(ScanFile, DOMID(nLook))
  If nDOMID > 0 Then Exit Do
  nLook = nLook + 1
Loop
If nLook > 3 Then
  lblShowText.Caption = "Unknown DOM ID"
  Exit Sub
End If
OutputFile = OutputFile & DOMName(nLook)
If optNameSource(0).Value = True Then
  'The name is the present date
  OutputFile = OutputFile & "_" & DateTag
Else
  'Construct the name from the input file name
  nDot = InStr(ScanFile, ".")
  If nDOMID = 1 Then
    'The DOMID is at the start of the name
    OutputFile = OutputFile & Mid$(ScanFile, 13, nDot - 13)
  Else
    'The DOMID is embedded in the name
    OutputFile = OutputFile & Left$(ScanFile, nDOMID - 1)
  End If
End If
If chkSummarize = 0 Then
  OutputFile = OutputFile & "_Serap.dat"
Else
  OutputFile = OutputFile & "_SerapSum.dat"
End If
ScanFile = Dir1.Path & "\" & ScanFile
lblShowText.Caption = ScanFile
Open ScanFile For Input As #1
Open OutputFile For Output As #2
lblRunning1Serap.BackColor = ColorRed
nLook = DoEvents
If chkSummarize.Value = 1 Then
    SummarizeSerap
  Else
    ReformatSerap
End If
lblRunning1Serap.BackColor = ColorGreen
Close #1
Close #2
iFile = iFile + 1
Loop
End Sub


Private Static Sub btnScanMoniSum_Click()
Dim Day2009 As Double
Dim InRec, OutRec As String
Dim AvSPE, SdSPE, RaSPE, AvMPE, SdMPE, RaMPE, Temp As Single
Dim tSPE, tMPE, Volt, Pr, nSeen As Integer
Dim nOpenWindow As Integer
Dim nLook As Integer
Dim numFiles As Integer
Dim iFile As Integer
Dim MoniSumFileIn As String
Dim MoniSumFileOut As String
Dim nBlank As Integer
Dim Here As Boolean
Dim iFor As Integer
Dim jFor
Dim iTemp As Integer
lblRunning4.BackColor = ColorRed
numFiles = File4.ListCount
iFile = 0
nDiscLevel = 0
MoniSumFileOut = "C:\_OdenProcessOutput\GrandSumScan.dat"
Open MoniSumFileOut For Output As #2
Do While iFile < numFiles
  nOpenWindow = DoEvents
  File4.ListIndex = iFile
  MoniSumFileIn = Dir1.Path & "\" & File4.List(File4.ListIndex)
  nLook = 0
  Open MoniSumFileIn For Input As #1
  Do While Not EOF(1)
    Line Input #1, InRec
'Day2009   AvSPE  SdSPE  RaSPE  AvMPE  SdMPE  RaMPE tSPE tMPE Volt Pr  Temp nSeen
'315.2465 2351.7   39.7  0.820  519.1   21.7  0.951  600  620 2932 42 -10.6   148
    If InStr(InRec, "Day2009") > 0 Then
      lblShowText.Caption = InRec
    ElseIf Len(InRec) = 0 Then
    Else
      InRec = InRec & " "
      Do While Left$(InRec, 1) = " "
        InRec = Mid$(InRec, 2)
      Loop
      Do While InStr(InRec, "  ") > 0
        nBlank = InStr(InRec, "  ")
        InRec = Left$(InRec, nBlank) & Mid$(InRec, nBlank + 2)
      Loop
      nBlank = InStr(InRec, " ")
      Day2009 = CDbl(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      AvSPE = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      SdSPE = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      RaSPE = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      AvMPE = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      SdMPE = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      RaMPE = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      tSPE = CInt(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      tMPE = CInt(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      Volt = CInt(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      Pr = CInt(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      Temp = CSng(Left$(InRec, nBlank - 1))
      InRec = Mid$(InRec, nBlank + 1)
      nBlank = InStr(InRec, " ")
      nSeen = CInt(Left$(InRec, nBlank - 1))
      If nDiscLevel = 0 Then
        DiscLevel(0) = tSPE
        nDiscLevel = 1
        Print #2, Format$(nDiscLevel) & " " & Format$(tSPE)
      Else
        Here = False
        For iFor = 0 To nDiscLevel - 1
          If DiscLevel(iFor) = tSPE Then Here = True
        Next iFor
        If Not Here Then
          DiscLevel(nDiscLevel) = tSPE
          nDiscLevel = nDiscLevel + 1
          Print #2, Format$(nDiscLevel) & " " & Format$(tSPE)
       End If
      End If
    End If
  Loop
  Close #1
  iFile = iFile + 1
Loop
OutRec = "Unsorted Levels:"
For iFor = 0 To nDiscLevel - 1
  OutRec = OutRec & Right$("     " & Format$(DiscLevel(iFor), "0"), 5)
Next iFor
Print #2, OutRec
'Sort the thresholds that have been found
For iFor = 0 To nDiscLevel - 2
  For jFor = 0 To nDiscLevel - iFor - 2
    If DiscLevel(jFor) > DiscLevel(jFor + 1) Then
      iTemp = DiscLevel(jFor)
      DiscLevel(jFor) = DiscLevel(jFor + 1)
      DiscLevel(jFor + 1) = iTemp
    End If
  Next jFor
Next iFor
OutRec = "Sorted Levels:  "
For iFor = 0 To nDiscLevel - 1
  OutRec = OutRec & Right$("     " & Format$(DiscLevel(iFor), "0"), 5)
Next iFor
Print #2, OutRec
Close #2
lblRunning4.BackColor = ColorGreen
End Sub

Private Sub Dir1_Change()
File1.Path = Dir1.Path   ' Set file path.
File2.Path = Dir1.Path   ' Set file path.
File3.Path = Dir1.Path   ' Set file path.
File4.Path = Dir1.Path   ' Set file path.
File5.Path = Dir1.Path   ' Set file path.
File6.Path = Dir1.Path   ' Set file path.
File7.Path = Dir1.Path   ' Set file path.
File8.Path = Dir1.Path   ' Set file path.
File9.Path = Dir1.Path   ' Set file path.
File10.Path = Dir1.Path   ' Set file path.
End Sub

Private Sub Drive1_Change()
Dir1.Path = Drive1.Drive   ' Set directory path.
End Sub

Private Sub Form_Load()
Dim iFor As Integer
Dim jFor As Integer
Dim FileRec As String
AbsurdTime = 86400# * CDate("Jan 1 2011")
LastWasHugeRetro = False
LastWasVeryFirstError = False
DOMID(0) = "3e75e434c9e0"
DOMID(1) = "1158d2b6380c"
DOMID(2) = "70525c666276"
DOMID(3) = "866532c3c7f9"
DOMName(0) = "Wrb"
DOMName(1) = "Pho"
DOMName(2) = "Mel"
DOMName(3) = "Boi"
For iFor = 0 To 3
  optDOM(iFor).Caption = DOMName(iFor)
Next iFor
optDOM(1).Value = True
SelectedDOM = 1
DOMOutputDirectory(0) = "C:\_OdenProcessOutput\Wrb\"
DOMOutputDirectory(1) = "C:\_OdenProcessOutput\Pho\"
DOMOutputDirectory(2) = "C:\_OdenProcessOutput\Mel\"
DOMOutputDirectory(3) = "C:\_OdenProcessOutput\Boi\"
PHAOutputDirectory(0) = "C:\_OdenProcessOutput\PHA\Wrb\"
PHAOutputDirectory(1) = "C:\_OdenProcessOutput\PHA\Pho\"
PHAOutputDirectory(2) = "C:\_OdenProcessOutput\PHA\Mel\"
PHAOutputDirectory(3) = "C:\_OdenProcessOutput\PHA\Boi\"
AttitudeFileOpen = False
BarometerFileOpen = False
CutoffFileOpen = False
ModulFileOpen = False
OneSecond = 1# / 86400#
NeutronInterval = 30# / 1440
LineFeed = Chr$(10)
CarRet = Chr$(13)
TabChar = Chr$(9)
Drive1.Drive = "C"
Dir1.Path = "C:\LatSurvey\RawData\09Raw10\Data"
OutlogSumHeader = "RunNum  Ca"
For iFor = 0 To LastDOM
  OutlogSumHeader = OutlogSumHeader & " " & DOMName(iFor) & "G Keep Retr"
  For jFor = 0 To LastDOM
    OutlogSumHeader = OutlogSumHeader & "  " & DOMName(jFor)
  Next jFor
Next iFor
iDOMFileHeader = "GPSDate    GPSTime  GPSDateC   GPSTimeC |DOM|   DOY2009  SPE  MPE tSPE tMPE Volt Temp  GG KG  Pitch Roll"
AttBinHeader = "  Run   DOY2009     AttA     AttS     AttN     RteA     RelS     Nrec"
For iFor = 0 To LastPitchBin
  AttBinHeader = AttBinHeader & "   Bin" & Right$("0000" & Format$(iFor), 2)
Next iFor
AttBinHeader = AttBinHeader & "   Baro  Modul CC   VCut   ACut"
DOMPitchBinHeader = "  Run   DOY2009   PitchA   PitchS   PitchN     RteA     RelS     Nrec"
For iFor = 0 To LastPitchBin
  DOMPitchBinHeader = DOMPitchBinHeader & "  PBin" & Right$("0000" & Format$(iFor), 2)
Next iFor
DOMPitchBinHeader = DOMPitchBinHeader & "   Baro  Modul CC   VCut   ACut"
DOMRollBinHeader = "  Run   DOY2009    RollA    RollS    RollN     RteA     RelS     Nrec"
For iFor = 0 To LastRollBin
  DOMRollBinHeader = DOMRollBinHeader & "  RBin" & Right$("0000" & Format$(iFor), 2)
Next iFor
DOMRollBinHeader = DOMRollBinHeader & "   Baro  Modul CC   VCut   ACut"
NeuPitchBinHeader = "  Run   DOY2009   PitchA   PitchS   PitchN     NeuA     NeuS     NeuN"
For iFor = 0 To LastPitchBin
  NeuPitchBinHeader = NeuPitchBinHeader & "  PBin" & Right$("0000" & Format$(iFor), 2)
Next iFor
NeuPitchBinHeader = NeuPitchBinHeader & "   Baro  Modul CC   VCut   ACut"
NeuRollBinHeader = "  Run   DOY2009    RollA    RollS    RollN     NeuA     NeuS     NeuN"
For iFor = 0 To LastRollBin
  NeuRollBinHeader = NeuRollBinHeader & "  RBin" & Right$("0000" & Format$(iFor), 2)
Next iFor
NeuRollBinHeader = NeuRollBinHeader & "   Baro  Modul CC   VCut   ACut"
LatSurHeader = "  Run   DOY2009 PitchS  RollS    CtsA   CtsS   Baro  Modul CC   VCut   ACut"
DelTimeHeader = "Run   DAY2009  "
For jFor = 0 To LastDelTimeBin
  DelTimeHeader = DelTimeHeader & " " & Right$("    " & Format$(jFor), 4)
Next jFor
PHAFileHeader = " nPE  Counts  IntCts IntRate"
hsbSelectCondition.Value = 0
NewRun = True
'Get the current map of DOM thresholds
For iFor = 0 To 97
  DOMThreshold(iFor) = 0
Next iFor
Open "C:\LatSurvey\EditedData\09Edit10\Documentation\DOMThresh.dat" For Input As #1
Line Input #1, FileRec
lblShowText.Caption = FileRec
For iFor = 1 To 47
  Line Input #1, FileRec
  StandardizeString FileRec
  jFor = CInt(NextParm(FileRec))
  If iFor <> jFor Then
    lblShowText.Caption = "Bad Threshold Value"
  End If
  DOMThreshold(iFor) = CInt(NextParm(FileRec))
  DOMThreshold(iFor + 50) = CInt(NextParm(FileRec))
Next iFor
Close #1
End Sub

Public Static Sub ReformatMoniFile()
Dim OutputRec As String
Dim nn As Integer
nn = 0
Print #2, "Date       Time     | Day2009   SPE  MPE tSPE tMPE Volt Pr  Temp "
'Initialize the input routine
InRec = ""
FileBytesLeft = LOF(1)
Do While FileBytesLeft > 0
GetMoniFileRec nn
'Format the output record
GenerateTimeStamp OutputRec
OutputRec = OutputRec & " | " & Right$("         " & Format$(ReadTime(0, nn), "0.0000"), 8)
OutputRec = OutputRec & Right$("     " & Format$(RateSPE(0, nn), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(RateMPE(0, nn), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(ThreshSPE(0, nn), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(ThreshMPE(0, nn), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(HiVolt(0, nn), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(DomPress(0, nn), "0"), 3)
OutputRec = OutputRec & Right$("        " & Format$(DomTemp(0, nn), "0.0"), 6)
Print #2, OutputRec
Loop
End Sub
Public Static Sub ReformatOutlog()
Dim OutputRec As String
Dim SummaryRec As String
Dim iFor As Integer
Dim jFor As Integer
Dim OutPitch As Single
Dim OutRoll As Single
Dim AttTime As Double
Dim IsGoodStat(1, LastDOM) As Single
Dim KeepGPSStat(1, LastDOM) As Single
Dim LastKeptRecordTime(LastDOM) As Double
For iFor = 0 To LastDOM
  IsGoodStat(0, iFor) = 0
  KeepGPSStat(0, iFor) = 0
  IsGoodStat(1, iFor) = 0
  KeepGPSStat(1, iFor) = 0
  nRetroTime(iFor) = 0
  For jFor = 0 To LastDOM
    nTimeGlitch(iFor, jFor) = 0
  Next jFor
Next iFor
nModulError = 0
nAttitudeError = 0
nCutoffError = 0
nBarometerError = 0
For iFor = 0 To LastDOM
  LastKeptRecordTime(iFor) = 0#
Next iFor
'Initialize the input routine
InRec = ""
FileBytesLeft = LOF(1)
Do While FileBytesLeft > 0
  GetOutlogRec
  'Format most of the output record
  OutputRec = Format$(GPSTime(ThisDOMNum, ThisDOMEntry), "mm/dd/yyyy HH:NN:SS")
  OutputRec = OutputRec & " " & Format$(GPSTimeCorr(ThisDOMNum, ThisDOMEntry), "mm/dd/yyyy HH:NN:SS")
  OutputRec = OutputRec & " |" & ThisDOMName & "| "
  OutputRec = OutputRec & Right$("         " & Format$(ReadTime(ThisDOMNum, ThisDOMEntry), "0.00000"), 9)
  OutputRec = OutputRec & Right$("     " & Format$(RateSPE(ThisDOMNum, ThisDOMEntry), "0"), 5)
  OutputRec = OutputRec & Right$("     " & Format$(RateMPE(ThisDOMNum, ThisDOMEntry), "0"), 5)
  OutputRec = OutputRec & Right$("     " & Format$(ThreshSPE(ThisDOMNum, ThisDOMEntry), "0"), 5)
  OutputRec = OutputRec & Right$("     " & Format$(ThreshMPE(ThisDOMNum, ThisDOMEntry), "0"), 5)
  OutputRec = OutputRec & Right$("     " & Format$(HiVolt(ThisDOMNum, ThisDOMEntry), "0"), 5)
  'OutputRec = OutputRec & Right$("     " & Format$(DomPress(ThisDOMNum, ThisDOMEntry), "0"), 3)
  OutputRec = OutputRec & Right$("        " & Format$(DomTemp(ThisDOMNum, ThisDOMEntry), "0.0"), 6)
  OutputRec = OutputRec & Right$("        " & Format$(IsGood(ThisDOMNum, ThisDOMEntry), "0"), 3)
  OutputRec = OutputRec & Right$("        " & Format$(KeepGPS(ThisDOMNum, ThisDOMEntry), "0"), 3)
  'Ignore first record and records with retrograde times
  If NonsenseRecord Then
    'Print #30, "Ignore Nonsense Record:" & OutputRec
  ElseIf ThisDOMEntry = 0 Then
    'Print #30, "Ignore First:" & OutputRec
  ElseIf ThisDOMEntry = 1 Then
    AttTime = ReadTime(ThisDOMNum, ThisDOMEntry)
    GetAttitude AttTime, OutPitch, OutRoll
    OutputRec = OutputRec & Right$("        " & Format$(OutPitch, "0.00"), 6)
    OutputRec = OutputRec & Right$("        " & Format$(OutRoll, "0.00"), 6)
    Print #(ThisDOMNum + 10), OutputRec
    IsGoodStat(0, ThisDOMNum) = IsGoodStat(0, ThisDOMNum) + IsGood(ThisDOMNum, ThisDOMEntry)
    KeepGPSStat(0, ThisDOMNum) = KeepGPSStat(0, ThisDOMNum) + KeepGPS(ThisDOMNum, ThisDOMEntry)
    IsGoodStat(1, ThisDOMNum) = IsGoodStat(1, ThisDOMNum) + 1
    KeepGPSStat(1, ThisDOMNum) = KeepGPSStat(1, ThisDOMNum) + 1
    For iFor = 0 To LastDOM
      If Abs(LastKeptRecordTime(ThisDOMNum) - LastKeptRecordTime(iFor)) > 5# * OneSecond Then
        nTimeGlitch(ThisDOMNum, iFor) = nTimeGlitch(ThisDOMNum, iFor) + 1
      End If
    Next iFor
    LastKeptRecordTime(ThisDOMNum) = ReadTime(ThisDOMNum, ThisDOMEntry)
  ElseIf LastKeptRecordTime(ThisDOMNum) > ReadTime(ThisDOMNum, ThisDOMEntry - 1) Then
    nRetroTime(ThisDOMNum) = nRetroTime(ThisDOMNum) + 1
    'Print #30, "Ignore Retrograde:" & OutputRec
  Else
    AttTime = ReadTime(ThisDOMNum, ThisDOMEntry)
    GetAttitude AttTime, OutPitch, OutRoll
    OutputRec = OutputRec & Right$("        " & Format$(OutPitch, "0.00"), 6)
    OutputRec = OutputRec & Right$("        " & Format$(OutRoll, "0.00"), 6)
    Print #(ThisDOMNum + 10), OutputRec
    IsGoodStat(0, ThisDOMNum) = IsGoodStat(0, ThisDOMNum) + IsGood(ThisDOMNum, ThisDOMEntry)
    KeepGPSStat(0, ThisDOMNum) = KeepGPSStat(0, ThisDOMNum) + KeepGPS(ThisDOMNum, ThisDOMEntry)
    IsGoodStat(1, ThisDOMNum) = IsGoodStat(1, ThisDOMNum) + 1
    KeepGPSStat(1, ThisDOMNum) = KeepGPSStat(1, ThisDOMNum) + 1
    For iFor = 0 To LastDOM
      If Abs(LastKeptRecordTime(ThisDOMNum) - LastKeptRecordTime(iFor)) > 5# * OneSecond Then
        nTimeGlitch(ThisDOMNum, iFor) = nTimeGlitch(ThisDOMNum, iFor) + 1
      End If
    Next iFor
    LastKeptRecordTime(ThisDOMNum) = ReadTime(ThisDOMNum, ThisDOMEntry)
  End If
Loop
For iFor = 0 To LastDOM
  If IsGoodStat(1, iFor) > 0 Then
    IsGoodStat(0, iFor) = IsGoodStat(0, iFor) / IsGoodStat(1, iFor)
  Else
    IsGoodStat(0, iFor) = 0#
  End If
  If KeepGPSStat(1, iFor) > 0 Then
    KeepGPSStat(0, iFor) = KeepGPSStat(0, iFor) / KeepGPSStat(1, iFor)
  Else
    KeepGPSStat(0, iFor) = 0#
  End If
Next iFor
SummaryRec = Right$("0000000" & Format$(RunNum), 7) & " " & Right$("00" & Format$(Condition), 2)
For iFor = 0 To LastDOM
  SummaryRec = SummaryRec & " " & Right$("    " & Format$(IsGoodStat(0, iFor), "0.00"), 4)
  SummaryRec = SummaryRec & " " & Right$("    " & Format$(KeepGPSStat(0, iFor), "0.00"), 4)
  SummaryRec = SummaryRec & " " & Right$("    " & Format$(nRetroTime(iFor)), 4)
  For jFor = 0 To LastDOM
    SummaryRec = SummaryRec & " " & Right$("    " & Format$(nTimeGlitch(iFor, jFor)), 4)
  Next jFor
Next iFor
Print #32, SummaryRec
End Sub

Public Static Sub ReformatSerap()
Dim OutputRec As String
Dim nn As Integer
nn = 0
Print #2, "Date       Time     | Day2009   SPE  MPE tSPE tMPE Volt Pr  Temp "
'Initialize the input routine
InRec = ""
FileBytesLeft = LOF(1)
Do While FileBytesLeft > 0
GetSerapRec nn
'Format the output record
GenerateTimeStamp OutputRec
OutputRec = OutputRec & " | " & Right$("         " & Format$(ReadTime(0, nn), "0.0000"), 8)
OutputRec = OutputRec & Right$("     " & Format$(RateSPE(0, nn), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(RateMPE(0, nn), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(ThreshSPE(0, nn), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(ThreshMPE(0, nn), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(HiVolt(0, nn), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(DomPress(0, nn), "0"), 3)
OutputRec = OutputRec & Right$("        " & Format$(DomTemp(0, nn), "0.0"), 6)
Print #2, OutputRec
Loop
End Sub

Public Static Sub SummarizeMoniFile()
Dim OutputRec As String
Dim nn As Integer
Dim n1 As Integer
Dim n2 As Integer
Dim nSeen As Integer
Dim iFor As Integer
Dim ThSPE As Integer
Dim ThMPE As Integer
Dim SPE As Double
Dim MPE As Double
Dim AvSPE As Double
Dim AvMPE As Double
Dim SdSPE As Double
Dim SdMPE As Double
Dim RatSPE As Double
Dim RatMPE As Double
Dim AvTime As Double
Dim Volt As Integer
nn = 0
'Print #2, "Date       Time     | Day2009   SPE  MPE tSPE tMPE Volt Pr  Temp "
Print #2, "Day2009   AvSPE  SdSPE  RaSPE  AvMPE  SdMPE  RaMPE tSPE tMPE Volt Pr  Temp nSeen"
InRec = ""
FileBytesLeft = LOF(1)
Do While FileBytesLeft > 0
GetMoniFileRec nn
If ThSPE <> ThreshSPE(0, nn) Or ThMPE <> ThreshMPE(0, nn) Or Abs(Volt - HiVolt(0, nn)) > 5 Then
If nn > 30 Then
n1 = 10
n2 = nn - 10
nSeen = 0
AvSPE = 0#
AvMPE = 0#
SdSPE = 0#
SdMPE = 0#
AvTime = 0#
For iFor = n1 To n2
SPE = CDbl(RateSPE(0, iFor))
MPE = CDbl(RateMPE(0, iFor))
AvSPE = AvSPE + SPE
AvMPE = AvMPE + MPE
SdSPE = SdSPE + SPE ^ 2
SdMPE = SdMPE + MPE ^ 2
AvTime = AvTime + ReadTime(0, iFor)
nSeen = nSeen + 1
Next iFor
AvTime = AvTime / CDbl(nSeen)
AvSPE = AvSPE / CDbl(nSeen)
SdSPE = Sqr((SdSPE / CDbl(nSeen)) - AvSPE ^ 2)
If AvSPE > 0# Then
  RatSPE = SdSPE / Sqr(AvSPE)
Else
  RatSPE = 1#
End If
AvMPE = AvMPE / CDbl(nSeen)
SdMPE = Sqr((SdMPE / CDbl(nSeen)) - AvMPE ^ 2)
If AvMPE > 0# Then
  RatMPE = SdMPE / Sqr(AvMPE)
Else
  RatMPE = 1#
End If
'Format the output record
'GenerateTimeStamp OutputRec
'OutputRec = OutputRec & " | " & Right$("         " & Format$(ReadTime(0,0), "0.0000"), 8)
OutputRec = Right$("         " & Format$(AvTime, "0.0000"), 8)
OutputRec = OutputRec & Right$("     " & Format$(AvSPE, "0.0"), 7)
OutputRec = OutputRec & Right$("     " & Format$(SdSPE, "0.0"), 7)
OutputRec = OutputRec & Right$("     " & Format$(RatSPE, "0.000"), 7)
OutputRec = OutputRec & Right$("     " & Format$(AvMPE, "0.0"), 7)
OutputRec = OutputRec & Right$("     " & Format$(SdMPE, "0.0"), 7)
OutputRec = OutputRec & Right$("     " & Format$(RatMPE, "0.000"), 7)
OutputRec = OutputRec & Right$("     " & Format$(ThreshSPE(0, n2), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(ThreshMPE(0, n2), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(HiVolt(0, n2), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(DomPress(0, n2), "0"), 3)
OutputRec = OutputRec & Right$("        " & Format$(DomTemp(0, n2), "0.0"), 6)
OutputRec = OutputRec & Right$("        " & Format$(nn, "0"), 6)
Print #2, OutputRec
End If
ThSPE = ThreshSPE(0, nn)
ThMPE = ThreshMPE(0, nn)
Volt = HiVolt(0, nn)
nn = 0
Else
  nn = nn + 1
End If
Loop
End Sub
Public Static Sub SummarizeOutlog()
Dim OutputRec As String
Dim nn As Integer
Dim n1 As Integer
Dim n2 As Integer
Dim nSeen As Integer
Dim iFor As Integer
Dim ThSPE As Integer
Dim ThMPE As Integer
Dim SPE As Double
Dim MPE As Double
Dim AvSPE As Double
Dim AvMPE As Double
Dim SdSPE As Double
Dim SdMPE As Double
Dim RatSPE As Double
Dim RatMPE As Double
Dim AvTime As Double
Dim Volt As Integer
For iFor = 0 To LastDOM
  nEntry(iFor) = -1
Next iFor
For iFor = 10 To 13
  Print #iFor, "Day2009   AvSPE  SdSPE  RaSPE  AvMPE  SdMPE  RaMPE tSPE tMPE Volt Pr  Temp nSeen"
Next iFor
InRec = ""
FileBytesLeft = LOF(1)
Do While FileBytesLeft > 0
GetOutlogRec
If ThSPE <> ThreshSPE(0, nn) Or ThMPE <> ThreshMPE(0, nn) Or Abs(Volt - HiVolt(0, nn)) > 5 Then
If nn > 30 Then
n1 = 10
n2 = nn - 10
nSeen = 0
AvSPE = 0#
AvMPE = 0#
SdSPE = 0#
SdMPE = 0#
AvTime = 0#
For iFor = n1 To n2
SPE = CDbl(RateSPE(0, iFor))
MPE = CDbl(RateMPE(0, iFor))
AvSPE = AvSPE + SPE
AvMPE = AvMPE + MPE
SdSPE = SdSPE + SPE ^ 2
SdMPE = SdMPE + MPE ^ 2
AvTime = AvTime + ReadTime(0, iFor)
nSeen = nSeen + 1
Next iFor
AvTime = AvTime / CDbl(nSeen)
AvSPE = AvSPE / CDbl(nSeen)
SdSPE = Sqr((SdSPE / CDbl(nSeen)) - AvSPE ^ 2)
If AvSPE > 0# Then
  RatSPE = SdSPE / Sqr(AvSPE)
Else
  RatSPE = 1#
End If
AvMPE = AvMPE / CDbl(nSeen)
SdMPE = Sqr((SdMPE / CDbl(nSeen)) - AvMPE ^ 2)
If AvMPE > 0# Then
  RatMPE = SdMPE / Sqr(AvMPE)
Else
  RatMPE = 1#
End If
'Format the output record
'GenerateTimeStamp OutputRec
'OutputRec = OutputRec & " | " & Right$("         " & Format$(ReadTime(0,0), "0.0000"), 8)
OutputRec = Right$("         " & Format$(AvTime, "0.0000"), 8)
OutputRec = OutputRec & Right$("     " & Format$(AvSPE, "0.0"), 7)
OutputRec = OutputRec & Right$("     " & Format$(SdSPE, "0.0"), 7)
OutputRec = OutputRec & Right$("     " & Format$(RatSPE, "0.000"), 7)
OutputRec = OutputRec & Right$("     " & Format$(AvMPE, "0.0"), 7)
OutputRec = OutputRec & Right$("     " & Format$(SdMPE, "0.0"), 7)
OutputRec = OutputRec & Right$("     " & Format$(RatMPE, "0.000"), 7)
OutputRec = OutputRec & Right$("     " & Format$(ThreshSPE(0, n2), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(ThreshMPE(0, n2), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(HiVolt(0, n2), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(DomPress(0, n2), "0"), 3)
OutputRec = OutputRec & Right$("        " & Format$(DomTemp(0, n2), "0.0"), 6)
OutputRec = OutputRec & Right$("        " & Format$(nn, "0"), 6)
Print #2, OutputRec
End If
ThSPE = ThreshSPE(0, nn)
ThMPE = ThreshMPE(0, nn)
Volt = HiVolt(0, nn)
nn = 0
Else
  nn = nn + 1
End If
Loop
End Sub

Public Static Sub SummarizeSerap()
Dim OutputRec As String
Dim nn As Integer
Dim n1 As Integer
Dim n2 As Integer
Dim nSeen As Integer
Dim iFor As Integer
Dim ThSPE As Integer
Dim ThMPE As Integer
Dim SPE As Double
Dim MPE As Double
Dim AvSPE As Double
Dim AvMPE As Double
Dim SdSPE As Double
Dim SdMPE As Double
Dim RatSPE As Double
Dim RatMPE As Double
Dim AvTime As Double
Dim Volt As Integer
nn = 0
'Print #2, "Date       Time     | Day2009   SPE  MPE tSPE tMPE Volt Pr  Temp "
Print #2, "DayOfYear AvSPE  SdSPE  RaSPE  AvMPE  SdMPE  RaMPE tSPE tMPE Volt Pr  Temp nSeen"
InRec = ""
FileBytesLeft = LOF(1)
Do While FileBytesLeft > 0
GetSerapRec nn
If ThSPE <> ThreshSPE(0, nn) Or ThMPE <> ThreshMPE(0, nn) Or Abs(Volt - HiVolt(0, nn)) > 5 Then
If nn > 30 Then
n1 = 10
n2 = nn - 10
nSeen = 0
AvSPE = 0#
AvMPE = 0#
SdSPE = 0#
SdMPE = 0#
AvTime = 0#
For iFor = n1 To n2
SPE = CDbl(RateSPE(0, iFor))
MPE = CDbl(RateMPE(0, iFor))
AvSPE = AvSPE + SPE
AvMPE = AvMPE + MPE
SdSPE = SdSPE + SPE ^ 2
SdMPE = SdMPE + MPE ^ 2
AvTime = AvTime + ReadTime(0, iFor)
nSeen = nSeen + 1
Next iFor
AvTime = AvTime / CDbl(nSeen)
AvSPE = AvSPE / CDbl(nSeen)
SdSPE = Sqr((SdSPE / CDbl(nSeen)) - AvSPE ^ 2)
If AvSPE > 0# Then
  RatSPE = SdSPE / Sqr(AvSPE)
Else
  RatSPE = 1#
End If
AvMPE = AvMPE / CDbl(nSeen)
SdMPE = Sqr((SdMPE / CDbl(nSeen)) - AvMPE ^ 2)
If AvMPE > 0# Then
  RatMPE = SdMPE / Sqr(AvMPE)
Else
  RatMPE = 1#
End If
'Format the output record
'GenerateTimeStamp OutputRec
'OutputRec = OutputRec & " | " & Right$("         " & Format$(ReadTime(0,0), "0.0000"), 8)
OutputRec = Right$("         " & Format$(AvTime, "0.0000"), 8)
OutputRec = OutputRec & Right$("     " & Format$(AvSPE, "0.0"), 7)
OutputRec = OutputRec & Right$("     " & Format$(SdSPE, "0.0"), 7)
OutputRec = OutputRec & Right$("     " & Format$(RatSPE, "0.000"), 7)
OutputRec = OutputRec & Right$("     " & Format$(AvMPE, "0.0"), 7)
OutputRec = OutputRec & Right$("     " & Format$(SdMPE, "0.0"), 7)
OutputRec = OutputRec & Right$("     " & Format$(RatMPE, "0.000"), 7)
OutputRec = OutputRec & Right$("     " & Format$(ThreshSPE(0, n2), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(ThreshMPE(0, n2), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(HiVolt(0, n2), "0"), 5)
OutputRec = OutputRec & Right$("     " & Format$(DomPress(0, n2), "0"), 3)
OutputRec = OutputRec & Right$("        " & Format$(DomTemp(0, n2), "0.0"), 6)
OutputRec = OutputRec & Right$("        " & Format$(nn, "0"), 6)
Print #2, OutputRec
End If
ThSPE = ThreshSPE(0, nn)
ThMPE = ThreshMPE(0, nn)
Volt = HiVolt(0, nn)
nn = 0
Else
  nn = nn + 1
End If
Loop
End Sub

Public Static Sub GetMoniFileRec(nn As Integer)
Dim InRec As String
Dim OneLine As String
Dim nBl As Integer
Dim nLF As Integer
Dim nToRead As Integer
If InStr(InRec, Chr$(10)) = 0 Then
  If FileBytesLeft > 100 Then
    nToRead = 100
  Else
    nToRead = FileBytesLeft
  End If
  InRec = InRec & Input$(nToRead, #1)
  FileBytesLeft = FileBytesLeft - nToRead
End If
nLF = InStr(InRec, Chr$(10))
OneLine = Left$(InRec, nLF - 1)
nBl = InStr(OneLine, " ")
CurTime = (CDbl(Left$(OneLine, nBl - 1)) / 86400#) + 25569#
ReadTime(0, nn) = CurTime - CDate("Dec 31 2008")
'SPE Rate
OneLine = Mid$(OneLine, nBl + 1)
nBl = InStr(OneLine, " ")
RateSPE(0, nn) = CInt(Left$(OneLine, nBl - 1))
'Temperature
OneLine = Mid$(OneLine, nBl + 1)
nBl = InStr(OneLine, " ")
DomTemp(0, nn) = CSng(Left$(OneLine, nBl - 1))
'Pressure
OneLine = Mid$(OneLine, nBl + 1)
nBl = InStr(OneLine, " ")
DomPress(0, nn) = CInt(Left$(OneLine, nBl - 1))
'High Voltage
OneLine = Mid$(OneLine, nBl + 1)
nBl = InStr(OneLine, " ")
HiVolt(0, nn) = CInt(Left$(OneLine, nBl - 1))
'MPE Rate
OneLine = Mid$(OneLine, nBl + 1)
nBl = InStr(OneLine, " ")
RateMPE(0, nn) = CInt(Left$(OneLine, nBl - 1))
'SPE Threshold
OneLine = Mid$(OneLine, nBl + 1)
nBl = InStr(OneLine, " ")
ThreshSPE(0, nn) = CInt(Left$(OneLine, nBl - 1))
'MPE Threshold
OneLine = Mid$(OneLine, nBl + 1)
ThreshMPE(0, nn) = CInt(Left$(OneLine, nBl - 1))
If Len(InRec) >= nLF + 1 Then
  InRec = Mid$(InRec, nLF + 1)
Else
  InRec = ""
End If
End Sub
Public Static Sub GetTxtFileRec(FileRecord As String)
Dim InRec As String
Dim nLF As Integer
Dim nToRead As Integer
'The format of the txt files is
'DOMID , pulseheight(mV), charge(PE), risetime(ns), fwhm(ns)
'Serap
If InStr(InRec, Chr$(10)) = 0 Then
  If FileBytesLeft > 100 Then
    nToRead = 100
  Else
    nToRead = FileBytesLeft
  End If
  InRec = InRec & Input$(nToRead, #1)
  FileBytesLeft = FileBytesLeft - nToRead
End If
nLF = InStr(InRec, Chr$(10))
FileRecord = Left$(InRec, nLF - 1)
If Len(InRec) >= nLF + 1 Then
  InRec = Mid$(InRec, nLF + 1)
Else
  InRec = ""
End If
End Sub

Public Static Sub GetAttitude(Day2009 As Double, Pitch As Single, Roll As Single)
Dim AtFileRec As String
Dim TimeHistory(899) As Double
Dim VeryFirstTime As Double
Dim TimeInterp As Single
Dim PitchHistory(899) As Single
Dim RollHistory(899) As Single
Dim nBlank As Integer
Dim nRecNum As Long
Dim nLook As Integer
Dim pHist As Integer
Dim pScanLo As Integer
Dim pScanHi As Integer
Dim iFor As Integer
Dim iWhile As Integer
Dim FoundIt As Boolean
If (AttitudeFileOpen) And (Day2009 <= VeryFirstTime) Then
  'It is pointless to go any further
  If Not LastWasVeryFirstError Then Print #30, "GetAttitude VeryFirst Too Large " & Format$(Day2009, "mm/dd/yyyy HH:NN:SS") & " " & Format$(VeryFirstTime, "mm/dd/yyyy HH:NN:SS")
  LastWasVeryFirstError = True
  nAttitudeError = nAttitudeError + 1
  Roll = -9.99
  Pitch = -9.99
  Exit Sub
End If
If (AttitudeFileOpen) And (Day2009 < (TimeHistory((pHist + 1) Mod 900))) Then
  'It is pointless to go any further
  If Not LastWasHugeRetro Then Print #30, "GetAttitude Retro Too Large " & Format$(Day2009, "mm/dd/yyyy HH:NN:SS") & " " & Format$((TimeHistory((pHist + 1) Mod 900)), "mm/dd/yyyy HH:NN:SS")
  LastWasHugeRetro = True
  nAttitudeError = nAttitudeError + 1
  Roll = -9.99
  Pitch = -9.99
  Exit Sub
End If
LastWasHugeRetro = False
LastWasVeryFirstError = False
If (Not AttitudeFileOpen) Then
  'This is the first call and the attitude file must be read from the beginning.
  'Note that closing a non-open file is legal.
  Close #31
  Open "C:\LatSurvey\EditedData\09Edit10\Documentation\Attitude.dat" For Input As #31
  AttitudeFileOpen = True
  'We always keep a minute of history because the calls are not guaranteed
  'to be perfectly monotonic in time
  nRecNum = 0
  For iFor = 0 To 899
    Line Input #31, AtFileRec
    AtFileRec = Mid$(AtFileRec, 2)
    nBlank = InStr(AtFileRec, " ")
    TimeHistory(iFor) = CDbl(Left$(AtFileRec, nBlank - 1))
    AtFileRec = Mid$(AtFileRec, nBlank + 1)
    nBlank = InStr(AtFileRec, " ")
    PitchHistory(iFor) = CSng(Left$(AtFileRec, nBlank - 1))
    RollHistory(iFor) = CSng(Mid$(AtFileRec, nBlank + 1))
    nRecNum = nRecNum + 1
    If nRecNum Mod 100 = 0 Then
      lblAttitudeStatus.Caption = Format$(Day2009, "0.00000") & " " & Format$(TimeHistory(pHist), "0.00000") & " " & Format$(nRecNum)
      nLook = DoEvents
    End If
  Next iFor
  'The history pointer gives the last entry in the ring buffer
  pHist = 299
  VeryFirstTime = TimeHistory(0)
End If
'Be sure that the history extends to include the desired time
Do While Day2009 > TimeHistory(pHist)
  pHist = (pHist + 1) Mod 900
  Line Input #31, AtFileRec
  AtFileRec = Mid$(AtFileRec, 2)
  nBlank = InStr(AtFileRec, " ")
  TimeHistory(pHist) = CDbl(Left$(AtFileRec, nBlank - 1))
  AtFileRec = Mid$(AtFileRec, nBlank + 1)
  nBlank = InStr(AtFileRec, " ")
  PitchHistory(pHist) = CSng(Left$(AtFileRec, nBlank - 1))
  RollHistory(pHist) = CSng(Mid$(AtFileRec, nBlank + 1))
  nRecNum = nRecNum + 1
  If nRecNum Mod 5000 = 0 Then
    lblAttitudeStatus.Caption = Format$(Day2009, "0.00000") & " " & Format$(TimeHistory(pHist), "0.00000") & " " & Format$(nRecNum)
    nLook = DoEvents
  End If
Loop
'Search the history for the interval containing the present time.
'Presumably it is near the end, so search backwards.
FoundIt = False
For iFor = 0 To 898 Step 1
  pScanHi = (pHist + 900 - iFor) Mod 900
  pScanLo = (pHist + 899 - iFor) Mod 900
  If (Day2009 >= TimeHistory(pScanLo)) And (Day2009 < TimeHistory(pScanHi)) Then
    FoundIt = True
    Exit For
  End If
Next iFor
If Not FoundIt Then
  nAttitudeError = nAttitudeError + 1
  'Print #30, "Get Attitude Find Error"
  Roll = -9.99
  Pitch = -9.99
Else
  TimeInterp = (Day2009 - TimeHistory(pScanLo)) / (TimeHistory(pScanHi) - TimeHistory(pScanLo))
  Pitch = PitchHistory(pScanLo) + TimeInterp * (PitchHistory(pScanHi) - PitchHistory(pScanLo))
  Roll = RollHistory(pScanLo) + TimeInterp * (RollHistory(pScanHi) - RollHistory(pScanLo))
  'Print #30, "GetAtt: " & Format$(Day2009, "0.00000") & " " & Format$(pHist) & " " & Format$(pScanHi) & " " & Format$(Pitch, "0.00") & " " & Format$(Roll, "0.00")
End If
Exit Sub
End Sub
Public Static Sub GetOutlogRec()
Dim iFor As Integer
Dim OneLine As String
Dim nToRead As Integer
Dim nLook As Integer
Dim nLF As Integer
Dim nBl As Integer
Dim DatVala As Double
Dim DatValb As Double
Dim DatValc As Double
Dim DatVald As Double
Dim DatVale As Double
Dim DatValf As Double
If InStr(InRec, LineFeed) = 0 Then
  If FileBytesLeft > 200 Then
    nToRead = 200
  Else
    nToRead = FileBytesLeft
  End If
  InRec = InRec & Input$(nToRead, #1)
  FileBytesLeft = FileBytesLeft - nToRead
End If
'1158d2b6380c    27074809.5   27074816.3  1445    -12.25  570     3045.55566  670     416.666656  1   1
nLF = InStr(InRec, LineFeed)
If nLF > 0 Then
  OneLine = Left$(InRec, nLF - 1)
Else
  OneLine = InRec
End If
StandardizeString OneLine
'1158d2b6380c 27074809.5 27074816.3 1445 -12.25 570 3045.55566 670 416.666656 1 1
ThisDOMID = NextParm(OneLine)
nLook = 0
Do While nLook <= LastDOM
  If ThisDOMID = DOMID(nLook) Then
    ThisDOMNum = nLook
    ThisDOMName = DOMName(nLook)
    Exit Do
  End If
  nLook = nLook + 1
Loop
ThisDOMEntry = nEntry(ThisDOMNum) + 1
NonsenseRecord = False
'First Time
RawTime = CDbl(NextParm(OneLine))
CurTime = (RawTime / 86400#)
'CurTime = CurTime + 25569#
GPSTime(ThisDOMNum, ThisDOMEntry) = CurTime
GPSTime(ThisDOMNum, ThisDOMEntry) = CurTime + CDate("Jan 1 2009")
'Second Time
RawTime = CDbl(NextParm(OneLine))
If RawTime <= 0# Then
  CurTime = 0#
  'Print #30, "Negative Time"
ElseIf RawTime > AbsurdTime Then
  NonsenseRecord = True
  CurTime = 0#
  Print #30, "Absurd Time"
Else
  CurTime = (RawTime / 86400#)
End If
'CurTime = CurTime + 25569#
If CurTime < 180# Then CurTime = CurTime + 365#
GPSTimeCorr(ThisDOMNum, ThisDOMEntry) = CurTime
GPSTimeCorr(ThisDOMNum, ThisDOMEntry) = CurTime + CDate("Jan 1 2009")
'High Voltage
DatVala = CDbl(NextParm(OneLine))
If Abs(DatVala) < 9999# Then
  HiVolt(ThisDOMNum, ThisDOMEntry) = DatVala
Else
  HiVolt(ThisDOMNum, ThisDOMEntry) = -1
  NonsenseRecord = True
End If
'Temperature
DatValb = CDbl(NextParm(OneLine))
If Abs(DatValb) < 99# Then
  DomTemp(ThisDOMNum, ThisDOMEntry) = DatValb
Else
  DomTemp(ThisDOMNum, ThisDOMEntry) = -1
  NonsenseRecord = True
End If
'SPE Threshold
DatValc = CDbl(NextParm(OneLine))
If Abs(DatValc) < 1200# Then
  ThreshSPE(ThisDOMNum, ThisDOMEntry) = DatValc
Else
  ThreshSPE(ThisDOMNum, ThisDOMEntry) = -1
  NonsenseRecord = True
End If
'SPE Rate
DatVald = CDbl(NextParm(OneLine))
If Abs(DatVald) < 9999# Then
  RateSPE(ThisDOMNum, ThisDOMEntry) = DatVald
Else
  RateSPE(ThisDOMNum, ThisDOMEntry) = -1
  NonsenseRecord = True
End If
'MPE Threshold
DatVale = CDbl(NextParm(OneLine))
If Abs(DatVale) < 1200# Then
  ThreshMPE(ThisDOMNum, ThisDOMEntry) = DatVale
Else
  ThreshMPE(ThisDOMNum, ThisDOMEntry) = -1
  NonsenseRecord = True
End If
'MPE Rate
DatValf = CDbl(NextParm(OneLine))
If Abs(DatValf) < 999# Then
  RateMPE(ThisDOMNum, ThisDOMEntry) = DatValf
Else
  RateMPE(ThisDOMNum, ThisDOMEntry) = -1
  NonsenseRecord = True
End If
'Outlog's Good Flag
IsGood(ThisDOMNum, ThisDOMEntry) = CInt(NextParm(OneLine))
'Outlog's Keep GPS Flag
KeepGPS(ThisDOMNum, ThisDOMEntry) = CInt(NextParm(OneLine))
'If (KeepGPS(ThisDOMNum, ThisDOMEntry) = 1) Then
'  ReadTime(ThisDOMNum, ThisDOMEntry) = GPSTime(ThisDOMNum, ThisDOMEntry)
'Else
  ReadTime(ThisDOMNum, ThisDOMEntry) = GPSTimeCorr(ThisDOMNum, ThisDOMEntry)
'End If
ReadTime(ThisDOMNum, ThisDOMEntry) = ReadTime(ThisDOMNum, ThisDOMEntry) - CDate("Dec 31 2008")
If ThisDOMEntry > 0 Then
  If ReadTime(ThisDOMNum, ThisDOMEntry) < ReadTime(ThisDOMNum, ThisDOMEntry - 1) Then
    Print #30, "  Retrograde Time for " & ThisDOMName & " " & Format$(ReadTime(ThisDOMNum, ThisDOMEntry), "0.00000") & " " & Format$(ReadTime(ThisDOMNum, ThisDOMEntry - 1), "0.00000")
  ElseIf (ReadTime(ThisDOMNum, ThisDOMEntry) > 2#) And (ReadTime(ThisDOMNum, ThisDOMEntry) = ReadTime(ThisDOMNum, ThisDOMEntry - 1)) Then
    Print #30, "  Equal Time for " & ThisDOMName & " " & Format$(ReadTime(ThisDOMNum, ThisDOMEntry), "0.00000") & " " & Format$(ReadTime(ThisDOMNum, ThisDOMEntry - 1), "0.00000")
  End If
End If
If Len(InRec) >= nLF + 1 Then
  InRec = Mid$(InRec, nLF + 1)
Else
  InRec = ""
End If
If Not NonsenseRecord Then nEntry(ThisDOMNum) = ThisDOMEntry
End Sub

Public Static Sub GetSerapRec(nn As Integer)
Dim OneLine As String
Dim nTabTab
Dim nLF As Integer
Dim nCR As Integer
Dim nTab
Dim nAsc As Integer
Dim nToRead As Integer
Dim GetDOMID As String
Dim GetPar1 As String
Dim GetPar2 As String
Dim GetPar3 As String
Dim GetPar4 As String
If InStr(InRec, Chr$(10)) = 0 Then
  If FileBytesLeft > 100 Then
    nToRead = 100
  Else
    nToRead = FileBytesLeft
  End If
  InRec = InRec & Input$(nToRead, #1)
  FileBytesLeft = FileBytesLeft - nToRead
End If
nLF = InStr(InRec, Chr$(10))
OneLine = Left$(InRec, nLF - 1) & Chr$(9)
nCR = InStr(OneLine, Chr$(13))
If nCR = 0 Then
ElseIf nCR = 1 Then
  OneLine = Mid$(OneLine, 2)
ElseIf nCR = Len(OneLine) Then
  OneLine = Left$(OneLine, nCR - 1)
Else
  OneLine = Left$(OneLine, nCR - 1) & Mid$(OneLine, nCR + 1)
End If
Do While InStr(OneLine, Chr$(9) & Chr$(9)) > 0
  nTabTab = InStr(OneLine, Chr$(9) & Chr$(9))
  OneLine = Left$(OneLine, nTabTab - 1) & Mid$(OneLine, nTabTab + 1)
Loop
'DOM ID
nTab = InStr(OneLine, Chr$(9))
GetDOMID = Left$(OneLine, nTab - 1)
'Parameter 1
OneLine = Mid$(OneLine, nTab + 1)
nTab = InStr(OneLine, Chr$(9))
GetPar1 = Left$(OneLine, nTab - 1)
'Parameter 2
OneLine = Mid$(OneLine, nTab + 1)
nTab = InStr(OneLine, Chr$(9))
GetPar2 = Left$(OneLine, nTab - 1)
'High Voltage
OneLine = Mid$(OneLine, nTab + 1)
nTab = InStr(OneLine, Chr$(9))
GetPar3 = Left$(OneLine, nTab - 1)
HiVolt(0, nn) = CInt(GetPar3)
'Time
OneLine = Mid$(OneLine, nTab + 1)
nTab = InStr(OneLine, Chr$(9))
GetPar4 = Left$(OneLine, nTab - 1)
'CurTime = (CDbl(GetPar4) / 86400#) + 25569#
'ReadTime(0,nn) = CurTime - CDate("Dec 31 2008")
CurTime = (CDbl(GetPar4) / 86400#)
ReadTime(0, nn) = CurTime
'Temperature
OneLine = Mid$(OneLine, nTab + 1)
nTab = InStr(OneLine, Chr$(9))
DomTemp(0, nn) = CSng(Left$(OneLine, nTab - 1))
'SPE Threshold
OneLine = Mid$(OneLine, nTab + 1)
nTab = InStr(OneLine, Chr$(9))
ThreshSPE(0, nn) = CInt(Left$(OneLine, nTab - 1))
'SPE Rate
OneLine = Mid$(OneLine, nTab + 1)
nTab = InStr(OneLine, Chr$(9))
RateSPE(0, nn) = CInt(Left$(OneLine, nTab - 1))
'Pressure
'OneLine = Mid$(OneLine, nTab + 1)
'nTab = InStr(OneLine, Chr$(9))
'DomPress(0,nn) = CInt(Left$(OneLine, nTab - 1))
'MPE Threshold
OneLine = Mid$(OneLine, nTab + 1)
nTab = InStr(OneLine, Chr$(9))
ThreshMPE(0, nn) = CInt(Left$(OneLine, nTab - 1))
'MPE Rate
OneLine = Mid$(OneLine, nTab + 1)
nTab = InStr(OneLine, Chr$(9))
'nAsc = Asc(Mid$(OneLine, 3))
RateMPE(0, nn) = CInt(Left$(OneLine, nTab - 1))
If Len(InRec) >= nLF + 1 Then
  InRec = Mid$(InRec, nLF + 1)
Else
  InRec = ""
End If
End Sub


Public Static Sub ProcessDatFile()
Dim FileBytesLeft As Long
Dim InRec As String
Dim OneLine As String
Dim TiltOutLine As String
Dim AttitudeOutLine As String
Dim RollOut As String
Dim PitchOut As String
Dim RecTimeString As String
Dim RecTime As Date
Dim nToRead As Integer
Dim nDot As Integer
Dim nLF As Integer
Dim DOY2009 As Date
Dim DatRecTime(LastDatRec) As Double
Dim Roll(1, LastDatRec) As Single
Dim Pitch(1, LastDatRec) As Single
Dim Neutrons(1, LastDatRec) As Integer
Dim AvPitch(LastDatRec) As Single
Dim AvRoll(LastDatRec) As Single
Dim ThisBaro(LastDatRec) As Single
Dim ThisModul(LastDatRec) As Single
Dim ThisVCut(LastDatRec) As Single
Dim ThisACut(LastDatRec) As Single
Dim TotNu(LastDatRec) As Single
Dim nDatRec As Integer
Dim iFor As Integer
Dim jFor As Integer
Dim iBin As Integer
Dim NeuRollBins(2, LastRollBin) As Double
Dim NeuPitchBins(2, LastPitchBin) As Double
Dim RollStat(2, 0) As Double
Dim PitchStat(2, 0) As Double
Dim NeuStat(2, 0) As Double
Dim TimeStat(2, 0) As Double
Dim BaroStat(2, 0) As Double
Dim ModulStat(2, 0) As Double
Dim VCutStat(2, 0) As Double
Dim ACutStat(2, 0) As Double
Dim RelSig As Double
Dim RollBin As Double
Dim PitchBin As Double
Dim nRollBin As Integer
Dim nPitchBin As Integer
nDot = DoEvents
InRec = ""
FileBytesLeft = LOF(1)
Do While FileBytesLeft > 0
  If FileBytesLeft > 200 Then
    nToRead = 200
  Else
    nToRead = FileBytesLeft
  End If
  InRec = InRec & Input$(nToRead, #1)
  FileBytesLeft = FileBytesLeft - nToRead
  Do While (InStr(InRec, LineFeed) > 0)
    nLF = InStr(InRec, LineFeed)
    OneLine = Left$(InRec, nLF - 1)
    If InStr(OneLine, "LP:") > 0 Then
      StandardizeString OneLine
      If WriteDatReformat Then
        'Just write out the data
        Print #2, OneLine
      Else
        'Extract the full time from the record
        OneLine = Mid$(OneLine, 5)
        RecTimeString = NextParm(OneLine)
        RecTimeString = Mid$(RecTimeString, 4, 5) & "/" & Left$(RecTimeString, 2) & Mid$(RecTimeString, 9, 9)
        RecTimeString = RecTimeString & " " & NextParm(OneLine)
        RecTime = CDate(RecTimeString)
        'Convert to DOY2009, with January 1 = Day 1
        DOY2009 = RecTime - CDate("Dec 31 2008")
        'Check for end of interval
        If Not WriteBinSummary Then nDatRec = 0
        If WriteBinSummary And (NewRun Or ((DOY2009 >= TargetTime) And nDatRec > 3)) Then
          If Not NewRun Then
            'Process the accumulated data
            'Zero out statistics
            For iFor = 0 To 2
              NeuStat(iFor, 0) = 0
              PitchStat(iFor, 0) = 0
              RollStat(iFor, 0) = 0
              BaroStat(iFor, 0) = 0
              ModulStat(iFor, 0) = 0#
              VCutStat(iFor, 0) = 0#
              ACutStat(iFor, 0) = 0#
              TimeStat(iFor, 0) = 0
              For jFor = 0 To LastRollBin
                NeuRollBins(iFor, jFor) = 0
              Next jFor
              For jFor = 0 To LastPitchBin
                NeuPitchBins(iFor, jFor) = 0
              Next jFor
            Next iFor
            'nDatRec was set to accept another record, so adjust it
            nDatRec = nDatRec - 1
            'Get average time, pitch, roll, and number of neutrons
            For iFor = 0 To nDatRec
              TimeStat(0, 0) = TimeStat(0, 0) + DatRecTime(iFor)
              TimeStat(1, 0) = TimeStat(1, 0) + DatRecTime(iFor) ^ 2
              TimeStat(2, 0) = TimeStat(2, 0) + 1#
              AvPitch(iFor) = (Pitch(0, iFor) + Pitch(1, iFor)) / 2#
              PitchStat(0, 0) = PitchStat(0, 0) + AvPitch(iFor)
              PitchStat(1, 0) = PitchStat(1, 0) + AvPitch(iFor) ^ 2
              PitchStat(2, 0) = PitchStat(2, 0) + 1#
              AvRoll(iFor) = (Roll(0, iFor) + Roll(1, iFor)) / 2#
              RollStat(0, 0) = RollStat(0, 0) + AvRoll(iFor)
              RollStat(1, 0) = RollStat(1, 0) + AvRoll(iFor) ^ 2
              RollStat(2, 0) = RollStat(2, 0) + 1#
              TotNu(iFor) = Neutrons(0, iFor) + Neutrons(1, iFor)
              NeuStat(0, 0) = NeuStat(0, 0) + TotNu(iFor)
              NeuStat(1, 0) = NeuStat(1, 0) + TotNu(iFor) ^ 2
              NeuStat(2, 0) = NeuStat(2, 0) + 1
              BaroStat(0, 0) = BaroStat(0, 0) + ThisBaro(iFor)
              BaroStat(1, 0) = BaroStat(1, 0) + ThisBaro(iFor) ^ 2
              BaroStat(2, 0) = BaroStat(2, 0) + 1#
              ModulStat(0, 0) = ModulStat(0, 0) + ThisModul(iFor)
              ModulStat(1, 0) = ModulStat(1, 0) + ThisModul(iFor) ^ 2
              ModulStat(2, 0) = ModulStat(2, 0) + 1#
              VCutStat(0, 0) = VCutStat(0, 0) + ThisVCut(iFor)
              VCutStat(1, 0) = VCutStat(1, 0) + ThisVCut(iFor) ^ 2
              VCutStat(2, 0) = VCutStat(2, 0) + 1#
              ACutStat(0, 0) = ACutStat(0, 0) + ThisACut(iFor)
              ACutStat(1, 0) = ACutStat(1, 0) + ThisACut(iFor) ^ 2
              ACutStat(2, 0) = ACutStat(2, 0) + 1#
            Next iFor
            MakeStats TimeStat, 0
            MakeStats PitchStat, 0
            MakeStats RollStat, 0
            MakeStats NeuStat, 0
            MakeStats BaroStat, 0
            MakeStats ModulStat, 0
            MakeStats VCutStat, 0
            MakeStats ACutStat, 0
            If NeuStat(0, 0) > 0# Then
              'Sort into attitude bins
              For iFor = 0 To nDatRec
                PitchBin = LastPitchBin * (((AvPitch(iFor) - PitchStat(0, 0)) / PitchScale) + 0.5)
                nPitchBin = PitchBin
                If nPitchBin < 0 Then nPitchBin = 0
                If nPitchBin > LastPitchBin Then nPitchBin = LastPitchBin
                NeuPitchBins(0, nPitchBin) = NeuPitchBins(0, nPitchBin) + TotNu(iFor)
                NeuPitchBins(1, nPitchBin) = NeuPitchBins(1, nPitchBin) + TotNu(iFor) ^ 2
                NeuPitchBins(2, nPitchBin) = NeuPitchBins(2, nPitchBin) + 1
                RollBin = LastRollBin * (((AvRoll(iFor) - RollStat(0, 0)) / RollScale) + 0.5)
                nRollBin = RollBin
                If nRollBin < 0 Then nRollBin = 0
                If nRollBin > LastRollBin Then nRollBin = LastRollBin
                NeuRollBins(0, nRollBin) = NeuRollBins(0, nRollBin) + TotNu(iFor)
                NeuRollBins(1, nRollBin) = NeuRollBins(1, nRollBin) + TotNu(iFor) ^ 2
                NeuRollBins(2, nRollBin) = NeuRollBins(2, nRollBin) + 1
              Next iFor
              If (NeuStat(0, 0) > 0#) Then
                RelSig = NeuStat(1, 0) / Sqr(NeuStat(0, 0))
              End If
              RunNum = RunNum + 1
              PitchOut = Right$("00000" & Format$(RunNum), 5) & " " & Format$(TimeStat(0, 0), "0.00000") & " " & DFormatA(PitchStat(0, 0)) & " " & DFormatA(PitchStat(1, 0)) & " " & DFormatA(PitchStat(2, 0)) & " " & DFormatA(NeuStat(0, 0)) & " " & DFormatA(RelSig) & " " & DFormatA(NeuStat(2, 0))
              For iFor = 0 To LastPitchBin
                MakeStats NeuPitchBins, iFor
                PitchOut = PitchOut & DFormatA(NeuPitchBins(0, iFor) / NeuStat(0, 0))
              Next iFor
              RollOut = "               "
              'RollOut = Right$("00000" & Format$(RunNum), 5) & " " & Format$(TimeStat(0, 0), "0.00000") & " " & DFormatA(RollStat(0, 0)) & " " & DFormatA(RollStat(1, 0)) & " " & DFormatA(RollStat(2, 0)) & " " & DFormatA(NeuStat(0, 0)) & " " & DFormatA(RelSig) & " " & DFormatA(NeuStat(2, 0))
              RollOut = "                " & DFormatA(RollStat(0, 0)) & " " & DFormatA(RollStat(1, 0)) & " " & DFormatA(RollStat(2, 0)) & " " & DFormatA(NeuStat(0, 0)) & " " & DFormatA(RelSig) & " " & DFormatA(NeuStat(2, 0))
              For iFor = 0 To LastRollBin
                MakeStats NeuRollBins, iFor
                RollOut = RollOut & DFormatA(NeuRollBins(0, iFor) / NeuStat(0, 0))
              Next iFor
              PitchOut = PitchOut & Right$("        " & Format$(BaroStat(0, 0), "0.0"), 7)
              PitchOut = PitchOut & Right$("        " & Format$(ModulStat(0, 0), "0"), 7)
              PitchOut = PitchOut + Right$("    48", 3)
              PitchOut = PitchOut & Right$("         " & Format$(VCutStat(0, 0), "0.00"), 7)
              PitchOut = PitchOut & Right$("         " & Format$(ACutStat(0, 0), "0.00"), 7)
              'RollOut = RollOut & Right$("        " & Format$(BaroStat(0, 0), "0.0"), 7)
              'RollOut = RollOut & Right$("        " & Format$(ModulStat(0, 0), "0"), 7)
              'RollOut = RollOut + Right$("    48", 3)
              'RollOut = RollOut & Right$("         " & Format$(VCutStat(0, 0), "0.00"), 7)
              'RollOut = RollOut & Right$("         " & Format$(ACutStat(0, 0), "0.00"), 7)
              Print #3, PitchOut
              Print #3, RollOut
              'Print #4, RollOut
            End If
          End If
          'Reset the interval selection
          NewRun = False
          IntervalStart = DOY2009
          TargetTime = IntervalStart + NeutronInterval
          nDatRec = 0
        End If
        'This second will be added back when the first actual data record is read
        DOY2009 = DOY2009 - OneSecond
      End If
    ElseIf InStr(OneLine, "LL0:") > 0 Then
      StandardizeString OneLine
      If WriteDatReformat Then
        Print #2, OneLine
      End If
    ElseIf InStr(OneLine, "LS:") > 0 Then
      StandardizeString OneLine
      If WriteDatReformat Then
        Print #2, OneLine
      Else
        OneLine = Mid$(OneLine, 5)
        DOY2009 = DOY2009 + OneSecond
        DatRecTime(nDatRec) = DOY2009
        TiltOutLine = Right$("      " & Format$(DOY2009, "0.00000"), 10)
        AttitudeOutLine = TiltOutLine
        GetCutoff DatRecTime(nDatRec), ThisVCut(nDatRec), ThisACut(nDatRec)
        GetBarometer DatRecTime(nDatRec), ThisBaro(nDatRec)
        GetModulation DatRecTime(nDatRec), ThisModul(nDatRec)
        On Error Resume Next
        For iFor = 0 To 1
          Pitch(iFor, nDatRec) = 0
          Pitch(iFor, nDatRec) = CSng(NextParm(OneLine))
          TiltOutLine = TiltOutLine & " " & Format$(Pitch(iFor, nDatRec), "0.00")
          Roll(iFor, nDatRec) = 0
          Roll(iFor, nDatRec) = CSng(NextParm(OneLine))
          TiltOutLine = TiltOutLine & " " & Format$(Roll(iFor, nDatRec), "0.00")
        Next iFor
        For iFor = 0 To 1
          Neutrons(iFor, nDatRec) = 0
          Neutrons(iFor, nDatRec) = CInt(NextParm(OneLine))
          TiltOutLine = TiltOutLine & " " & Format$(Neutrons(iFor, nDatRec), "0")
        Next iFor
        On Error GoTo 0
        nDatRec = nDatRec + 1
        If WriteTiltFile Then Print #2, TiltOutLine
        If WriteAttitudeFile Then
          AttitudeOutLine = AttitudeOutLine & " " & Format$((Pitch(0, nDatRec - 1) + Pitch(1, nDatRec - 1)) / 2#, "0.00")
          AttitudeOutLine = AttitudeOutLine & " " & Format$((Roll(0, nDatRec - 1) + Roll(1, nDatRec - 1)) / 2#, "0.00")
          'Print #2, TiltOutLine
          Print #2, AttitudeOutLine
        End If
      End If
    End If
    If Len(InRec) >= nLF + 1 Then
      InRec = Mid$(InRec, nLF + 1)
    Else
      InRec = ""
    End If
  Loop
Loop
End Sub


Public Static Sub ProcessIDOMFile()
Dim InRec As String
Dim TimingOutLine(1) As String
Dim RollOut As String
Dim PitchOut As String
Dim RecordedDate(1, LastDatRec) As Date
Dim DatRecTime(LastDatRec) As Double
Dim SPERate(LastDatRec) As Integer
Dim MPERate(LastDatRec) As Integer
Dim tSPE(LastDatRec) As Integer
Dim tMPE(LastDatRec) As Integer
Dim Volt(LastDatRec) As Single
Dim Temp(LastDatRec) As Single
Dim GG(LastDatRec) As Integer
Dim KG(LastDatRec) As Integer
Dim AvPitch(LastDatRec) As Single
Dim AvRoll(LastDatRec) As Single
Dim ThisBaro(LastDatRec) As Single
Dim ThisModul(LastDatRec) As Single
Dim ThisVCut(LastDatRec) As Single
Dim ThisACut(LastDatRec) As Single
Dim nDatRec As Integer
Dim iFor As Integer
Dim jFor As Integer
Dim iBin As Integer
Dim DelTimeBins(1, LastDelTimeBin)
Dim SPERateRollBins(2, LastRollBin) As Double
Dim SPERatePitchBins(2, LastPitchBin) As Double
Dim SPERateStat(2, 0) As Double
Dim MPERateRollBins(2, LastRollBin) As Double
Dim MPERatePitchBins(2, LastPitchBin) As Double
Dim MPERateStat(2, 0) As Double
Dim RollStat(2, 0) As Double
Dim PitchStat(2, 0) As Double
Dim TimeStat(2, 0) As Double
Dim BaroStat(2, 0) As Double
Dim ModulStat(2, 0) As Double
Dim VCutStat(2, 0) As Double
Dim ACutStat(2, 0) As Double
Dim NormRat As Double
Dim DelTime As Double
Dim SPERelSig As Double
Dim MPERelSig As Double
Dim RollBin As Double
Dim DelTimeBin As Double
Dim PitchBin As Double
Dim nRollBin As Integer
Dim nPitchBin As Integer
Dim nDelTimeBin As Long
Dim nBar As Integer
Dim ThreshRecorded As Boolean
ThreshRecorded = False
nDatRec = -1
Line Input #1, InRec
Do While Not EOF(1)
  'If we get here another data record has been read,
  'so sort the data into the proper places
  nDatRec = nDatRec + 1
  RecordedDate(0, nDatRec) = CDate(Left$(InRec, 20))
  RecordedDate(1, nDatRec) = CDate(Mid$(InRec, 21, 20))
  'Get single blanks as delimiters
  StandardizeString InRec
  'Only the data beginning with DOY2009 matter
  nBar = InStr(InRec, "|")
  InRec = Mid$(InRec, nBar + 6)
  DatRecTime(nDatRec) = CDbl(NextParm(InRec))
  SPERate(nDatRec) = CInt(NextParm(InRec))
  MPERate(nDatRec) = CInt(NextParm(InRec))
  tSPE(nDatRec) = CInt(NextParm(InRec))
  tMPE(nDatRec) = CInt(NextParm(InRec))
  If (chk8Thresh.Value = True) And (Not ThreshRecorded) Then
    Print #35, Right$("   " & Format$(Condition), 3) & Right$("      " & Format$(tSPE(nDatRec)), 6) & Right$("      " & Format$(tMPE(nDatRec)), 6)
    ThreshRecorded = True
  End If
  Volt(nDatRec) = CSng(NextParm(InRec))
  Temp(nDatRec) = CSng(NextParm(InRec))
  GG(nDatRec) = CInt(NextParm(InRec))
  KG(nDatRec) = CInt(NextParm(InRec))
  AvPitch(nDatRec) = CSng(NextParm(InRec))
  AvRoll(nDatRec) = CSng(NextParm(InRec))
  GetCutoff DatRecTime(nDatRec), ThisVCut(nDatRec), ThisACut(nDatRec)
  GetBarometer DatRecTime(nDatRec), ThisBaro(nDatRec)
  'Print #3, Format$(nDatRec) & " " & Format$(DatRecTime(nDatRec), "0.0000") & " " & Format$(ThisBaro(nDatRec), "0.00")
  GetModulation DatRecTime(nDatRec), ThisModul(nDatRec)
  If KeepOnlyGPSTiming And (KG(nDatRec) = 0) Then
    'Just forget this record
    nDatRec = nDatRec - 1
  End If
  'See if there is another record
  Line Input #1, InRec
Loop
If nDatRec > 3 Then
'Process the accumulated data
'Zero out statistics
For iFor = 0 To 1
  For jFor = 0 To 20
    DelTimeBins(iFor, jFor) = 0
  Next jFor
Next iFor
For iFor = 0 To 2
  SPERateStat(iFor, 0) = 0#
  MPERateStat(iFor, 0) = 0#
  PitchStat(iFor, 0) = 0#
  RollStat(iFor, 0) = 0#
  TimeStat(iFor, 0) = 0#
  BaroStat(iFor, 0) = 0#
  ModulStat(iFor, 0) = 0#
  VCutStat(iFor, 0) = 0#
  ACutStat(iFor, 0) = 0#
  For jFor = 0 To LastRollBin
    SPERateRollBins(iFor, jFor) = 0
    MPERateRollBins(iFor, jFor) = 0
  Next jFor
  For jFor = 0 To LastPitchBin
    SPERatePitchBins(iFor, jFor) = 0
    MPERatePitchBins(iFor, jFor) = 0
  Next jFor
Next iFor
'Get average time, pitch, roll, and number of DOMRates
For iFor = 0 To nDatRec
  TimeStat(0, 0) = TimeStat(0, 0) + DatRecTime(iFor)
  TimeStat(1, 0) = TimeStat(1, 0) + DatRecTime(iFor) ^ 2
  TimeStat(2, 0) = TimeStat(2, 0) + 1#
  PitchStat(0, 0) = PitchStat(0, 0) + AvPitch(iFor)
  PitchStat(1, 0) = PitchStat(1, 0) + AvPitch(iFor) ^ 2
  PitchStat(2, 0) = PitchStat(2, 0) + 1#
  RollStat(0, 0) = RollStat(0, 0) + AvRoll(iFor)
  RollStat(1, 0) = RollStat(1, 0) + AvRoll(iFor) ^ 2
  RollStat(2, 0) = RollStat(2, 0) + 1#
  SPERateStat(0, 0) = SPERateStat(0, 0) + SPERate(iFor)
  SPERateStat(1, 0) = SPERateStat(1, 0) + SPERate(iFor) ^ 2
  SPERateStat(2, 0) = SPERateStat(2, 0) + 1#
  MPERateStat(0, 0) = MPERateStat(0, 0) + MPERate(iFor)
  MPERateStat(1, 0) = MPERateStat(1, 0) + MPERate(iFor) ^ 2
  MPERateStat(2, 0) = MPERateStat(2, 0) + 1#
  BaroStat(0, 0) = BaroStat(0, 0) + ThisBaro(iFor)
  BaroStat(1, 0) = BaroStat(1, 0) + ThisBaro(iFor) ^ 2
  BaroStat(2, 0) = BaroStat(2, 0) + 1#
  ModulStat(0, 0) = ModulStat(0, 0) + ThisModul(iFor)
  ModulStat(1, 0) = ModulStat(1, 0) + ThisModul(iFor) ^ 2
  ModulStat(2, 0) = ModulStat(2, 0) + 1#
  VCutStat(0, 0) = VCutStat(0, 0) + ThisVCut(iFor)
  VCutStat(1, 0) = VCutStat(1, 0) + ThisVCut(iFor) ^ 2
  VCutStat(2, 0) = VCutStat(2, 0) + 1#
  ACutStat(0, 0) = ACutStat(0, 0) + ThisACut(iFor)
  ACutStat(1, 0) = ACutStat(1, 0) + ThisACut(iFor) ^ 2
  ACutStat(2, 0) = ACutStat(2, 0) + 1#
  If iFor > 0 Then
    For jFor = 0 To 1
      DelTime = RecordedDate(jFor, iFor) - RecordedDate(jFor, iFor - 1)
      DelTime = DelTime / OneSecond
      DelTimeBin = LastDelTimeBin * ((DelTime / DelTimeScale) + 0.5)
      nDelTimeBin = DelTimeBin
      If nDelTimeBin < 0 Then nDelTimeBin = 0
      If nDelTimeBin > LastDelTimeBin Then nDelTimeBin = LastDelTimeBin
      DelTimeBins(jFor, nDelTimeBin) = DelTimeBins(jFor, nDelTimeBin) + 1
    Next jFor
  End If
Next iFor
MakeStats TimeStat, 0
MakeStats PitchStat, 0
MakeStats RollStat, 0
MakeStats SPERateStat, 0
MakeStats MPERateStat, 0
MakeStats BaroStat, 0
MakeStats ModulStat, 0
MakeStats VCutStat, 0
MakeStats ACutStat, 0
If (SPERateStat(2, 0) > 0#) Then
  'Sort into attitude bins
  For iFor = 0 To nDatRec
    PitchBin = LastPitchBin * (((AvPitch(iFor) - PitchStat(0, 0)) / PitchScale) + 0.5)
    nPitchBin = PitchBin
    If nPitchBin < 0 Then nPitchBin = 0
    If nPitchBin > LastPitchBin Then nPitchBin = LastPitchBin
    RollBin = LastRollBin * (((AvRoll(iFor) - RollStat(0, 0)) / RollScale) + 0.5)
    nRollBin = RollBin
    If nRollBin < 0 Then nRollBin = 0
    If nRollBin > LastRollBin Then nRollBin = LastRollBin
    SPERatePitchBins(0, nPitchBin) = SPERatePitchBins(0, nPitchBin) + SPERate(iFor)
    SPERatePitchBins(1, nPitchBin) = SPERatePitchBins(1, nPitchBin) + SPERate(iFor) ^ 2
    SPERatePitchBins(2, nPitchBin) = SPERatePitchBins(2, nPitchBin) + 1
    SPERateRollBins(0, nRollBin) = SPERateRollBins(0, nRollBin) + SPERate(iFor)
    SPERateRollBins(1, nRollBin) = SPERateRollBins(1, nRollBin) + SPERate(iFor) ^ 2
    SPERateRollBins(2, nRollBin) = SPERateRollBins(2, nRollBin) + 1
    MPERatePitchBins(0, nPitchBin) = MPERatePitchBins(0, nPitchBin) + MPERate(iFor)
    MPERatePitchBins(1, nPitchBin) = MPERatePitchBins(1, nPitchBin) + MPERate(iFor) ^ 2
    MPERatePitchBins(2, nPitchBin) = MPERatePitchBins(2, nPitchBin) + 1
    MPERateRollBins(0, nRollBin) = MPERateRollBins(0, nRollBin) + MPERate(iFor)
    MPERateRollBins(1, nRollBin) = MPERateRollBins(1, nRollBin) + MPERate(iFor) ^ 2
    MPERateRollBins(2, nRollBin) = MPERateRollBins(2, nRollBin) + 1
  Next iFor
  If (SPERateStat(0, 0) > 0#) Then
    SPERelSig = SPERateStat(1, 0) / Sqr(SPERateStat(0, 0))
  Else
    SPERelSig = 1#
  End If
  If (MPERateStat(0, 0) > 0#) Then
    MPERelSig = MPERateStat(1, 0) / Sqr(MPERateStat(0, 0))
  Else
    MPERelSig = 1#
  End If
  'TimingOutLine(0) = Format$(RunNum) & " " & Right$("         " & Format$(TimeStat(0, 0), "0.00000"), 9)
  'TimingOutLine(1) = "               "
  PitchOut = Format$(RunNum) & " " & Right$("         " & Format$(TimeStat(0, 0), "0.00000"), 9)
  PitchOut = PitchOut & " " & DFormatA(PitchStat(0, 0))
  PitchOut = PitchOut & " " & DFormatA(PitchStat(1, 0))
  PitchOut = PitchOut & " " & DFormatA(PitchStat(2, 0))
  PitchOut = PitchOut & " " & DFormatA(SPERateStat(0, 0))
  PitchOut = PitchOut & " " & DFormatA(SPERelSig)
  PitchOut = PitchOut & " " & DFormatA(SPERateStat(2, 0))
  For iFor = 0 To LastPitchBin
    MakeStats SPERatePitchBins, iFor
    If SPERateStat(0, 0) > 0# Then
      NormRat = SPERatePitchBins(0, iFor) / SPERateStat(0, 0)
    Else
      NormRat = 0#
    End If
    PitchOut = PitchOut & DFormatA(NormRat)
  Next iFor
  PitchOut = PitchOut & Right$("        " & Format$(BaroStat(0, 0), "0.0"), 7)
  PitchOut = PitchOut & Right$("        " & Format$(ModulStat(0, 0), "0"), 7)
  PitchOut = PitchOut + Right$("   " & Format$(Condition), 3)
  PitchOut = PitchOut & Right$("         " & Format$(VCutStat(0, 0), "0.00"), 7)
  PitchOut = PitchOut & Right$("         " & Format$(ACutStat(0, 0), "0.00"), 7)
  RollOut = "               "
  RollOut = RollOut & " " & DFormatA(RollStat(0, 0))
  RollOut = RollOut & " " & DFormatA(RollStat(1, 0))
  RollOut = RollOut & " " & DFormatA(RollStat(2, 0))
  RollOut = RollOut & " " & DFormatA(SPERateStat(0, 0))
  RollOut = RollOut & " " & DFormatA(SPERelSig)
  RollOut = RollOut & " " & DFormatA(SPERateStat(2, 0))
  For iFor = 0 To LastRollBin
    MakeStats SPERateRollBins, iFor
    If SPERateStat(0, 0) > 0# Then
      NormRat = SPERateRollBins(0, iFor) / SPERateStat(0, 0)
    Else
      NormRat = 0#
    End If
    RollOut = RollOut & DFormatA(NormRat)
  Next iFor
  Print #3, PitchOut
  Print #3, RollOut
  PitchOut = "               "
  PitchOut = PitchOut & " " & DFormatA(PitchStat(0, 0))
  PitchOut = PitchOut & " " & DFormatA(PitchStat(1, 0))
  PitchOut = PitchOut & " " & DFormatA(PitchStat(2, 0))
  PitchOut = PitchOut & " " & DFormatA(MPERateStat(0, 0))
  PitchOut = PitchOut & " " & DFormatA(MPERelSig)
  PitchOut = PitchOut & " " & DFormatA(MPERateStat(2, 0))
  For iFor = 0 To LastPitchBin
    MakeStats MPERatePitchBins, iFor
    If MPERateStat(0, 0) > 0# Then
      NormRat = MPERatePitchBins(0, iFor) / MPERateStat(0, 0)
    Else
      NormRat = 0#
    End If
    PitchOut = PitchOut & DFormatA(NormRat)
  Next iFor
  RollOut = "               "
  RollOut = RollOut & " " & DFormatA(RollStat(0, 0))
  RollOut = RollOut & " " & DFormatA(RollStat(1, 0))
  RollOut = RollOut & " " & DFormatA(RollStat(2, 0))
  RollOut = RollOut & " " & DFormatA(MPERateStat(0, 0))
  RollOut = RollOut & " " & DFormatA(MPERelSig)
  RollOut = RollOut & " " & DFormatA(MPERateStat(2, 0))
  For iFor = 0 To LastRollBin
    MakeStats MPERateRollBins, iFor
    If MPERateStat(0, 0) > 0# Then
      NormRat = MPERateRollBins(0, iFor) / MPERateStat(0, 0)
    Else
      NormRat = 0#
    End If
    RollOut = RollOut & DFormatA(NormRat)
  Next iFor
  Print #3, PitchOut
  Print #3, RollOut
  'For iFor = 0 To 1
  '  For jFor = 0 To LastDelTimeBin
  '    TimingOutLine(iFor) = TimingOutLine(iFor) & " " & Right$("    " & Format$(DelTimeBins(iFor, jFor)), 4)
  '  Next jFor
  'Next iFor
  'Print #35, TimingOutLine(0)
  'Print #35, TimingOutLine(1)
End If
End If
End Sub

Private Sub hsbSelectCondition_Change()
If hsbSelectCondition.Value = 0 Then
  SelectCondition = False
  lblSelectCondition.Caption = "OFF"
Else
  SelectCondition = True
  ThisCondition = hsbSelectCondition.Value
  lblSelectCondition.Caption = Format$(ThisCondition)
End If
End Sub



Public Static Sub GetCutoff(Day2009 As Double, VCut As Single, ACut As Single)
Dim CutFileRec1 As String
Dim CutFileRec2 As String
Dim TimeHistory(299) As Double
Dim VeryFirstTime As Double
Dim TimeInterp As Single
Dim AllowCut As Single
Dim ForbidCut As Single
Dim VCutHistory(299) As Single
Dim ACutHistory(299) As Single
Dim nBlank As Integer
Dim nRecNum As Long
Dim nLook As Integer
Dim pHist As Integer
Dim pScanLo As Integer
Dim pScanHi As Integer
Dim iFor As Integer
Dim iWhile As Integer
Dim FoundIt As Boolean
Dim FileDOY As Date
Dim iYr As Integer
Dim iMon As Integer
Dim iDay As Integer
Dim iHour As Integer
Dim iMinute As Integer
Dim iSecond As Integer
Dim Latitude As Single
Dim Longitude As Single
If (CutoffFileOpen) And (Day2009 <= VeryFirstTime) Then
  'It is pointless to go any further
  'Print #30, "Get Cutoff Find Error"
  nCutoffError = nCutoffError + 1
  ACut = -9.99
  VCut = -9.99
  Exit Sub
End If
If (Not CutoffFileOpen) Or (Day2009 < (TimeHistory((pHist + 1) Mod 300))) Then
  'Either this is the first call or there has been a major time retrograde.
  'In either case the cutoff file must be read from the beginning.
  'Note that closing a non-open file is legal.
  Close #33
  Open "C:\LatSurvey\EditedData\09Edit10\Documentation\Cutoffs.txt" For Input As #33
  CutoffFileOpen = True
  'We always keep a minute of history because the calls are not guaranteed
  'to be perfectly monotonic in time
  nRecNum = 0
  For iFor = 0 To 299
    Line Input #33, CutFileRec1
    StandardizeString CutFileRec1
    Line Input #33, CutFileRec2
    StandardizeString CutFileRec2
    nBlank = InStr(CutFileRec1, " ")
    iYr = CInt(Left$(CutFileRec1, nBlank - 1))
    CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
    nBlank = InStr(CutFileRec1, " ")
    iMon = CInt(Left$(CutFileRec1, nBlank - 1))
    CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
    nBlank = InStr(CutFileRec1, " ")
    iDay = CInt(Left$(CutFileRec1, nBlank - 1))
    CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
    nBlank = InStr(CutFileRec1, " ")
    iHour = CInt(Left$(CutFileRec1, nBlank - 1))
    CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
    nBlank = InStr(CutFileRec1, " ")
    iMinute = CInt(Left$(CutFileRec1, nBlank - 1))
    CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
    nBlank = InStr(CutFileRec1, " ")
    iSecond = CInt(Left$(CutFileRec1, nBlank - 1))
    CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
    nBlank = InStr(CutFileRec1, " ")
    Latitude = CSng(Left$(CutFileRec1, nBlank - 1))
    CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
    nBlank = InStr(CutFileRec1, " ")
    Longitude = CSng(Left$(CutFileRec1, nBlank - 1))
    CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
    TimeHistory(iFor) = MakeDOY09(iYr, iMon, iDay, iHour, iMinute, iSecond)
    nBlank = InStr(CutFileRec2, " ")
    AllowCut = CSng(Left$(CutFileRec2, nBlank - 1))
    CutFileRec2 = Mid$(CutFileRec2, nBlank + 1)
    nBlank = InStr(CutFileRec2, " ")
    ForbidCut = CSng(Left$(CutFileRec2, nBlank - 1))
    nRecNum = nRecNum + 1
    VCutHistory(iFor) = ForbidCut
    'For now the apparent cutoff is the cutoff with undefined allowed
    ACutHistory(iFor) = AllowCut
    If nRecNum Mod 100 = 0 Then
      lblCutoffStatus.Caption = Format$(Day2009, "0.00000") & " " & Format$(TimeHistory(pHist), "0.00000") & " " & Format$(nRecNum)
      nLook = DoEvents
    End If
  Next iFor
  'The history pointer gives the last entry in the ring buffer
  pHist = 299
  VeryFirstTime = TimeHistory(0)
End If
'Be sure that the history extends to include the desired time
Do While Day2009 > TimeHistory(pHist)
  pHist = (pHist + 1) Mod 300
  Line Input #33, CutFileRec1
  StandardizeString CutFileRec1
  Line Input #33, CutFileRec2
  StandardizeString CutFileRec2
  nBlank = InStr(CutFileRec1, " ")
  iYr = CInt(Left$(CutFileRec1, nBlank - 1))
  CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
  nBlank = InStr(CutFileRec1, " ")
  iMon = CInt(Left$(CutFileRec1, nBlank - 1))
  CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
  nBlank = InStr(CutFileRec1, " ")
  iDay = CInt(Left$(CutFileRec1, nBlank - 1))
  CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
  nBlank = InStr(CutFileRec1, " ")
  iHour = CInt(Left$(CutFileRec1, nBlank - 1))
  CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
  nBlank = InStr(CutFileRec1, " ")
  iMinute = CInt(Left$(CutFileRec1, nBlank - 1))
  CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
  nBlank = InStr(CutFileRec1, " ")
  iSecond = CInt(Left$(CutFileRec1, nBlank - 1))
  CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
  nBlank = InStr(CutFileRec1, " ")
  Latitude = CSng(Left$(CutFileRec1, nBlank - 1))
  CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
  nBlank = InStr(CutFileRec1, " ")
  Longitude = CSng(Left$(CutFileRec1, nBlank - 1))
  CutFileRec1 = Mid$(CutFileRec1, nBlank + 1)
  TimeHistory(pHist) = MakeDOY09(iYr, iMon, iDay, iHour, iMinute, iSecond)
  nBlank = InStr(CutFileRec2, " ")
  AllowCut = CSng(Left$(CutFileRec2, nBlank - 1))
  CutFileRec2 = Mid$(CutFileRec2, nBlank + 1)
  nBlank = InStr(CutFileRec2, " ")
  ForbidCut = CSng(Left$(CutFileRec2, nBlank - 1))
  nRecNum = nRecNum + 1
  VCutHistory(pHist) = ForbidCut
  'For now the apparent cutoff is the cutoff with undefined allowed
  ACutHistory(pHist) = AllowCut
  If nRecNum Mod 100 = 0 Then
    lblCutoffStatus.Caption = Format$(Day2009, "0.00000") & " " & Format$(TimeHistory(pHist), "0.00000") & " " & Format$(nRecNum)
    nLook = DoEvents
  End If
Loop
'Search the history for the interval containing the present time.
'Presumably it is near the end, so search backwards.
FoundIt = False
For iFor = 0 To 298 Step 1
  pScanHi = (pHist + 300 - iFor) Mod 300
  pScanLo = (pHist + 299 - iFor) Mod 300
  If (Day2009 >= TimeHistory(pScanLo)) And (Day2009 <= TimeHistory(pScanHi)) Then
    FoundIt = True
    Exit For
  End If
Next iFor
If Not FoundIt Then
  nCutoffError = nCutoffError + 1
  'Print #30, "Get cutoff Find Error"
  ACut = -9.99
  VCut = -9.99
Else
  TimeInterp = (Day2009 - TimeHistory(pScanLo)) / (TimeHistory(pScanHi) - TimeHistory(pScanLo))
  VCut = VCutHistory(pScanLo) + TimeInterp * (VCutHistory(pScanHi) - VCutHistory(pScanLo))
  ACut = ACutHistory(pScanLo) + TimeInterp * (ACutHistory(pScanHi) - ACutHistory(pScanLo))
  'Print #30, "GetAtt: " & Format$(Day2009, "0.00000") & " " & Format$(pHist) & " " & Format$(pScanHi) & " " & Format$(vcut, "0.00") & " " & Format$(acut, "0.00")
End If
Exit Sub

End Sub

Public Static Sub GetBarometer(Day2009 As Double, Baro As Single)
Dim BarometerFileRec As String
Dim TimeHistory(299) As Double
Dim VeryFirstTime As Double
Dim TimeInterp As Single
Dim BaroHistory(299) As Single
Dim nBlank As Integer
Dim nRecNum As Long
Dim nLook As Integer
Dim pHist As Integer
Dim pScanLo As Integer
Dim pScanHi As Integer
Dim iFor As Integer
Dim jFor As Integer
Dim iWhile As Integer
Dim FoundIt As Boolean
If (BarometerFileOpen) And (Day2009 <= VeryFirstTime) Then
  'It is pointless to go any further
  'Print #30, "Get Barometer Find Error"
  nBarometerError = nBarometerError + 1
  Baro = -9.99
  Exit Sub
End If
If (Not BarometerFileOpen) Or (Day2009 < (TimeHistory((pHist + 1) Mod 300))) Then
  'Either this is the first call or there has been a major time retrograde.
  'In either case the Barometer file must be read from the beginning.
  'Note that closing a non-open file is legal.
  Close #34
  Open "C:\LatSurvey\EditedData\09Edit10\Documentation\Barosum.dat" For Input As #34
  Line Input #34, BarometerFileRec
  BarometerFileOpen = True
  'We always keep a minute of history because the calls are not guaranteed
  'to be perfectly monotonic in time
  nRecNum = 0
  For iFor = 0 To 299
    Line Input #34, BarometerFileRec
    StandardizeString BarometerFileRec
    nBlank = InStr(BarometerFileRec, " ")
    TimeHistory(iFor) = CDbl(Left$(BarometerFileRec, nBlank - 1))
    BarometerFileRec = Mid$(BarometerFileRec, nBlank + 1)
    For jFor = 1 To 7
      nBlank = InStr(BarometerFileRec, " ")
      BarometerFileRec = Mid$(BarometerFileRec, nBlank + 1)
    Next jFor
    nBlank = InStr(BarometerFileRec, " ")
    BaroHistory(iFor) = CSng(Left$(BarometerFileRec, nBlank - 1))
    nRecNum = nRecNum + 1
    If nRecNum Mod 100 = 0 Then
      lblBarometerStatus.Caption = Format$(Day2009, "0.00000") & " " & Format$(TimeHistory(pHist), "0.00000") & " " & Format$(nRecNum)
      nLook = DoEvents
    End If
  Next iFor
  'The history pointer gives the last entry in the ring buffer
  pHist = 299
  VeryFirstTime = TimeHistory(0)
End If
'Be sure that the history extends to include the desired time
Do While Day2009 > TimeHistory(pHist)
  pHist = (pHist + 1) Mod 300
  Line Input #34, BarometerFileRec
  StandardizeString BarometerFileRec
  nBlank = InStr(BarometerFileRec, " ")
  TimeHistory(pHist) = CDbl(Left$(BarometerFileRec, nBlank - 1))
  BarometerFileRec = Mid$(BarometerFileRec, nBlank + 1)
  For jFor = 1 To 7
    nBlank = InStr(BarometerFileRec, " ")
    BarometerFileRec = Mid$(BarometerFileRec, nBlank + 1)
  Next jFor
  nBlank = InStr(BarometerFileRec, " ")
  BaroHistory(pHist) = CSng(Left$(BarometerFileRec, nBlank - 1))
  nRecNum = nRecNum + 1
  If nRecNum Mod 100 = 0 Then
    lblBarometerStatus.Caption = Format$(Day2009, "0.00000") & " " & Format$(TimeHistory(pHist), "0.00000") & " " & Format$(nRecNum)
    nLook = DoEvents
  End If
Loop
'Search the history for the interval containing the present time.
'Presumably it is near the end, so search backwards.
FoundIt = False
For iFor = 0 To 298 Step 1
  pScanHi = (pHist + 300 - iFor) Mod 300
  pScanLo = (pHist + 299 - iFor) Mod 300
  If (Day2009 >= TimeHistory(pScanLo)) And (Day2009 <= TimeHistory(pScanHi)) Then
    FoundIt = True
    Exit For
  End If
Next iFor
If Not FoundIt Then
  nBarometerError = nBarometerError + 1
  'Print #30, "Get Barometer Find Error"
  Baro = -9.99
Else
  TimeInterp = (Day2009 - TimeHistory(pScanLo)) / (TimeHistory(pScanHi) - TimeHistory(pScanLo))
  Baro = BaroHistory(pScanLo) + TimeInterp * (BaroHistory(pScanHi) - BaroHistory(pScanLo))
  'Print #3, "GetBaro: " & Format$(Day2009, "0.00000") & " " & Format$(pHist) & " " & Format$(pScanHi) & " " & Format$(Baro, "0.00")
End If
Exit Sub
End Sub

Public Static Sub GetModulation(Day2009 As Double, Modul As Single)
Dim ModulFileRec As String
Dim TimeHistory(299) As Double
Dim VeryFirstTime As Double
Dim TimeInterp As Single
Dim ModulHistory(3, 299) As Single
Dim nBlank As Integer
Dim nRecNum As Long
Dim nLook As Integer
Dim pHist As Integer
Dim pScanLo As Integer
Dim pScanHi As Integer
Dim iFor As Integer
Dim jFor As Integer
Dim iWhile As Integer
Dim FoundIt As Boolean
Dim iYr As Integer
Dim iMon As Integer
Dim iDay As Integer
Dim iHour As Integer
Dim iMinute As Integer
Dim iSecond As Integer
Dim Dummy As String
Dim UseStation As Integer
UseStation = 0
iMinute = 30
iSecond = 0
If (ModulFileOpen) And (Day2009 <= VeryFirstTime) Then
  'It is pointless to go any further
  'Print #30, "Get Modul Find Error"
  nModulError = nModulError + 1
  Modul = -9.99
  Exit Sub
End If
If (Not ModulFileOpen) Or (Day2009 < (TimeHistory((pHist + 1) Mod 300))) Then
  'Either this is the first call or there has been a major time retrograde.
  'In either case the Modul file must be read from the beginning.
  'Note that closing a non-open file is legal.
  Close #36
  Open "C:\LatSurvey\EditedData\09Edit10\Documentation\Modulation.dat" For Input As #36
  Line Input #36, ModulFileRec
  ModulFileOpen = True
  'We always keep a minute of history because the calls are not guaranteed
  'to be perfectly monotonic in time
  nRecNum = 0
'YYYY MM DD HH NN    MCC   MCU    MCP     NEC   NEU    NEP     SPC   SPU    SPP     THC   THU    THP
'2009 11 01 00 00  10535 11457  721.5    3669  3881  754.2       0     0    0.0    4747  5398  741.0
'Function MakeDOY09(iYr As Integer, iMon As Integer, iDay As Integer, iHour As Integer, iMinute As Integer, iSecond As Integer) As Date
  For iFor = 0 To 299
    Line Input #36, ModulFileRec
    StandardizeString ModulFileRec
    iYr = CInt(NextParm(ModulFileRec))
    iMon = CInt(NextParm(ModulFileRec))
    iDay = CInt(NextParm(ModulFileRec))
    iHour = CInt(NextParm(ModulFileRec))
    TimeHistory(iFor) = MakeDOY09(iYr, iMon, iDay, iHour, iMinute, iSecond)
    Dummy = NextParm(ModulFileRec)
    For jFor = 0 To 3
      ModulHistory(jFor, iFor) = CSng(NextParm(ModulFileRec))
      Dummy = NextParm(ModulFileRec)
      Dummy = NextParm(ModulFileRec)
    Next jFor
    nRecNum = nRecNum + 1
    If nRecNum Mod 100 = 0 Then
      lblModulStatus.Caption = Format$(Day2009, "0.00000") & " " & Format$(TimeHistory(pHist), "0.00000") & " " & Format$(nRecNum)
      nLook = DoEvents
    End If
  Next iFor
  'The history pointer gives the last entry in the ring buffer
  pHist = 299
  VeryFirstTime = TimeHistory(0)
End If
'Be sure that the history extends to include the desired time
Do While Day2009 >= TimeHistory(pHist)
  pHist = (pHist + 1) Mod 300
  Line Input #36, ModulFileRec
  StandardizeString ModulFileRec
  iYr = NextParm(ModulFileRec)
  iMon = NextParm(ModulFileRec)
  iDay = NextParm(ModulFileRec)
  iHour = NextParm(ModulFileRec)
  TimeHistory(pHist) = MakeDOY09(iYr, iMon, iDay, iHour, iMinute, iSecond)
  Dummy = NextParm(ModulFileRec)
  For jFor = 0 To 3
    ModulHistory(jFor, pHist) = CSng(NextParm(ModulFileRec))
    Dummy = NextParm(ModulFileRec)
    Dummy = NextParm(ModulFileRec)
  Next jFor
  nRecNum = nRecNum + 1
  If nRecNum Mod 100 = 0 Then
    lblModulStatus.Caption = Format$(Day2009, "0.00000") & " " & Format$(TimeHistory(pHist), "0.00000") & " " & Format$(nRecNum)
    nLook = DoEvents
  End If
Loop
'Search the history for the interval containing the present time.
'Presumably it is near the end, so search backwards.
FoundIt = False
For iFor = 0 To 298 Step 1
  pScanHi = (pHist + 300 - iFor) Mod 300
  pScanLo = (pHist + 299 - iFor) Mod 300
  If (Day2009 >= TimeHistory(pScanLo)) And (Day2009 <= TimeHistory(pScanHi)) Then
    FoundIt = True
    Exit For
  End If
Next iFor
If Not FoundIt Then
  nModulError = nModulError + 1
  'Print #3, "Get Modul Find Error"
  Modul = -9.99
Else
  TimeInterp = (Day2009 - TimeHistory(pScanLo)) / (TimeHistory(pScanHi) - TimeHistory(pScanLo))
  Modul = ModulHistory(UseStation, pScanLo) + TimeInterp * (ModulHistory(UseStation, pScanHi) - ModulHistory(UseStation, pScanLo))
  'Print #3, "GetModul: " & Format$(Day2009, "0.00000") & " " & Format$(pHist) & " " & Format$(pScanLo) & " " & Format$(pScanHi) & " " & Format$(Modul, "0.00")
End If
End Sub

Public Static Sub ProcessBinSumFile()
Dim iFor As Integer
Dim LatSurRecord As String
Dim RollBinRec As String
Dim PitBinRec As String
Dim RollBins(11) As Single
Dim PitBins(11) As Single
Dim Run As Long
Dim DOY As Double
Dim PitA As Single
Dim PitS As Single
Dim PitN As Single
Dim RteAPit As Single
Dim RelSPit As Single
Dim NrecPit As Single
Dim RollA As Single
Dim RollS As Single
Dim RollN As Single
Dim RteARoll As Single
Dim RelSRoll As Single
Dim NrecRoll As Single
Dim Baro As Single
Dim Modul As Single
Dim CC As Integer
Dim MPECC As Integer
Dim VCut As Single
Dim ACut As Single
Do While Not EOF(1)
  Line Input #1, PitBinRec
  StandardizeString PitBinRec
  Run = CLng(NextParm(PitBinRec))
  DOY = CDbl(NextParm(PitBinRec))
  PitA = CSng(NextParm(PitBinRec))
  PitS = CSng(NextParm(PitBinRec))
  PitN = CSng(NextParm(PitBinRec))
  RteAPit = CSng(NextParm(PitBinRec))
  RelSPit = CSng(NextParm(PitBinRec))
  NrecPit = CSng(NextParm(PitBinRec))
  For iFor = 0 To 10
    PitBins(iFor) = CSng(NextParm(PitBinRec))
  Next iFor
  Baro = CSng(NextParm(PitBinRec))
  Modul = CSng(NextParm(PitBinRec))
  CC = CInt(NextParm(PitBinRec))
  VCut = CSng(NextParm(PitBinRec))
  ACut = CSng(NextParm(PitBinRec))
  Line Input #1, RollBinRec
  StandardizeString RollBinRec
  RollA = CSng(NextParm(RollBinRec))
  RollS = CSng(NextParm(RollBinRec))
  RollN = CSng(NextParm(RollBinRec))
  RteARoll = CSng(NextParm(RollBinRec))
  RelSRoll = CSng(NextParm(RollBinRec))
  NrecRoll = CSng(NextParm(RollBinRec))
  LatSurRecord = Right$("00000" & Format$(Run), 5)
  LatSurRecord = LatSurRecord & " " & Right$("         " & Format$(DOY, "0.00000"), 9)
  LatSurRecord = LatSurRecord & Right$("        " & Format$(PitS, "0.00"), 7)
  LatSurRecord = LatSurRecord & Right$("        " & Format$(RollS, "0.00"), 7)
  LatSurRecord = LatSurRecord & Right$("         " & Format$(RteAPit, "0.00"), 8)
  LatSurRecord = LatSurRecord & Right$("        " & Format$(RelSPit, "0.00"), 7)
  LatSurRecord = LatSurRecord & Right$("        " & Format$(Baro, "0.0"), 7)
  LatSurRecord = LatSurRecord & Right$("        " & Format$(Modul, "0"), 7)
  LatSurRecord = LatSurRecord + Right$("   " & Format$(CC), 3)
  LatSurRecord = LatSurRecord & Right$("         " & Format$(VCut, "0.00"), 7)
  LatSurRecord = LatSurRecord & Right$("         " & Format$(ACut, "0.00"), 7)
  Print #3, LatSurRecord
  If CC < 48 Then
    MPECC = CC + 50
    Line Input #1, PitBinRec
    StandardizeString PitBinRec
    PitA = CSng(NextParm(PitBinRec))
    PitS = CSng(NextParm(PitBinRec))
    PitN = CSng(NextParm(PitBinRec))
    RteAPit = CSng(NextParm(PitBinRec))
    RelSPit = CSng(NextParm(PitBinRec))
    NrecPit = CSng(NextParm(PitBinRec))
    Line Input #1, RollBinRec
    StandardizeString RollBinRec
    RollA = CSng(NextParm(RollBinRec))
    RollS = CSng(NextParm(RollBinRec))
    RollN = CSng(NextParm(RollBinRec))
    RteARoll = CSng(NextParm(RollBinRec))
    RelSRoll = CSng(NextParm(RollBinRec))
    NrecRoll = CSng(NextParm(RollBinRec))
    LatSurRecord = Right$("00000" & Format$(Run), 5)
    LatSurRecord = LatSurRecord & " " & Right$("         " & Format$(DOY, "0.00000"), 9)
    LatSurRecord = LatSurRecord & Right$("        " & Format$(PitS, "0.00"), 7)
    LatSurRecord = LatSurRecord & Right$("        " & Format$(RollS, "0.00"), 7)
    LatSurRecord = LatSurRecord & Right$("         " & Format$(RteAPit, "0.00"), 8)
    LatSurRecord = LatSurRecord & Right$("        " & Format$(RelSPit, "0.00"), 7)
    LatSurRecord = LatSurRecord & Right$("        " & Format$(Baro, "0.0"), 7)
    LatSurRecord = LatSurRecord & Right$("        " & Format$(Modul, "0"), 7)
    LatSurRecord = LatSurRecord + Right$("   " & Format$(MPECC), 3)
    LatSurRecord = LatSurRecord & Right$("         " & Format$(VCut, "0.00"), 7)
    LatSurRecord = LatSurRecord & Right$("         " & Format$(ACut, "0.00"), 7)
    Print #3, LatSurRecord
  End If
Loop
End Sub

Public Static Sub ReformatPHATxt(IntRate As Single)
'IntRate is the integral rate used to normalize the data
Dim PHARec As String
Dim DOMnum As Integer
Dim PulseHeight As Single
Dim Charge As Single
Dim RiseTime As Single
Dim FWHM As Single
Dim ChargeHist(1, 299) As Long
Dim iFor As Integer
Dim iCharge As Integer
Dim OutLine As String
Dim NormFac As Single
For iFor = 0 To 299
  ChargeHist(0, iFor) = 0
Next iFor
FileBytesLeft = LOF(1)
'The format of the txt files is
'DOMID , pulseheight(mV), charge(PE), risetime(ns), fwhm(ns)
'Serap
Do While FileBytesLeft > 0
  GetTxtFileRec PHARec
  StandardizeString PHARec
  DOMnum = CInt(NextParm(PHARec))
  PulseHeight = CSng(NextParm(PHARec))
  Charge = CSng(NextParm(PHARec))
  RiseTime = CSng(NextParm(PHARec))
  FWHM = CSng(NextParm(PHARec))
  'Print #30, DOMnum, PulseHeight, Charge, RiseTime, FWHM
  If Charge < 0 Then
    iCharge = 0
  ElseIf Charge > 299# Then
    iCharge = 299
  Else
    iCharge = CInt(Charge)
  End If
  ChargeHist(0, iCharge) = ChargeHist(0, iCharge) + 1
Loop
'Generate the integral distribution
ChargeHist(1, 299) = ChargeHist(0, 299)
For iFor = 298 To 0 Step -1
ChargeHist(1, iFor) = ChargeHist(1, iFor + 1) + ChargeHist(0, iFor)
Next iFor
NormFac = IntRate / CSng(ChargeHist(1, 0))
For iFor = 0 To 299
  OutLine = Right$("    " & Format$(iFor), 4)
  OutLine = OutLine & Right$("        " & Format$(ChargeHist(0, iFor)), 8)
  OutLine = OutLine & Right$("        " & Format$(ChargeHist(1, iFor)), 8)
  OutLine = OutLine & Right$("        " & Format$(NormFac * CSng(ChargeHist(1, iFor)), "0.0"), 8)
  Print #10, OutLine
Next iFor
End Sub

Private Sub optDOM_Click(Index As Integer)
SelectedDOM = Index
End Sub

Public Static Sub PreparePHAtxt(BaseScanFile As String)
Dim ScanFile As String
Dim OutputFile As String
Dim LatSurFile As String
Dim TestString As String
Dim LatSurLine As String
Dim LatSurColHead As String
Dim nLook As Integer
Dim nDot As Integer
Dim iFor As Integer
Dim nTxt As Integer
Dim BaseFileName As String
Dim nDash As Integer
Dim sWork As String
Dim nDOM As Integer
Dim ValidFile As Boolean
Dim FileRunNum As Long
Dim DOY2009 As Date
Dim PitchS As Single
Dim RollS As Single
Dim CtsA As Single
Dim CtsS As Single
Dim Baro As Single
Dim Modul As Single
Dim CC  As Integer
Dim VCut As Single
Dim ACut As Single
nTxt = InStr(BaseScanFile, ".txt")
sWork = Left$(BaseScanFile, nTxt - 1)
ScanFile = Dir1.Path & "\" & BaseScanFile
lblShowText.Caption = ScanFile
Print #30, "Processing: " & ScanFile
TestString = "Reformat: "
'Parse the file name
nDash = InStr(sWork, "-")
RunNum = CLng(Left$(sWork, nDash - 1))
TestString = TestString & " " & Format$(RunNum)
sWork = Mid$(sWork, nDash + 1)
For iFor = 0 To LastDOM
  If InStr(sWork, DOMID(iFor)) Then nDOM = iFor
Next iFor
TestString = TestString & " " & Format$(RunNum) & " " & DOMName(nDOM)
Print #30, TestString
LatSurFile = "C:\LatSurvey\EditedData\09Edit10\Documentation\"
LatSurFile = LatSurFile & DOMName(nDOM) & "DOM.LatSur"
'Print #30, LatSurFile
Open LatSurFile For Input As #10
Line Input #10, LatSurColHead
'Print #30, LatSurColHead
Line Input #10, LatSurLine
'Print #30, LatSurLine
StandardizeString LatSurLine
FileRunNum = NextParm(LatSurLine)
ValidFile = False
Do While FileRunNum <= RunNum
  If FileRunNum = RunNum Then
    ValidFile = True
    Exit Do
  End If
  Line Input #10, LatSurLine
  'Print #30, LatSurLine
  StandardizeString LatSurLine
  FileRunNum = CLng(NextParm(LatSurLine))
  DOY2009 = CDate(NextParm(LatSurLine))
  PitchS = CSng(NextParm(LatSurLine))
  RollS = CSng(NextParm(LatSurLine))
  CtsA = CSng(NextParm(LatSurLine))
  CtsS = CSng(NextParm(LatSurLine))
  Baro = CSng(NextParm(LatSurLine))
  Modul = CSng(NextParm(LatSurLine))
  CC = CInt(NextParm(LatSurLine))
  VCut = CSng(NextParm(LatSurLine))
  ACut = CSng(NextParm(LatSurLine))
Loop
Close #10
If ValidFile Then
  Open ScanFile For Input As #1
  TxtFileLength = LOF(1)
  If TxtFileLength < 20000 Then
    Print #30, "  File Too Short: " & Format$(TxtFileLength)
    Close #1
  Else
    BaseFileName = Right$("0000000" & Format$(RunNum), 7)
    PrepareFolder PHAOutputDirectory(nDOM)
    OutputFile = PHAOutputDirectory(nDOM) & BaseFileName & ".OdenPH"
    Open OutputFile For Output As #10
    Print #10, "DOM " & DOMName(nDOM) & " (" & DOMID(nDOM) & ") "
    Print #10, Mid$(LatSurColHead, 7)
    LatSurLine = Right$("         " & Format$(DOY2009, "0.00000"), 9)
    LatSurLine = LatSurLine & Right$("        " & Format$(PitchS, "0.00"), 7)
    LatSurLine = LatSurLine & Right$("        " & Format$(RollS, "0.00"), 7)
    LatSurLine = LatSurLine & Right$("         " & Format$(CtsA, "0.00"), 8)
    LatSurLine = LatSurLine & Right$("        " & Format$(CtsS, "0.00"), 7)
    LatSurLine = LatSurLine & Right$("        " & Format$(Baro, "0.0"), 7)
    LatSurLine = LatSurLine & Right$("        " & Format$(Modul, "0"), 7)
    LatSurLine = LatSurLine + Right$("   " & Format$(CC), 3)
    LatSurLine = LatSurLine & Right$("         " & Format$(VCut, "0.00"), 7)
    LatSurLine = LatSurLine & Right$("         " & Format$(ACut, "0.00"), 7)
    Print #10, LatSurLine
    Print #10, PHAFileHeader
    lblRunning10.BackColor = ColorRed
    nLook = DoEvents
    ReformatPHATxt CtsA
    lblRunning10.BackColor = ColorGreen
    Close #1
    Close #10
  End If
Else
  Print #30, "File is invalid"
End If
End Sub
