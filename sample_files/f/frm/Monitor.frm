VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form frmMonitor 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "NEUTRON MONITOR STATUS"
   ClientHeight    =   10590
   ClientLeft      =   795
   ClientTop       =   1170
   ClientWidth     =   12270
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   222
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000008&
   Icon            =   "Monitor.frx":0000
   LinkTopic       =   "Form1"
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   10590
   ScaleWidth      =   12270
   Begin VB.Frame Frame6 
      Caption         =   "Multiplicity Timing"
      Height          =   1305
      Left            =   9390
      TabIndex        =   119
      Top             =   7440
      Width           =   2835
      Begin VB.CommandButton btnRecordREM0Timing 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Remote 0 Not Recorded"
         Height          =   255
         Left            =   330
         TabIndex        =   122
         Top             =   960
         Width           =   2205
      End
      Begin VB.CommandButton btnMultiplicityRecord 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Timing Not Recorded"
         Height          =   255
         Left            =   300
         TabIndex        =   121
         Top             =   270
         Width           =   2205
      End
      Begin VB.CommandButton btnRecordAbsolute 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Absolute Not Recorded"
         Height          =   255
         Left            =   330
         TabIndex        =   120
         Top             =   630
         Width           =   2205
      End
   End
   Begin VB.Frame frmGPSTimeStatus 
      Caption         =   "GPS Time"
      Height          =   825
      Left            =   9390
      TabIndex        =   103
      Top             =   6630
      Width           =   2865
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         Caption         =   "Time Since Last Readout:"
         Height          =   195
         Left            =   90
         TabIndex        =   113
         Top             =   420
         Width           =   2130
      End
      Begin VB.Label lblGPSQualityRead 
         Caption         =   "Qual"
         Height          =   195
         Left            =   2010
         TabIndex        =   110
         Top             =   210
         Width           =   375
      End
      Begin VB.Label lblGPSSecondRead 
         Caption         =   "Sec"
         Height          =   165
         Left            =   1620
         TabIndex        =   109
         Top             =   210
         Width           =   375
      End
      Begin VB.Label lblGPSMinuteRead 
         Caption         =   "Min"
         Height          =   165
         Left            =   1170
         TabIndex        =   108
         Top             =   210
         Width           =   375
      End
      Begin VB.Label lblGPSHourRead 
         Caption         =   "Hr"
         Height          =   165
         Left            =   750
         TabIndex        =   107
         Top             =   210
         Width           =   375
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "Read: "
         Height          =   195
         Left            =   120
         TabIndex        =   106
         Top             =   195
         Width           =   525
      End
      Begin VB.Label lblSinceGPS 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Left            =   2610
         TabIndex        =   104
         Top             =   420
         Width           =   135
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Sequence Time"
      Height          =   1095
      Left            =   9390
      TabIndex        =   102
      Top             =   5550
      Width           =   2865
      Begin VB.Label lblSequenceTimeActual 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Source"
         Height          =   195
         Left            =   930
         TabIndex        =   118
         Top             =   480
         Width           =   585
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         Caption         =   "Actual:"
         Height          =   195
         Left            =   150
         TabIndex        =   117
         Top             =   480
         Width           =   585
      End
      Begin VB.Label lblSequenceHour 
         Caption         =   "Hr"
         Height          =   165
         Left            =   210
         TabIndex        =   116
         Top             =   720
         Width           =   375
      End
      Begin VB.Label lblSequenceMinute 
         Caption         =   "Min"
         Height          =   165
         Left            =   630
         TabIndex        =   115
         Top             =   720
         Width           =   375
      End
      Begin VB.Label lblSequenceSecond 
         Caption         =   "Sec"
         Height          =   165
         Left            =   1050
         TabIndex        =   114
         Top             =   720
         Width           =   375
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "Request:"
         Height          =   195
         Left            =   150
         TabIndex        =   112
         Top             =   270
         Width           =   750
      End
      Begin VB.Label lblSequenceTimeSource 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Source"
         Height          =   195
         Left            =   1050
         TabIndex        =   105
         Top             =   270
         Width           =   585
      End
   End
   Begin MSCommLib.MSComm comLocalQuicklook 
      Left            =   12300
      Top             =   1680
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin VB.Frame frmLocalQuicklook 
      Caption         =   "Local Quicklook"
      Height          =   615
      Left            =   0
      TabIndex        =   97
      Top             =   9420
      Width           =   12255
      Begin VB.Label lblLastLocalQuicklook 
         Caption         =   "Setup Entry Must Be in WhatAmI File"
         Height          =   195
         Left            =   780
         TabIndex        =   99
         Top             =   300
         Width           =   11535
      End
      Begin VB.Label lblLocalQuicklookEnable 
         AutoSize        =   -1  'True
         BackColor       =   &H008080FF&
         Caption         =   "NOSET"
         Height          =   195
         Left            =   60
         TabIndex        =   98
         Top             =   300
         Width           =   525
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Commands"
      Height          =   2025
      Left            =   9390
      TabIndex        =   85
      Top             =   3000
      Width           =   2865
      Begin VB.Label lblCommandSeenTime 
         AutoSize        =   -1  'True
         Caption         =   "00:00:00"
         Height          =   195
         Left            =   810
         TabIndex        =   91
         Top             =   1080
         Width           =   765
      End
      Begin VB.Label lblCommandSeen 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "CCCC"
         Height          =   195
         Left            =   210
         TabIndex        =   90
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "A Seen:"
         Height          =   195
         Left            =   210
         TabIndex        =   89
         Top             =   840
         Width           =   690
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "A Sent:"
         Height          =   195
         Left            =   210
         TabIndex        =   88
         Top             =   330
         Width           =   645
      End
      Begin VB.Label lblCommandSent 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "CCCC"
         Height          =   195
         Left            =   210
         TabIndex        =   87
         Top             =   570
         Width           =   495
      End
      Begin VB.Label LblCommandTime 
         AutoSize        =   -1  'True
         Caption         =   "00:00:00"
         Height          =   195
         Left            =   780
         TabIndex        =   86
         Top             =   570
         Width           =   765
      End
   End
   Begin VB.Frame Frame3 
      Height          =   675
      Left            =   9390
      TabIndex        =   78
      Top             =   8730
      Width           =   2865
   End
   Begin VB.Frame Frame2 
      Caption         =   "SSE Directory"
      Height          =   3045
      Left            =   9390
      TabIndex        =   76
      Top             =   0
      Width           =   2865
      Begin VB.FileListBox flbSSE 
         Height          =   2625
         Left            =   30
         Pattern         =   "*.SSE"
         TabIndex        =   77
         Top             =   330
         Width           =   2775
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "System Time Sync"
      Height          =   555
      Left            =   9390
      TabIndex        =   71
      Top             =   5010
      Width           =   2865
      Begin VB.Label lblGPSTimeSyncEnable 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Request"
         Height          =   195
         Left            =   210
         TabIndex        =   73
         Top             =   240
         Width           =   705
      End
      Begin VB.Label lblTimeSyncSource 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H0000FF00&
         Caption         =   "Actual"
         Height          =   195
         Left            =   1440
         TabIndex        =   72
         Top             =   240
         Width           =   555
      End
   End
   Begin VB.Frame SSFrame4 
      Caption         =   "!EXPERTS!"
      Height          =   7215
      Left            =   6510
      TabIndex        =   43
      Top             =   1140
      Width           =   2895
      Begin VB.CommandButton btnDiagnoseGPS 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Diagnose GPS Off"
         Height          =   255
         Left            =   180
         TabIndex        =   125
         Top             =   3300
         Width           =   2205
      End
      Begin VB.CommandButton btnSendHourHist 
         Caption         =   "Hist"
         Height          =   255
         Left            =   1260
         TabIndex        =   100
         Top             =   780
         Width           =   495
      End
      Begin VB.CommandButton btnSendDay 
         Caption         =   "Day"
         Height          =   255
         Left            =   690
         TabIndex        =   95
         Top             =   780
         Width           =   495
      End
      Begin VB.CommandButton btnSendSSE 
         Caption         =   "SSE"
         Height          =   255
         Left            =   120
         TabIndex        =   94
         Top             =   780
         Width           =   495
      End
      Begin VB.CommandButton btnCmdReset 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Command ""Reset"""
         Height          =   255
         Left            =   120
         TabIndex        =   92
         Top             =   4410
         Width           =   2205
      End
      Begin VB.CommandButton btnReStart 
         Caption         =   "Restart"
         Height          =   585
         Left            =   60
         TabIndex        =   81
         Top             =   5760
         Width           =   915
      End
      Begin VB.CommandButton btnShutDown 
         Caption         =   "OFF"
         Height          =   585
         Left            =   1920
         TabIndex        =   66
         Top             =   5760
         Width           =   915
      End
      Begin VB.CommandButton btnReBoot 
         Caption         =   "Reboot"
         Height          =   585
         Left            =   990
         TabIndex        =   68
         Top             =   5760
         Width           =   915
      End
      Begin VB.CommandButton btnStopAction 
         Caption         =   "NO !! STOP !!"
         Height          =   795
         Left            =   150
         TabIndex        =   67
         Top             =   5520
         Visible         =   0   'False
         Width           =   2565
      End
      Begin VB.CommandButton btnUseMemStick 
         Caption         =   "Memory Stick Backup OFF"
         Height          =   645
         Left            =   1020
         TabIndex        =   65
         Top             =   1890
         Width           =   1335
      End
      Begin VB.VScrollBar vsbMemStick 
         Height          =   675
         Left            =   150
         Max             =   10
         TabIndex        =   64
         Top             =   1890
         Value           =   10
         Width           =   225
      End
      Begin VB.CommandButton btnRecordSSE 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "SSE Not Recorded"
         Height          =   255
         Left            =   150
         TabIndex        =   59
         Top             =   2640
         Width           =   2205
      End
      Begin VB.CommandButton btnMultiWindow 
         Caption         =   "Multi"
         Height          =   255
         Left            =   1860
         TabIndex        =   56
         Top             =   750
         Width           =   975
      End
      Begin VB.CommandButton cmdLoadRemote 
         Caption         =   "Remote"
         Height          =   255
         Left            =   1860
         TabIndex        =   55
         Top             =   1050
         Width           =   975
      End
      Begin VB.CommandButton btnPSIonoff 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "PSI Off"
         Height          =   255
         Left            =   150
         TabIndex        =   49
         Top             =   4920
         Width           =   975
      End
      Begin VB.CommandButton btnRackOnOff 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Main Data Off"
         Height          =   255
         Left            =   150
         TabIndex        =   47
         Top             =   2970
         Width           =   2205
      End
      Begin VB.CommandButton cmdHouseWin 
         Caption         =   "House"
         Height          =   255
         Left            =   1860
         TabIndex        =   46
         Top             =   450
         Width           =   975
      End
      Begin VB.CommandButton cmdDisplay 
         Caption         =   "Data"
         Height          =   255
         Left            =   1860
         TabIndex        =   45
         Top             =   120
         Width           =   975
      End
      Begin VB.CommandButton btnCmdTest 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Command ""Test"""
         Height          =   255
         Left            =   120
         TabIndex        =   44
         Top             =   4080
         Width           =   2205
      End
      Begin VB.Label lblSuppressSSECount 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "No"
         Height          =   195
         Left            =   420
         TabIndex        =   111
         Top             =   1080
         Width           =   255
      End
      Begin VB.Label lblEmailHourHist 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H008080FF&
         Caption         =   "No"
         Height          =   195
         Left            =   1380
         TabIndex        =   101
         Top             =   1080
         Width           =   255
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "E-Mail"
         Height          =   195
         Left            =   480
         TabIndex        =   39
         Top             =   540
         Width           =   540
      End
      Begin VB.Label lblEmailDay 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H008080FF&
         Caption         =   "No"
         Height          =   195
         Left            =   810
         TabIndex        =   96
         Top             =   1080
         Width           =   255
      End
      Begin VB.Label lblEmailSSE 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H008080FF&
         Caption         =   "No"
         Height          =   195
         Left            =   120
         TabIndex        =   93
         Top             =   1080
         Width           =   255
      End
      Begin VB.Label lblOpenAttempts 
         AutoSize        =   -1  'True
         Caption         =   "-0"
         Height          =   195
         Left            =   2070
         TabIndex        =   83
         Top             =   1620
         Width           =   180
      End
      Begin VB.Label lblPortStallCount 
         AutoSize        =   -1  'True
         Caption         =   "-0"
         Height          =   195
         Left            =   2250
         TabIndex        =   82
         Top             =   1380
         Width           =   180
      End
      Begin VB.Label lblVerboseDiagnostics 
         AutoSize        =   -1  'True
         BackColor       =   &H0000FF00&
         Caption         =   "Normal"
         Height          =   195
         Left            =   1590
         TabIndex        =   80
         Top             =   5250
         Width           =   600
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Diagnostic Data:"
         Height          =   195
         Left            =   120
         TabIndex        =   79
         Top             =   5250
         Width           =   1440
      End
      Begin VB.Label lblPortStallEnable 
         AutoSize        =   -1  'True
         BackColor       =   &H008080FF&
         Caption         =   "Port Stall Cycle Enabled"
         Height          =   195
         Left            =   120
         TabIndex        =   70
         Top             =   1380
         Width           =   2070
      End
      Begin VB.Label lblAutoRebootEnable 
         AutoSize        =   -1  'True
         BackColor       =   &H008080FF&
         Caption         =   "Auto Reboot Enabled"
         Height          =   195
         Left            =   120
         TabIndex        =   69
         Top             =   1620
         Width           =   1830
      End
      Begin VB.Label lblMemStick 
         Caption         =   "(U:)"
         Height          =   255
         Left            =   510
         TabIndex        =   63
         Top             =   2100
         Width           =   315
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Show Forms >"
         Height          =   195
         Left            =   240
         TabIndex        =   58
         Top             =   270
         Width           =   1200
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Calibration Barometer:"
         Height          =   195
         Left            =   120
         TabIndex        =   57
         Top             =   4680
         Width           =   1890
      End
      Begin VB.Label lblPSIRead 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Standard"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   1290
         TabIndex        =   50
         Top             =   4950
         Width           =   780
      End
   End
   Begin VB.Frame SSFrame3 
      Caption         =   "SOFTWARE"
      Height          =   555
      Left            =   -60
      TabIndex        =   40
      Top             =   10080
      Width           =   12315
      Begin VB.Label lblDebugMessage 
         AutoSize        =   -1  'True
         Caption         =   "Debug Message"
         Height          =   195
         Left            =   5190
         TabIndex        =   126
         Top             =   240
         Width           =   1335
      End
      Begin VB.Label lblSoftVersion 
         AutoSize        =   -1  'True
         Caption         =   "Land Monitor Version 8.34"
         Height          =   195
         Left            =   2580
         TabIndex        =   42
         Top             =   240
         Width           =   2190
      End
      Begin VB.Label lblSoftLocation 
         AutoSize        =   -1  'True
         Caption         =   "Bartol 5/20/14"
         Height          =   195
         Left            =   1260
         TabIndex        =   41
         Top             =   240
         Width           =   1260
      End
   End
   Begin VB.Frame Frame3D12 
      Caption         =   "Digiquartz Barometers"
      ForeColor       =   &H00000000&
      Height          =   1065
      Left            =   0
      TabIndex        =   5
      Top             =   1140
      Width           =   6525
      Begin VB.Label lblDigiSerial 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Serial"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   2970
         TabIndex        =   54
         Top             =   240
         Width           =   495
      End
      Begin VB.Label lblDigiModel 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Model"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   4170
         TabIndex        =   53
         Top             =   240
         Width           =   525
      End
      Begin VB.Label lblDigiSerial 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Serial"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   150
         TabIndex        =   52
         Top             =   240
         Width           =   495
      End
      Begin VB.Label lblDigiModel 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Model"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   1350
         TabIndex        =   51
         Top             =   240
         Width           =   525
      End
      Begin VB.Label lblFreqA 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Freq A"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   3810
         TabIndex        =   30
         Top             =   510
         Width           =   570
      End
      Begin VB.Label lblFreqAsd 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Std A"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   3810
         TabIndex        =   29
         Top             =   750
         Width           =   480
      End
      Begin VB.Label lblFreqB 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Freq B"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   4710
         TabIndex        =   28
         Top             =   510
         Width           =   570
      End
      Begin VB.Label lblFreqBsd 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Std B"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   4710
         TabIndex        =   27
         Top             =   750
         Width           =   480
      End
      Begin VB.Label lblDigiP 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Pressure"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   2970
         TabIndex        =   26
         Top             =   510
         Width           =   750
      End
      Begin VB.Label lblDigiT 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Tempr"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   2970
         TabIndex        =   25
         Top             =   750
         Width           =   540
      End
      Begin VB.Label lblDigiT 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Tempr"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   150
         TabIndex        =   3
         Top             =   750
         Width           =   540
      End
      Begin VB.Label lblDigiP 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Pressure"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   150
         TabIndex        =   10
         Top             =   510
         Width           =   750
      End
      Begin VB.Label lblFreqBsd 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Std B"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   1890
         TabIndex        =   9
         Top             =   750
         Width           =   480
      End
      Begin VB.Label lblFreqB 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Freq B"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   1890
         TabIndex        =   8
         Top             =   510
         Width           =   570
      End
      Begin VB.Label lblFreqAsd 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Std A"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   990
         TabIndex        =   7
         Top             =   750
         Width           =   480
      End
      Begin VB.Label lblFreqA 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Freq A"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   990
         TabIndex        =   6
         Top             =   510
         Width           =   570
      End
   End
   Begin VB.Frame Frame3D9 
      Caption         =   "Status"
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9405
      Begin VB.Label lblException 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Last Exceptional Event Message"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   4410
         TabIndex        =   48
         Top             =   120
         Width           =   2790
      End
      Begin VB.Label lblException 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Event  Time"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   2520
         TabIndex        =   4
         Top             =   120
         Width           =   1035
      End
      Begin VB.Label lblComputerTime 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Computer Time"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   720
         TabIndex        =   1
         Top             =   120
         Width           =   1275
      End
   End
   Begin VB.Frame Frame3D5 
      Caption         =   "Remote Unit Reports"
      ForeColor       =   &H00000000&
      Height          =   7215
      Left            =   0
      TabIndex        =   2
      Top             =   2190
      Width           =   6525
      Begin VB.Label lblIsBare 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "B"
         Height          =   195
         Index           =   0
         Left            =   90
         TabIndex        =   84
         Top             =   750
         Width           =   165
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Temperatures"
         Height          =   195
         Left            =   4380
         TabIndex        =   75
         Top             =   210
         Width           =   1170
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Differential Counts"
         Height          =   195
         Left            =   1560
         TabIndex        =   74
         Top             =   240
         Width           =   1590
      End
      Begin VB.Label lblT3 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Temp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   5670
         TabIndex        =   24
         Top             =   750
         Width           =   555
      End
      Begin VB.Label lblT2 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Temp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   4950
         TabIndex        =   23
         Top             =   750
         Width           =   555
      End
      Begin VB.Label lblT1 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Temp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   4230
         TabIndex        =   22
         Top             =   750
         Width           =   555
      End
      Begin VB.Label lblDel 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Delta"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   1350
         TabIndex        =   21
         Top             =   750
         Width           =   615
      End
      Begin VB.Label lblCts 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Counts"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   330
         TabIndex        =   20
         Top             =   750
         Width           =   915
      End
      Begin VB.Label lblWindowVerify 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Verify"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   3060
         TabIndex        =   19
         Top             =   750
         Width           =   495
      End
      Begin VB.Label lblHourDel 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "HrDel"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   2250
         TabIndex        =   18
         Top             =   750
         Width           =   465
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Hour"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   8
         Left            =   2220
         TabIndex        =   17
         Top             =   510
         Width           =   555
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Main"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   7
         Left            =   5670
         TabIndex        =   16
         Top             =   510
         Width           =   675
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Tube 2"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   6
         Left            =   4890
         TabIndex        =   15
         Top             =   510
         Width           =   675
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Tube 1"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   5
         Left            =   4170
         TabIndex        =   14
         Top             =   510
         Width           =   675
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Window"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   2940
         TabIndex        =   13
         Top             =   510
         Width           =   675
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Second"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   1380
         TabIndex        =   12
         Top             =   510
         Width           =   675
      End
      Begin VB.Label lblRemotes 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "Scaler"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   570
         TabIndex        =   11
         Top             =   510
         Width           =   555
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   12360
      Top             =   1140
   End
   Begin MSCommLib.MSComm comRack 
      Left            =   12300
      Top             =   600
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CommPort        =   5
      DTREnable       =   -1  'True
      BaudRate        =   300
   End
   Begin MSCommLib.MSComm comPSI 
      Left            =   12300
      Top             =   60
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CommPort        =   7
      DTREnable       =   0   'False
      RThreshold      =   1
   End
   Begin VB.Frame frmGPS 
      Caption         =   "$GPGGA"
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   1
      Left            =   0
      TabIndex        =   31
      Top             =   360
      Width           =   9405
      Begin VB.Label lblLatestGPS 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Latest GPS Message Received"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   930
         TabIndex        =   32
         Top             =   150
         Width           =   2655
      End
   End
   Begin VB.Frame frmLastGoodGPS 
      Caption         =   "Good GPS"
      ForeColor       =   &H00000000&
      Height          =   435
      Index           =   1
      Left            =   30
      TabIndex        =   33
      Top             =   720
      Width           =   9405
      Begin VB.Label lblGPSQual 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Qu"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   5610
         TabIndex        =   124
         Top             =   120
         Width           =   225
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         Caption         =   "Computer:"
         Height          =   195
         Left            =   6390
         TabIndex        =   123
         Top             =   120
         Width           =   885
      End
      Begin VB.Label lblGPSGMT 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "GMT"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   3960
         TabIndex        =   38
         Top             =   120
         Width           =   420
      End
      Begin VB.Label lblGPSLat 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Latitude"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   1020
         TabIndex        =   37
         Top             =   120
         Width           =   705
      End
      Begin VB.Label lblGPSLong 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Longitude"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   2310
         TabIndex        =   36
         Top             =   120
         Width           =   855
      End
      Begin VB.Label lblGPSComTime 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Computer Time"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   7350
         TabIndex        =   35
         Top             =   120
         Width           =   1365
      End
      Begin VB.Label lblGPSNumSat 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "NuS"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   6000
         TabIndex        =   34
         Top             =   120
         Width           =   315
      End
   End
   Begin VB.Frame Frame3D3 
      Caption         =   "AIR Barometer"
      ForeColor       =   &H00000000&
      Height          =   1065
      Left            =   6510
      TabIndex        =   60
      Top             =   8340
      Width           =   2895
      Begin VB.Label lblLastAir 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "0.0"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   210
         TabIndex        =   62
         Top             =   180
         Width           =   285
      End
      Begin VB.Label lblLastAirTime 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "99:99:99"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   1500
         TabIndex        =   61
         Top             =   180
         Width           =   765
      End
   End
End
Attribute VB_Name = "frmMonitor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim ShellRetCode As Double
Dim Ret As Integer                'Scratch integer
Dim Temp As String               'Scratch string
Dim ADC0 As Single
Dim ADC1 As Single
Dim ADC2 As Single
Dim RawPitch(1) As Single
Dim RawRoll(1) As Single
Dim RawTemp(1) As Single
Dim Neof  As Integer
Dim Tleof As Variant
Dim Nrbo As Integer
Dim Tlrbo As Date
Dim DelCycle As Long
Dim AirCom As Integer
Dim AirOn As Integer
Dim AirActive As Integer
Dim AirPauseCt As Long
Dim AirCase As Integer
Dim AirBeat As Long
Dim PressDecAIR(1) As Single
Dim DigIn As Integer
Dim LastTAS As String
Dim DigiTemp(1) As Double
Dim DigiPress(1) As Double
Dim NDigiQ As Double, SumDigiA(1) As Double, SSDigiA(1) As Double
Dim MADigiA(1) As Double, MSDigiA(1) As Double
Dim SumDigiB(1) As Double, SSDigiB(1) As Double
Dim MADigiB(1) As Double, MSDigiB(1) As Double
Dim MiRead As Long






Private Sub btnCmdReset_Click()
Dim iFor As Integer
SendCommand CmdRackReset
For iFor = 0 To LastUnit
  ResetDeltaRef(iFor) = Counts(iFor)
Next iFor
ResetSent = True
frmHouse.lblResetCount.Caption = Val(frmHouse.lblResetCount.Caption) + 1
End Sub

Private Sub btnCmdTest_Click()
SendCommand CmdTest
End Sub













Private Sub btnDiagnoseGPS_Click()
If DiagnoseGPS Then
  btnDiagnoseGPS.Caption = "Diagnose GPS Off"
  DiagnoseGPS = False
Else
  btnDiagnoseGPS.Caption = "Diagnose GPS On"
  DiagnoseGPS = True
End If
LogEntry "Diagnose GPS Status: " + btnDiagnoseGPS.Caption
End Sub

Private Sub btnMultiplicityRecord_Click()
If RecordFullTiming Then
  btnMultiplicityRecord.Caption = "Timing Not Recorded"
  RecordFullTiming = False
Else
  btnMultiplicityRecord.Caption = "Timing Is Recorded"
  RecordFullTiming = True
End If
LogEntry "Record Timing Status: " + btnMultiplicityRecord.Caption
End Sub

Private Sub btnMultiWindow_Click()
If frmMultiplicity.WindowState = 0 Then
  frmMultiplicity.WindowState = 1
Else
  frmMultiplicity.WindowState = 0
End If
End Sub

Private Sub btnPSIonoff_Click()
If btnPSIonoff.Caption = "PSI On" Then
  btnPSIonoff.Caption = "PSI Off"
  Select Case comPSI.PortOpen
  Case False
    Exception "PSI Port Already Closed"
  Case Else
    comPSI.Output = "*" + Chr$(10) + Chr$(13)
    comPSI.PortOpen = False
    lblPSIRead.Caption = "0.00"
  End Select
Else
  btnPSIonoff.Caption = "PSI On"
  Select Case comPSI.PortOpen
  Case True
    Exception "PSI Port Already Open"
  Case Else
    comPSI.PortOpen = True
    comPSI.Output = "*0199P4" + Chr$(10) + Chr$(13)
    lblPSIRead.Caption = "0.00"
  End Select
End If
End Sub














Public Sub btnRackOnOff_Click()
If btnRackOnOff.Caption = "Main Data On" Then
  btnRackOnOff.Caption = "Main Data Off"
  Select Case frmMonitor.comRack.PortOpen
  Case False
    Exception "Main Data Port Already Closed"
  Case Else
    frmMonitor.comRack.RThreshold = 0
    frmMonitor.comRack.InBufferCount = 0
    frmMonitor.comRack.PortOpen = False
  End Select
Else
  btnRackOnOff.Caption = "Main Data On"
  Select Case frmMonitor.comRack.PortOpen
  Case True
    Exception "Main Data Port Already Open"
  Case Else
    On Error GoTo Shutsys
    frmMonitor.comRack.PortOpen = True
    frmMonitor.comRack.InBufferCount = 0
    frmMonitor.comRack.RThreshold = 1
    IgnoreCounter = True
    On Error GoTo 0
  End Select
End If
Exit Sub
Shutsys:
If AutoRebootEnable Then
  LogEntry "Port Open error forced computer reboot!!!"
  btnReBoot_Click
Else
  LogEntry "Port Open error, reboot disabled"
End If
End Sub

Private Sub btnRecordAbsolute_Click()
If Not RecordAbsoluteTiming Then
  btnRecordAbsolute.Caption = "Absolute Is Recorded"
  RecordAbsoluteTiming = True
  Close #10
  If fso.FileExists(TimingFileName) Then
    Open TimingFileName For Append As #10
  Else
    Open TimingFileName For Output As #10
    Print #10, "From: LandBase"
    Print #10, "To: Cosray"
    Print #10, "Subject: " & TimingFileName
    Print #10,
  End If
Else
  btnRecordAbsolute.Caption = "Absolute Not Recorded"
  RecordAbsoluteTiming = False
  If Not RecordREM0Timing Then Close #10
End If
LogEntry "Absolute Timing Status: " + btnRecordAbsolute.Caption
End Sub

Private Sub btnRecordREM0Timing_Click()
If Not RecordREM0Timing Then
  btnRecordREM0Timing.Caption = "Remote 0 Is Recorded"
  RecordREM0Timing = True
  Close #10
  If fso.FileExists(TimingFileName) Then
    Open TimingFileName For Append As #10
  Else
    Open TimingFileName For Output As #10
    Print #10, "From: LandBase"
    Print #10, "To: Cosray"
    Print #10, "Subject: " & TimingFileName
    Print #10,
  End If
Else
  btnRecordREM0Timing.Caption = "Remote 0 Not Recorded"
  RecordREM0Timing = False
  If Not RecordAbsoluteTiming Then Close #10
End If
LogEntry "Remote 0 Timing Status: " + btnRecordREM0Timing.Caption
End Sub


Private Sub btnRecordSSE_Click()
If Not RecordSSE Then
  btnRecordSSE.Caption = "SSE Is Recorded"
  RecordSSE = True
Else
  btnRecordSSE.Caption = "SSE Not Recorded"
  RecordSSE = False
End If
LogEntry "Record Timing Status: " + btnRecordSSE.Caption
End Sub

Private Sub btnReBoot_Click()
btnReBoot.Visible = False
btnShutDown.Visible = False
btnReStart.Visible = False
btnStopAction.Visible = True
ShellRetCode = Shell(PersonalityDirectory & "ReBoot.bat", vbMinimizedNoFocus)
End Sub

Private Sub btnReStart_Click()
btnReBoot.Visible = False
btnShutDown.Visible = False
btnReStart.Visible = False
btnStopAction.Visible = True
ShellRetCode = Shell("C:\LandBase\MonitorStart.exe", vbMinimizedNoFocus)
Unload frmMonitor
End Sub


Private Sub btnSendDay_Click()
If fso.FileExists("C:\LandBase\Vmailer\DAY.bat") Then
  ShellRetCode = Shell("C:\LandBase\Vmailer\DAY.bat", vbMinimizedNoFocus)
End If
End Sub

Public Sub btnSendHourHist_Click()
If fso.FileExists("C:\LandBase\Vmailer\HourHist.bat") Then
  ShellRetCode = Shell("C:\LandBase\Vmailer\HourHist.bat", vbMinimizedNoFocus)
End If
End Sub

Private Sub btnSendSSE_Click()
Dim SSECount As Integer
SSECount = CInt(lblSuppressSSECount.Caption)
If SSECount > 0 Then
  SSECount = SSECount - 1
  lblSuppressSSECount.Caption = Format$(SSECount)
Else
  lblSuppressSSECount.Caption = "0"
  If fso.FileExists("C:\LandBase\Vmailer\SSE.bat") Then
    ShellRetCode = Shell("C:\LandBase\Vmailer\SSE.bat", vbMinimizedNoFocus)
  End If
End If
End Sub

Private Sub btnShutDown_Click()
btnReBoot.Visible = False
btnShutDown.Visible = False
btnReStart.Visible = False
btnStopAction.Visible = True
ShellRetCode = Shell(PersonalityDirectory & "ShutDown.bat", vbMinimizedNoFocus)
End Sub


Private Sub btnStopAction_Click()
btnReBoot.Visible = True
btnShutDown.Visible = True
btnReStart.Visible = True
btnStopAction.Visible = False
ShellRetCode = Shell(PersonalityDirectory & "StopIt.bat", vbMinimizedNoFocus)
End Sub


Private Sub btnUseMemStick_Click()
If UseMemStick Then
  Close #6
  StickFileName = ""
  btnUseMemStick.Caption = "Memory Stick Backup OFF"
  lblMemStick.Caption = "(" & MemStickDrive & ":)"
  UseMemStick = False
Else
  On Error GoTo NoStick
  StickFileName = MemStickDrive & ":\" & StationID & "_" & CurDate & ".DAT"
  Open StickFileName For Append As #6
  btnUseMemStick.Caption = "Memory Stick Backup ON"
  lblMemStick.Caption = MemStickDrive & ":"
  UseMemStick = True
End If
LogEntry "Memory Stick Status: " & btnUseMemStick.Caption & " " & StickFileName
NoStick:
Exit Sub
End Sub

Private Sub cmdDisplay_Click()
If frmDisplay.WindowState = 0 Then
  frmDisplay.WindowState = 1
Else
  frmDisplay.WindowState = 0
End If
End Sub

Private Sub cmdHouseWin_Click()
If frmHouse.WindowState = 0 Then
  frmHouse.WindowState = 1
Else
  frmHouse.WindowState = 0
End If
End Sub


Private Sub cmdLoadRemote_Click()
If frmREMOTE.WindowState = 0 Then
  frmREMOTE.WindowState = 1
Else
  frmREMOTE.WindowState = 0
End If
End Sub



Private Sub comPSI_OnComm()
    Dim EVMsg As String
    Dim ERMsg As String
    EVMsg = "EVMsg"
    ERMsg = "ERMsg"
    '--- Branch according to the CommEvent Prop..
    Select Case comPSI.CommEvent
        '--- Event messages
        Case MSCOMM_EV_RECEIVE
          PSIData
          EVMsg = ""
          ERMsg = ""
        Case MSCOMM_EV_SEND
          EVMsg = ""
          ERMsg = ""
        Case MSCOMM_EV_CTS
          EVMsg = "Change in CTS Detected"
        Case MSCOMM_EV_DSR
          EVMsg = "Change in DSR Detected"
        Case MSCOMM_EV_CD
          EVMsg = "Change in CD Detected"
        Case MSCOMM_EV_RING
          EVMsg = "The Phone is Ringing"
        Case MSCOMM_EV_EOF
          EVMsg = "End of File Detected"
        '--- Error messages
        Case MSCOMM_ER_BREAK
          EVMsg = "Break Received"
        Case MSCOMM_ER_CTSTO
          ERMsg = "CTS Timeout"
        Case MSCOMM_ER_DSRTO
          ERMsg = "DSR Timeout"
        Case MSCOMM_ER_FRAME
          ERMsg = "Framing Error"
        Case MSCOMM_ER_OVERRUN
          ERMsg = "Overrun Error"
        Case MSCOMM_ER_CDTO
          ERMsg = "Carrier Detect Timeout"
        Case MSCOMM_ER_RXOVER
          ERMsg = "Receive Buffer Overflow"
        Case MSCOMM_ER_RXPARITY
          ERMsg = "Parity Error"
        Case MSCOMM_ER_TXFULL
          ERMsg = "Transmit Buffer Full"
        Case Else
          ERMsg = "Unknown error or event"
    End Select
    If Len(EVMsg) Then
      Exception "comPSI Event " & EVMsg
      EVMsg = ""
    ElseIf Len(ERMsg) Then
      Exception "comPSI Error " & ERMsg
      ERMsg = ""
    End If

End Sub

Private Sub comRack_OnComm()
    Dim EVMsg As String
    Dim ERMsg As String
    EVMsg = "EVMsg"
    ERMsg = "ERMsg"
    '--- Branch according to the CommEvent Prop..
    Select Case comRack.CommEvent
        '--- Event messages
        Case MSCOMM_EV_RECEIVE
          RackData
          EVMsg = ""
          ERMsg = ""
        Case MSCOMM_EV_SEND
          EVMsg = ""
          ERMsg = ""
        Case MSCOMM_EV_CTS
          EVMsg = "Change in CTS Detected"
        Case MSCOMM_EV_DSR
          EVMsg = "Change in DSR Detected"
        Case MSCOMM_EV_CD
          EVMsg = "Change in CD Detected"
        Case MSCOMM_EV_RING
          EVMsg = "The Phone is Ringing"
        Case MSCOMM_EV_EOF
          EVMsg = "End of File Detected"
        '--- Error messages
        Case MSCOMM_ER_BREAK
          EVMsg = "Break Received"
        Case MSCOMM_ER_CTSTO
          ERMsg = "CTS Timeout"
        Case MSCOMM_ER_DSRTO
          ERMsg = "DSR Timeout"
        Case MSCOMM_ER_FRAME
          ERMsg = "Framing Error"
        Case MSCOMM_ER_OVERRUN
          ERMsg = "Overrun Error"
        Case MSCOMM_ER_CDTO
          ERMsg = "Carrier Detect Timeout"
        Case MSCOMM_ER_RXOVER
          ERMsg = "Receive Buffer Overflow"
          Nrbo = Neof + 1
          Tlrbo = CurTime
        Case MSCOMM_ER_RXPARITY
          ERMsg = "Parity Error"
        Case MSCOMM_ER_TXFULL
          ERMsg = "Transmit Buffer Full"
        Case Else
          ERMsg = "Unknown error or event"
    End Select
    If Len(EVMsg) > 0 Then
      Exception "comRack Event " & EVMsg
      EVMsg = ""
    ElseIf Len(ERMsg) > 0 Then
      Exception "comRack Error " & ERMsg
      ERMsg = ""
    End If
End Sub

Private Sub Digiquartz(FreqA As Double, FreqB As Double, Press As Double, Temp As Double, iDq As Integer)
Dim X As Double
Dim U As Double
Dim U2 As Double
Dim U3 As Double
Dim U4 As Double
Dim T As Double
Dim C As Double
Dim D As Double
Dim T0 As Double
Dim TDV As Double
Dim PSIA As Double
On Error GoTo CompErr
If (FreqA <= 0) Or (FreqB <= 0) Then
  Press = 0#
  Temp = 0#
'ElseIf (FreqA >= 6000#) Or (FreqB >= 6000#) Then
'  Press = 0#
'  Temp = 0#
Else
  X = 1000000# / (FreqA * TSF(iDq))
  U = X - X0(iDq)
  U2 = U * U
  U3 = U * U2
  U4 = U * U3
  Temp = (Y1(iDq) * U) + (Y2(iDq) * U2) + (Y3(iDq) * U3)
  T = 1000000# / (FreqB * PSF(iDq))
  C = C1(iDq) + (C2(iDq) * U) + (C3(iDq) * U2)
  D = D1(iDq) + (D2(iDq) * U)
  T0 = T1(iDq) + (T2(iDq) * U) + (T3(iDq) * U2) + (T4(iDq) * U3) + (T5(iDq) * U4)
  TDV = (T0 / T) ^ 2
  PSIA = C * (1# - TDV) * (1# - D * (1# - TDV))
  'Millibars:
  Press = (4.448 / (2.54 ^ 2)) * 100# * PSIA
  'Atmospheres:
  Press = Press * 0.00098692
  'Millimeters:
  Press = Press * (25.4 / 0.033421)
'CHANGE AIR BAROMETER FROM MM TO ATMOSPHERES
'AIR=0.033421*AIR/25.4
'AND THEN TO MILLIBARS
'AIR=1000.0*AIR/0.98692
End If
Exit Sub
CompErr:
  Press = -1#
  Temp = -1#
End Sub




Private Sub Form_Load()
Dim ErrorCode As Integer
Dim InputStr As String
Dim KeyStr As String
Dim PortNo As Integer
Dim SetStr As String
Dim DeviceThere As Boolean
Dim JJ As Integer
Dim I As Integer
Dim iFor As Integer
Dim jFor As Integer
Dim nSlot As Integer
Dim nBlank As Integer
Dim nKey As Integer
Dim nStar As Integer
Dim WorkFile As String
Dim ReportString As String
Dim vPos As Long
Dim vIncr As Long
Dim MoreFiles As Boolean
Dim KeyString As String
Dim MonitorLimitString(MonitorLimLast) As String
Dim MonitorLimColString(MonitorLimColLast) As String
Dim MonitorDaColString(MonitorDaColLast) As String
Dim TempStr As String
Dim nUnit As Integer
Dim nHis As Integer
MinuteFileAvailable = False
'Global Variables
FreshException = 0
GPSSentenceHistoryRingPointer = 0
SequenceTimeSystem = True
HisTypeTag(0) = "Unselected "
HisTypeTag(1) = "Selected "
PortStallCount = 0
nOpenAttempts = 0
UseMemStick = False
StationNoteExists = False
BitVal(0) = 1
For iFor = 1 To 14
  BitVal(iFor) = 2 ^ iFor
Next iFor
BitVal(15) = -32768
For iFor = 0 To 30
  BitValLong(iFor) = 2 ^ iFor
Next iFor
BitValLong(31) = &H80000000
For iFor = 0 To 31
  BitMaskLong(iFor) = (2 ^ iFor) - 1
Next iFor
BitMaskLong(31) = &HFFFF
'Defaults
lblDebugMessage.Visible = False
MinuteDirectory = "C:\LandBase\MinuteData\"
HourDirectory = "C:\LandBase\HourData\"
HistogramDirectory = "C:\LandBase\Histograms\"
QueueDirectory = "C:\LandBase\SSE_Queue\"
TimingDirectory = "C:\LandBase\Timing\"
StationID = "???"
StationTitle = "Generic Neutron Monitor Station"
For iFor = 0 To 1
  BarLoaded(iFor) = False
  BarometerFile(iFor) = "Null"
Next iFor
'Send the daily file e-mail at this minute past midnight
DayMailerPhase = 1
'When the daily file is mailed, suppress SSE mailing for this many minutes
SuppressSSEMail = 0
For iFor = 0 To AbsoluteLastUnit
  BareUnitMap(iFor) = False
Next iFor
LastUnit = -1
PortStallEnable = False
AutoRebootEnable = False
GPSTimeSyncEnable = False
LocalQuicklookOpen = False
EmailSSE = False
EmailDay = False
EmailHourHist = False
AutoRebootEnable = False
GPSTimeSyncEnable = False
NumberOfBares = 0
UseMemStick = False
MemStickDrive = "E"
RecordSSE = False
RecordAbsoluteTiming = False
RecordREM0Timing = False
RecordFullTiming = False
DiagnoseGPS = False
SinceGPS = 3
'Read and interpret the WhatAmI file
Close #1
Open PersonalityDirectory & "WhatAmI.gpc" For Input As #1
Line Input #1, InputStr
MoreFiles = InStr(InputStr, "EndOfFileSpecs") = 0
While MoreFiles
  LogEntry "WhatAmI Entry:" & " " & InputStr
  If Left$(InputStr, 1) = "*" Then
    KeyString = "Comment"
  Else
    nKey = InStr(InputStr, ":")
    If nKey > 0 Then
      KeyString = Left$(InputStr, nKey - 1)
      nStar = InStr(InputStr, "*")
      If nStar > 0 Then
        InputStr = Left$(InputStr, nStar - 1)
      End If
    Else
      KeyString = "NoKey"
    End If
  End If
  Select Case KeyString
    Case "TimingDirectory"
      TimingDirectory = Mid$(InputStr, nKey + 2)
    Case "MinuteDirectory"
      MinuteDirectory = Mid$(InputStr, nKey + 2)
    Case "HourDirectory"
      HourDirectory = Mid$(InputStr, nKey + 2)
    Case "HistogramDirectory"
      HistogramDirectory = Mid$(InputStr, nKey + 2)
    Case "QueueDirectory"
      QueueDirectory = Mid$(InputStr, nKey + 2)
    Case "StationID"
      StationID = Mid$(InputStr, nKey + 2)
    Case "StationTitle"
      StationTitle = Mid$(InputStr, nKey + 2)
    Case "StationNote"
      StationNote = Mid$(InputStr, nKey + 2)
      StationNoteExists = True
    Case "MemoryStick"
      MemStickDrive = Mid$(InputStr, nKey + 2, 1)
      UseMemStick = True
    Case "EndOfFileSpecs"
      'Establish the current system time
      CurTime = Now
      CurDate = Format(CurTime, "yy_mm_dd")
      CurDayTimTag = Format(CurTime, "yy/mm/dd hh:mm:ss")
      CurTimTag = Format(CurTime, "hh:mm:ss")
      CurYear = Val(Format(CurTime, "yyyy"))
      CurMonth = Val(Format(CurTime, "mm"))
      CurDay = Val(Format(CurTime, "dd"))
      CurHour = Val(Format(CurTime, "hh"))
      CurMin = Val(Format(CurTime, "nn"))
      CurSec = Val(Format(CurTime, "ss"))
      CurDOY = DayOfYear(CurMonth, CurDay, CurYear)
      lblComputerTime.Caption = CurDayTimTag
      'Initialize the GPS time to something reasonable
      GPSHour = CurHour
      GPSMinute = CurMin
      GPSSecond = CurSec
      PrepareFolder HourDirectory
      PrepareFolder TimingDirectory
      PrepareFolder MinuteDirectory
      PrepareFolder HistogramDirectory
      PrepareFolder QueueDirectory
      'Generate a name for the general histogram file
      'This is used for dumping specific histograms in real time
      'The daily and hourly histogram dumps generate their own file names
      HistogramFileName = HistogramDirectory + StationID + "_" + CurDate + ".HIS"
      'Generate the names of the data files
      MinuteFileName = MinuteDirectory + StationID + "_" + CurDate + ".DAT"
      TimingFileName = TimingDirectory + StationID + "_" + CurDate + ".TIM"
      StickFileName = MemStickDrive & ":\" & StationID & "_" & CurDate & ".DAT"
      'Then open the data files
      Close #2
      If fso.FileExists(MinuteFileName) Then
        Open MinuteFileName For Append As #2
        MinuteFileAvailable = True
      Else
        Open MinuteFileName For Output As #2
        Print #2, "From: LandBase"
        Print #2, "To: Cosray"
        Print #2, "Subject: " & MinuteFileName
        Print #2,
        MinuteFileAvailable = True
        If StationNoteExists Then LogEntry "Station Note - " & StationNote
      End If
      On Error GoTo NoStick
      If UseMemStick Then
        Close #6
        Open StickFileName For Append As #6
      End If
NoStick:
      On Error GoTo 0
      LogEntry "Program: " & lblSoftVersion & " Modified at: " & lblSoftLocation & " "
      If UseMemStick Then
        LogEntry "Memory Stick Open " & StickFileName
        btnUseMemStick.Caption = "Memory Stick Backup ON"
      End If
    Case "DayMailerPhase"
      DayMailerPhase = CInt(Mid$(InputStr, nKey + 2))
      If DayMailerPhase < 1 Then DayMailerPhase = 1
      If DayMailerPhase > 45 Then DayMailerPhase = 45
    Case "SuppressSSEMail"
      SuppressSSEMail = CInt(Mid$(InputStr, nKey + 2))
      If SuppressSSEMail < 0 Then SuppressSSEMail = 0
      If SuppressSSEMail > 5 Then SuppressSSEMail = 5
    Case "SequenceTimeGPS"
      SequenceTimeSystem = False
    Case "MailServerName"
      MailServerName = Mid$(InputStr, nKey + 2)
    Case "EMailDailyTo"
      EMailDailyTo = Mid$(InputStr, nKey + 2)
    Case "EMailHourHistTo"
      EMailHourHistTo = Mid$(InputStr, nKey + 2)
    Case "PortStallEnable"
      PortStallEnable = True
    Case "EMailSSEEnable"
      EmailSSE = True
    Case "EMailDayEnable"
      EmailDay = True
    Case "EMailHourHistEnable"
      EmailHourHist = True
    Case "AutoRebootEnable"
      AutoRebootEnable = True
    Case "GPSTimeSyncEnable"
      GPSTimeSyncEnable = True
    Case "LastMaster"
      LastMaster = CInt(Mid$(InputStr, nKey + 2))
    Case "NumberOfBares"
      NumberOfBares = CInt(Mid$(InputStr, nKey + 2))
    Case "BareUnitList"
      GetBareList Mid$(InputStr, nKey + 2)
    Case "M0"
      SetUpMaster 0, Mid$(InputStr, nKey + 2)
    Case "M1"
      SetUpMaster 1, Mid$(InputStr, nKey + 2)
    Case "M2"
      SetUpMaster 2, Mid$(InputStr, nKey + 2)
    Case "M3"
      SetUpMaster 3, Mid$(InputStr, nKey + 2)
    Case "M4"
      SetUpMaster 4, Mid$(InputStr, nKey + 2)
    Case "M5"
      SetUpMaster 5, Mid$(InputStr, nKey + 2)
    Case "M6"
      SetUpMaster 6, Mid$(InputStr, nKey + 2)
    Case "M7"
      SetUpMaster 7, Mid$(InputStr, nKey + 2)
    Case "Barometer0"
      BarometerFile(0) = Mid$(InputStr, nKey + 2)
      BarLoaded(0) = True
    Case "Barometer1"
      BarometerFile(1) = Mid$(InputStr, nKey + 2)
      BarLoaded(1) = True
    Case "MeanObservatoryPressure"
      MeanObservatoryPressure = CDbl(Mid$(InputStr, nKey + 2))
    Case "comPSI"
      InputStr = Mid$(InputStr, nKey + 2)
      nBlank = InStr(InputStr, " ")
      PortNo = CInt(Left$(InputStr, nBlank - 1))
      InputStr = Mid$(InputStr, nBlank + 1)
      nBlank = InStr(InputStr, " ")
      SetStr = Left$(InputStr, nBlank - 1)
      InputStr = Mid$(InputStr, nBlank + 1)
      comPSI.CommPort = PortNo
      comPSI.Settings = SetStr
      If InStr(InputStr, "On") > 0 Then btnPSIonoff_Click
      LogEntry "Set up " + KeyStr + " P:" + Format$(PortNo) + " S:" + SetStr + " A:" + InputStr
    Case "comRack"
      InputStr = Mid$(InputStr, nKey + 2)
      nBlank = InStr(InputStr, " ")
      PortNo = CInt(Left$(InputStr, nBlank - 1))
      InputStr = Mid$(InputStr, nBlank + 1)
      nBlank = InStr(InputStr, " ")
      SetStr = Left$(InputStr, nBlank - 1)
      InputStr = Mid$(InputStr, nBlank + 1)
      comRack.CommPort = PortNo
      comRack.Settings = SetStr
      If InStr(InputStr, "On") > 0 Then btnRackOnOff_Click
      LogEntry "Set up " + KeyStr + " P:" + Format$(PortNo) + " S:" + SetStr + " A:" + InputStr
    Case "comLocalQuickLook"
      InputStr = Mid$(InputStr, nKey + 2)
      nBlank = InStr(InputStr, " ")
      PortNo = CInt(Left$(InputStr, nBlank - 1))
      InputStr = Mid$(InputStr, nBlank + 1)
      nBlank = InStr(InputStr, " ")
      SetStr = Left$(InputStr, nBlank - 1)
      InputStr = Mid$(InputStr, nBlank + 1)
      comLocalQuicklook.CommPort = PortNo
      comLocalQuicklook.Settings = SetStr
      lblLastLocalQuicklook.Caption = "Set up " + KeyStr + " P:" + Format$(PortNo) + " S:" + SetStr + " A:" + InputStr
      lblLocalQuicklookEnable.Caption = "OFF"
      If InStr(InputStr, "On") > 0 Then lblLocalQuicklookEnable_Click
      LogEntry "Set up " + KeyStr + " P:" + Format$(PortNo) + " S:" + SetStr + " A:" + InputStr
    Case "DiagnoseGPS"
      DiagnoseGPS = True = True
    Case "RecordFullTiming"
      RecordFullTiming = True
    Case "RecordAbsoluteTiming"
      RecordAbsoluteTiming = True
    Case "RecordREM0Timing"
      RecordREM0Timing = True
    Case "RecordSSEFile"
      RecordSSE = True
    Case Else
      LogEntry KeyString + " invalid in WhatAmI"
  End Select
  Line Input #1, InputStr
  MoreFiles = InStr(InputStr, "EndOfInformation") = 0
Wend
Close #1
If DiagnoseGPS Then
  btnDiagnoseGPS.Caption = "Diagnose GPS On"
Else
  btnDiagnoseGPS.Caption = "Diagnose GPS Off"
End If
If RecordFullTiming Then
  btnMultiplicityRecord.Caption = "Timing Is Recorded"
Else
  btnMultiplicityRecord.Caption = "Timing Not Recorded"
End If
If RecordAbsoluteTiming Then
  btnRecordAbsolute.Caption = "Absolute Is Recorded"
  Close #10
  If fso.FileExists(TimingFileName) Then
    Open TimingFileName For Append As #10
  Else
    Open TimingFileName For Output As #10
    Print #10, "From: LandBase"
    Print #10, "To: Cosray"
    Print #10, "Subject: " & TimingFileName
    Print #10,
  End If
Else
  btnRecordAbsolute.Caption = "Absolute Not Recorded"
End If
If RecordREM0Timing Then
  btnRecordREM0Timing.Caption = "Remote 0 Is Recorded"
  Close #10
  If fso.FileExists(TimingFileName) Then
    Open TimingFileName For Append As #10
  Else
    Open TimingFileName For Output As #10
    Print #10, "From: LandBase"
    Print #10, "To: Cosray"
    Print #10, "Subject: " & TimingFileName
    Print #10,
  End If
Else
  btnRecordREM0Timing.Caption = "Remote 0 Not Recorded"
End If
If RecordSSE Then
  btnRecordSSE.Caption = "SSE Is Recorded"
Else
  btnRecordSSE.Caption = "SSE Not Recorded"
End If
GridLock = False
PrinterInstalled = False
'If a printer is not installed on the system,
'the following line must be commented out:
PrinterInstalled = True
For iFor = 0 To AbsoluteLastUnit
  NotSeenYet(iFor) = True
Next iFor
SSEString = "1946 027 05 45 06 15"
For iFor = 0 To 4
  RogersRing(iFor) = SSEString
Next iFor
RogersRingPointer = 0
FillIntegerArray Days, 11, DaysString
FillIntegerArray DaysLeap, 11, DaysLeapString
'Set up histograms based on remotes
For nUnit = 0 To LastUnit
  nHis = nUnit
  MonitorHisTag(nHis) = "PHA" & UnitTag(nUnit)
  MonitorHisDumpInterval(nHis) = 1
  TempStr = "10.0, 600.00, 0.00, 1.00, 1024.00, 1.00, 255.00"
  If (FirmVersion(nUnit) = 600) Then TempStr = "2.0, 75.00, 0.00, 1.00, 128.00, 1.00, 255.00"
  If (FirmVersion(nUnit) = 700) Then TempStr = "2.0, 75.00, 0.00, 1.00, 128.00, 1.00, 255.00"
  If (FirmVersion(nUnit) = 800) Then TempStr = "2.0, 75.00, 0.00, 1.00, 128.00, 1.00, 255.00"
  FillStringArray MonitorLimitString, TempStr
  For iFor = 0 To MonitorLimLast
    MonitorLimit(iFor, nHis) = CSng(MonitorLimitString(iFor))
  Next iFor
  nHis = (LastUnit + 1) + nUnit
  MonitorHisTag(nHis) = "MPS" & UnitTag(nUnit)
  MonitorHisDumpInterval(nHis) = 1
  TempStr = "2.0, 1020.00, 0.00, 1.00, 1024.00, 1.00, 255.00"
  FillStringArray MonitorLimitString, TempStr
  For iFor = 0 To MonitorLimLast
    MonitorLimit(iFor, nHis) = CSng(MonitorLimitString(iFor))
  Next iFor
  nHis = 2 * (LastUnit + 1) + nUnit
  MonitorHisTag(nHis) = "MPL" & UnitTag(nUnit)
  MonitorHisDumpInterval(nHis) = 1
  TempStr = "1.0, 65534.00, 0.00, 64.00, 1024.00, 1.00, 255.00"
  FillStringArray MonitorLimitString, TempStr
  For iFor = 0 To MonitorLimLast
    MonitorLimit(iFor, nHis) = CSng(MonitorLimitString(iFor))
  Next iFor
Next nUnit
RemoteHisFinal = 3 * (LastUnit + 1) - 1
'Now set up other histograms
nHis = 3 * (LastUnit + 1)
MonitorHisTag(nHis) = "DQPr0"
MonitorHisDumpInterval(nHis) = 0
TempStr = "700.00, 800.00, 650.00, 0.20, 1024.00, 10.00, 45.00"
FillStringArray MonitorLimitString, TempStr
For iFor = 0 To MonitorLimLast
  MonitorLimit(iFor, nHis) = CSng(MonitorLimitString(iFor))
Next iFor
nHis = nHis + 1
MonitorHisTag(nHis) = "DQPr1"
MonitorHisDumpInterval(nHis) = 0
TempStr = "700.00, 800.00, 650.00, 0.20, 1024.00, 10.00, 45.00"
FillStringArray MonitorLimitString, TempStr
For iFor = 0 To MonitorLimLast
  MonitorLimit(iFor, nHis) = CSng(MonitorLimitString(iFor))
Next iFor
nHis = nHis + 1
MonitorHisTag(nHis) = "DQTm0"
MonitorHisDumpInterval(nHis) = 0
TempStr = "10.00, 30.00, 0.00, 0.10, 1024.00, 10.00, 45.00"
FillStringArray MonitorLimitString, TempStr
For iFor = 0 To MonitorLimLast
  MonitorLimit(iFor, nHis) = CSng(MonitorLimitString(iFor))
Next iFor
nHis = nHis + 1
MonitorHisTag(nHis) = "DQTm1"
MonitorHisDumpInterval(nHis) = 0
TempStr = "10.00, 30.00, 0.00, 0.10, 1024.00, 10.00, 45.00"
FillStringArray MonitorLimitString, TempStr
For iFor = 0 To MonitorLimLast
  MonitorLimit(iFor, nHis) = CSng(MonitorLimitString(iFor))
Next iFor
nHis = nHis + 1
MonitorHisTag(nHis) = "Stdrd"
MonitorHisDumpInterval(nHis) = 0
TempStr = "700.00, 800.00, 0.00, 0.20, 1024.00, 10.00, 45.00"
FillStringArray MonitorLimitString, TempStr
For iFor = 0 To MonitorLimLast
  MonitorLimit(iFor, nHis) = CSng(MonitorLimitString(iFor))
Next iFor
MonitorHisFinal = nHis
'Now set up the column widths for the display grids
TempStr = "1000,600,600,600,600,600,600,600,600"
FillStringArray MonitorLimColString, TempStr
For iFor = 0 To MonitorLimColLast
  MonitorLimColWidth(iFor) = CLng(MonitorLimColString(iFor))
Next iFor
TempStr = "180,708,756,552,552,564,552,480,552,684,720"
FillStringArray MonitorDaColString, TempStr
For iFor = 0 To MonitorDaColLast
  MonitorDaColWidth(iFor) = CLng(MonitorDaColString(iFor))
Next iFor
'Initialize arrays, etc., for histogram analysis
MonitorHisNum = 0
MonitorHisType = 0
MonitorLimColLabel(0) = "Limit"
MonitorLimColLabel(1) = "WMin"
MonitorLimColLabel(2) = "WMax"
MonitorLimColLabel(3) = "HBase"
MonitorLimColLabel(4) = "HScl"
MonitorLimColLabel(5) = "HDisp"
MonitorLimColLabel(6) = "SMin"
MonitorLimColLabel(7) = "SMax"
MonitorLimColLabel(8) = "DuIn"
FillStringArray MonitorDaColLabel(), "T,Item,Mean,Sigma,Skew,Total,Below,In,Above,LimL,LimH,"
'Form Initializations
lblSuppressSSECount.Caption = Format$(0)
If SequenceTimeSystem = True Then
  lblSequenceTimeSource.Caption = "System"
Else
  lblSequenceTimeSource.Caption = "GPS"
End If
lblVerboseDiagnostics.BackColor = ColorGreen
VerboseDiagnostics = False
lblVerboseDiagnostics.Caption = "Normal"
If EmailSSE = False Then
  lblEmailSSE.Caption = "No"
  lblEmailSSE.BackColor = ColorRed
Else
  lblEmailSSE.Caption = "Yes"
  lblEmailSSE.BackColor = ColorGreen
End If
If EmailDay = False Then
  lblEmailDay.Caption = "No"
  lblEmailDay.BackColor = ColorRed
Else
  lblEmailDay.Caption = "Yes"
  lblEmailDay.BackColor = ColorGreen
End If
If EmailHourHist = False Then
  lblEmailHourHist.Caption = "No"
  lblEmailHourHist.BackColor = ColorRed
Else
  lblEmailHourHist.Caption = "Yes"
  lblEmailHourHist.BackColor = ColorGreen
End If
If GPSTimeSyncEnable = False Then
  lblGPSTimeSyncEnable.Caption = "Inherent"
Else
  lblGPSTimeSyncEnable.Caption = "GPS"
End If
If PortStallEnable = False Then
  lblPortStallEnable.Caption = "Port Stall Cycle Disabled"
  lblPortStallEnable.BackColor = ColorRed
Else
  lblPortStallEnable.Caption = "Port Stall Cycle Enabled"
  lblPortStallEnable.BackColor = ColorGreen
End If
If AutoRebootEnable = False Then
  lblAutoRebootEnable.Caption = "Auto Reboot Disabled"
  lblAutoRebootEnable.BackColor = ColorRed
Else
  lblAutoRebootEnable.Caption = "Auto Reboot Enabled"
  lblAutoRebootEnable.BackColor = ColorGreen
End If
lblPSIRead.Caption = "0.00"
vPos = lblCts(0).Top
vIncr = lblCts(0).Height + 50
flbSSE.Path = QueueDirectory
For iFor = 1 To LastRemote(0)
  vPos = vPos + vIncr
  Load lblIsBare(iFor)
  lblIsBare(iFor).Top = vPos
  lblIsBare(iFor).Visible = True
  Load lblCts(iFor)
  lblCts(iFor).Top = vPos
  lblCts(iFor).Visible = True
  Load lblDel(iFor)
  lblDel(iFor).Top = vPos
  lblDel(iFor).Visible = True
  Load lblWindowVerify(iFor)
  lblWindowVerify(iFor).Top = vPos
  lblWindowVerify(iFor).Visible = True
  Load lblHourDel(iFor)
  lblHourDel(iFor).Top = vPos
  lblHourDel(iFor).Visible = True
  Load lblT1(iFor)
  lblT1(iFor).Top = vPos
  lblT1(iFor).Visible = True
  Load lblT2(iFor)
  lblT2(iFor).Top = vPos
  lblT2(iFor).Visible = True
  Load lblT3(iFor)
  lblT3(iFor).Top = vPos
  lblT3(iFor).Visible = True
Next iFor
For jFor = 1 To LastMaster
  vPos = vPos + 100
  For iFor = RemoteBaseAddress(jFor) To RemoteBaseAddress(jFor) + LastRemote(jFor)
  vPos = vPos + vIncr
  Load lblIsBare(iFor)
  lblIsBare(iFor).Top = vPos
  lblIsBare(iFor).Visible = True
  Load lblCts(iFor)
  lblCts(iFor).Top = vPos
  lblCts(iFor).Visible = True
  Load lblDel(iFor)
  lblDel(iFor).Top = vPos
  lblDel(iFor).Visible = True
  Load lblWindowVerify(iFor)
  lblWindowVerify(iFor).Top = vPos
  lblWindowVerify(iFor).Visible = True
  Load lblHourDel(iFor)
  lblHourDel(iFor).Top = vPos
  lblHourDel(iFor).Visible = True
  Load lblT1(iFor)
  lblT1(iFor).Top = vPos
  lblT1(iFor).Visible = True
  Load lblT2(iFor)
  lblT2(iFor).Top = vPos
  lblT2(iFor).Visible = True
  Load lblT3(iFor)
  lblT3(iFor).Top = vPos
  lblT3(iFor).Visible = True
  Next iFor
Next jFor
For I = 0 To LastUnit
 lblCts(I).Caption = "000"
Next I
SSEFileName = "IgnoreThisFile"
frmMonitor.Caption = StationTitle
CR = Chr$(13)
LF = Chr$(10)
CRLF = Chr$(13) + Chr$(10)
frmHouse.Visible = True
frmHouse.WindowState = 1
frmHouse.lblResetCount.Caption = Format$(0)
'Constant Initializations
DelCycle = 2 ^ 23
'Deg C 0.38100 0259.0
ItemTag(0) = "Deg C"
CalConst(0, 0) = 0.381
CalConst(1, 0) = 259#
' +5 V 0.00804 0000.0
ItemTag(1) = " +5 V"
CalConst(0, 1) = 0.00804
CalConst(1, 1) = 0#
'+15 V 0.01998 0000.0
ItemTag(2) = "+15 V"
CalConst(0, 2) = 0.01998
CalConst(1, 2) = 0#
' -5 V -0.0083 0000.0
ItemTag(3) = " -5 V"
CalConst(0, 3) = -0.0083
CalConst(1, 3) = 0#
'-15 V -0.0156 0000.0
ItemTag(4) = "-15 V"
CalConst(0, 4) = -0.0156
CalConst(1, 4) = 0#
For I = 0 To LastUnit
  'Display the Unit Tag
  frmHouse.lblTag(I).Caption = UnitTag(I)
  'Display the firmware version
  frmHouse.lblFirmware(I).Caption = Format$(FirmVersion(I))
  'These limits define the standard windows for the below,in,above reporting
  WinLimit(0, I) = 64
  WinLimit(1, I) = 800
  If (FirmVersion(I) = 600) Then
    WinLimit(0, I) = 8
    WinLimit(1, I) = 100
  End If
  If (FirmVersion(I) = 700) Then
    WinLimit(0, I) = 8
    WinLimit(1, I) = 100
  End If
  If (FirmVersion(I) = 800) Then
    WinLimit(0, I) = 8
    WinLimit(1, I) = 100
  End If
Next I
For I = 0 To 2
 frmHouse.lblMuxItem(I).Caption = ItemTag(I)
Next I
FullRdgAIR(0) = "0000"
FullRdgAIR(1) = "0000"
LogEntry "Station ID " & StationID
LogEntry "Observatory Pressure " & Format$(MeanObservatoryPressure)
LogEntry "Queue Directory " & QueueDirectory
'Beginning in 2003 the barometer parameters are loaded fromQueueDirectory
'instructions in the WhatAmI file
'Slots 0 and 1 are used for barometers in the rack
TSF(0) = 1
PSF(0) = 1
TSF(1) = 1
PSF(1) = 1
For nSlot = 0 To mBar
  lblDigiSerial(nSlot).Visible = False
  lblDigiModel(nSlot).Visible = False
  lblDigiT(nSlot).Visible = False
  lblDigiT(nSlot).Caption = "0.00"
  lblDigiP(nSlot).Visible = False
  lblDigiP(nSlot).Caption = "0.00"
  lblFreqA(nSlot).Visible = False
  lblFreqAsd(nSlot).Visible = False
  lblFreqB(nSlot).Visible = False
  lblFreqBsd(nSlot).Visible = False
  If BarLoaded(nSlot) Then
    lblDigiSerial(nSlot).Visible = True
    lblDigiModel(nSlot).Visible = True
    lblDigiT(nSlot).Visible = True
    lblDigiP(nSlot).Visible = True
    lblFreqA(nSlot).Visible = True
    If nSlot < 2 Then lblFreqAsd(nSlot).Visible = True
    lblFreqB(nSlot).Visible = True
    If nSlot < 2 Then lblFreqBsd(nSlot).Visible = True
    WorkFile = PersonalityDirectory & BarometerFile(nSlot)
    Open WorkFile For Input As #1
    LogEntry "Barometer" & Format$(nSlot) & " Load from " & WorkFile
    While Not EOF(1)
      Line Input #1, InputStr
      LogEntry InputStr
      nKey = InStr(InputStr, ":")
      KeyStr = " "
      If nKey > 0 Then KeyStr = Left$(InputStr, nKey - 1)
      Select Case KeyStr
      Case "Se"
        BarSerial(nSlot) = Mid$(InputStr, nKey + 2)
        lblDigiSerial(nSlot).Caption = BarSerial(nSlot)
      Case "Mo"
        BarModel(nSlot) = Mid$(InputStr, nKey + 2)
        lblDigiModel(nSlot).Caption = BarModel(nSlot)
      Case "X0"
        X0(nSlot) = CDbl(Mid$(InputStr, nKey + 2))
      Case "Y1"
        Y1(nSlot) = CDbl(Mid$(InputStr, nKey + 2))
      Case "Y2"
        Y2(nSlot) = CDbl(Mid$(InputStr, nKey + 2))
      Case "Y3"
        Y3(nSlot) = CDbl(Mid$(InputStr, nKey + 2))
      Case "C1"
        C1(nSlot) = CDbl(Mid$(InputStr, nKey + 2))
      Case "C2"
        C2(nSlot) = CDbl(Mid$(InputStr, nKey + 2))
      Case "C3"
        C3(nSlot) = CDbl(Mid$(InputStr, nKey + 2))
      Case "D1"
        D1(nSlot) = CDbl(Mid$(InputStr, nKey + 2))
      Case "D2"
        D2(nSlot) = CDbl(Mid$(InputStr, nKey + 2))
      Case "T1"
        T1(nSlot) = CDbl(Mid$(InputStr, nKey + 2))
      Case "T2"
        T2(nSlot) = CDbl(Mid$(InputStr, nKey + 2))
      Case "T3"
        T3(nSlot) = CDbl(Mid$(InputStr, nKey + 2))
      Case "T4"
        T4(nSlot) = CDbl(Mid$(InputStr, nKey + 2))
      Case "T5"
        T5(nSlot) = CDbl(Mid$(InputStr, nKey + 2))
      Case Else
        LogEntry "Invalid Key During Barometer Load"
      End Select
    Wend
    Close #1
  End If
Next nSlot
ReportString = "Bare Unit Map "
For iFor = 0 To LastUnit
  If (BareUnitMap(iFor)) Then
    ReportString = ReportString & "T"
    lblIsBare(iFor).Caption = "B"
  Else
    ReportString = ReportString & "F"
    lblIsBare(iFor).Caption = " "
  End If
Next iFor
LogEntry ReportString
vsbMemStick.Value = InStr(DriveChoice, MemStickDrive) - 1
MinutesSinceNewlyLoaded = 0
frmDisplay.Visible = True
frmDisplay.WindowState = 1
frmMultiplicity.Visible = True
frmMultiplicity.WindowState = 1
frmREMOTE.Visible = True
frmREMOTE.WindowState = 1
End Sub


Public Sub LogEntry(Message As String)
If MinuteFileAvailable Then Print #2, "Log: " + Message + " " + Format(CurTime, "yy/mm/dd hh:mm:ss")
  On Error GoTo NoStick
    If UseMemStick Then Print #6, "Log: " + Message + " " + Format(CurTime, "yy/mm/dd hh:mm:ss")
NoStick:
  Exit Sub
End Sub

Private Function bMux2(Bytes As String, Adr As Integer, Flg As Integer) As Long
Dim Temp As Long
Temp = Asc(Mid$(Bytes, 1, 1))
Temp = (4 * Temp) + (Asc(Mid$(Bytes, 2, 1)) \ 64)
Adr = Asc(Mid$(Bytes, 2, 1)) And 7
Flg = Asc(Mid$(Bytes, 2, 1)) And 8
bMux2 = Temp
End Function
Private Function bMux2Ngr(HexData As String, Adr As Integer, Flg As Integer) As Long
Dim Byte1 As Integer
Dim Byte2 As Integer
Dim Temp As Long
Byte1 = Val("&H" & Left$(HexData, 2))
Byte2 = Val("&H" & Right$(HexData, 2))
Temp = (4 * Byte1) + (Byte2 \ 64)
Adr = Byte2 And 7
Flg = Byte2 And 8
bMux2Ngr = (4 * Byte1) + (Byte2 \ 64)
End Function


Private Static Sub PSIData()
'Captures and Formats PSI Data
On Error Resume Next
Dim Nd As Integer
Dim I As Integer
Dim NPSI As Long
Dim NCR As Long
Dim Dta As String
Dim CurText As String
Dta = comPSI.Input
'Make sure the existing text doesn't get
'too large -- in case the PSI goes crazy
'and drops its sync characters.
Nd = Len(CurText)
If Nd >= 500 Then
  CurText = Mid$(CurText, 200)
End If
'Eliminate Line Feeds
Do
  I = InStr(Dta, Chr$(10))
  If I > 0 Then
    Dta = Left$(Dta, I - 1) + Mid$(Dta, I + 1)
  End If
Loop While I > 0
'Add the filtered data to curText
CurText = CurText + Dta$
'Now look for pattern
NPSI = InStr(CurText, "*9901")
While NPSI > 0
  'There is a PSI Identifier; put it at the start of the buffer
  CurText = Mid$(CurText, NPSI)
  'Now look for a carriage return
  NCR = InStr(CurText, Chr$(13))
  If NCR > 0 Then
    'There is a complete message so remember it
    lblPSIRead.Caption = Mid$(Left$(CurText, NCR - 1), 6)
    'Now remove the text from the buffer
    CurText = Mid$(CurText, NCR + 1)
    'See if there might be another one
    NPSI = InStr(CurText, "*9901")
  Else
    'Wait until more text comes in
    Exit Sub
  End If
Wend
If Len(CurText) > 100 Then
  'The data in CurText are useless
  'So get rid of everything but the end of the string,
   CurText = Right$(CurText, 5)
   Exception "PSILogger Characters Ignored"
End If

End Sub

Private Static Sub RackData()
Dim StillHope As Boolean
Dim NewData As Boolean
Dim ReportString As String
Dim DeviceData As String
Dim HexString As String
Dim GPSHex As String
Dim GPSString As String
Dim GPSDiagnoseString As String
Dim RdoAMessage As String
Dim RdoBMessage As String
Dim GPSB64 As String
Dim CtrHex As String
Dim CtrB64 As String
Dim TubeHex As String
Dim TubeB64 As String
Dim ErrHex As String
Dim ErrB64 As String
Dim CommandA As String
Dim Dta As String
Dim Current As String
Dim SyncCandidate As String
Dim nRead As Integer
Dim iFor As Integer
Dim nCRLF As Integer
Dim LastGGA As String
Dim Parse As String
Dim nCom As Integer
Dim nLen As Integer
Dim GPSSecondRead As Integer
Dim GPSMinuteRead As Integer
Dim GPSHourRead As Integer
Dim GPSLatRead As String
Dim GPSLonRead As String
Dim GPSGMTRead As String
Dim GPSQualityRead As Integer
Dim GPSNumSatRead As Integer
Dim FreshCount As Integer
'Read the Rack port
Dta = comRack.Input
nRead = Len(Dta)
frmHouse.lblNRead(1).Caption = Format$(nRead, "0")
nSecRead = nSecRead + nRead
frmHouse.lblSecRead.Caption = Format$(nSecRead, "0")
'Make sure the data string doesn't get too large.
If Len(Current) >= 4000 Then
  Current = Mid$(Current, 4000)
End If
'Add the new data to the buffer
Current = Current + Dta
NewData = True
StillHope = True
While StillHope And Len(Current) > RackSyncLen
Do
  SyncCandidate = Left$(Current, 4)
  Select Case SyncCandidate
    Case ShortTubeSync
    If Len(Current) >= ShortTubeByteLen + RackSyncLen + 2 Then
      If VerboseDiagnostics = True Then
        HexString = ""
        For iFor = 1 To ShortTubeByteLen + RackSyncLen + 2
          HexString = HexString & Right$("00" & Hex$(Asc(Mid$(Current, iFor, 1))), 2)
        Next iFor
        Print #2, "TubeSync: " & HexString
      End If
      'The string is long enough, look for delimiter
      nCRLF = InStr(Current, CRLF)
      If VerboseDiagnostics Then Print #2, "CRLF Position: " & Format$(nCRLF)
      If Mid$(Current, ShortTubeByteLen + RackSyncLen + 1, 2) = CRLF Then
        RackInSync = True
        DeviceData = Mid$(Current, RackSyncLen + 1, ShortTubeByteLen + 1)
        If VerboseDiagnostics Then Print #2, "shortTube found"
        DecomShortTube DeviceData
        'Remove the message from the buffer
        If Len(Current) > ShortTubeByteLen + RackSyncLen + 2 Then
          Current = Mid$(Current, ShortTubeByteLen + RackSyncLen + 3)
        Else
          Current = ""
        End If
        Exit Do
      Else
        'Although there are enough characters, there
        'is no delimeter here. So just delete the initial
        'character and look for sync again.
        If VerboseDiagnostics Then Print #2, "shortTubeSync with no delimeter"
        Current = Mid$(Current, 2)
        Exception "No Delimiter"
        Exit Do
      End If
    Else
      'There is a proper delimiter, but not a short enough
      'string, so here one must just wait.
      StillHope = False
      Exit Do
    End If
  Case LongTubeSync
    If Len(Current) >= LongTubeByteLen + RackSyncLen + 2 Then
      If VerboseDiagnostics = True Then
        HexString = ""
        For iFor = 1 To LongTubeByteLen + RackSyncLen + 2
          HexString = HexString & Right$("00" & Hex$(Asc(Mid$(Current, iFor, 1))), 2)
        Next iFor
        Print #2, "TubeSync: " & HexString
      End If
      'The string is long enough, look for delimiter
      nCRLF = InStr(Current, CRLF)
      If VerboseDiagnostics Then Print #2, "CRLF Position: " & Format$(nCRLF)
      If Mid$(Current, LongTubeByteLen + RackSyncLen + 1, 2) = CRLF Then
        RackInSync = True
        DeviceData = Mid$(Current, RackSyncLen + 1, LongTubeByteLen + 1)
        If VerboseDiagnostics Then Print #2, "LongTube found"
        DecomLongTube DeviceData
        'Remove the message from the buffer
        If Len(Current) > LongTubeByteLen + RackSyncLen + 2 Then
          Current = Mid$(Current, LongTubeByteLen + RackSyncLen + 3)
        Else
          Current = ""
        End If
        Exit Do
      Else
        'Although there are enough characters, there
        'is no delimeter here. So just delete the initial
        'character and look for sync again.
        If VerboseDiagnostics Then Print #2, "LongTubeSync with no delimeter"
        Current = Mid$(Current, 2)
        Exception "No Delimiter"
        Exit Do
      End If
    Else
      'There is a proper delimiter, but not a long enough
      'string, so here one must just wait.
      StillHope = False
      Exit Do
    End If
  Case NgrTubeSync
    If Len(Current) >= NgrTubeByteLen + RackSyncLen + 2 Then
      'The string is long enough, look for delimiter
      If Mid$(Current, NgrTubeByteLen + RackSyncLen + 1, 2) = CRLF Then
        RackInSync = True
        TubeB64 = Mid$(Current, RackSyncLen + 1, NgrTubeByteLen)
        TubeHex = ""
        'Print #2, "TubeB64: " & TubeB64
        For iFor = 1 To 51
          TubeHex = TubeHex & B64toHex(Mid$(TubeB64, 4 * (iFor - 1) + 1, 4))
        Next iFor
        If VerboseDiagnostics = True Then
          Print #2, "NgrTubeSync: " & TubeHex
        End If
        NgrDecomTube TubeHex
        'Remove the message from the buffer
        If Len(Current) > NgrTubeByteLen + RackSyncLen + 2 Then
          Current = Mid$(Current, NgrTubeByteLen + RackSyncLen + 3)
        Else
          Current = ""
        End If
        Exit Do
      Else
        'Although there are enough characters, there
        'is no delimeter here. So just delete the initial
        'character and look for sync again.
        Current = Mid$(Current, 2)
        Exception "No Delimiter"
        Exit Do
      End If
    Else
      'There is a proper delimiter, but not a long enough
      'string, so here one must just wait.
      StillHope = False
      Exit Do
    End If
 Case CtrSync
    If Len(Current) >= CtrByteLen + RackSyncLen + 2 Then
      'The string is long enough, look for delimiter
      If Mid$(Current, CtrByteLen + RackSyncLen + 1, 2) = CRLF Then
        RackInSync = True
        DeviceData = Mid$(Current, RackSyncLen + 1, CtrByteLen)
        If RecordAbsoluteTiming Then Print #10, "CtrSync"
        If VerboseDiagnostics = True Then
          HexString = ""
          For iFor = 1 To CtrByteLen
            HexString = HexString & Right$("00" & Hex$(Asc(Mid$(Current, RackSyncLen + iFor, 1))), 2)
          Next iFor
          Print #2, "CtrSync: " & HexString
        End If
        DecomCtrIO DeviceData
        ResetSent = False
        'Remove the message from the buffer
        If Len(Current) > CtrByteLen + RackSyncLen + 2 Then
          Current = Mid$(Current, CtrByteLen + RackSyncLen + 3)
        Else
          Current = ""
        End If
        Exit Do
      Else
        'Although there are enough characters, there
        'is no delimeter here. So just delete the initial
        'character and look for sync again.
        Current = Mid$(Current, 2)
        Exception "No Delimiter"
        Exit Do
      End If
    Else
      'There is a proper delimiter, but not a long enough
      'string, so here one must just wait.
      StillHope = False
      Exit Do
    End If
  Case NgrCtrSync
    If Len(Current) >= NgrCtrByteLen + RackSyncLen + 2 Then
      'The string is long enough, look for delimiter
      If Mid$(Current, NgrCtrByteLen + RackSyncLen + 1, 2) = CRLF Then
        RackInSync = True
        CtrB64 = Mid$(Current, RackSyncLen + 1, NgrCtrByteLen)
        CtrHex = ""
        'Print #2, "CtrB64: " & CtrB64
        For iFor = 1 To 51
          CtrHex = CtrHex & B64toHex(Mid$(CtrB64, 4 * (iFor - 1) + 1, 4))
        Next iFor
        If VerboseDiagnostics = True Then
          Print #2, "NgrCtrSync: " & CtrHex
        End If
        NgrDecomCtrIO CtrHex
        ResetSent = False
        'Remove the message from the buffer
        If Len(Current) > NgrCtrByteLen + RackSyncLen + 2 Then
          Current = Mid$(Current, NgrCtrByteLen + RackSyncLen + 3)
        Else
          Current = ""
        End If
        Exit Do
      Else
        'Although there are enough characters, there
        'is no delimeter here. So just delete the initial
        'character and look for sync again.
        Current = Mid$(Current, 2)
        Exception "No Delimiter"
        Exit Do
      End If
    Else
      'There is a proper delimiter, but not a long enough
      'string, so here one must just wait.
      StillHope = False
      Exit Do
    End If
  Case NgrErrorSyncA
    If Len(Current) >= NgrErrorByteLenA + RackSyncLen + 2 Then
      'The string is long enough, look for delimiter
      If Mid$(Current, NgrErrorByteLenA + RackSyncLen + 1, 2) = CRLF Then
        RackInSync = True
        ErrB64 = Mid$(Current, RackSyncLen + 1, NgrErrorByteLenA)
        ErrHex = ""
        'Print #2, "ErrB64: " & ErrB64
        For iFor = 1 To 2
          ErrHex = ErrHex & B64toHex(Mid$(ErrB64, 4 * (iFor - 1) + 1, 4))
        Next iFor
        If VerboseDiagnostics = True Then
          Print #2, "NgrErrSync: " & ErrHex
        End If
        Exception "NGR A Error: " & ErrHex
        LogEntry "NGR A Error: " & ErrHex
        If VerboseDiagnostics = True Then
          Print #2, "NGR A ErrorSync: " & ErrHex
        End If
        'Remove the message from the buffer
        If Len(Current) > NgrErrorByteLenA + RackSyncLen + 2 Then
          Current = Mid$(Current, NgrErrorByteLenA + RackSyncLen + 3)
        Else
          Current = ""
        End If
        Exit Do
      Else
        'Although there are enough characters, there
        'is no delimeter here. So just delete the initial
        'character and look for sync again.
        Current = Mid$(Current, 2)
        Exception "No Delimiter"
        Exit Do
      End If
    Else
      'There is a proper delimiter, but not a long enough
      'string, so here one must just wait.
      StillHope = False
      Exit Do
    End If
  Case DoneSync
    If Len(Current) >= DoneByteLen + RackSyncLen + 2 Then
      'The string is long enough, look for delimiter
      If Mid$(Current, DoneByteLen + RackSyncLen + 1, 2) = CRLF Then
        RackInSync = True
        'This is a valid Done indicator
        'Count it
        If VerboseDiagnostics = True Then Print #2, "DoneSync"
        If RecordAbsoluteTiming Then Print #10, "DoneSync"
        DoneMessageCount = DoneMessageCount + 1
        frmHouse.lblDoneCount.Caption = Format$(DoneMessageCount)
        'Remove the message from the buffer
        If Len(Current) > DoneByteLen + RackSyncLen + 2 Then
          Current = Mid$(Current, DoneByteLen + RackSyncLen + 3)
        Else
          Current = ""
        End If
        Exit Do
      Else
        'Although there are enough characters, there
        'is no delimeter here. So just delete the initial
        'character and look for sync again.
        Current = Mid$(Current, 2)
        Exception "No Delimiter"
        Exit Do
      End If
    Else
      'There is a proper delimiter, but not a long enough
      'string, so here one must just wait.
      StillHope = False
      Exit Do
    End If
  Case NgrDoneSync
    If Len(Current) >= NgrDoneByteLen + RackSyncLen + 2 Then
      RackInSync = True
      'The string is long enough, look for delimiter
      If Mid$(Current, NgrDoneByteLen + RackSyncLen + 1, 2) = CRLF Then
        'This is a valid Done indicator
        'Count it
        If VerboseDiagnostics = True Then
          Print #2, "NgrDoneSync"
        End If
        DoneMessageCount = DoneMessageCount + 1
        frmHouse.lblDoneCount.Caption = Format$(DoneMessageCount)
        SendCommand CmdAcknowledge
        'Remove the message from the buffer
        If Len(Current) > NgrDoneByteLen + RackSyncLen + 2 Then
          Current = Mid$(Current, NgrDoneByteLen + RackSyncLen + 3)
        Else
          Current = ""
        End If
        Exit Do
      Else
        'Although there are enough characters, there
        'is no delimeter here. So just delete the initial
        'character and look for sync again.
        Current = Mid$(Current, 2)
        Exception "No Delimiter"
        Exit Do
      End If
    Else
      'There is a proper delimiter, but not a long enough
      'string, so here one must just wait.
      StillHope = False
      Exit Do
    End If
  Case NgrGPSSync
    If Len(Current) >= NgrGPSByteLen + RackSyncLen + 2 Then
      'Print #2, "Current NgrGPSSync: " & Current
      'The string is long enough, look for delimiter
      If Mid$(Current, NgrGPSByteLen + RackSyncLen + 1, 2) = CRLF Then
        RackInSync = True
        'This is a valid transmission from the GPS Master
        GPSB64 = Mid$(Current, RackSyncLen + 1, NgrGPSByteLen)
        GPSString = ""
        GPSHex = ""
        'Print #2, "GPSB64: " & GPSB64
        For iFor = 1 To 16
          GPSHex = GPSHex & B64toHex(Mid$(GPSB64, 4 * (iFor - 1) + 1, 4))
        Next iFor
        If VerboseDiagnostics = True Then
          Print #2, "NgrGPSSync: " & GPSHex
        End If
        'The Ngr Readout combines the old GPS2 (SYNC) and GPS1 (LGPS)
        'This section of code derives from GPS2
        NgrGPSMessageCount = NgrGPSMessageCount + 1
        frmHouse.lblnGPSSync(1).Caption = Format$(NgrGPSMessageCount)
        GPSSyncSecond = CInt("&H" & Left$(GPSHex, 2))
        If Mid$(GPSHex, 3, 2) = "30" Then
          GPSFresh = False
          frmHouse.lblGPSSync.Caption = Format$(GPSSyncSecond) & " " & "Stale"
        Else
          GPSFresh = True
          frmHouse.lblGPSSync.Caption = Format$(GPSSyncSecond) & " " & "Fresh"
        End If
        'This section of code derives from GPS1
        For iFor = 1 To 44
          GPSString = GPSString & Chr$(CInt("&H" & Mid$(GPSHex, 2 * (iFor - 1) + 5, 2)))
        Next iFor
        If VerboseDiagnostics = True Then
          Print #2, "GPSString: " & GPSString
        End If
        If Left$(GPSString, 7) = "$GPGGA," Then
          'This is a proper GPS message
          lblLatestGPS.Caption = Mid$(GPSString, 8, GPS1ByteLen - 7) + " at " + Format$(CurTime, "yy/mm/dd hh:mm:ss")
          ShowRackGPSData Mid$(GPSString, 8, GPS1ByteLen - 7)
        End If
        'Remove the message from the buffer
        If Len(Current) > NgrGPSByteLen + RackSyncLen + 2 Then
          Current = Mid$(Current, NgrGPSByteLen + RackSyncLen + 3)
        Else
          Current = ""
        End If
        Exit Do
      Else
        'Although there are enough characters, there
        'is no delimeter here. So just delete the initial
        'character and look for sync again.
        If VerboseDiagnostics = True Then
          Print #2, "No Delimiter on NgrGPS: " & Current
        End If
        Current = Mid$(Current, 2)
        Exception "No Delimiter on NgrGPS"
        Exit Do
      End If
    Else
      'There is a proper delimiter, but not a long enough
      'string, so here one must just wait.
      StillHope = False
      Exit Do
    End If
  Case GPSSync
    'The GPS readout is formatted as two independent records,
    'but they always appear together, so treat this as one record.
    If Len(Current) >= GPSByteLen + RackSyncLen + 2 Then
      'The string is long enough, look for delimiter
      If Mid$(Current, GPSByteLen + RackSyncLen + 1, 2) = CRLF Then
        RackInSync = True
        GPSSyncSecond = Asc(Mid$(Current, RackSyncLen + 1, 1))
        GPSSyncCode = Asc(Mid$(Current, RackSyncLen + 2, 1))
        HexString = Right$("00" & Hex$(GPSSyncSecond), 2)
        HexString = HexString & Right$("00" & Hex$(GPSSyncCode), 2)
        If RecordAbsoluteTiming Then Print #10, "GPS2Sync: " & HexString & " " & Format$(Asc(Mid$(Current, RackSyncLen + 1, 1)))
        frmHouse.lblnGPSSync(0).Caption = Format$(GPSStatistics(0))
        If GPSSyncCode = 49 Then
          GPSFresh = True
          frmHouse.lblGPSSync.Caption = Format$(GPSSyncSecond) & " " & "Fresh"
        Else
          GPSFresh = False
          frmHouse.lblGPSSync.Caption = Format$(GPSSyncSecond) & " " & "Stale"
        End If
        GPSString = Mid$(Current, RackSyncLen + GPS2ByteLen + 7, GPS1ByteLen)
        If RecordAbsoluteTiming Then Print #10, "GPS1Sync: " & GPSString
        GPSDiagnoseString = "GPSSync: " & HexString & " " & GPSString & " at " & CurTimTag
        'This is a valid transmission from the GPS Master
'       $GPGGA,123519,4807.038,N,01131.000,E,1,08,0.9,545.4,M,46.9,M,,*47
'
'       Where:
'         GGA          Global Positioning System Fix Data
'         123519       Fix taken at 12:35:19 UTC
'         4807.038,N   Latitude 48 deg 07.038' N
'         01131.000,E  Longitude 11 deg 31.000' E
'         1            Fix quality:
'                        0 = invalid
'                        1 = GPS fix (SPS)
'                        2 = DGPS fix
'                        3 = PPS fix
'                        4 = Real Time Kinematic
'                        5 = Float RTK
'                        6 = estimated (dead reckoning) (2.3 feature)
'                        7 = Manual input mode
'                        8 = Simulation mode
'         08           Number of satellites being tracked
'         0.9          Horizontal dilution of position
'         545.4,M      Altitude, Meters, above mean sea level
'         46.9,M       Height of geoid (mean sea level) above WGS84
'                      ellipsoid
'         (empty field) time in seconds since last DGPS update
'         (empty field) DGPS station ID number
'         *47          the checksum data, always begins with *
'         Carriage Return
'         Line Feed
        If Left$(GPSString, 7) = "$GPGGA," Then
           LatestFullGPS = GPSString
          'The transmission has the identifier of a GPS fix sentence, parse it:
          LastGGA = Mid$(GPSString, 8, GPS1ByteLen - 7)
          lblLatestGPS.Caption = LastGGA + " at " + Format$(CurTime, "yy/mm/dd hh:mm:ss")
          If InStr(LastGGA, ",,,") = 0 Then
            'This record contains a fix
            'Extract and display the time
            lblGPSGMT.Caption = Left$(LastGGA, 2) + ":" + Mid$(LastGGA, 3, 2) + ":" + Mid$(LastGGA, 5, 2)
            GPSHourRead = CInt(Left$(LastGGA, 2))
            GPSMinuteRead = CInt(Mid$(LastGGA, 3, 2))
            GPSSecondRead = CInt(Mid$(LastGGA, 5, 2))
            GPSGMTRead = Left$(LastGGA, 2) + ":" + Mid$(LastGGA, 3, 2) + ":" + Mid$(LastGGA, 5, 2)
            'Extract and format the latitude
            nCom = InStr(LastGGA, ",")
            Parse = Mid$(LastGGA, nCom + 1)
            nCom = InStr(Parse, ",")
            GPSLatRead = Left$(Parse, nCom - 1)
            nLen = Len(GPSLatRead)
            GPSLatRead = Left$(GPSLatRead, nLen - 7) + " " + Right$(GPSLatRead, 7)
            Parse = Mid$(Parse, nCom + 1)
            nCom = InStr(Parse, ",")
            GPSLatRead = GPSLatRead & " " + Left$(Parse, 1)
            'Extract and format the longitude
            Parse = Mid$(Parse, nCom + 1)
            nCom = InStr(Parse, ",")
            GPSLonRead = Left$(Parse, nCom - 1)
            nLen = Len(GPSLonRead)
            GPSLonRead = Left$(GPSLonRead, nLen - 7) + " " + Right$(GPSLonRead, 7)
            Parse = Mid$(Parse, nCom + 1)
            nCom = InStr(Parse, ",")
            GPSLonRead = GPSLonRead & " " & Left$(Parse, 1)
            'Extract the quality indicator
            Parse = Mid$(Parse, nCom + 1)
            nCom = InStr(Parse, ",")
            GPSQualityRead = CInt(Mid$(Parse, nCom - 1, 1))
            lblGPSQualityRead.Caption = Format$(GPSQualityRead)
            'Extract the number of satellites seen
            Parse = Mid$(Parse, nCom + 1)
            nCom = InStr(Parse, ",")
            GPSNumSatRead = Left$(Parse, nCom - 1)
            If GPSTimeSyncEnable And GPSFresh And (GPSQualityRead = 1) Then
              'Set the computer system time to the GPS time
              If (GPSSecondRead = 35) And ((GPSMinuteRead = 5) Or (GPSMinuteRead = 35)) Then
                Time = lblGPSGMT.Caption
                LogEntry "Setting computer system time from GPS: " & lblGPSGMT.Caption
              End If
            End If
          End If
        End If
        'The "fresh" indicator requires a new GPGGA record with a quality of 1
        'Actually, new records with a quality of 6 should be just as good
        'Records with quality 0 seem OK if the time is changing
        'Unfortunately, the GPS master apparently can transmit an old GPGGA record at any time.
        'Hence we require a sequence of fresh times to consider this a valid time
        If GPSFresh Or (GPSSecond <> GPSSecondRead) Then
          If GPSFresh Then
            GPSStatistics(0) = GPSStatistics(0) + 1
            FreshCount = FreshCount + 1
            If FreshCount > 5 Then FreshCount = 5
          Else
            FreshCount = 0
            If GPSQualityRead = 6 Then GPSStatistics(1) = GPSStatistics(1) + 1
            If GPSQualityRead = 0 Then GPSStatistics(2) = GPSStatistics(2) + 1
          End If
        Else
          'There was a one second pulse, but no valid time
          FreshCount = 0
          GPSStatistics(3) = GPSStatistics(3) + 1
        End If
        If FreshCount >= 5 Then
          GPSDiagnoseString = GPSDiagnoseString & " GPS Time "
          GPSSecond = GPSSecondRead
          GPSMinute = GPSMinuteRead
          GPSHour = GPSHourRead
          lblGPSHourRead.Caption = Format$(GPSHourRead)
          lblGPSMinuteRead.Caption = Format$(GPSMinuteRead)
          lblGPSSecondRead.Caption = Format$(GPSSecondRead)
          lblGPSGMT.Caption = GPSGMTRead
          lblGPSComTime.Caption = CurTimTag
          lblGPSLat.Caption = GPSLatRead
          lblGPSLong.Caption = GPSLonRead
          lblGPSNumSat.Caption = GPSNumSatRead
          lblGPSQual = GPSQualityRead
        Else
          GPSDiagnoseString = GPSDiagnoseString & " Increment Time "
          'Just increment the time and hope
          GPSSecond = GPSSecond + 1
          If GPSSecond > 59 Then
            GPSSecond = 0
            GPSMinute = GPSMinute + 1
            If GPSMinute > 59 Then
              GPSMinute = 0
              GPSHour = GPSHour + 1
              If GPSHour > 23 Then
                GPSHour = 0
              End If
            End If
          End If
        End If
        GPSDiagnoseString = GPSDiagnoseString & " " & Format$(FreshCount)
        GPSDiagnoseString = GPSDiagnoseString & " " & Format$(GPSFresh)
        GPSDiagnoseString = GPSDiagnoseString & " " & Format$(GPSSyncSecond) & " " & Format$(GPSSyncCode)
        GPSDiagnoseString = GPSDiagnoseString & " " & Format$(GPSHour) & " " & Format$(GPSMinute) & " " & Format$(GPSSecond)
        'Notify the timer that the GPS is active
        SinceGPS = 0
        'Use the GPS time as the sequence time if selected.
        If Not SequenceTimeSystem Then
          SequenceSecond = GPSSecond
          SequenceMinute = GPSMinute
          SequenceHour = GPSHour
          If lblSequenceTimeActual.Caption <> "GPS" Then
            LogEntry "GPS controls sequence time"
          End If
          lblSequenceTimeActual.Caption = "GPS"
          GPSDiagnoseString = GPSDiagnoseString & " " & Format$(SequenceHour) & " " & Format$(SequenceMinute) & " " & Format$(SequenceSecond)
          GPSSentenceHistoryRing(GPSSentenceHistoryRingPointer) = GPSDiagnoseString
          GPSSentenceHistoryRingPointer = (GPSSentenceHistoryRingPointer + 1) Mod 20
          LogicalSecond
        Else
          GPSDiagnoseString = GPSDiagnoseString & " " & Format$(SequenceHour) & " " & Format$(SequenceMinute) & " " & Format$(SequenceSecond)
          GPSSentenceHistoryRing(GPSSentenceHistoryRingPointer) = GPSDiagnoseString
          GPSSentenceHistoryRingPointer = (GPSSentenceHistoryRingPointer + 1) Mod 20
        End If
        If VerboseDiagnostics Or DiagnoseGPS Then Print #2, GPSDiagnoseString
        'Remove the message from the buffer
        If Len(Current) > GPSByteLen + RackSyncLen + 2 Then
          Current = Mid$(Current, GPSByteLen + RackSyncLen + 3)
        Else
          Current = ""
        End If
        Exit Do
      Else
        'Although there are enough characters, there
        'is no delimeter here. So just delete the initial
        'character and look for sync again.
        Current = Mid$(Current, 2)
        Exception "No Delimiter"
        Exit Do
      End If
    Else
      'There is a proper delimiter, but not a long enough
      'string, so here one must just wait.
      StillHope = False
      Exit Do
    End If
    Case NgrCommandSyncA
    If Len(Current) >= NgrCommandByteLenA + RackSyncLen + 2 Then
      'The string is long enough, look for delimiter
      If Mid$(Current, NgrCommandByteLenA + RackSyncLen + 1, 2) = CRLF Then
        'This is a valid command message from Readout A
        RackInSync = True
        CommandA = Mid$(Current, RackSyncLen + 1, NgrCommandByteLenA)
        If VerboseDiagnostics = True Then
          Print #2, "NgrCommandA: " & CommandA
        End If
        lblCommandSeenTime.Caption = Format(CurTime, "yy/mm/dd hh:mm:ss")
        lblCommandSeen.Caption = CommandA
        If InStr(CommandA, "Ackn") = 0 Then LogEntry "NgrCommandA: " & CommandA
        If Len(Current) > GPS2ByteLen + RackSyncLen + 2 Then
          Current = Mid$(Current, NgrCommandByteLenA + RackSyncLen + 3)
        Else
          Current = ""
        End If
        Exit Do
      Else
        'Although there are enough characters, there
        'is no delimeter here. So just delete the initial
        'character and look for sync again.
        Current = Mid$(Current, 2)
        Exception "No Delimiter"
        Exit Do
      End If
    Else
      'There is a proper delimiter, but not a long enough
      'string, so here one must just wait.
      StillHope = False
      Exit Do
    End If
Case NgrMessageSyncA
    If Len(Current) >= NgrMessageByteLenA + RackSyncLen + 2 Then
      'The string is long enough, look for delimiter
      If Mid$(Current, NgrMessageByteLenA + RackSyncLen + 1, 2) = CRLF Then
        RackInSync = True
        'This is a valid message from Readout A
        If VerboseDiagnostics = True Then
          Print #2, "NgrMessageSyncA: " & Mid$(Current, RackSyncLen + 1, NgrMessageByteLenA)
        End If
        RdoAMessage = Mid$(Current, RackSyncLen + 1, NgrMessageByteLenA)
        HandleRdoAMessage RdoAMessage
        If Len(Current) > NgrMessageByteLenA + RackSyncLen + 2 Then
          Current = Mid$(Current, NgrMessageByteLenA + RackSyncLen + 3)
        Else
          Current = ""
        End If
        Exit Do
      Else
        'Although there are enough characters, there
        'is no delimeter here. So just delete the initial
        'character and look for sync again.
        Current = Mid$(Current, 2)
        Exception "No Delimiter"
        Exit Do
      End If
    Else
      'There is a proper delimiter, but not a long enough
      'string, so here one must just wait.
      StillHope = False
      Exit Do
    End If
Case NgrMessageSyncB
    If Len(Current) >= NgrMessageByteLenB + RackSyncLen + 2 Then
      'The string is long enough, look for delimiter
      If Mid$(Current, NgrMessageByteLenB + RackSyncLen + 1, 2) = CRLF Then
        RackInSync = True
        'This is a valid message from Readout B
        If VerboseDiagnostics = True Then
          Print #2, "NgrMessageSyncB: " & Mid$(Current, RackSyncLen + 1, NgrMessageByteLenB)
        End If
        RdoBMessage = Mid$(Current, RackSyncLen + 1, NgrMessageByteLenB)
        HandleRdoBMessage RdoBMessage
        If Len(Current) > NgrMessageByteLenB + RackSyncLen + 2 Then
          Current = Mid$(Current, NgrMessageByteLenB + RackSyncLen + 3)
        Else
          Current = ""
        End If
        Exit Do
      Else
        'Although there are enough characters, there
        'is no delimeter here. So just delete the initial
        'character and look for sync again.
        Current = Mid$(Current, 2)
        Exception "No Delimiter"
        Exit Do
      End If
    Else
      'There is a proper delimiter, but not a long enough
      'string, so here one must just wait.
      StillHope = False
      Exit Do
    End If
  Case Else
    If VerboseDiagnostics = True Then
      HexString = ""
      For iFor = 1 To Len(Current)
        HexString = HexString & Right$("00" & Hex$(Asc(Mid$(Current, iFor, 1))), 2)
      Next iFor
      Print #2, "Case Else: " & HexString
    End If
    ReportString = ""
    For iFor = 1 To Len(SyncCandidate)
      ReportString = ReportString & Right$("00" & Hex$(Asc(Mid$(SyncCandidate, iFor, 1))), 2)
    Next iFor
    If RackInSync Then Exception "No Sync: /" + ReportString + "/"
    RackInSync = False
    If VerboseDiagnostics And NewData Then
      Print #2, "NoSync Candidate: /" + ReportString + "/"
      ReportString = ""
      For iFor = 1 To Len(Current)
        ReportString = ReportString & Right$("00" & Hex$(Asc(Mid$(Current, iFor, 1))), 2)
      Next iFor
      Print #2, "NoSync Current: " & ReportString
      NewData = False
    End If
    Current = Mid$(Current, 2)
    Exit Do
  End Select
Loop
Wend
frmHouse.lblNCurrent(1).Caption = Format(Len(Current), "0")
End Sub



Private Sub Form_Unload(Cancel As Integer)
LogEntry "Program Closing"
End
End Sub




Private Sub lblAutoRebootEnable_Click()
If AutoRebootEnable = True Then
  AutoRebootEnable = False
  lblAutoRebootEnable.Caption = "Auto Reboot Disabled"
  lblAutoRebootEnable.BackColor = ColorRed
Else
  AutoRebootEnable = True
  lblAutoRebootEnable.Caption = "Auto Reboot Enabled"
  lblAutoRebootEnable.BackColor = ColorGreen
End If
End Sub

Private Sub lblEmailDay_Click()
If EmailDay = True Then
  EmailDay = False
  lblEmailDay.Caption = "No"
  lblEmailDay.BackColor = ColorRed
Else
  EmailDay = True
  lblEmailDay.Caption = "Yes"
  lblEmailDay.BackColor = ColorGreen
End If
End Sub

Private Sub lblEmailHourHist_Click()
If EmailHourHist = True Then
  EmailHourHist = False
  lblEmailHourHist.Caption = "No"
  lblEmailHourHist.BackColor = ColorRed
Else
  EmailHourHist = True
  lblEmailHourHist.Caption = "Yes"
  lblEmailHourHist.BackColor = ColorGreen
End If
End Sub

Private Sub lblEmailSSE_Click()
If EmailSSE = True Then
  EmailSSE = False
  lblEmailSSE.Caption = "No"
  lblEmailSSE.BackColor = ColorRed
Else
  EmailSSE = True
  lblEmailSSE.Caption = "Yes"
  lblEmailSSE.BackColor = ColorGreen
End If
End Sub

Private Sub lblGPSTimeSyncEnable_Click()
If GPSTimeSyncEnable = True Then
  GPSTimeSyncEnable = False
  lblGPSTimeSyncEnable.Caption = "Inherent"
  SinceGPS = 3
Else
  GPSTimeSyncEnable = True
  lblGPSTimeSyncEnable.Caption = "GPS"
  SinceGPS = 3
End If
End Sub


Private Sub lblLocalQuicklookEnable_Click()
If lblLocalQuicklookEnable.Caption = "NOSET" Then
  LocalQuicklookOpen = False
ElseIf lblLocalQuicklookEnable.Caption = "ON" Then
  lblLocalQuicklookEnable.Caption = "OFF"
  Select Case comLocalQuicklook.PortOpen
  Case False
    Exception "PSI Port Already Closed"
  Case Else
    'comLocalQuicklook.Output = "*" + Chr$(10) + Chr$(13)
    comLocalQuicklook.PortOpen = False
    LocalQuicklookOpen = False
    lblLastLocalQuicklook.Caption = "Closed"
    lblLocalQuicklookEnable.BackColor = ColorRed
  End Select
Else
  lblLocalQuicklookEnable.Caption = "ON"
  Select Case comLocalQuicklook.PortOpen
  Case True
    Exception "PSI Port Already Open"
  Case Else
    comLocalQuicklook.PortOpen = True
    LocalQuicklookOpen = True
    'comLocalQuicklook.Output = "*0199P4" + Chr$(10) + Chr$(13)
    lblLastLocalQuicklook.Caption = "Open"
    lblLocalQuicklookEnable.BackColor = ColorGreen
  End Select
End If
End Sub

Private Sub lblPortStallEnable_Click()
If PortStallEnable = True Then
  PortStallEnable = False
  lblPortStallEnable.Caption = "Port Stall Cycle Disabled"
  lblPortStallEnable.BackColor = ColorRed
Else
  PortStallEnable = True
  lblPortStallEnable.Caption = "Port Stall Cycle Enabled"
  lblPortStallEnable.BackColor = ColorGreen
End If
End Sub

Private Sub lblSequenceTimeSource_Click()
If SequenceTimeSystem = True Then
  SequenceTimeSystem = False
  lblSequenceTimeSource.Caption = "GPS"
  LogEntry "Sequence Time from GPS"
Else
  SequenceTimeSystem = True
  lblSequenceTimeSource.Caption = "System"
  LogEntry "Sequence Time from System"
End If
End Sub

Private Sub lblVerboseDiagnostics_Click()
If lblVerboseDiagnostics.BackColor = ColorGreen Then
  lblVerboseDiagnostics.BackColor = ColorRed
  VerboseDiagnostics = True
  lblVerboseDiagnostics.Caption = "Verbose"
Else
  lblVerboseDiagnostics.BackColor = ColorGreen
  VerboseDiagnostics = False
  lblVerboseDiagnostics.Caption = "Normal"
End If
End Sub

Private Static Sub Timer1_Timer()
'Most operations are controlled by the computer clock,
'however it sometimes misses a beat. Therefore there is
'a provision to execute some operations whenever a sync
'appears in the datastream from the GPS. If for some reason
'this does not appear, then the computer clock is used.
'All of this is contained in the routine "LogicalSecond"
'Dim CurHist As Integer
'Dim CurValue As Single
Dim ErrorCode As Integer
Dim PrevMin As Integer
Dim PrevHour As Integer
Dim Temp As Double
Dim I As Integer
Dim II As Integer
Dim J As Integer
Dim iDq As Integer
Dim nUnit As Integer
Dim nMult As Integer
Dim nControl As Integer
Dim NewDay As Boolean
Dim iFor As Integer
Dim jFor As Integer
If (FreshException > 0) Then
  Print #2, Format$(FreshException) & " Exception(s), Latest: " + lblException(0).Caption + " " + lblException(1).Caption
End If
FreshException = 0
'Check to see that at least some remote units are reporting
If RemoteSeen Then
  MiRead = MiRead + 1
  RemoteSeen = False
End If
' Show the current time and parse it for control
CurTime = Now
CurDayTimTag = Format(CurTime, "yy/mm/dd hh:mm:ss")
CurTimTag = Format(CurTime, "hh:mm:ss")
CurYear = Val(Format(CurTime, "yyyy"))
CurMonth = Val(Format(CurTime, "mm"))
CurDay = Val(Format(CurTime, "dd"))
CurHour = Val(Format(CurTime, "hh"))
CurMin = Val(Format(CurTime, "nn"))
CurSec = Val(Format(CurTime, "ss"))
CurDOY = DayOfYear(CurMonth, CurDay, CurYear)
lblComputerTime.Caption = CurDayTimTag
' Check for a date change
If CurDate <> Format(CurTime, "yy_mm_dd") Then
  'Switch data files
  CurDate = Format(CurTime, "yy_mm_dd")
  Close #2
  MinuteFileName = MinuteDirectory + StationID + "_" + CurDate + ".DAT"
  If fso.FileExists(MinuteFileName) Then
    Open MinuteFileName For Append As #2
  Else
    Open MinuteFileName For Output As #2
    Print #2, "From: LandBase"
    Print #2, "To: Cosray"
    Print #2, "Subject: " & MinuteFileName
    Print #2,
    If StationNoteExists Then Print #2, "Note: " & StationNote
  End If
  Close #10
  TimingFileName = TimingDirectory + StationID + "_" + CurDate + ".TIM"
  If RecordAbsoluteTiming Then
    If fso.FileExists(TimingFileName) Then
      Open TimingFileName For Append As #10
    Else
      Open TimingFileName For Output As #10
      Print #10, "From: LandBase"
      Print #10, "To: Cosray"
      Print #10, "Subject: " & TimingFileName
      Print #10,
      If StationNoteExists Then Print #10, "Note: " & StationNote
    End If
  End If
  On Error GoTo NoStick
  If UseMemStick Then
    Close #6
    StickFileName = MemStickDrive & ":\" & StationID & "_" & CurDate & ".DAT"
    Open StickFileName For Append As #6
  End If
NoStick:
  On Error GoTo 0
  LogEntry "Date Change: " + lblComputerTime.Caption
  LogEntry "Program: " & lblSoftVersion & " Modified at: " & lblSoftLocation & " "
  'Update the current file name and
  'add an entry to the Hour File
  'with housekeeping
  HourFileName = HourDirectory + StationID + "_" + CurDate + ".LOG"
  If fso.FileExists(HourFileName) Then
    Open HourFileName For Append As #3
  Else
    Open HourFileName For Output As #3
    Print #3, "From: LandBase"
    Print #3, "To: Cosray"
    Print #3, "Subject: " & HourFileName
    Print #3,
    If StationNoteExists Then Print #3, "Note: " & StationNote
  End If
  Print #3, "Date Change: " + lblComputerTime.Caption
  Print #3, "Program: " & lblSoftVersion & " Modified at: " & lblSoftLocation & " "
  Close #3
  'Generate a name for the general histogram file
  'This is used for dumping specific histograms in real time
  'The daily and hourly histogram dumps generate their own file names
  HistogramFileName = HistogramDirectory + StationID + "_" + CurDate + ".HIS"
  'Allow deferral of some new day actions.
  NewDay = True
End If
' Once per second
'To minimize interference with sending SSE e-mails the daily file
'is sent about 30 seconds after a minute boundary
If ClearToSendDay And (CurSec > 25) And (CurSec < 35) Then
  btnSendDay_Click
  ClearToSendDay = False
End If
lblSinceGPS.Caption = Format$(SinceGPS)
If GPSTimeSyncEnable Then
  If SinceGPS > 2 Then
    If lblTimeSyncSource.Caption <> "System" Then
      lblTimeSyncSource.BackColor = ColorRed
      lblTimeSyncSource.Caption = "System"
    End If
  Else
    If lblTimeSyncSource.Caption <> "GPS" Then
      lblTimeSyncSource.BackColor = ColorGreen
      lblTimeSyncSource.Caption = "GPS"
    End If
  End If
Else
  lblTimeSyncSource.BackColor = ColorGreen
  lblTimeSyncSource.Caption = "System"
End If
If SequenceTimeSystem Then
  'The system time controls the sequence time unconditionally
  SequenceSecond = CurSec
  SequenceMinute = CurMin
  SequenceHour = CurHour
  lblSequenceTimeActual.Caption = "SYS"
  LogicalSecond
Else
  'If there is no indication that the GPS is working, then
  'the system steps in and begins generating a sequence time.
  'Note that if the host computer is not set to GMT this will
  'cause some strange stuff. However the system always controls
  'the date change, so files will continue to be updated and the
  'records will be monotonically labelled with the system time.
  If SinceGPS > 4 Then
    SequenceSecond = CurSec
    SequenceMinute = CurMin
    SequenceHour = CurHour
    If lblSequenceTimeActual.Caption <> "SYS" Then
      LogEntry "System overriding GPS"
    End If
    lblSequenceTimeActual.Caption = "SYS"
    LogicalSecond
  End If
End If
SinceGPS = SinceGPS + 1
If PortStallEnable And (nSecRead < 20) Then
  If (PortStallCount = 0) Then
    btnRackOnOff.Caption = "Main Data Off"
    Exception "Input stall -- Closing Port"
    Select Case frmMonitor.comRack.PortOpen
    Case False
      Exception "Main Data Port Already Closed"
    Case Else
      frmMonitor.comRack.RThreshold = 0
      frmMonitor.comRack.InBufferCount = 0
      frmMonitor.comRack.PortOpen = False
    End Select
    PortStallCount = 1
  Else
    PortStallCount = PortStallCount + 1
    If PortStallCount > 5 Then
      nOpenAttempts = nOpenAttempts + 1
      btnRackOnOff.Caption = "Main Data On"
      Select Case frmMonitor.comRack.PortOpen
      Case True
        Exception "Main Data Port Already Open"
      Case Else
        On Error GoTo Shutsys
        frmMonitor.comRack.PortOpen = True
        frmMonitor.comRack.InBufferCount = 0
        frmMonitor.comRack.RThreshold = 1
        IgnoreCounter = True
        On Error GoTo 0
      End Select
      PortStallCount = 0
    End If
  End If
Else
  PortStallCount = 0
  nOpenAttempts = 0
End If
lblPortStallCount.Caption = Format$(PortStallCount)
lblOpenAttempts.Caption = nOpenAttempts
If nOpenAttempts > 3 Then
  LogEntry "Too Many Port Open Attempts Force Restart"
  btnReStart_Click
End If
GoTo NoShutSys
Shutsys:
If AutoRebootEnable Then
  LogEntry "Port Open error forced computer reboot!!!"
  btnReBoot_Click
Else
  LogEntry "Port Open error, reboot disabled"
End If
NoShutSys:
nSecRead = 0
frmHouse.lblSecRead.Caption = Format$(nSecRead, "0")
If AnimateMonitorSeries Then
  GraphDest = "Monitor"
  frmDisplay.ShowMonitorSeries MonitorHisNum, MonitorHisType
  GraphDest = " "
End If
For nUnit = 0 To LastUnit
  If (FirmVersion(nUnit) = 600) Or (FirmVersion(nUnit) = 700) Or (FirmVersion(nUnit) = 800) Then
    For nMult = 0 To maxMultiplicity
      nControl = nUnit * (maxMultiplicity + 1) + nMult
      frmMultiplicity.lblMultiplicitySummary(nControl).Caption = Format$(MultiplicitySummary(nMult, nUnit))
    Next nMult
  End If
Next nUnit
'Every Minute
If CurMin <> PrevMin Then
  PrevMin = CurMin
  MinutesSinceNewlyLoaded = MinutesSinceNewlyLoaded + 1
  If (CurHour = 0) And (CurMin = DayMailerPhase) And EmailDay Then
    'At "DayMailerPhase" minutes past midnight, release the email
    'of the data for the previous day.
    lblSuppressSSECount.Caption = Format$(SuppressSSEMail)
    ClearToSendDay = True
  End If
  If (CurHour = 0) And (CurMin = DayMailerPhase + 10) Then
    'Generate the batch file to send the data for this day
    Open "C:\LandBase\VMailer\Day.bat" For Output As #5
    Print #5, "C:\LandBase\VMailer\vmailer.exe " & HourlyHistogramFileName & " " & MailServerName & " " & EMailDailyTo & " " & EMailDailyTo
    Print #5, "C:\LandBase\VMailer\vmailer.exe " & MinuteFileName & " " & MailServerName & " " & EMailDailyTo & " " & EMailDailyTo
    Print #5, "C:\LandBase\VMailer\vmailer.exe " & HourFileName & " " & MailServerName & " " & EMailDailyTo & " " & EMailDailyTo
    Close #5
  End If
End If
'Every Hour
If CurHour <> PrevHour Then
  'Record and clear indicated histograms
  frmDisplay.DumpGroup 1
  PrevHour = CurHour
End If
If NewDay Then
  'Record and clear indicated histograms
  frmDisplay.DumpGroup 2
  'Then clear all internal statistics
  frmDisplay.btnClearStat_Click
End If
NewDay = False
End Sub

Private Static Sub DecomCtrIO(Current As String)
Dim NSByte As Integer
Dim CurrentValue As Single
Dim II As Integer
Dim JJ As Integer
Dim CtrTmr As Long
Dim LastCmd As Long
Dim CmdCtr As Long
Dim CmdErr As Long
'The Counter-I/O data string (binary) is assumed to be
'left justified in the input string "Current", with the
'Sync information removed
'Extract the sequence counter
CtrTmr = Asc(Mid$(Current, 2, 1)) And 127
CtrTmr = 256 * CtrTmr Or Asc(Mid$(Current, 3, 1))
CtrTmr = 256 * CtrTmr Or Asc(Mid$(Current, 5, 1))
CtrTmr = 256 * CtrTmr Or Asc(Mid$(Current, 6, 1))
frmHouse.lblCtrTmr = Format$(CtrTmr)
'Extract the ADC values (which are repeated as a noise check)
For JJ = 0 To 1
  For II = 0 To 12
    NSByte = (JJ * 13 + II + 2) * 3
    CtrADC(JJ, II) = Asc(Mid$(Current, NSByte + 2, 1))
    CtrADC(JJ, II) = 4 * CtrADC(JJ, II) + Asc(Mid$(Current, NSByte + 3, 1)) \ 64
  Next II
Next JJ
'The first 8 readings are two's complement
'For JJ = 0 To 1
'  For II = 0 To 7
'    If CtrADC(JJ, II) > 511 Then
'      CtrADC(JJ, II) = -((CtrADC(JJ, II) Xor 1023) + 1)
'    End If
'  Next II
'Next JJ
'Show tiltmeter data
'Show scaled values
For II = 0 To 2
  CurrentValue = CalConst(0, II) * (CtrADC(0, II + 8) + CtrADC(1, II + 8)) / 2# - CalConst(1, II)
  frmHouse.lblMuxValue(II).Caption = Format$(CurrentValue, "0.00")
Next II
      'Extract the counter data
For II = 0 To 9
  NSByte = 85 + 3 * II
  CtrCTR(0, II) = Asc(Mid$(Current, NSByte, 1))
  CtrCTR(0, II) = 256 * CtrCTR(0, II) + Asc(Mid$(Current, NSByte + 1, 1))
  CtrCTR(0, II) = 256 * CtrCTR(0, II) + Asc(Mid$(Current, NSByte + 2, 1))
Next II
'Compute Deltas and remember current
For II = 0 To 9
  frmHouse.lblCounter(II).Caption = Format$(CtrCTR(0, II))
  If ResetSent Then
    CtrCTR(1, II) = CtrCTR(0, II)
    IgnoreCounter = True
  Else
    CtrCTR(1, II) = CtrCTR(0, II) - CtrCTR(2, II)
    IgnoreCounter = False
  End If
  If CtrCTR(1, II) < 0 Then
    CtrCTR(1, II) = CtrCTR(1, II) + DelCycle
  End If
  frmHouse.lblDelta(II).Caption = Format$(CtrCTR(1, II))
  CtrCTR(2, II) = CtrCTR(0, II)
Next II
If Not IgnoreCounter Then
  NDigiQ = NDigiQ + 1
  SumDigiA(0) = SumDigiA(0) + CtrCTR(1, 1)
  'Print #2, Format$(NDigiQ) & " " & Format$(SumDigiA(0)) & " " & Format$(CtrCTR(1, 1))
  SSDigiA(0) = SSDigiA(0) + CtrCTR(1, 1) ^ 2
  SumDigiB(0) = SumDigiB(0) + CtrCTR(1, 0)
  SSDigiB(0) = SSDigiB(0) + CtrCTR(1, 0) ^ 2
  SumDigiA(1) = SumDigiA(1) + CtrCTR(1, 3)
  SSDigiA(1) = SSDigiA(1) + CtrCTR(1, 3) ^ 2
  SumDigiB(1) = SumDigiB(1) + CtrCTR(1, 2)
  SSDigiB(1) = SSDigiB(1) + CtrCTR(1, 2) ^ 2
End If
LastCmd = Val(Mid$(Current, RackSyncLen + 40 * 3 + 1, 1))
CmdCtr = Val(Mid$(Current, RackSyncLen + 41 * 3 + 1, 1))
CmdErr = Val(Mid$(Current, RackSyncLen + 42 * 3 + 1, 1))
frmHouse.lblCtrCmd(0).Caption = Hex$(LastCmd)
frmHouse.lblCtrCmd(1).Caption = Format$(CmdCtr)
frmHouse.lblCtrCmd(2).Caption = Hex$(CmdErr)
NSByte = 141
RdgAIR(0) = Chr$(Asc(Mid$(Current, NSByte, 1)) Or Asc("0"))
RdgAIR(0) = RdgAIR(0) + Chr$(Asc(Mid$(Current, NSByte + 3, 1)) Or Asc("0"))
RdgAIR(0) = RdgAIR(0) + Chr$(Asc(Mid$(Current, NSByte + 6, 1)) Or Asc("0"))
RdgAIR(0) = RdgAIR(0) + Chr$(Asc(Mid$(Current, NSByte + 9, 1)) Or Asc("0"))
lblLastAirTime(0).Caption = Format(CurTime, "hh:mm:ss")
FullRdgAIR(0) = RdgAIR(0)
PressDecAIR(0) = Val(FullRdgAIR(0)) / 10#
If PressDecAIR(0) > 800# Then PressDecAIR(0) = 800#
If PressDecAIR(0) < 400# Then PressDecAIR(0) = 400#
lblLastAir(0).Caption = Format$(PressDecAIR(0), "0.0")
'CurHist = 9
'CurValue = PressDecAIR(0)
'EnterMonitorHis CurValue, CurHist, 0
Exit Sub
End Sub
Private Static Sub NgrDecomCtrIO(Current As String)
Dim NSByte As Integer
Dim CurrentValue As Single
Dim II As Integer
Dim JJ As Integer
Dim CtrTmr As Long
Dim LastCmd As Long
Dim CmdCtr As Long
Dim CmdErr As Long
Dim iDigit As Integer
'The Counter-I/O data string (Hex) is assumed to be
'left justified in the input string "Current", with the
'Sync information removed
'Extract the sequence counter
CtrTmr = CLng("&H" & Mid$(Current, 3, 4) & Mid$(Current, 9, 4))
frmHouse.lblCtrTmr = Format$(CtrTmr)
'Extract the ADC values (which are repeated as a noise check)
For JJ = 0 To 1
  For II = 0 To 12
    NSByte = 12 + (JJ * 13 + II) * 6
    CtrADC(JJ, II) = CInt("&H" & Mid$(Current, NSByte + 3, 2))
    CtrADC(JJ, II) = 4 * CtrADC(JJ, II) + CInt("&H" & Mid$(Current, NSByte + 5, 2)) \ 64
  Next II
Next JJ
For II = 0 To 2
  CurrentValue = CalConst(0, II) * (CtrADC(0, II + 8) + CtrADC(1, II + 8)) / 2# - CalConst(1, II)
  frmHouse.lblMuxValue(II).Caption = Format$(CurrentValue, "0.00")
Next II
'Extract the counter data
For II = 0 To 9
  NSByte = 169 + 6 * II
  CtrCTR(0, II) = CLng("&H00" & Mid$(Current, NSByte, 6))
Next II
'Compute Deltas and remember current
For II = 0 To 9
  frmHouse.lblCounter(II).Caption = Format$(CtrCTR(0, II))
  If ResetSent Then
    CtrCTR(1, II) = CtrCTR(0, II)
    IgnoreCounter = True
  Else
    CtrCTR(1, II) = CtrCTR(0, II) - CtrCTR(2, II)
    IgnoreCounter = False
  End If
  If CtrCTR(1, II) < 0 Then
    CtrCTR(1, II) = CtrCTR(1, II) + DelCycle
  End If
  frmHouse.lblDelta(II).Caption = Format$(CtrCTR(1, II))
  CtrCTR(2, II) = CtrCTR(0, II)
Next II
If Not IgnoreCounter Then
  NDigiQ = NDigiQ + 1
  SumDigiA(0) = SumDigiA(0) + CtrCTR(1, 1)
  'Print #2, Format$(NDigiQ) & " " & Format$(SumDigiA(0)) & " " & Format$(CtrCTR(1, 1))
  SSDigiA(0) = SSDigiA(0) + CtrCTR(1, 1) ^ 2
  SumDigiB(0) = SumDigiB(0) + CtrCTR(1, 0)
  SSDigiB(0) = SSDigiB(0) + CtrCTR(1, 0) ^ 2
  SumDigiA(1) = SumDigiA(1) + CtrCTR(1, 3)
  SSDigiA(1) = SSDigiA(1) + CtrCTR(1, 3) ^ 2
  SumDigiB(1) = SumDigiB(1) + CtrCTR(1, 2)
  SSDigiB(1) = SSDigiB(1) + CtrCTR(1, 2) ^ 2
End If
LastCmd = CInt("&H" & Mid$(Current, 230, 4))
CmdErr = CInt("&H" & Mid$(Current, 237, 4))
CmdCtr = CInt("&H" & Mid$(Current, 241, 6))
frmHouse.lblCtrCmd(0).Caption = Hex$(LastCmd)
frmHouse.lblCtrCmd(1).Caption = Format$(CmdCtr)
frmHouse.lblCtrCmd(2).Caption = Hex$(CmdErr)
NSByte = 280
iDigit = Val("&H" & Mid$(Current, NSByte, 4))
If iDigit > 9 Or iDigit < 0 Then iDigit = 0
RdgAIR(0) = Chr$(iDigit + Asc("0"))
iDigit = Val("&H" & Mid$(Current, NSByte + 6, 4))
If iDigit > 9 Or iDigit < 0 Then iDigit = 0
RdgAIR(0) = RdgAIR(0) + Chr$(iDigit + Asc("0"))
iDigit = Val("&H" & Mid$(Current, NSByte + 12, 4))
If iDigit > 9 Or iDigit < 0 Then iDigit = 0
RdgAIR(0) = RdgAIR(0) + Chr$(iDigit + Asc("0"))
iDigit = Val("&H" & Mid$(Current, NSByte + 18, 4))
If iDigit > 9 Or iDigit < 0 Then iDigit = 0
RdgAIR(0) = RdgAIR(0) + Chr$(iDigit + Asc("0"))
lblLastAirTime(0).Caption = Format(CurTime, "HH:mm:ss")
FullRdgAIR(0) = RdgAIR(0)
PressDecAIR(0) = Val(FullRdgAIR(0)) / 10#
If PressDecAIR(0) > 800# Then PressDecAIR(0) = 800#
If PressDecAIR(0) < 400# Then PressDecAIR(0) = 400#
lblLastAir(0).Caption = Format$(PressDecAIR(0), "0.0")
Exit Sub
End Sub

Private Static Sub DecomShortTube(Current As String)
Dim MultString As String
Dim HexString As String
Dim I As Integer
Dim II As Integer
Dim JJ As Integer
Dim ScalerCount As Long
Dim RemoteSeqHO As Long
Dim RemoteSeqLO As Long
Dim CurPls As Long
Dim CurHist As Integer
Dim CurValue As Single
Dim SciData As Boolean
Dim DatFlag As Integer
Dim EvSent As Integer
Dim EvTotal As Integer
Dim DiscFire As Boolean
Dim Time1(15) As Long
Dim MaxEvent As Integer
Dim iFor As Integer
RemoteSeen = True
If VerboseDiagnostics = True Then
  HexString = ""
  For iFor = 1 To Len(Current)
    HexString = HexString & Right$("00" & Hex$(Asc(Mid$(Current, iFor, 1))), 2)
  Next iFor
  Print #2, "DecomShortTube: " & HexString
End If
'The first four bytes are independent of firmware version
'Master Board Number
MasterNumber = Asc(Mid$(Current$, 1, 1)) And 7
If (MasterNumber < 0) Or (MasterNumber > LastMaster) Then
 LogEntry "Bad Master Number " & Format$(MasterNumber)
 Exit Sub
End If
'Remote Unit Address
RemoteInMaster = Asc(Mid$(Current$, 2, 1)) And 15
If (RemoteInMaster < 0) Or (RemoteInMaster > LastRemote(MasterNumber)) Then
 LogEntry "Bad Remote Number " & Format$(MasterNumber) & " " & Format$(RemoteInMaster)
 Exit Sub
End If
RemoteAddress = RemoteBaseAddress(MasterNumber) + RemoteInMaster
'Get the non-resetting counting scaler and compute the "deltas"
ScalerCount = Asc(Mid$(Current, 3, 1))
ScalerCount = (256 * ScalerCount) + Asc(Mid$(Current, 4, 1))
ScalerCount = (256 * ScalerCount) + Asc(Mid$(Current, 5, 1))
Deltas(RemoteAddress) = ScalerCount - Counts(RemoteAddress)
If Deltas(RemoteAddress) < 0 Then
  Deltas(RemoteAddress) = Deltas(RemoteAddress) + DelCycle
End If
Counts(RemoteAddress) = ScalerCount
lblCts(RemoteAddress).Caption = Format$(Counts(RemoteAddress))
lblDel(RemoteAddress).Caption = Format$(Deltas(RemoteAddress))
If NotSeenYet(RemoteAddress) Then
  ResetDeltaRef(RemoteAddress) = ScalerCount
  NotSeenYet(RemoteAddress) = False
End If
lblHourDel(RemoteAddress).Caption = Format$(ScalerCount - ResetDeltaRef(RemoteAddress))
'Housekeeping, pulseheights (and timing) differ by firmware version
If FirmVersion(RemoteAddress) = 300 Then
  'Sequence Timer
  RemoteSeqHO = Asc(Mid$(Current, 6, 1))
  RemoteSeqHO = (256 * RemoteSeqHO) + Asc(Mid$(Current, 7, 1))
  RemoteSeqLO = Asc(Mid$(Current, 8, 1))
  RemoteSeqLO = (256 * RemoteSeqLO) + Asc(Mid$(Current, 9, 1))
  'Voltages
  For I = 0 To 3
    House(I, RemoteAddress) = bMux2(Mid$(Current, 2 * I + 10, 2), II, JJ)
    If II <> (I + 1) Then
      House(I, RemoteAddress) = -House(I, RemoteAddress)
    End If
  Next I
  'Temperature Sensors
  For I = 4 To 6
    If (Asc(Mid$(Current, 2 * I + 11, 1)) And 16) <> 0 Then
      House(I, RemoteAddress) = -((Asc(Mid$(Current, 2 * I + 10, 1)) Xor 255) + 1)
    Else
      House(I, RemoteAddress) = Asc(Mid$(Current, 2 * I + 10, 1))
    End If
  Next I
  frmHouse.lblHODB(RemoteAddress).Caption = RemoteSeqHO
  frmHouse.lblLODB(RemoteAddress).Caption = RemoteSeqLO
  RemoteVoltages RemoteAddress
  lblT1(RemoteAddress).Caption = Format((0.5 * House(4, RemoteAddress)), "###0.0")
  lblT2(RemoteAddress).Caption = Format((0.5 * House(5, RemoteAddress)), "###0.0")
  lblT3(RemoteAddress).Caption = Format((0.5 * House(6, RemoteAddress)), "###0.0")
  EvSent = 0
  'Pulse Height Data
  For I = 0 To 15
    'JJ is the discriminator flag bit
    'II is the address (zero by definition for PHA)
    JJ = 0
    CurPls = bMux2(Mid$(Current$, 2 * I + 24, 2), II, JJ)
    'A zero pulse height and no pulse height are indistinguishable
    If (CurPls > 0) And (RemoteAddress <= LastUnit) And (II = 0) Then
      'First bump the relevant counters
      EvSent = EvSent + 1
      If CurPls < WinLimit(0, RemoteAddress) Then
        Below(RemoteAddress) = Below(RemoteAddress) + 1
      ElseIf CurPls > WinLimit(1, RemoteAddress) Then
        Above(RemoteAddress) = Above(RemoteAddress) + 1
      Else
        InArray(RemoteAddress) = InArray(RemoteAddress) + 1
      End If
      'Then tag the PH if the discriminator flag is set
      'and enter the PH into the proper histogram
      If JJ <> 0 Then
        CurHist = RemoteAddress
        CurValue = CurPls
        EnterMonitorHis CurValue, CurHist, 0
        If frmMonitor.Visible And ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
          frmREMOTE.lblPHA(I).Caption = Format(CurPls)
          frmREMOTE.lblPHA(I).BackColor = &HFFFF&
          frmREMOTE.lblPHA(I).Visible = True
        End If
      Else
        CurHist = RemoteAddress
        CurValue = CurPls
        EnterMonitorHis CurValue, CurHist, 1
        If frmMonitor.Visible And ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
          frmREMOTE.lblPHA(I).Caption = Format(CurPls)
          frmREMOTE.lblPHA(I).BackColor = &HFFFFFF
          frmREMOTE.lblPHA(I).Visible = True
        End If
      End If
    Else
      If frmMonitor.Visible And ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
        frmREMOTE.lblPHA(I).Caption = " 0 "
        frmREMOTE.lblPHA(I).Visible = False
      End If
    End If
  Next I
  If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then frmREMOTE.lblSent.Caption = Format$(EvSent)
ElseIf FirmVersion(RemoteAddress) = 600 Then
  'This is a multiplicity enabled unit
  'Science and housekeeping data formats are quite different
  DatFlag = (Asc(Mid$(Current, 2, 1))) \ 16
  frmHouse.lblRemStatus1(RemoteAddress).Caption = DatFlag
  SciData = (DatFlag And 1) = 1
  If SciData Then
    MultString = "LM" + UnitTag(RemoteAddress) & ":"
    'Format as science data
    frmHouse.lblRemStatus2(RemoteAddress).Caption = "Science"
    EvSent = Asc(Mid$(Current, 6, 1))
    MultString = MultString + " " + Format$(EvSent)
    EvTotal = Asc(Mid$(Current, 7, 1))
    MultString = MultString + " " + Format$(EvTotal)
    If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
        frmREMOTE.lblSent.Caption = Format$(EvSent)
        frmREMOTE.lblTotal.Caption = Format$(EvTotal)
    End If
    MaxEvent = EvSent
    If EvSent > 0 Then
      'Format errors of various kinds can make the
      'number of events sent in error, so limit it
      'to avoid array overflow problems, etc.
      If MaxEvent > nEv600 Then MaxEvent = nEv600
      'Pulse Height Data
      For I = 0 To MaxEvent - 1
        DiscFire = (Asc(Mid$(Current, I + 8, 1)) And 128) <> 0
        If DiscFire Then
          MultString = MultString + " +"
        Else
          MultString = MultString + " -"
        End If
        CurPls = (Asc(Mid$(Current, I + 8, 1)) And 127)
        MultString = MultString + Format$(CurPls)
        Time1(I) = Asc(Mid$(Current, I + nEv600 + 8, 1))
        Time1(I) = 256 * Time1(I) + Asc(Mid$(Current, I + 2 * nEv600 + 8, 1))
        MultString = MultString + " " + Format$(Time1(I))
        If (RemoteAddress <= LastUnit) Then
          If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
              frmREMOTE.lblPHA(I).Visible = True
              frmREMOTE.lblTime1(I).Visible = True
              frmREMOTE.lblPHA(I).Caption = Format(CurPls)
              If Not DiscFire Then
                frmREMOTE.lblPHA(I).BackColor = &HFFFF&
              Else
                frmREMOTE.lblPHA(I).BackColor = &HFFFFFF
              End If
              frmREMOTE.lblTime1(I).Caption = Format(Time1(I))
          End If
          'First bump the relevant counters
          If CurPls < WinLimit(0, RemoteAddress) Then
            Below(RemoteAddress) = Below(RemoteAddress) + 1
          ElseIf CurPls > WinLimit(1, RemoteAddress) Then
            Above(RemoteAddress) = Above(RemoteAddress) + 1
          Else
            InArray(RemoteAddress) = InArray(RemoteAddress) + 1
          End If
          'Do the multiplicity accounting
          'Note that the remote address is a global variable
          frmMultiplicity.Calculate Time1(I), DiscFire
          'Enter the PH and elapsed time into the proper histograms
          If Not DiscFire Then
            CurHist = RemoteAddress
            CurValue = CurPls
            EnterMonitorHis CurValue, CurHist, 0
            CurValue = Time1(I)
            CurHist = (LastUnit + 1) + RemoteAddress
            EnterMonitorHis CurValue, CurHist, 0
            CurHist = 2 * (LastUnit + 1) + RemoteAddress
            EnterMonitorHis CurValue, CurHist, 0
          Else
            CurHist = RemoteAddress
            CurValue = CurPls
            EnterMonitorHis CurValue, CurHist, 1
            CurValue = Time1(I)
            CurHist = (LastUnit + 1) + RemoteAddress
            EnterMonitorHis CurValue, CurHist, 1
            CurHist = 2 * (LastUnit + 1) + RemoteAddress
            EnterMonitorHis CurValue, CurHist, 1
          End If
        End If
      Next I
      If RecordFullTiming Then Print #2, MultString
      If RecordREM0Timing And (RemoteInMaster = 0) Then Print #10, MultString
      MultString = "Null MultString"
      If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
        If MaxEvent < nEv600 Then
          For I = MaxEvent To nEv600 - 1
            frmREMOTE.lblPHA(I).Visible = False
            frmREMOTE.lblTime1(I).Visible = False
          Next I
        Else
          For I = 0 To nEv600 - 1
            frmREMOTE.lblPHA(I).Visible = False
            frmREMOTE.lblTime1(I).Visible = False
          Next I
        End If
      End If
    Else
      If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
        For I = 0 To nEv600 - 1
          frmREMOTE.lblPHA(I).Visible = False
          frmREMOTE.lblTime1(I).Visible = False
        Next I
      End If
    End If
  Else
    'Format as housekeeping data
    'Sequence Timer
    RemoteSeqHO = Asc(Mid$(Current, 6, 1))
    RemoteSeqHO = (256 * RemoteSeqHO) + Asc(Mid$(Current, 7, 1))
    RemoteSeqLO = Asc(Mid$(Current, 8, 1))
    RemoteSeqLO = (256 * RemoteSeqLO) + Asc(Mid$(Current, 9, 1))
    frmHouse.lblRemStatus2(RemoteAddress).Caption = Asc(Mid$(Current, 24, 1))
    frmHouse.lblVersion(RemoteAddress).Caption = Asc(Mid$(Current, 25, 1))
    frmHouse.lblRevision(RemoteAddress).Caption = Asc(Mid$(Current, 26, 1))
    frmHouse.lblResetType(RemoteAddress).Caption = Asc(Mid$(Current, 27, 1))
    If (CInt(frmHouse.lblResetType(RemoteAddress).Caption) <> 0) Then
      Exception ("RemReset " & Format$(RemoteAddress) & " " & frmHouse.lblResetType(RemoteAddress).Caption)
      'HourDeltaRef(RemoteAddress) = CurrentScaler(RemoteAddress)
    End If
    'Voltages
    For I = 0 To 3
      House(I, RemoteAddress) = bMux2(Mid$(Current, 2 * I + 10, 2), II, JJ)
      If II <> (I + 1) Then
        House(I, RemoteAddress) = -House(I, RemoteAddress)
      End If
    Next I
    'Temperatures
    For I = 4 To 6
    '  TestString = Format$(RemoteAddress) + " " + Format$(I) + " " + Format$(Asc(Mid$(Current, 2 * I + 11, 1))) + " " + Format$(Asc(Mid$(Current, 2 * I + 10, 1)))
    '  LogEntry TestString
      If (Asc(Mid$(Current, 2 * I + 11, 1)) And 16) <> 0 Then
        House(I, RemoteAddress) = -((Asc(Mid$(Current, 2 * I + 10, 1)) Xor 255) + 1)
      Else
        House(I, RemoteAddress) = Asc(Mid$(Current, 2 * I + 10, 1))
      End If
    Next I
    frmHouse.lblHODB(RemoteAddress).Caption = RemoteSeqHO
    frmHouse.lblLODB(RemoteAddress).Caption = RemoteSeqLO
    RemoteVoltages RemoteAddress
    lblT1(RemoteAddress).Caption = Format((0.5 * House(4, RemoteAddress)), "###0.0")
    lblT2(RemoteAddress).Caption = Format((0.5 * House(5, RemoteAddress)), "###0.0")
    lblT3(RemoteAddress).Caption = Format((0.5 * House(6, RemoteAddress)), "###0.0")
  End If
ElseIf FirmVersion(RemoteAddress) = 700 Then
  'This is a multiplicity enabled unit with extended event buffers
  'Science and housekeeping data formats are quite different
  'Housekeeping format is identical to that of the 600 series
  'Event format uses a longer record that is handled by the "DecomLongTube" routine
  DatFlag = (Asc(Mid$(Current, 2, 1))) \ 16
  frmHouse.lblRemStatus1(RemoteAddress).Caption = DatFlag
  SciData = (DatFlag And 1) = 1
  If SciData Then
    Exception "Science data in short record for 700 series"
    'Note that the counts would have already been registered
  Else
    'Format as housekeeping data
    'Sequence Timer
    RemoteSeqHO = Asc(Mid$(Current, 6, 1))
    RemoteSeqHO = (256 * RemoteSeqHO) + Asc(Mid$(Current, 7, 1))
    RemoteSeqLO = Asc(Mid$(Current, 8, 1))
    RemoteSeqLO = (256 * RemoteSeqLO) + Asc(Mid$(Current, 9, 1))
    frmHouse.lblRemStatus2(RemoteAddress).Caption = Asc(Mid$(Current, 24, 1))
    frmHouse.lblVersion(RemoteAddress).Caption = Asc(Mid$(Current, 25, 1))
    frmHouse.lblRevision(RemoteAddress).Caption = Asc(Mid$(Current, 26, 1))
    frmHouse.lblResetType(RemoteAddress).Caption = Asc(Mid$(Current, 27, 1))
    If (CInt(frmHouse.lblResetType(RemoteAddress).Caption) <> 0) Then
      Exception ("RemReset " & Format$(RemoteAddress) & " " & frmHouse.lblResetType(RemoteAddress).Caption)
      'HourDeltaRef(RemoteAddress) = CurrentScaler(RemoteAddress)
    End If
    'Voltages
    For I = 0 To 3
      House(I, RemoteAddress) = bMux2(Mid$(Current, 2 * I + 10, 2), II, JJ)
      If II <> (I + 1) Then
        House(I, RemoteAddress) = -House(I, RemoteAddress)
      End If
    Next I
    'Temperatures
    For I = 4 To 6
    '  TestString = Format$(RemoteAddress) + " " + Format$(I) + " " + Format$(Asc(Mid$(Current, 2 * I + 11, 1))) + " " + Format$(Asc(Mid$(Current, 2 * I + 10, 1)))
    '  LogEntry TestString
      If (Asc(Mid$(Current, 2 * I + 11, 1)) And 16) <> 0 Then
        House(I, RemoteAddress) = -((Asc(Mid$(Current, 2 * I + 10, 1)) Xor 255) + 1)
      Else
        House(I, RemoteAddress) = Asc(Mid$(Current, 2 * I + 10, 1))
      End If
    Next I
    frmHouse.lblHODB(RemoteAddress).Caption = RemoteSeqHO
    frmHouse.lblLODB(RemoteAddress).Caption = RemoteSeqLO
    RemoteVoltages RemoteAddress
    lblT1(RemoteAddress).Caption = Format((0.5 * House(4, RemoteAddress)), "###0.0")
    lblT2(RemoteAddress).Caption = Format((0.5 * House(5, RemoteAddress)), "###0.0")
    lblT3(RemoteAddress).Caption = Format((0.5 * House(6, RemoteAddress)), "###0.0")
  End If
ElseIf FirmVersion(RemoteAddress) = 800 Then
  'This is a multiplicity enabled unit with extended event buffers
  'Science and housekeeping data formats are quite different
  'Housekeeping format is identical to that of the 600 series
  'Event format uses a longer record that is handled by the "DecomLongTube" routine
  DatFlag = (Asc(Mid$(Current, 2, 1))) \ 16
  frmHouse.lblRemStatus1(RemoteAddress).Caption = DatFlag
  SciData = (DatFlag And 1) = 1
  If SciData Then
    Exception "Science data in short record for 700 series"
    'Note that the counts would have already been registered
  Else
    'Format as housekeeping data
    'Sequence Timer
    RemoteSeqHO = Asc(Mid$(Current, 6, 1))
    RemoteSeqHO = (256 * RemoteSeqHO) + Asc(Mid$(Current, 7, 1))
    RemoteSeqLO = Asc(Mid$(Current, 8, 1))
    RemoteSeqLO = (256 * RemoteSeqLO) + Asc(Mid$(Current, 9, 1))
    frmHouse.lblRemStatus2(RemoteAddress).Caption = Asc(Mid$(Current, 24, 1))
    frmHouse.lblVersion(RemoteAddress).Caption = Asc(Mid$(Current, 25, 1))
    frmHouse.lblRevision(RemoteAddress).Caption = Asc(Mid$(Current, 26, 1))
    frmHouse.lblResetType(RemoteAddress).Caption = Asc(Mid$(Current, 27, 1))
    If (CInt(frmHouse.lblResetType(RemoteAddress).Caption) <> 0) Then
      Exception ("RemReset " & Format$(RemoteAddress) & " " & frmHouse.lblResetType(RemoteAddress).Caption)
      'HourDeltaRef(RemoteAddress) = CurrentScaler(RemoteAddress)
    End If
    'Voltages
    For I = 0 To 3
      House(I, RemoteAddress) = bMux2(Mid$(Current, 2 * I + 10, 2), II, JJ)
      If II <> (I + 1) Then
        House(I, RemoteAddress) = -House(I, RemoteAddress)
      End If
    Next I
    'Temperatures
    For I = 4 To 6
    '  TestString = Format$(RemoteAddress) + " " + Format$(I) + " " + Format$(Asc(Mid$(Current, 2 * I + 11, 1))) + " " + Format$(Asc(Mid$(Current, 2 * I + 10, 1)))
    '  LogEntry TestString
      If (Asc(Mid$(Current, 2 * I + 11, 1)) And 16) <> 0 Then
        House(I, RemoteAddress) = -((Asc(Mid$(Current, 2 * I + 10, 1)) Xor 255) + 1)
      Else
        House(I, RemoteAddress) = Asc(Mid$(Current, 2 * I + 10, 1))
      End If
    Next I
    frmHouse.lblHODB(RemoteAddress).Caption = RemoteSeqHO
    frmHouse.lblLODB(RemoteAddress).Caption = RemoteSeqLO
    RemoteVoltages RemoteAddress
    lblT1(RemoteAddress).Caption = Format((0.5 * House(4, RemoteAddress)), "###0.0")
    lblT2(RemoteAddress).Caption = Format((0.5 * House(5, RemoteAddress)), "###0.0")
    lblT3(RemoteAddress).Caption = Format((0.5 * House(6, RemoteAddress)), "###0.0")
  End If
Else
  LogEntry "Illegal Firmware Version"
End If
End Sub

Public Sub ShowRackGPSData(InputString As String)
'Captures and Formats GPS Data
On Error Resume Next
Dim LastGGA As String
Dim Parse As String
Dim nCom As Integer
Dim nLen As Integer
Dim GPSTime As String
LastGGA = InputString
If InStr(LastGGA, ",,,") = 0 Then
  'This record contains a current fix
  lblGPSGMT.Caption = Left$(LastGGA, 2) + ":" + Mid$(LastGGA, 3, 2) + ":" + Mid$(LastGGA, 5, 2)
  GPSTime = Left$(LastGGA, 2) + ":" + Mid$(LastGGA, 3, 2) + ":" + Mid$(LastGGA, 5, 2)
  lblGPSGMT.Caption = GPSTime
  lblGPSComTime.Caption = CurTimTag
  nCom = InStr(LastGGA, ",")
  Parse = Mid$(LastGGA, nCom + 1)
  nCom = InStr(Parse, ",")
  lblGPSLat.Caption = Left$(Parse, nCom - 1)
  nLen = Len(lblGPSLat.Caption)
  lblGPSLat.Caption = Left$(lblGPSLat.Caption, nLen - 7) + " " + Right$(lblGPSLat.Caption, 7)
  Parse = Mid$(Parse, nCom + 1)
  nCom = InStr(Parse, ",")
  lblGPSLat.Caption = lblGPSLat.Caption + " " + Left$(Parse, 1)
  Parse = Mid$(Parse, nCom + 1)
  nCom = InStr(Parse, ",")
  lblGPSLong.Caption = Left$(Parse, nCom - 1)
  nLen = Len(lblGPSLong.Caption)
  lblGPSLong.Caption = Left$(lblGPSLong.Caption, nLen - 7) + " " + Right$(lblGPSLong.Caption, 7)
  Parse = Mid$(Parse, nCom + 1)
  nCom = InStr(Parse, ",")
  lblGPSLong.Caption = lblGPSLong.Caption + " " + Left$(Parse, 1)
  Parse = Mid$(Parse, nCom + 1)
  nCom = InStr(Parse, ",")
  Parse = Mid$(Parse, nCom + 1)
  nCom = InStr(Parse, ",")
  lblGPSNumSat.Caption = Left$(Parse, nCom - 1)
  If GPSTimeSyncEnable And GPSFresh And (CInt(lblGPSNumSat.Caption) > 0) Then
    'Sync the time
    If (Mid$(GPSTime, 4, 5) = "05:35") Or (Mid$(GPSTime, 4, 5) = "35:35") Then
      Time = lblGPSGMT.Caption
      LogEntry "Setting time: " & lblGPSGMT.Caption
    End If
  End If
End If
'Notify the timer that the GPS is active
SinceGPS = 0
End Sub

Public Static Sub RemoteVoltages(RemAdr As Integer)
Dim FactorP5 As Single
Dim FactorP12 As Single
Dim FactorM12 As Single
Dim FactorMHV As Single
Dim Converted As Single
FactorP5 = 2# * (4.096 / 1024#)
FactorP12 = 7# * (4.096 / 1024#)
FactorM12 = 7# * (4.096 / 1024#)
FactorMHV = 2093# * (4.096 / 1024#)
'The calibrations for the ADC inputs are written on the Remote schematic.
'Voltage dividers are used for the +5V and +/-12V.  The scale factors are:
'5V = 2.5V X 2
'|(+/-12V)| = |(+/-12)/7| x 7
'-2800 = -1.338V x 2093 (approximately)
'The ADC calibration is:
'1 ADC unipolar step = 4.096V/1024
'1 ADC bipolar step = +/-2.048/1024
'The format for the 10 bit ADC data word is:
'High byte =  B9,B8,B7,B6,B5,B4,B3,B2
'Low byte  =  B1,B0, 0, 0, 0, A, A, A
'where A = ADC Mux address
If House(0, RemAdr) > 512 Then
   Converted = -((House(0, RemAdr) Xor 1023) + 1)
ElseIf House(0, RemAdr) = 512 Then
   Converted = -512
Else
   Converted = House(0, RemAdr)
End If
frmHouse.lblHiVolt(RemAdr).Caption = Format$(FactorMHV * Converted, "###0")
If House(1, RemAdr) > 512 Then
   Converted = -((House(1, RemAdr) Xor 1023) + 1)
ElseIf House(1, RemAdr) = 512 Then
   Converted = -512
Else
   Converted = House(1, RemAdr)
End If
frmHouse.lblMinus12(RemAdr).Caption = Format$(FactorM12 * Converted, "###0.00")
frmHouse.lblPlus12(RemAdr).Caption = Format$((FactorP12 * House(2, RemAdr)), "###0.00")
frmHouse.lblPlus5(RemAdr).Caption = Format$((FactorP5 * House(3, RemAdr)), "###0.00")
End Sub

Private Sub vsbMemStick_Change()
MemStickDrive = Mid$(DriveChoice, vsbMemStick.Value + 1, 1)
On Error GoTo NoStick
If UseMemStick Then
  Close #6
  lblMemStick.Caption = MemStickDrive & ":"
  StickFileName = MemStickDrive & ":\" & StationID & "_" & CurDate & ".DAT"
  Open StickFileName For Append As #6
Else
  lblMemStick.Caption = "(" & MemStickDrive & ":)"
End If
NoStick:
  Exit Sub
End Sub

Public Static Sub LogicalSecond()
Dim OutMacTenSec As String
Dim OutMacMinute As String
Dim I As Integer
Dim iFor As Integer
Dim jFor As Integer
Dim iDq As Integer
Dim nUnit As Integer
Dim nMult As Integer
Dim CurHist As Integer
Dim CurValue As Single
Dim TestSecond As Integer
Dim PreviousTenSecond As Integer
Dim LastSequenceSecond As Integer
Dim LastSequenceMinute As Integer
Dim LastSequenceHour As Integer
Dim OutMinStats As String
Dim OutWinLow As String
Dim OutWinIn As String
Dim OutWinHigh As String
Dim OutCounters As String
Dim OutGPSStats As String
Dim OutGPS As String
Dim OutPress As String
Dim OutMult As String
Dim DiagStr1 As String
Dim DiagStr2 As String
Dim FileToKill As String
Dim PressMB As Double
Dim OutHrWinLow As String
Dim OutHrWinIn As String
Dim OutHrWinHigh As String
Dim OutHrStats As String
Dim HouseText As String
'Every Second
lblSequenceHour.Caption = Format$(SequenceHour)
lblSequenceMinute.Caption = Format$(SequenceMinute)
lblSequenceSecond.Caption = Format$(SequenceSecond)
'Accumulate Window Statistics
LastSequenceSecond = SequenceSecond
For iFor = 0 To LastUnit
  HrBelow(iFor) = HrBelow(iFor) + Below(iFor)
  MinBelow(iFor) = MinBelow(iFor) + Below(iFor)
  Below(iFor) = 0
  HrIn(iFor) = HrIn(iFor) + InArray(iFor)
  lblWindowVerify(iFor).Caption = Format(HrIn(iFor))
  MinIn(iFor) = MinIn(iFor) + InArray(iFor)
  InArray(iFor) = 0
  HrAbove(iFor) = HrAbove(iFor) + Above(iFor)
  MinAbove(iFor) = MinAbove(iFor) + Above(iFor)
  Above(iFor) = 0
Next iFor
' Every 10 seconds
If (SequenceSecond Mod 10 = 0) Then
  If PreviousTenSecond = SequenceSecond Then
    LogEntry "This looks like a duplicate"
    For iFor = 0 To 19
      Print #2, GPSSentenceHistoryRing((GPSSentenceHistoryRingPointer + iFor) Mod 20)
    Next iFor
  ElseIf ((SequenceSecond = 0) And (PreviousTenSecond <> 50)) Or ((SequenceSecond <> 0) And ((SequenceSecond - PreviousTenSecond) <> 10)) Then
    LogEntry "This looks like a skip"
    For iFor = 0 To 19
      Print #2, GPSSentenceHistoryRing((GPSSentenceHistoryRingPointer + iFor) Mod 20)
    Next iFor
  End If
  PreviousTenSecond = SequenceSecond
  TenSecondString = "S" & Right$("00" & Format$(SequenceSecond), 2) & ": "
  For iFor = 0 To LastUnit
    TenSecondDelta(iFor) = Counts(iFor) - LastTenSecond(iFor)
    LastTenSecond(iFor) = Counts(iFor)
    TenSecondString = TenSecondString & " " & Format$(TenSecondDelta(iFor))
  Next iFor
  Print #2, TenSecondString
  'The TH1 records:
  'TH1 mo_dm_year hr_mi_ms gs D:  m c0 c1  c2  c3  c4  c5  m c0 c1 c2 c3  c4 c5   m  c0  c1 c2  c3  c4 c5 R: ----RTC--- P:  DQp
  'TH1 09_25_2013 11_51_38 40 D: M0 80 123 104 103 120 90 M1 79 89 74 115 93 137 M2 102 111 92 129 133 98 R: 1847633968 P: 765.457 nan nan
  'mo=Month dm=DayOfMonth mi=Minute ms=MacSeconds gs=GPSseconds
  'm=Master c[0-5]=Remote[0-5]Counts DQp=DigiQuartzPressure AIRp=AIRPressure
  OutMacTenSec = "TH1 " & Right$("00" & Format$(CurMonth), 2) & "_" & Right$("00" & Format$(CurDay), 2) & "_" & Right$(Format$(CurYear), 2)
  OutMacTenSec = OutMacTenSec & " " & Right$("00" & Format$(CurHour), 2) & "_" & Right$("00" & Format$(CurMin), 2) & "_" & Right$("00" & Format$(CurSec), 2)
  OutMacTenSec = OutMacTenSec & " D:"
  For jFor = 0 To LastMaster
    OutMacTenSec = OutMacTenSec & " M" & Format$(jFor)
    For iFor = RemoteBaseAddress(jFor) To RemoteBaseAddress(jFor) + LastRemote(jFor)
      OutMacTenSec = OutMacTenSec & " " & Format$(TenSecondDelta(iFor))
    Next iFor
  Next jFor
  OutMacTenSec = OutMacTenSec & " R: " & frmHouse.lblCtrTmr.Caption
  OutMacTenSec = OutMacTenSec & " P: " & lblDigiP(0).Caption & " " + lblDigiP(1).Caption
  If LocalQuicklookOpen Then
    comLocalQuicklook.Output = OutMacTenSec & Chr$(10) & Chr$(13)
    lblLastLocalQuicklook.Caption = OutMacTenSec
  End If
End If
'Every minute
If SequenceSecond = 0 Then
  'Calculate minute average Digiquartz barometer frequencies
  If NDigiQ > 0 Then
    For iDq = 0 To 1
      MADigiA(iDq) = SumDigiA(iDq) / NDigiQ
      Temp = (SSDigiA(iDq) / NDigiQ) - (MADigiA(iDq) ^ 2)
      If Temp > 0 Then
        MSDigiA(iDq) = Sqr(Temp)
      Else
        MSDigiA(iDq) = 0
      End If
      MADigiB(iDq) = SumDigiB(iDq) / NDigiQ
      Temp = (SSDigiB(iDq) / NDigiQ) - (MADigiB(iDq) ^ 2)
      If Temp > 0 Then
        MSDigiB(iDq) = Sqr(Temp)
      Else
        MSDigiB(iDq) = 0
      End If
    Next iDq
  Else
    For iDq = 0 To 1
      MADigiA(iDq) = 0
      MSDigiA(iDq) = 0
      MADigiB(iDq) = 0
      MSDigiB(iDq) = 0
    Next iDq
  End If
  'Display barometer information
  For iDq = 0 To 1
    lblFreqA(iDq).Caption = Format(MADigiA(iDq), "0.0")
    lblFreqAsd(iDq).Caption = Format(MSDigiA(iDq), "0.0")
    lblFreqB(iDq).Caption = Format(MADigiB(iDq), "0.0")
    lblFreqBsd(iDq).Caption = Format(MSDigiB(iDq), "0.0")
    Digiquartz MADigiA(iDq), MADigiB(iDq), DigiPress(iDq), DigiTemp(iDq), iDq
    If DigiPress(iDq) > 800# Then DigiPress(iDq) = 800#
    If DigiPress(iDq) < 400# Then DigiPress(iDq) = 400#
    If DigiTemp(iDq) > 50# Then DigiTemp(iDq) = 50#
    If DigiTemp(iDq) < -40# Then DigiTemp(iDq) = -40#
    CurHist = iDq + RemoteHisFinal
    CurValue = DigiPress(iDq)
    EnterMonitorHis CurValue, CurHist, 0
    CurHist = iDq + RemoteHisFinal + 2
    CurValue = DigiTemp(iDq)
    EnterMonitorHis CurValue, CurHist, 0
    lblDigiP(iDq).Caption = Format$(DigiPress(iDq), "0.00")
    lblDigiT(iDq).Caption = Format$(DigiTemp(iDq), "0.00")
  Next iDq
  If (MinutesSinceNewlyLoaded > 2) And ((NDigiQ < 50) Or (MiRead < 50)) Then
    'Something seems stalled
    Exception "Low Data Reset NDigiQ=" & Format$(NDigiQ) & " MiRead=" & Format$(MiRead)
    btnCmdReset_Click
    MinutesSinceNewlyLoaded = 0
  End If
  OutMinStats = Format$(MiRead) + " " + Format$(NDigiQ) + " " + frmHouse.lblResetCount.Caption
  For iDq = 0 To 1
    SumDigiA(iDq) = 0
    SSDigiA(iDq) = 0
    SumDigiB(iDq) = 0
    SSDigiB(iDq) = 0
  Next iDq
  NDigiQ = 0
  MiRead = 0
  OutWinLow = ""
  OutWinIn = ""
  OutWinHigh = ""
  OutCounters = ""
  UnCorrectedCounts = 0
  UnCorrectedBareCounts = 0
  For I = 0 To LastUnit
    OutCounters = OutCounters + " " + Format(Counts(I))
    OutWinLow = OutWinLow + " " + Format(MinBelow(I))
    MinBelow(I) = 0
    OutWinIn = OutWinIn + " " + Format(MinIn(I))
    MinIn(I) = 0
    OutWinHigh = OutWinHigh + " " + Format(MinAbove(I))
    MinAbove(I) = 0
    MinuteCounters(I) = Counts(I)
    MinuteDeltas(I) = MinuteCounters(I) - PrevMinuteCounters(I)
    If MinuteDeltas(I) < 0 Then MinuteDeltas(I) = MinuteDeltas(I) + DelCycle
    DiagStr1 = DiagStr1 + "  " + Format$(MinuteCounters(I))
    DiagStr2 = DiagStr2 + "  " + Format$(MinuteDeltas(I))
    PrevMinuteCounters(I) = MinuteCounters(I)
    If BareUnitMap(I) Then
      UnCorrectedBareCounts = UnCorrectedBareCounts + MinuteDeltas(I)
    Else
      UnCorrectedCounts = UnCorrectedCounts + MinuteDeltas(I)
    End If
  Next I
  'The TH9 records:
  'TH9 mo_dm_year hr_mi_ms 0 ------------------GPS Record--------------------- P:   DQp      0  AIR: AIRp        -----DQ raw data-------
  'TH9 09_25_2013 11_51_58 0 GPS: .$GPGGA,115159,7632.3767,N,06846.5609,W,1,11 P: 765.452    0  AIR: 767.1, raw: 4260776 5995553 0 0 0 0
  'mo=Month dm=DayOfMonth mi=Minute ms=MacSeconds gs=GPSseconds
  'm=Master c[0-5]=Remote[0-5]Counts DQp=DigiQuartzPressure AIRp=AIRPressure
  OutMacMinute = "TH9 " & Right$("00" & Format$(CurMonth), 2) & "_" & Right$("00" & Format$(CurDay), 2) & "_" & Right$(Format$(CurYear), 2)
  OutMacMinute = OutMacMinute & " " & Right$("00" & Format$(CurHour), 2) & "_" & Right$("00" & Format$(CurMin), 2) & "_" & Right$("00" & Format$(CurSec), 2)
  OutMacMinute = OutMacMinute & " GPS: ." & LatestFullGPS
  OutMacMinute = OutMacMinute & " P: " & lblDigiP(0).Caption & " " + lblDigiP(1).Caption
  OutMacMinute = OutMacMinute & " AIR: " & lblLastAir(0).Caption
  OutMacMinute = OutMacMinute & ", Raw: " & frmHouse.lblDelta(0).Caption & " " & frmHouse.lblDelta(1).Caption
  OutGPS = " " & lblGPSLat.Caption
  OutGPS = OutGPS & " " & lblGPSLong.Caption
  OutGPS = OutGPS & " " & lblGPSNumSat.Caption
  OutGPS = OutGPS & " " & lblGPSGMT.Caption
  OutGPS = OutGPS & " " & lblGPSComTime.Caption
  OutPress = StationID & " " & lblComputerTime.Caption & " " & lblSequenceTimeActual.Caption
  OutPress = OutPress & " " & Right$("00" & Format$(SequenceHour), 2) & ":" & Right$("00" & Format$(SequenceMinute), 2) & ":" & Right$("00" & Format$(SequenceSecond), 2)
  OutPress = OutPress & " " & Right$("00" & Format$(GPSHour), 2) & ":" & Right$("00" & Format$(GPSMinute), 2) & ":" & Right$("00" & Format$(GPSSecond), 2)
  OutPress = OutPress & " " & lblLastAir(0).Caption
  OutPress = OutPress & " " & lblLastAirTime(0).Caption
  OutPress = OutPress & " " & lblDigiP(0).Caption
  OutPress = OutPress & " " & lblDigiT(0).Caption
  OutPress = OutPress & " " & lblDigiP(1).Caption
  OutPress = OutPress & " " & lblDigiT(1).Caption
  OutPress = OutPress & " " & lblPSIRead.Caption
  OutPress = OutPress & " " & frmHouse.lblCtrTmr.Caption
  Print #2, "MOP: " & OutPress
  If RecordAbsoluteTiming Then Print #10, "MOP: " & OutPress
  Print #2, "MST: " & OutMinStats
  Print #2, "MLG: " & lblLatestGPS
  Print #2, "MGG:" & OutGPS
  If RecordAbsoluteTiming Then Print #10, "MGG:" & OutGPS
  Print #2, "MCT:" & OutCounters
  Print #2, "MWL:" & OutWinLow
  Print #2, "MWI:" & OutWinIn
  Print #2, "MWH:" & OutWinHigh
  If LocalQuicklookOpen Then
    comLocalQuicklook.Output = OutMacMinute & Chr$(10) & Chr$(13)
    lblLastLocalQuicklook.Caption = OutMacMinute
  End If
  On Error GoTo NoStick2
  If UseMemStick Then
     Print #6, "MOP: " + OutPress
     Print #6, "MGG:" + OutGPS
     Print #6, "MCT:" + OutCounters
  End If
NoStick2:
  On Error GoTo 0
  'Record Minute Multiplicity
  For nUnit = 0 To LastUnit
    If (FirmVersion(nUnit) = 600) Or (FirmVersion(nUnit) = 700) Or (FirmVersion(nUnit) = 800) Then
      OutMult = "MMP" + UnitTag(nUnit) + ":"
      For nMult = 0 To maxMultiplicity
        OutMult = OutMult + " " + Format$(MultiplicitySummary(nMult, nUnit) - LastMultiplicitySummary(nMult, nUnit))
        LastMultiplicitySummary(nMult, nUnit) = MultiplicitySummary(nMult, nUnit)
      Next nMult
      Print #2, OutMult
    End If
  Next nUnit
  'Keep the datafiles current
  Close #2
  Close #10
  'Note that #2 is used in the following for the SSE files
  'before it is re-opened for data accumulation
  On Error GoTo PressProblem
  CorrectionPressure = CDbl(lblDigiP(0).Caption)
  PressMB = 1013.25 * CorrectionPressure / 760#
  PressMB = PressMB - MeanObservatoryPressure
  PressMB = PressMB / 135.318
  CorrectedCounts = UnCorrectedCounts * Exp(PressMB)
  If NumberOfBares > 0 Then CorrectedBareCounts = UnCorrectedBareCounts * Exp(PressMB)
  GoTo PressProceed
PressProblem: CorrectedCounts = UnCorrectedCounts
PressProceed: On Error GoTo 0
  SSEString = SSEString & " " & Format$(CorrectedCounts, "0.0")
  SSEString = SSEString & " " & Format$(UnCorrectedCounts, "0.0")
  SSEString = SSEString & " " & Format$(CorrectionPressure, "0.0")
  If NumberOfBares > 0 Then
    SSEString = SSEString & " " & Format$(CorrectedBareCounts, "0.0")
    SSEString = SSEString & " " & Format$(UnCorrectedBareCounts, "0.0")
  End If
  SSEString = SSEString & " " & Right$("00" & Format$(SequenceHour), 2)
  SSEString = SSEString & ":" & Right$("00" & Format$(SequenceMinute), 2)
  SSEString = SSEString & ":" & Right$("00" & Format$(SequenceSecond), 2)
  RogersRing(RogersRingPointer) = SSEString
  If EmailSSE Then
    Open "C:\LandBase\Vmailer\SSEMessage.txt" For Output As #2
    Print #2, "From: LandBase"
    Print #2, "To: Cosray"
    Print #2, "Subject: SSE Data"
    For I = 0 To lRoger
      Print #2, RogersRing((RogersRingPointer + I + 1) Mod (lRoger + 1))
    Next I
    Close #2
    btnSendSSE_Click
  End If
  If RecordSSE Then
    Open QueueDirectory & SSEFileName For Output As #2
    For I = 0 To lRoger
      Print #2, RogersRing((RogersRingPointer + I + 1) Mod (lRoger + 1))
    Next I
    Close #2
  End If
  flbSSE.Refresh
  Do While flbSSE.ListCount > 5
    flbSSE.Refresh
    FileToKill = QueueDirectory & flbSSE.List(0)
    Kill FileToKill
    flbSSE.Refresh
  Loop
  RogersRingPointer = (RogersRingPointer + 1) Mod (lRoger + 1)
  'Generate Next SpaceShip Earth File Name and Data Time
  SSEFileName = StationID & "_" & Format$(CurYear) & "_" & Right$("000" & Format$(CurDOY), 3)
  SSEFileName = SSEFileName & "_" & Right$("00" & Format$(CurHour), 2)
  SSEFileName = SSEFileName & Right$("00" & Format$(CurMin), 2)
  SSEFileName = SSEFileName & ".sse"
  SSEString = Format$(CurYear) & " " & Right$("000" & Format$(CurDOY), 3)
  SSEString = SSEString & " " & Right$("00" & Format$(CurHour), 2)
  SSEString = SSEString & " " & Right$("00" & Format$(CurMin), 2)
  'Re-open the data files
  Open MinuteFileName For Append As #2
  MinuteFileAvailable = True
  If RecordAbsoluteTiming Then Open TimingFileName For Append As #10
  On Error GoTo NoStick3
  If UseMemStick Then
    Close #6
    Open StickFileName For Append As #6
  End If
NoStick3:
  On Error GoTo 0
End If
'Every Hour
If (SequenceSecond = 0) And (SequenceMinute = 0) Then
  'Add an entry to the Hour (Log) File
  HourFileName = HourDirectory + StationID + "_" + CurDate + ".LOG"
  If fso.FileExists(HourFileName) Then
    Open HourFileName For Append As #3
  Else
    Open HourFileName For Output As #3
    Print #3, "From: LandBase"
    Print #3, "To: Cosray"
    Print #3, "Subject: " & HourFileName
    Print #3,
  End If
  OutHrStats = frmHouse.lblResetCount.Caption
  DoneMessageCount = 0
  OutHrWinLow = ""
  OutHrWinIn = ""
  OutHrWinHigh = ""
  For I = 0 To LastUnit
    OutHrWinLow = OutHrWinLow + " " + Format(HrBelow(I))
    HrBelow(I) = 0
    OutHrWinIn = OutHrWinIn + " " + Format(HrIn(I))
    HrIn(I) = 0
    OutHrWinHigh = OutHrWinHigh + " " + Format(HrAbove(I))
    HrAbove(I) = 0
  Next I
  OutGPSStats = " "
  For iFor = 0 To 3
    OutGPSStats = OutGPSStats & " " & Right$("    " & Format$(GPSStatistics(iFor)), 4)
    GPSStatistics(iFor) = 0
  Next iFor
  Print #3, "HOP: " + OutPress
  Print #3, "HST: " + OutHrStats
  Print #3, "HLG: " + lblLatestGPS
  Print #3, "HGG:" + OutGPS
  Print #3, "HCT:" + OutCounters
  Print #3, "HWL:" + OutHrWinLow
  Print #3, "HWI:" + OutHrWinIn
  Print #3, "HWH:" + OutHrWinHigh
  Print #3, "HGS:" & OutGPSStats
  On Error GoTo NoStick4
  If UseMemStick Then
    Print #6, "HOP: " + OutPress
    Print #6, "HST: " + OutHrStats
    Print #6, "HLG: " + lblLatestGPS
    Print #6, "HGG:" + OutGPS
    Print #6, "HCT:" + OutCounters
    Print #6, "HWL:" + OutHrWinLow
    Print #6, "HWI:" + OutHrWinIn
    Print #6, "HWH:" + OutHrWinHigh
  End If
NoStick4:
  On Error GoTo 0
  For I = 0 To LastUnit
    HouseText = "HHK" + UnitTag(I) + ": "
    HouseText = HouseText + " " + frmHouse.lblHODB(I).Caption
    HouseText = HouseText + " " + frmHouse.lblLODB(I).Caption
    HouseText = HouseText + " " + frmHouse.lblHiVolt(I).Caption
    HouseText = HouseText + " " + frmHouse.lblMinus12(I).Caption
    HouseText = HouseText + " " + frmHouse.lblPlus12(I).Caption
    HouseText = HouseText + " " + frmHouse.lblPlus5(I).Caption
    HouseText = HouseText + " " + lblT1(I).Caption + " " + lblT2(I).Caption + " " + lblT3(I).Caption
    Print #3, HouseText
    On Error GoTo NoStick5
    If UseMemStick Then Print #6, HouseText
NoStick5:
    On Error GoTo 0
  Next I
  'Record and clear multiplicity
  For nUnit = 0 To LastUnit
    If (FirmVersion(nUnit) = 600) Or (FirmVersion(nUnit) = 700) Or (FirmVersion(nUnit) = 800) Then
      OutMult = "HMP" + UnitTag(nUnit) + ":"
      For nMult = 0 To maxMultiplicity
        OutMult = OutMult + " " + Format$(MultiplicitySummary(nMult, nUnit))
        LastMultiplicitySummary(nMult, nUnit) = 0
        MultiplicitySummary(nMult, nUnit) = 0
      Next nMult
      Print #3, OutMult
    End If
  Next nUnit
  Close #3
  For I = 0 To LastUnit
    ResetDeltaRef(I) = Counts(I)
  Next I
End If
End Sub

Public Static Sub HandleRdoBMessage(Message As String)
If InStr(Message, "Ver") > 0 Then
  frmHouse.lblRdoBVersion.Caption = Message
Else
End If
End Sub
Public Static Sub HandleRdoAMessage(Message As String)
If InStr(Message, "Ver") > 0 Then
  frmHouse.lblRdoAVersion.Caption = Message
Else
End If
End Sub

Public Static Sub NgrDecomTube(Current As String)
Dim MultString As String
Dim CtrString1 As String
Dim CtrString2 As String
Dim I As Integer
Dim II As Integer
Dim JJ As Integer
Dim ScalerCount As Long
Dim RemoteSeqHO As Long
Dim RemoteSeqLO As Long
Dim CurPls As Long
Dim CurHist As Integer
Dim CurValue As Single
Dim SciData As Boolean
Dim DatFlag As Integer
Dim EvSent As Integer
Dim EvTotal As Integer
Dim DiscFire As Boolean
Dim Time1(47) As Long
Dim MaxEvent As Integer
Dim RawTemp1 As Integer
Dim RawTemp2 As Integer
Dim iTest As Integer
RemoteSeen = True
'Master number, remote number, and scaler are independent of Remote firmware version
'Master Board Number
MasterNumber = Val("&H" & Mid$(Current, 1, 2)) And 7
If (MasterNumber < 0) Or (MasterNumber > LastMaster) Then
 LogEntry "Bad Master Number " & Format$(MasterNumber)
 Exit Sub
End If
'Remote Unit Address
RemoteInMaster = Val("&H" & Mid$(Current, 3, 2)) And 15
If (RemoteInMaster < 0) Or (RemoteInMaster > LastRemote(MasterNumber)) Then
 LogEntry "Bad Remote Number " & Format$(MasterNumber) & " " & Format$(RemoteInMaster)
 Exit Sub
End If
RemoteAddress = RemoteBaseAddress(MasterNumber) + RemoteInMaster
'Get the non-resetting counting scaler and compute the "deltas"
ScalerCount = Val("&H" & Mid$(Current, 5, 6))
Deltas(RemoteAddress) = ScalerCount - Counts(RemoteAddress)
If Deltas(RemoteAddress) < 0 Then
  Deltas(RemoteAddress) = Deltas(RemoteAddress) + DelCycle
End If
Counts(RemoteAddress) = ScalerCount
lblCts(RemoteAddress).Caption = Format$(Counts(RemoteAddress))
lblDel(RemoteAddress).Caption = Format$(Deltas(RemoteAddress))
If NotSeenYet(RemoteAddress) Then
  ResetDeltaRef(RemoteAddress) = ScalerCount
  NotSeenYet(RemoteAddress) = False
End If
lblHourDel(RemoteAddress).Caption = Format$(ScalerCount - ResetDeltaRef(RemoteAddress))
'Housekeeping, pulseheights (and timing) differ by firmware version
If FirmVersion(RemoteAddress) = 300 Then
  'Sequence Timer
  CtrString1 = "&H00" & Mid$(Current, 11, 4)
  CtrString2 = "&H00" & Mid$(Current, 15, 4)
  RemoteSeqHO = CLng(CtrString1)
  RemoteSeqLO = CLng(CtrString2)
  'Voltages
  For I = 0 To 3
    House(I, RemoteAddress) = bMux2Ngr(Mid$(Current, 4 * I + 19, 4), II, JJ)
    If II <> (I + 1) Then
      House(I, RemoteAddress) = -House(I, RemoteAddress)
    End If
  Next I
  'Temperature Sensors
  For I = 4 To 6
    RawTemp1 = Val("&H00" & Mid$(Current, 4 * I + 19, 2))
    RawTemp2 = Val("&H00" & Mid$(Current, 4 * I + 21, 2))
    If (RawTemp2 And 16) <> 0 Then
      House(I, RemoteAddress) = -(RawTemp1 Xor 255) + 1
    Else
      House(I, RemoteAddress) = RawTemp1
    End If
  Next I
  frmHouse.lblHODB(RemoteAddress).Caption = RemoteSeqHO
  frmHouse.lblLODB(RemoteAddress).Caption = RemoteSeqLO
  If RemoteAddress = 3 Then
    iTest = 1
  End If
  RemoteVoltages RemoteAddress
  lblT1(RemoteAddress).Caption = Format((0.5 * House(4, RemoteAddress)), "###0.0")
  lblT2(RemoteAddress).Caption = Format((0.5 * House(5, RemoteAddress)), "###0.0")
  lblT3(RemoteAddress).Caption = Format((0.5 * House(6, RemoteAddress)), "###0.0")
  EvSent = 0
  'Pulse Height Data
  For I = 0 To 15
    'JJ is the discriminator flag bit
    'II is the address (zero by definition for PHA)
    JJ = 0
    CurPls = bMux2Ngr(Mid$(Current$, 4 * I + 47, 4), II, JJ)
    'A zero pulse height and no pulse height are indistinguishable
    If (CurPls > 0) And (RemoteAddress <= LastUnit) And (II = 0) Then
      'First bump the relevant counters
      EvSent = EvSent + 1
      If CurPls < WinLimit(0, RemoteAddress) Then
        Below(RemoteAddress) = Below(RemoteAddress) + 1
      ElseIf CurPls > WinLimit(1, RemoteAddress) Then
        Above(RemoteAddress) = Above(RemoteAddress) + 1
      Else
        InArray(RemoteAddress) = InArray(RemoteAddress) + 1
      End If
      'Then tag the PH if the discriminator flag is set
      'and enter the PH into the proper histogram
      If JJ <> 0 Then
        CurHist = RemoteAddress
        CurValue = CurPls
        EnterMonitorHis CurValue, CurHist, 0
        If frmMonitor.Visible And ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
          frmREMOTE.lblPHA(I).Caption = Format(CurPls)
          frmREMOTE.lblPHA(I).BackColor = &HFFFF&
          frmREMOTE.lblPHA(I).Visible = True
        End If
      Else
        CurHist = RemoteAddress
        CurValue = CurPls
        EnterMonitorHis CurValue, CurHist, 1
        If frmMonitor.Visible And ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
          frmREMOTE.lblPHA(I).Caption = Format(CurPls)
          frmREMOTE.lblPHA(I).BackColor = &HFFFFFF
          frmREMOTE.lblPHA(I).Visible = True
        End If
      End If
    Else
      If frmMonitor.Visible And ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
        frmREMOTE.lblPHA(I).Caption = " 0 "
        frmREMOTE.lblPHA(I).Visible = False
      End If
    End If
  Next I
  If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then frmREMOTE.lblSent.Caption = Format$(EvSent)
ElseIf FirmVersion(RemoteAddress) = 600 Then
  'This is a multiplicity enabled unit
  'Science and housekeeping data formats are quite different
  DatFlag = (Val("&H" & Mid$(Current, 3, 2)) And 16) \ 16
  'DatFlag = (Asc(Mid$(Current, 2, 1))) \ 16
  frmHouse.lblRemStatus1(RemoteAddress).Caption = DatFlag
  SciData = (DatFlag And 1) = 1
  If SciData Then
    MultString = "LM" + UnitTag(RemoteAddress) & ":"
    'Format as science data
    frmHouse.lblRemStatus2(RemoteAddress).Caption = "Science"
    EvSent = Val("&H" & Mid$(Current, 11, 2))
    MultString = MultString + " " + Format$(EvSent)
    EvTotal = Val("&H" & Mid$(Current, 13, 2))
    MultString = MultString + " " + Format$(EvTotal)
    If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
        frmREMOTE.lblSent.Caption = Format$(EvSent)
        frmREMOTE.lblTotal.Caption = Format$(EvTotal)
    End If
    MaxEvent = EvSent
    If EvSent > 0 Then
      'Format errors of various kinds can make the
      'number of events sent in error, so limit it
      'to avoid array overflow problems, etc.
      If MaxEvent > nEv600 Then MaxEvent = nEv600
      'Pulse Height Data
      For I = 0 To MaxEvent - 1
        DiscFire = (Val("&H" & Mid$(Current, 2 * I + 15, 2)) And 128) <> 0
        If DiscFire Then
          MultString = MultString + " +"
        Else
          MultString = MultString + " -"
        End If
        CurPls = (Val("&H" & Mid$(Current, 2 * I + 15, 2)) And 127)
        MultString = MultString + Format$(CurPls)
        Time1(I) = Val("&H" & Mid$(Current, 2 * (I + nEv600) + 15, 2))
        Time1(I) = 256 * Time1(I) + Val("&H" & Mid$(Current, 2 * (I + 2 * nEv600) + 15, 2))
        MultString = MultString + " " + Format$(Time1(I))
        If (RemoteAddress <= LastUnit) Then
          If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
              frmREMOTE.lblPHA(I).Visible = True
              frmREMOTE.lblTime1(I).Visible = True
              frmREMOTE.lblPHA(I).Caption = Format(CurPls)
              If Not DiscFire Then
                frmREMOTE.lblPHA(I).BackColor = &HFFFF&
              Else
                frmREMOTE.lblPHA(I).BackColor = &HFFFFFF
              End If
              frmREMOTE.lblTime1(I).Caption = Format(Time1(I))
          End If
          'First bump the relevant counters
          If CurPls < WinLimit(0, RemoteAddress) Then
            Below(RemoteAddress) = Below(RemoteAddress) + 1
          ElseIf CurPls > WinLimit(1, RemoteAddress) Then
            Above(RemoteAddress) = Above(RemoteAddress) + 1
          Else
            InArray(RemoteAddress) = InArray(RemoteAddress) + 1
          End If
          'Do the multiplicity accounting
          'Note that the remote address is a global variable
          frmMultiplicity.Calculate Time1(I), DiscFire
          'Enter the PH and elapsed time into the proper histograms
          If Not DiscFire Then
            CurHist = RemoteAddress
            CurValue = CurPls
            EnterMonitorHis CurValue, CurHist, 0
            CurValue = Time1(I)
            CurHist = (LastUnit + 1) + RemoteAddress
            EnterMonitorHis CurValue, CurHist, 0
            CurHist = 2 * (LastUnit + 1) + RemoteAddress
            EnterMonitorHis CurValue, CurHist, 0
          Else
            CurHist = RemoteAddress
            CurValue = CurPls
            EnterMonitorHis CurValue, CurHist, 1
            CurValue = Time1(I)
            CurHist = (LastUnit + 1) + RemoteAddress
            EnterMonitorHis CurValue, CurHist, 1
            CurHist = 2 * (LastUnit + 1) + RemoteAddress
            EnterMonitorHis CurValue, CurHist, 1
          End If
        End If
      Next I
      If RecordFullTiming Then Print #2, MultString
      If RecordREM0Timing And (RemoteInMaster = 0) Then Print #10, MultString
      MultString = "Null MultString"
      If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
        If MaxEvent < nEv600 Then
          For I = MaxEvent To nEv600 - 1
            frmREMOTE.lblPHA(I).Visible = False
            frmREMOTE.lblTime1(I).Visible = False
          Next I
        Else
          For I = 0 To nEv600 - 1
            frmREMOTE.lblPHA(I).Visible = False
            frmREMOTE.lblTime1(I).Visible = False
          Next I
        End If
      End If
    Else
      If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
        For I = 0 To nEv600 - 1
          frmREMOTE.lblPHA(I).Visible = False
          frmREMOTE.lblTime1(I).Visible = False
        Next I
      End If
    End If
  Else
    'Format as housekeeping data
    'Sequence Timer
    CtrString1 = "&H00" & Mid$(Current, 11, 4)
    CtrString2 = "&H00" & Mid$(Current, 15, 4)
    RemoteSeqHO = CLng(CtrString1)
    RemoteSeqLO = CLng(CtrString2)
    'Status bytes
    frmHouse.lblRemStatus2(RemoteAddress).Caption = Val("&H" & Mid$(Current, 47, 2))
    frmHouse.lblVersion(RemoteAddress).Caption = Val("&H" & Mid$(Current, 49, 2))
    frmHouse.lblRevision(RemoteAddress).Caption = Val("&H" & Mid$(Current, 51, 2))
    frmHouse.lblResetType(RemoteAddress).Caption = Val("&H" & Mid$(Current, 53, 2))
    If (CInt(frmHouse.lblResetType(RemoteAddress).Caption) <> 0) Then
      Exception ("RemReset " & Format$(RemoteAddress) & " " & frmHouse.lblResetType(RemoteAddress).Caption)
      'HourDeltaRef(RemoteAddress) = CurrentScaler(RemoteAddress)
    End If
    'Voltages
    For I = 0 To 3
      House(I, RemoteAddress) = bMux2Ngr(Mid$(Current, 4 * I + 19, 4), II, JJ)
      If II <> (I + 1) Then
        House(I, RemoteAddress) = -House(I, RemoteAddress)
      End If
    Next I
    'Temperature Sensors
    For I = 4 To 6
      RawTemp1 = Val("&H00" & Mid$(Current, 4 * I + 19, 2))
      RawTemp2 = Val("&H00" & Mid$(Current, 4 * I + 21, 2))
      If (RawTemp2 And 16) <> 0 Then
        House(I, RemoteAddress) = -(RawTemp1 Xor 255) + 1
      Else
        House(I, RemoteAddress) = RawTemp1
      End If
    Next I
    frmHouse.lblHODB(RemoteAddress).Caption = RemoteSeqHO
    frmHouse.lblLODB(RemoteAddress).Caption = RemoteSeqLO
    RemoteVoltages RemoteAddress
    lblT1(RemoteAddress).Caption = Format((0.5 * House(4, RemoteAddress)), "###0.0")
    lblT2(RemoteAddress).Caption = Format((0.5 * House(5, RemoteAddress)), "###0.0")
    lblT3(RemoteAddress).Caption = Format((0.5 * House(6, RemoteAddress)), "###0.0")
  End If
Else
  Exception "Unsupported Firmware Version"
End If
End Sub

Public Sub SendCommand(Command As String)
If frmMonitor.comRack.PortOpen Then
  frmMonitor.comRack.Output = ">" & Command & Chr$(13) & Chr$(10)
  If InStr(Command, "Ackn") = 0 Then LogEntry "Command: " & Command
  LblCommandTime.Caption = CurTimTag
  lblCommandSent.Caption = Command
Else
  LogEntry "CmdPort Not Open: " & Command
  Exception "CmdPort Not Open: " & Command
End If
End Sub

Public Static Sub DecomLongTube(Current As String)
Dim MultString As String
Dim AbsString As String
Dim HexString As String
Dim SciData As Boolean
Dim DiscFire As Boolean
Dim ScalerCount As Long
Dim CurPls As Long
Dim HouseStartTime As Long
Dim HouseEndTime As Long
Dim LastTime As Long
Dim ThisTime As Long
Dim Time1(47) As Long
Dim CurValue As Single
Dim TrueTime(47) As Long
Dim iFor As Integer
Dim jFor As Integer
Dim II As Integer
Dim JJ As Integer
Dim DatFlag As Integer
Dim EvSent As Integer
Dim EvTotal As Integer
Dim MaxEvent As Integer
Dim CurHist As Integer
Dim RawTemp1 As Integer
Dim RawTemp2 As Integer
Dim Sequence As Integer
RemoteSeen = True
If VerboseDiagnostics = True Then
  HexString = Right$("00" & Hex$(Asc(Mid$(Current, 1, 1))), 2)
  HexString = HexString & " " & Right$("00" & Hex$(Asc(Mid$(Current, 2, 1))), 2)
  HexString = HexString & " " & Right$("00" & Hex$(Asc(Mid$(Current, 3, 1))), 2)
  HexString = HexString & Right$("00" & Hex$(Asc(Mid$(Current, 4, 1))), 2)
  HexString = HexString & Right$("00" & Hex$(Asc(Mid$(Current, 5, 1))), 2)
  HexString = HexString & " " & Right$("00" & Hex$(Asc(Mid$(Current, 6, 1))), 2)
  HexString = HexString & " " & Right$("00" & Hex$(Asc(Mid$(Current, 7, 1))), 2)
  HexString = HexString & " "
  For iFor = 8 To Len(Current)
    HexString = HexString & Right$("00" & Hex$(Asc(Mid$(Current, iFor, 1))), 2)
  Next iFor
  Print #2, "DecomLongTube: " & HexString
End If
'The first five bytes are independent of firmware version
'Master Board Number
MasterNumber = Asc(Mid$(Current$, 1, 1)) And 7
If (MasterNumber < 0) Or (MasterNumber > LastMaster) Then
 LogEntry "Bad Master Number " & Format$(MasterNumber)
 Exit Sub
End If
Sequence = Asc(Mid$(Current$, 1, 1)) And 48
Sequence = Sequence / 16
If VerboseDiagnostics = True Then Print #2, "Sequence " & Format$(Sequence)
'Remote Unit Address
RemoteInMaster = Asc(Mid$(Current$, 2, 1)) And 15
If (RemoteInMaster < 0) Or (RemoteInMaster > LastRemote(MasterNumber)) Then
 LogEntry "Bad Remote Number " & Format$(MasterNumber) & " " & Format$(RemoteInMaster)
 Exit Sub
End If
RemoteAddress = RemoteBaseAddress(MasterNumber) + RemoteInMaster
If Sequence = 0 Then
  'Get the non-resetting counting scaler and compute the "deltas"
  ScalerCount = Asc(Mid$(Current, 3, 1))
  ScalerCount = (256 * ScalerCount) + Asc(Mid$(Current, 4, 1))
  ScalerCount = (256 * ScalerCount) + Asc(Mid$(Current, 5, 1))
  If VerboseDiagnostics = True Then Print #2, "Scaler Count " & Format$(ScalerCount)
  Deltas(RemoteAddress) = ScalerCount - Counts(RemoteAddress)
  If Deltas(RemoteAddress) < 0 Then
    Deltas(RemoteAddress) = Deltas(RemoteAddress) + DelCycle
  End If
  Counts(RemoteAddress) = ScalerCount
  lblCts(RemoteAddress).Caption = Format$(Counts(RemoteAddress))
  lblDel(RemoteAddress).Caption = Format$(Deltas(RemoteAddress))
  If NotSeenYet(RemoteAddress) Then
    ResetDeltaRef(RemoteAddress) = ScalerCount
    NotSeenYet(RemoteAddress) = False
  End If
  lblHourDel(RemoteAddress).Caption = Format$(ScalerCount - ResetDeltaRef(RemoteAddress))
End If
If FirmVersion(RemoteAddress) = 700 Then
  'This is a multiplicity enabled unit with extended event buffers
  'Science and housekeeping data formats are quite different
  'Housekeeping format is identical to that of the 600 series
  'and is handled by the "DecomShortTube" routine
  'Event format uses a longer record that is handled by this "DecomLongTube" routine
  DatFlag = (Asc(Mid$(Current, 2, 1))) \ 16
  frmHouse.lblRemStatus1(RemoteAddress).Caption = DatFlag
  SciData = (DatFlag And 1) = 1
  If SciData Then
    MultString = "LM" + UnitTag(RemoteAddress) & ":"
    'Format as science data
    frmHouse.lblRemStatus2(RemoteAddress).Caption = "Science"
    EvSent = Asc(Mid$(Current, 6, 1))
    MultString = MultString + " " + Format$(EvSent)
    EvTotal = Asc(Mid$(Current, 7, 1))
    MultString = MultString + " " + Format$(EvTotal)
    If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
      frmREMOTE.lblSent.Caption = Format$(EvSent)
      frmREMOTE.lblTotal.Caption = Format$(EvTotal)
      For iFor = 0 To nEv700 - 1
        frmREMOTE.lblTrueTime(iFor).Visible = False
      Next iFor
    End If
    MaxEvent = EvSent
    If EvSent > 0 Then
      'Format errors of various kinds can make the
      'number of events sent in error, so limit it
      'to avoid array overflow problems, etc.
      If MaxEvent > nEv700 Then MaxEvent = nEv700
      'Pulse Height Data
      For iFor = 0 To MaxEvent - 1
        DiscFire = (Asc(Mid$(Current, iFor + 8, 1)) And 128) <> 0
        If DiscFire Then
          MultString = MultString + " +"
        Else
          MultString = MultString + " -"
        End If
        CurPls = (Asc(Mid$(Current, iFor + 8, 1)) And 127)
        MultString = MultString + Format$(CurPls)
        Time1(iFor) = Asc(Mid$(Current, iFor + nEv700 + 8, 1))
        Time1(iFor) = 256 * Time1(iFor) + Asc(Mid$(Current, iFor + 2 * nEv700 + 8, 1))
        MultString = MultString + " " + Format$(Time1(iFor))
        If (RemoteAddress <= LastUnit) Then
          If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
              frmREMOTE.lblPHA(iFor).Visible = True
              frmREMOTE.lblTime1(iFor).Visible = True
              frmREMOTE.lblPHA(iFor).Caption = Format(CurPls)
              If Not DiscFire Then
                frmREMOTE.lblPHA(iFor).BackColor = &HFFFF&
              Else
                frmREMOTE.lblPHA(iFor).BackColor = &HFFFFFF
              End If
              frmREMOTE.lblTime1(iFor).Caption = Format(Time1(iFor))
          End If
          'First bump the relevant counters
          If CurPls < WinLimit(0, RemoteAddress) Then
            Below(RemoteAddress) = Below(RemoteAddress) + 1
          ElseIf CurPls > WinLimit(1, RemoteAddress) Then
            Above(RemoteAddress) = Above(RemoteAddress) + 1
          Else
            InArray(RemoteAddress) = InArray(RemoteAddress) + 1
          End If
          'Do the multiplicity accounting
          'Note that the remote address is a global variable
          frmMultiplicity.Calculate Time1(iFor), DiscFire
          'Enter the PH and elapsed time into the proper histograms
          If Not DiscFire Then
            CurHist = RemoteAddress
            CurValue = CurPls
            EnterMonitorHis CurValue, CurHist, 0
            CurValue = Time1(iFor)
            CurHist = (LastUnit + 1) + RemoteAddress
            EnterMonitorHis CurValue, CurHist, 0
            CurHist = 2 * (LastUnit + 1) + RemoteAddress
            EnterMonitorHis CurValue, CurHist, 0
          Else
            CurHist = RemoteAddress
            CurValue = CurPls
            EnterMonitorHis CurValue, CurHist, 1
            CurValue = Time1(iFor)
            CurHist = (LastUnit + 1) + RemoteAddress
            EnterMonitorHis CurValue, CurHist, 1
            CurHist = 2 * (LastUnit + 1) + RemoteAddress
            EnterMonitorHis CurValue, CurHist, 1
          End If
        End If
      Next iFor
      If RecordFullTiming Then Print #2, MultString
      If RecordREM0Timing And (RemoteInMaster = 0) Then Print #10, MultString
      MultString = "Null MultString"
      If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
        If MaxEvent < nEv700 Then
          For iFor = MaxEvent To nEv700 - 1
            frmREMOTE.lblPHA(iFor).Visible = False
            frmREMOTE.lblTime1(iFor).Visible = False
          Next iFor
        End If
      End If
    Else
      If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
        For iFor = 0 To nEv700 - 1
          frmREMOTE.lblPHA(iFor).Visible = False
          frmREMOTE.lblTime1(iFor).Visible = False
        Next iFor
      End If
    End If
  Else
    Exception "Housekeeping data in long readout for 700 series"
  End If
ElseIf FirmVersion(RemoteAddress) = 800 Then
  'This is a multiplicity enabled unit with extended event buffers
  'Science and housekeeping data formats are quite different
  'Housekeeping format is identical to that of the 600 and 700 series
  'and is handled by the "DecomShortTube" routine
  'Event format uses a longer record that is handled by this "DecomLongTube" routine
  'Housekeeping data alternately may appear "inline"
  DatFlag = (Asc(Mid$(Current, 2, 1))) \ 16
  frmHouse.lblRemStatus1(RemoteAddress).Caption = DatFlag
  SciData = (DatFlag And 1) = 1
  If SciData Then
    MultString = "REL" + UnitTag(RemoteAddress) & ":"
    AbsString = "ABS" + UnitTag(RemoteAddress) & ":"
    'Format as science data
    'frmHouse.lblRemStatus2(RemoteAddress).Caption = "Science"
    EvSent = Asc(Mid$(Current, 6, 1))
    EvTotal = Asc(Mid$(Current, 7, 1))
    MultString = MultString + " " + Format$(EvSent)
    MultString = MultString + " " + Format$(EvTotal)
    AbsString = AbsString + " " + Format$(EvSent)
    AbsString = AbsString + " " + Format$(EvTotal)
    If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
        frmREMOTE.lblSent.Caption = Format$(EvSent)
        frmREMOTE.lblTotal.Caption = Format$(EvTotal)
    End If
    MaxEvent = EvSent
    If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
      For iFor = 0 To nEv800 - 1
        frmREMOTE.lblPHA(iFor).Visible = False
        frmREMOTE.lblTime1(iFor).Visible = False
        frmREMOTE.lblTrueTime(iFor).Visible = False
      Next iFor
    End If
    If EvSent > 0 Then
      'Format errors of various kinds can make the
      'number of events sent in error, so limit it
      'to avoid array overflow problems, etc.
      If MaxEvent > nEv800 Then MaxEvent = nEv800
      'Pulse Height Data
      For iFor = 0 To MaxEvent - 1
        DiscFire = (Asc(Mid$(Current, iFor + 8, 1)) And 128) <> 0
        If DiscFire Then
          MultString = MultString + " +"
          AbsString = AbsString + " +"
        Else
          MultString = MultString + " -"
          AbsString = AbsString + " -"
        End If
        CurPls = (Asc(Mid$(Current, iFor + 8, 1)) And 127)
        MultString = MultString + Format$(CurPls)
        AbsString = AbsString + Format$(CurPls)
        ThisTime = Asc(Mid$(Current, iFor + nEv800 + 8, 1))
        ThisTime = 256 * ThisTime + Asc(Mid$(Current, iFor + 2 * nEv800 + 8, 1))
        TrueTime(iFor) = ThisTime
        If DiscFire And (CurPls = 123) Then
          'This is a timer overflow marker
          Time1(iFor) = ThisTime
          frmHouse.lblRemStatus2(RemoteAddress).Caption = Format$(ThisTime)
          frmHouse.lblRemStatus2(RemoteAddress).BackColor = ColorPink
          If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
            frmREMOTE.lblPHA(iFor).Visible = True
            frmREMOTE.lblPHA(iFor).Caption = Format(CurPls)
            frmREMOTE.lblPHA(iFor).BackColor = ColorPink
            frmREMOTE.lblTime1(iFor).Visible = True
            frmREMOTE.lblTime1(iFor).Caption = Format(Time1(iFor))
            frmREMOTE.lblTime1(iFor).BackColor = ColorPink
            frmREMOTE.lblTrueTime(iFor).Visible = True
            frmREMOTE.lblTrueTime(iFor).Caption = Format(TrueTime(iFor))
            frmREMOTE.lblTrueTime(iFor).BackColor = ColorPink
          End If
        ElseIf DiscFire And (CurPls = 125) Then
          'This is an embedded housekeeping start
          Time1(iFor) = ThisTime
          HouseStartTime = ThisTime
          frmHouse.lblHODB(RemoteAddress).Caption = Format$(ThisTime)
          frmHouse.lblHODB(RemoteAddress).BackColor = ColorGreen
          If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
            frmREMOTE.lblPHA(iFor).Visible = True
            frmREMOTE.lblPHA(iFor).Caption = Format(CurPls)
            frmREMOTE.lblPHA(iFor).BackColor = ColorGreen
            frmREMOTE.lblTime1(iFor).Visible = True
            frmREMOTE.lblTime1(iFor).Caption = Format(Time1(iFor))
            frmREMOTE.lblTime1(iFor).BackColor = ColorGreen
            frmREMOTE.lblTrueTime(iFor).Visible = True
            frmREMOTE.lblTrueTime(iFor).Caption = Format(TrueTime(iFor))
            frmREMOTE.lblTrueTime(iFor).BackColor = ColorGreen
          End If
          iFor = iFor + 1
'           frmHouse.lblRemStatus2(RemoteAddress).Caption = Asc(Mid$(Current, iFor * 3 + 4, 1))
            frmHouse.lblVersion(RemoteAddress).Caption = Asc(Mid$(Current, iFor + 8, 1))
            'Voltages
            For jFor = 0 To 3
              House(jFor, RemoteAddress) = bMux2(Mid$(Current, iFor + jFor + nEv800 + 8, 1) & Mid$(Current, iFor + jFor + 2 * nEv800 + 8, 1), II, JJ)
              If II <> (jFor + 1) Then
                House(jFor, RemoteAddress) = -House(jFor, RemoteAddress)
              End If
            Next jFor
          iFor = iFor + 1
            frmHouse.lblRevision(RemoteAddress).Caption = Asc(Mid$(Current, iFor + 8, 1))
          iFor = iFor + 1
            frmHouse.lblResetType(RemoteAddress).Caption = Asc(Mid$(Current, iFor + 8, 1))
          iFor = iFor + 1
          iFor = iFor + 1
            'Temperature Sensors
            HexString = ""
          'T1
            HexString = HexString & Right$("00" & Hex$(Asc(Mid$(Current, iFor + nEv800 + 8, 1))), 2)
            HexString = HexString & Right$("00" & Hex$(Asc(Mid$(Current, iFor + 2 * nEv800 + 8, 1))), 2)
            If (Asc(Mid$(Current, iFor + 2 * nEv800 + 8, 1)) And 16) <> 0 Then
              House(4, RemoteAddress) = -((Asc(Mid$(Current, iFor + nEv800 + 8, 1)) Xor 255) + 1)
            Else
              House(4, RemoteAddress) = Asc(Mid$(Current, iFor + nEv800 + 8, 1))
            End If
         'T2
            HexString = HexString & Right$("00" & Hex$(Asc(Mid$(Current, iFor + 8, 1))), 2)
            HexString = HexString & Right$("00" & Hex$(Asc(Mid$(Current, iFor + nEv800 + 9, 1))), 2)
            If (Asc(Mid$(Current, iFor + nEv800 + 9, 1)) And 16) <> 0 Then
              House(5, RemoteAddress) = -((Asc(Mid$(Current, iFor + 8, 1)) Xor 255) + 1)
            Else
              House(5, RemoteAddress) = Asc(Mid$(Current, iFor + 8, 1))
            End If
          'T3
            HexString = HexString & Right$("00" & Hex$(Asc(Mid$(Current, iFor + 2 * nEv800 + 9, 1))), 2)
            HexString = HexString & Right$("00" & Hex$(Asc(Mid$(Current, iFor + 9, 1))), 2)
            If (Asc(Mid$(Current, iFor + 9, 1)) And 16) <> 0 Then
              House(6, RemoteAddress) = -((Asc(Mid$(Current, iFor + 2 * nEv800 + 9, 1)) Xor 255) + 1)
            Else
              House(6, RemoteAddress) = Asc(Mid$(Current, iFor + 2 * nEv800 + 9, 1))
            End If
          iFor = iFor + 1
            'lblDebugMessage.Caption = HexString
            RemoteVoltages RemoteAddress
            lblT1(RemoteAddress).Caption = Format((0.5 * House(4, RemoteAddress)), "###0.0")
            lblT2(RemoteAddress).Caption = Format((0.5 * House(5, RemoteAddress)), "###0.0")
            lblT3(RemoteAddress).Caption = Format((0.5 * House(6, RemoteAddress)), "###0.0")
        ElseIf DiscFire And (CurPls = 124) Then
          'This is a housekeeping stop
          Time1(iFor) = ThisTime
          HouseEndTime = ThisTime
          If HouseEndTime > HouseStartTime Then
            frmHouse.lblLODB(RemoteAddress).Caption = Format$(HouseEndTime - HouseStartTime)
          Else
            frmHouse.lblLODB(RemoteAddress).Caption = Format$(65536 + HouseEndTime - HouseStartTime)
          End If
          frmHouse.lblLODB(RemoteAddress).BackColor = ColorBlue
          If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
            frmREMOTE.lblPHA(iFor).Visible = True
            frmREMOTE.lblPHA(iFor).Caption = Format(CurPls)
            frmREMOTE.lblPHA(iFor).BackColor = ColorBlue
            frmREMOTE.lblTime1(iFor).Visible = True
            frmREMOTE.lblTime1(iFor).Caption = Format(Time1(iFor))
            frmREMOTE.lblTime1(iFor).BackColor = ColorBlue
            frmREMOTE.lblTrueTime(iFor).Visible = True
            frmREMOTE.lblTrueTime(iFor).Caption = Format(TrueTime(iFor))
            frmREMOTE.lblTrueTime(iFor).BackColor = ColorBlue
          End If
        ElseIf DiscFire And (CurPls = 126) Then
          'This is a time sync
          Time1(iFor) = 0
          If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
            frmREMOTE.lblPHA(iFor).Visible = True
            frmREMOTE.lblPHA(iFor).Caption = Format(CurPls)
            frmREMOTE.lblPHA(iFor).BackColor = ColorRed
            frmREMOTE.lblTime1(iFor).Visible = True
            frmREMOTE.lblTime1(iFor).Caption = Format(Time1(iFor))
            frmREMOTE.lblTime1(iFor).BackColor = ColorRed
            frmREMOTE.lblTrueTime(iFor).Visible = True
            frmREMOTE.lblTrueTime(iFor).Caption = Format(TrueTime(iFor))
            frmREMOTE.lblTrueTime(iFor).BackColor = ColorRed
          End If
        Else
          If ThisTime > LastTime Then
            Time1(iFor) = ThisTime - LastTime
          Else
            Time1(iFor) = 65536 + ThisTime - LastTime
          End If
          LastTime = ThisTime
          If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
            frmREMOTE.lblPHA(iFor).Visible = True
            frmREMOTE.lblPHA(iFor).Caption = Format(CurPls)
            If Not DiscFire Then
              frmREMOTE.lblPHA(iFor).BackColor = ColorYellow
              frmREMOTE.lblTime1(iFor).BackColor = ColorYellow
              frmREMOTE.lblTrueTime(iFor).BackColor = ColorYellow
            Else
              frmREMOTE.lblPHA(iFor).BackColor = ColorWhite
              frmREMOTE.lblTime1(iFor).BackColor = ColorWhite
              frmREMOTE.lblTrueTime(iFor).BackColor = ColorWhite
            End If
            frmREMOTE.lblTime1(iFor).Visible = True
            frmREMOTE.lblTime1(iFor).Caption = Format(Time1(iFor))
            frmREMOTE.lblTrueTime(iFor).Visible = True
            frmREMOTE.lblTrueTime(iFor).Caption = Format(TrueTime(iFor))
          End If
        End If
        MultString = MultString + " " + Format$(Time1(iFor))
        AbsString = AbsString + " " + Format$(TrueTime(iFor))
          If (Not DiscFire) Or (DiscFire And (CurPls < 122)) Then
            'This is an actual event
            'First bump the relevant counters
            If CurPls < WinLimit(0, RemoteAddress) Then
              Below(RemoteAddress) = Below(RemoteAddress) + 1
            ElseIf CurPls > WinLimit(1, RemoteAddress) Then
              Above(RemoteAddress) = Above(RemoteAddress) + 1
            Else
              InArray(RemoteAddress) = InArray(RemoteAddress) + 1
            End If
            'Do the multiplicity accounting
            'Note that the remote address is a global variable
            frmMultiplicity.Calculate Time1(iFor), DiscFire
            'Enter the PH and elapsed time into the proper histograms
            If Not DiscFire Then
              CurHist = RemoteAddress
              CurValue = CurPls
              EnterMonitorHis CurValue, CurHist, 0
              CurValue = Time1(iFor)
              CurHist = (LastUnit + 1) + RemoteAddress
              EnterMonitorHis CurValue, CurHist, 0
              CurHist = 2 * (LastUnit + 1) + RemoteAddress
              EnterMonitorHis CurValue, CurHist, 0
            Else
              CurHist = RemoteAddress
              CurValue = CurPls
              EnterMonitorHis CurValue, CurHist, 1
              CurValue = Time1(iFor)
              CurHist = (LastUnit + 1) + RemoteAddress
              EnterMonitorHis CurValue, CurHist, 1
              CurHist = 2 * (LastUnit + 1) + RemoteAddress
              EnterMonitorHis CurValue, CurHist, 1
            End If
          End If
      Next iFor
    End If
    If RecordFullTiming Then Print #2, MultString
    If RecordREM0Timing And (RemoteInMaster = 0) Then Print #10, MultString
    If RecordAbsoluteTiming Then Print #10, AbsString
    MultString = "Null MultString"
    AbsString = "Null AbsString"
  Else
    Exception "Housekeeping data in long readout for 800 series"
  End If
End If
End Sub
