VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmPanel 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "MIP LEE Main Console"
   ClientHeight    =   8670
   ClientLeft      =   1275
   ClientTop       =   945
   ClientWidth     =   10335
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00000000&
   Icon            =   "Panel.frx":0000
   LinkTopic       =   "Form1"
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   8670
   ScaleWidth      =   10335
   Begin VB.Frame Frame4 
      Caption         =   "BBR Playback"
      Height          =   3510
      Left            =   5310
      TabIndex        =   139
      Top             =   5160
      Width           =   2685
      Begin VB.CommandButton btnReadFrom 
         Caption         =   "Read From"
         Height          =   285
         Left            =   1230
         TabIndex        =   143
         Top             =   210
         Width           =   1215
      End
      Begin VB.FileListBox File1 
         Height          =   1455
         Left            =   60
         Pattern         =   "*.CRD"
         TabIndex        =   142
         Top             =   1920
         Width           =   2475
      End
      Begin VB.DirListBox Dir1 
         Height          =   1215
         Left            =   90
         TabIndex        =   141
         Top             =   570
         Width           =   2445
      End
      Begin VB.CommandButton btnReadOneBBRFile 
         Caption         =   "Read One"
         Height          =   285
         Left            =   120
         TabIndex        =   140
         Top             =   210
         Width           =   1095
      End
   End
   Begin VB.Frame Frame8 
      Caption         =   "Memory Card Operation"
      Height          =   1815
      Left            =   7920
      TabIndex        =   120
      Top             =   6870
      Width           =   2415
      Begin VB.CheckBox chkRejectBad 
         Caption         =   "Reject Bad"
         Height          =   255
         Left            =   1140
         TabIndex        =   137
         Top             =   1200
         Value           =   1  'Checked
         Width           =   1335
      End
      Begin VB.CheckBox chkAdjustCtr 
         Caption         =   "Adjust Ctr"
         Height          =   255
         Left            =   1170
         TabIndex        =   136
         Top             =   1470
         Width           =   1335
      End
      Begin VB.CommandButton btnImportCardFile 
         Caption         =   "Import"
         Height          =   255
         Left            =   1320
         TabIndex        =   134
         Top             =   870
         Width           =   855
      End
      Begin VB.CommandButton btnRecordMemCard 
         Caption         =   "oRecord"
         Height          =   255
         Left            =   1320
         TabIndex        =   133
         Top             =   570
         Width           =   855
      End
      Begin VB.CommandButton btnNoCardWrite 
         Caption         =   "No Write"
         Height          =   255
         Left            =   90
         TabIndex        =   124
         Top             =   510
         Width           =   1065
      End
      Begin VB.CommandButton btnReadMemoryCard 
         Caption         =   "Read"
         Height          =   255
         Left            =   180
         TabIndex        =   123
         Top             =   1170
         Width           =   855
      End
      Begin VB.CommandButton btnSetReadAddress 
         Caption         =   "Set Rd>"
         Height          =   255
         Left            =   180
         TabIndex        =   122
         Top             =   240
         Width           =   855
      End
      Begin VB.TextBox txtMemoryReadAddress 
         Alignment       =   1  'Right Justify
         Height          =   285
         Left            =   1200
         TabIndex        =   121
         Text            =   "0"
         Top             =   210
         Width           =   975
      End
      Begin VB.Label lblMultiRead 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H0000FFFF&
         Caption         =   "Multi?"
         Height          =   195
         Left            =   360
         TabIndex        =   135
         Top             =   900
         Width           =   525
      End
   End
   Begin MSCommLib.MSComm comCSBFDownlink 
      Left            =   10500
      Top             =   2430
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
      BaudRate        =   19200
   End
   Begin VB.Frame Frame7 
      Caption         =   "CSBF Downlink"
      Height          =   1455
      Left            =   7980
      TabIndex        =   110
      Top             =   0
      Width           =   2355
      Begin VB.VScrollBar vsbCSBFDownlink 
         Height          =   735
         Left            =   90
         Max             =   20
         Min             =   1
         TabIndex        =   111
         Top             =   330
         Value           =   3
         Width           =   255
      End
      Begin Threed.SSRibbon btdCSBFDownlink 
         Height          =   255
         Left            =   450
         TabIndex        =   112
         Top             =   240
         Width           =   255
         _Version        =   65536
         _ExtentX        =   445
         _ExtentY        =   445
         _StockProps     =   65
         BackColor       =   255
         GroupNumber     =   3
         PictureDnChange =   0
      End
      Begin VB.Label lblTotRead 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Left            =   840
         TabIndex        =   118
         Top             =   1080
         Width           =   120
      End
      Begin VB.Label lblnBytes 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Left            =   2040
         TabIndex        =   117
         Top             =   690
         Width           =   120
      End
      Begin VB.Label lblDownRoute 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Left            =   2040
         TabIndex        =   116
         Top             =   450
         Width           =   120
      End
      Begin VB.Label nDownlinkReport 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Left            =   2040
         TabIndex        =   115
         Top             =   210
         Width           =   120
      End
      Begin VB.Label lblnReadCSBFDownlink 
         AutoSize        =   -1  'True
         Caption         =   "nRead"
         Height          =   195
         Left            =   450
         TabIndex        =   114
         Top             =   840
         Width           =   570
      End
      Begin VB.Label lblCSBFDownlink 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "00"
         Height          =   195
         Left            =   480
         TabIndex        =   113
         Top             =   570
         Width           =   225
      End
   End
   Begin VB.Frame Frame6 
      Caption         =   "Latest Downlink Report"
      Height          =   5415
      Left            =   7980
      TabIndex        =   106
      Top             =   1440
      Width           =   2355
      Begin VB.Label lblDownlinkReportTime 
         AutoSize        =   -1  'True
         Caption         =   "Time"
         Height          =   195
         Left            =   1260
         TabIndex        =   132
         Top             =   210
         Width           =   420
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "at"
         Height          =   225
         Left            =   1050
         TabIndex        =   131
         Top             =   210
         Width           =   180
      End
      Begin VB.Label lblMCKilobytesUsed 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "0.00"
         Height          =   195
         Left            =   270
         TabIndex        =   126
         Top             =   450
         Width           =   390
      End
      Begin VB.Label Label9 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "MegaBytes Used"
         Height          =   195
         Left            =   720
         TabIndex        =   125
         Top             =   450
         Width           =   1440
      End
      Begin VB.Label lblItemValue 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Value"
         Height          =   195
         Index           =   0
         Left            =   1200
         TabIndex        =   109
         Top             =   720
         Width           =   495
      End
      Begin VB.Label lblItemDesc 
         AutoSize        =   -1  'True
         Caption         =   "Desc"
         Height          =   195
         Index           =   0
         Left            =   210
         TabIndex        =   108
         Top             =   720
         Width           =   450
      End
      Begin VB.Label lblnDownlinkReport 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   225
         Left            =   870
         TabIndex        =   107
         Top             =   210
         Width           =   120
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "!! Mess with this Stuff at Your Own Peril  !! "
      ClipControls    =   0   'False
      Height          =   585
      Left            =   0
      TabIndex        =   104
      Top             =   4590
      Width           =   7995
      Begin VB.CommandButton btnCRLF 
         Caption         =   "CRLF"
         Height          =   255
         Left            =   870
         TabIndex        =   128
         Top             =   240
         Width           =   705
      End
      Begin VB.CommandButton btnClearText 
         Caption         =   "Clear"
         Height          =   255
         Left            =   120
         TabIndex        =   127
         Top             =   240
         Width           =   645
      End
      Begin VB.CommandButton btnRequestScienceData 
         Caption         =   "RSD"
         Height          =   285
         Left            =   7050
         TabIndex        =   105
         Top             =   210
         Width           =   645
      End
      Begin VB.Label lblTextFormat 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "ASCII"
         Height          =   225
         Left            =   1710
         TabIndex        =   130
         Top             =   270
         Width           =   465
      End
      Begin VB.Label lblInputEcho 
         AutoSize        =   -1  'True
         Caption         =   "NoEcho"
         Height          =   195
         Left            =   2400
         TabIndex        =   129
         Top             =   270
         Width           =   690
      End
   End
   Begin VB.TextBox txtDisplay 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Courier"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3525
      Left            =   -30
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   99
      Top             =   5160
      Width           =   5355
   End
   Begin VB.Frame Frame3 
      Caption         =   "Clock Time"
      Height          =   585
      Left            =   4440
      TabIndex        =   85
      Top             =   2490
      Width           =   3555
      Begin VB.Label lblCurTime 
         AutoSize        =   -1  'True
         Caption         =   "ClockTime"
         Height          =   195
         Left            =   150
         TabIndex        =   86
         Top             =   300
         Width           =   900
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Altimeters"
      Height          =   1545
      Left            =   4440
      TabIndex        =   80
      Top             =   3060
      Width           =   1755
      Begin VB.Label lblAltimeterTemperature 
         Caption         =   "Temp-2"
         Height          =   225
         Index           =   1
         Left            =   900
         TabIndex        =   84
         Top             =   510
         Width           =   735
      End
      Begin VB.Label lblAltimeterTemperature 
         Caption         =   "Temp-1"
         Height          =   225
         Index           =   0
         Left            =   90
         TabIndex        =   83
         Top             =   510
         Width           =   735
      End
      Begin VB.Label lblAltitude 
         Caption         =   "Press-2"
         Height          =   225
         Index           =   1
         Left            =   870
         TabIndex        =   82
         Top             =   240
         Width           =   735
      End
      Begin VB.Label lblAltitude 
         Caption         =   "Press-1"
         Height          =   225
         Index           =   0
         Left            =   90
         TabIndex        =   81
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Software Version"
      Height          =   525
      Left            =   4440
      TabIndex        =   78
      Top             =   1980
      Width           =   3555
      Begin VB.Label lblSoftwareVersion 
         AutoSize        =   -1  'True
         Caption         =   "Ver 2.13; Melbourne 7/3/11"
         Height          =   195
         Left            =   240
         TabIndex        =   79
         Top             =   240
         Width           =   2400
      End
   End
   Begin Threed.SSFrame SSFrame9 
      Height          =   2625
      Left            =   3510
      TabIndex        =   28
      Top             =   1980
      Width           =   945
      _Version        =   65536
      _ExtentX        =   1667
      _ExtentY        =   4630
      _StockProps     =   14
      Caption         =   "Show"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.CommandButton btnShowPMTVolts 
         Caption         =   "HiVolt"
         Height          =   255
         Left            =   90
         TabIndex        =   72
         Top             =   1590
         Width           =   675
      End
      Begin VB.CommandButton btnShowLog 
         Caption         =   "Log"
         Height          =   255
         Left            =   90
         TabIndex        =   71
         Top             =   1260
         Width           =   675
      End
      Begin VB.CommandButton btnShowTemperature 
         Caption         =   "Pulse"
         Height          =   255
         Left            =   90
         TabIndex        =   59
         Top             =   930
         Width           =   675
      End
      Begin VB.CommandButton btnShowStatus 
         Caption         =   "Hskp"
         Height          =   255
         Left            =   90
         TabIndex        =   56
         Top             =   600
         Width           =   675
      End
      Begin VB.CommandButton btnShowB 
         Caption         =   "Graph"
         Height          =   255
         Left            =   90
         TabIndex        =   29
         Top             =   270
         Width           =   675
      End
   End
   Begin Threed.SSFrame fraLEEData 
      Height          =   1455
      Left            =   5010
      TabIndex        =   8
      Top             =   0
      Width           =   2985
      _Version        =   65536
      _ExtentX        =   5265
      _ExtentY        =   2566
      _StockProps     =   14
      Caption         =   "Umbilical Data"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.VScrollBar vsbDataPort 
         Height          =   735
         Left            =   1140
         Max             =   20
         Min             =   1
         TabIndex        =   91
         Top             =   570
         Value           =   1
         Width           =   255
      End
      Begin VB.OptionButton optTlmBitRate 
         Caption         =   "38400"
         Height          =   255
         Index           =   3
         Left            =   1950
         TabIndex        =   90
         Top             =   900
         Value           =   -1  'True
         Width           =   945
      End
      Begin VB.OptionButton optTlmBitRate 
         Caption         =   "9600"
         Height          =   255
         Index           =   2
         Left            =   1950
         TabIndex        =   89
         Top             =   660
         Width           =   945
      End
      Begin VB.OptionButton optTlmBitRate 
         Caption         =   "4800"
         Height          =   255
         Index           =   1
         Left            =   1950
         TabIndex        =   88
         Top             =   420
         Width           =   945
      End
      Begin VB.OptionButton optTlmBitRate 
         Caption         =   "2400"
         Height          =   255
         Index           =   0
         Left            =   1950
         TabIndex        =   87
         Top             =   180
         Width           =   945
      End
      Begin VB.CommandButton btnSwapFile 
         Caption         =   "+"
         Height          =   225
         Index           =   0
         Left            =   60
         TabIndex        =   19
         Top             =   990
         Width           =   375
      End
      Begin VB.CommandButton btnRecord 
         Caption         =   "Record"
         Height          =   255
         Index           =   0
         Left            =   60
         TabIndex        =   18
         Top             =   720
         Width           =   855
      End
      Begin Threed.SSRibbon btdLEEData 
         Height          =   240
         Left            =   1500
         TabIndex        =   9
         Top             =   240
         Width           =   255
         _Version        =   65536
         _ExtentX        =   445
         _ExtentY        =   423
         _StockProps     =   65
         BackColor       =   255
         PictureDnChange =   0
      End
      Begin VB.Label lblDataPort 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "00"
         Height          =   195
         Left            =   1140
         TabIndex        =   92
         Top             =   300
         Width           =   225
      End
      Begin VB.Label lblLEENread 
         AutoSize        =   -1  'True
         Caption         =   "nRead"
         Height          =   195
         Left            =   180
         TabIndex        =   14
         Top             =   420
         Width           =   570
      End
   End
   Begin Threed.SSFrame fraCommand 
      Height          =   1455
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   5025
      _Version        =   65536
      _ExtentX        =   8864
      _ExtentY        =   2566
      _StockProps     =   14
      Caption         =   "Command"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.OptionButton optComMode 
         Caption         =   "LOS"
         Height          =   285
         Index           =   3
         Left            =   3840
         TabIndex        =   138
         Top             =   855
         Width           =   975
      End
      Begin VB.OptionButton optComMode 
         Caption         =   "Classic"
         Height          =   285
         Index           =   2
         Left            =   3840
         TabIndex        =   103
         Top             =   1110
         Width           =   975
      End
      Begin VB.OptionButton optComMode 
         Caption         =   "Iridium"
         Height          =   285
         Index           =   1
         Left            =   3840
         TabIndex        =   97
         Top             =   615
         Width           =   975
      End
      Begin VB.OptionButton optComMode 
         Caption         =   "Direct"
         Height          =   285
         Index           =   0
         Left            =   3840
         TabIndex        =   96
         Top             =   360
         Value           =   -1  'True
         Width           =   975
      End
      Begin VB.VScrollBar vsbCommandPort 
         Height          =   735
         Left            =   2760
         Max             =   15
         Min             =   1
         TabIndex        =   95
         Top             =   660
         Value           =   3
         Width           =   255
      End
      Begin VB.CommandButton btnMasterReset 
         Caption         =   "Reset"
         Height          =   255
         Left            =   1620
         TabIndex        =   73
         Top             =   870
         Width           =   705
      End
      Begin VB.VScrollBar vsbCIPCode 
         Height          =   735
         LargeChange     =   5
         Left            =   3240
         Max             =   255
         TabIndex        =   27
         Top             =   660
         Width           =   225
      End
      Begin VB.VScrollBar vsbUpLoadInterval 
         Height          =   312
         LargeChange     =   20
         Left            =   60
         Max             =   1
         Min             =   3000
         TabIndex        =   12
         Top             =   1080
         Value           =   20
         Width           =   132
      End
      Begin Threed.SSRibbon btdNSBF 
         Height          =   255
         Left            =   2760
         TabIndex        =   10
         Top             =   120
         Width           =   255
         _Version        =   65536
         _ExtentX        =   445
         _ExtentY        =   445
         _StockProps     =   65
         BackColor       =   255
         GroupNumber     =   3
         PictureDnChange =   0
      End
      Begin VB.Label lblnCommandReport 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Left            =   4770
         TabIndex        =   119
         Top             =   150
         Width           =   120
      End
      Begin VB.Label lblCmdBaud 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "1200"
         Height          =   195
         Left            =   3660
         TabIndex        =   102
         Top             =   150
         Width           =   465
      End
      Begin VB.Label lblCmdnRead 
         AutoSize        =   -1  'True
         Caption         =   "nRead"
         Height          =   195
         Left            =   1920
         TabIndex        =   98
         Top             =   1170
         Width           =   570
      End
      Begin VB.Label lblCommandPort 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "00"
         Height          =   195
         Left            =   2760
         TabIndex        =   94
         Top             =   420
         Width           =   225
      End
      Begin VB.Label Label7 
         Caption         =   "MIP"
         Height          =   225
         Left            =   3180
         TabIndex        =   93
         Top             =   120
         Width           =   345
      End
      Begin VB.Label lblLastRec 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "vRec"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   2010
         TabIndex        =   75
         Top             =   360
         Width           =   450
      End
      Begin VB.Label lblNumRec 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "nRec"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   2010
         TabIndex        =   74
         Top             =   600
         Width           =   450
      End
      Begin VB.Label lblNumRec 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "nRec"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   1470
         TabIndex        =   65
         Top             =   600
         Width           =   450
      End
      Begin VB.Label lblLastRec 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "vRec"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   1470
         TabIndex        =   64
         Top             =   360
         Width           =   450
      End
      Begin VB.Label lblLastRec 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "vRec"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   960
         TabIndex        =   63
         Top             =   360
         Width           =   450
      End
      Begin VB.Label lblNumRec 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "nRec"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   960
         TabIndex        =   62
         Top             =   600
         Width           =   450
      End
      Begin VB.Label lblCIPCode 
         AutoSize        =   -1  'True
         Caption         =   "00"
         Height          =   195
         Left            =   3240
         TabIndex        =   26
         Top             =   360
         Width           =   225
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Err"
         Height          =   192
         Left            =   60
         TabIndex        =   17
         Top             =   840
         Width           =   252
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "#"
         Height          =   192
         Left            =   180
         TabIndex        =   16
         Top             =   600
         Width           =   120
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Val"
         Height          =   192
         Left            =   60
         TabIndex        =   15
         Top             =   360
         Width           =   288
      End
      Begin VB.Label lblUpLoadInterval 
         AutoSize        =   -1  'True
         Caption         =   "Intvl"
         Height          =   192
         Left            =   240
         TabIndex        =   13
         Top             =   1140
         Width           =   348
      End
      Begin VB.Label lblUpLoadCount 
         AutoSize        =   -1  'True
         BackColor       =   &H00E0E0E0&
         Caption         =   "Up"
         Height          =   195
         Left            =   1290
         TabIndex        =   11
         Top             =   1140
         Width           =   255
      End
      Begin VB.Label lblCmdErr 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0FF&
         Caption         =   "Code"
         ForeColor       =   &H80000008&
         Height          =   192
         Left            =   960
         TabIndex        =   7
         Top             =   840
         Width           =   456
      End
      Begin VB.Label lblCmdErrCt 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0FF&
         Caption         =   "nErr"
         ForeColor       =   &H80000008&
         Height          =   192
         Left            =   420
         TabIndex        =   6
         Top             =   840
         Width           =   348
      End
      Begin VB.Label lblNumSent 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "nSnt"
         ForeColor       =   &H80000008&
         Height          =   192
         Left            =   420
         TabIndex        =   5
         Top             =   600
         Width           =   372
      End
      Begin VB.Label lblLastSent 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "vSnt"
         ForeColor       =   &H80000008&
         Height          =   192
         Left            =   420
         TabIndex        =   4
         Top             =   360
         Width           =   372
      End
   End
   Begin Threed.SSFrame fraLog 
      Height          =   555
      Left            =   0
      TabIndex        =   1
      Top             =   1440
      Width           =   7995
      _Version        =   65536
      _ExtentX        =   14102
      _ExtentY        =   979
      _StockProps     =   14
      Caption         =   "Logging"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.Label lblLogMessageTime 
         AutoSize        =   -1  'True
         BackColor       =   &H00E0E0E0&
         Caption         =   "Time Logged"
         Height          =   195
         Left            =   1110
         TabIndex        =   70
         Top             =   30
         Width           =   1110
      End
      Begin VB.Label lblLogMessage 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00E0E0E0&
         Caption         =   "Message Logged"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   120
         TabIndex        =   2
         Top             =   270
         Width           =   1470
      End
   End
   Begin Threed.SSFrame fraAeScaler 
      Height          =   2625
      Left            =   0
      TabIndex        =   0
      Top             =   1980
      Width           =   1905
      _Version        =   65536
      _ExtentX        =   3360
      _ExtentY        =   4630
      _StockProps     =   14
      Caption         =   "General Status"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.Label lblCounterIONum 
         AutoSize        =   -1  'True
         Caption         =   "nCtr I/O"
         Height          =   195
         Index           =   2
         Left            =   870
         TabIndex        =   77
         Top             =   1470
         Width           =   705
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "CtrI/O 1:"
         Height          =   195
         Index           =   2
         Left            =   60
         TabIndex        =   76
         Top             =   1470
         Width           =   765
      End
      Begin VB.Label lblnPulseHeightMasterSeen 
         AutoSize        =   -1  'True
         Caption         =   "nPulseMaster"
         Height          =   195
         Left            =   690
         TabIndex        =   69
         Top             =   2160
         Width           =   1155
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "PHA:"
         Height          =   195
         Left            =   60
         TabIndex        =   68
         Top             =   2160
         Width           =   450
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "CtrI/O 2:"
         Height          =   195
         Index           =   1
         Left            =   60
         TabIndex        =   67
         Top             =   1200
         Width           =   765
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "CtrI/O 3:"
         Height          =   195
         Index           =   0
         Left            =   60
         TabIndex        =   66
         Top             =   930
         Width           =   765
      End
      Begin VB.Label lblCounterIONum 
         AutoSize        =   -1  'True
         Caption         =   "nCtr I/O"
         Height          =   195
         Index           =   1
         Left            =   870
         TabIndex        =   61
         Top             =   1200
         Width           =   705
      End
      Begin VB.Label lblCounterIONum 
         AutoSize        =   -1  'True
         Caption         =   "nCtr I/O"
         Height          =   195
         Index           =   0
         Left            =   870
         TabIndex        =   60
         Top             =   930
         Width           =   705
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "kiloNulls:"
         Height          =   195
         Left            =   60
         TabIndex        =   58
         Top             =   630
         Width           =   795
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Frame:"
         Height          =   195
         Left            =   60
         TabIndex        =   57
         Top             =   330
         Width           =   585
      End
      Begin VB.Label lblFrameNumber 
         AutoSize        =   -1  'True
         Caption         =   "nFrame"
         Height          =   195
         Left            =   720
         TabIndex        =   22
         Top             =   330
         Width           =   630
      End
      Begin VB.Label lblNullCount 
         AutoSize        =   -1  'True
         Caption         =   "kNull"
         Height          =   195
         Left            =   900
         TabIndex        =   21
         Top             =   630
         Width           =   435
      End
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Left            =   10560
      Top             =   0
   End
   Begin VB.Timer Timer2 
      Interval        =   1000
      Left            =   10560
      Top             =   450
   End
   Begin Threed.SSFrame fraAeflitOption 
      Height          =   1575
      Left            =   6150
      TabIndex        =   20
      Top             =   3030
      Width           =   1845
      _Version        =   65536
      _ExtentX        =   3254
      _ExtentY        =   2778
      _StockProps     =   14
      Caption         =   "Option"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.TextBox txtSimpleString 
         Height          =   285
         Left            =   840
         TabIndex        =   101
         Text            =   "Text1"
         Top             =   960
         Width           =   645
      End
      Begin VB.CommandButton btnSimpleString 
         Caption         =   "\/"
         Height          =   255
         Left            =   840
         TabIndex        =   100
         Top             =   630
         Width           =   645
      End
      Begin VB.TextBox txtArbitraryHex 
         Height          =   285
         Left            =   120
         TabIndex        =   25
         Text            =   "FFFF"
         Top             =   960
         Width           =   615
      End
      Begin VB.CommandButton btnArbitraryHex 
         Caption         =   "hhhh"
         Height          =   255
         Left            =   120
         TabIndex        =   24
         Top             =   630
         Width           =   645
      End
      Begin VB.CommandButton btnBadCommand 
         Caption         =   "BadCommand"
         Height          =   255
         Left            =   120
         TabIndex        =   23
         Top             =   300
         Width           =   1335
      End
   End
   Begin MSCommLib.MSComm comLEE 
      Left            =   10530
      Top             =   1410
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CommPort        =   5
      DTREnable       =   -1  'True
      InBufferSize    =   16384
   End
   Begin MSComDlg.CommonDialog CMDialog1 
      Left            =   10560
      Top             =   1920
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSCommLib.MSComm comCmd 
      Left            =   10530
      Top             =   900
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CommPort        =   6
      DTREnable       =   -1  'True
      BaudRate        =   1200
   End
   Begin Threed.SSFrame fraBusCmd 
      Height          =   2625
      Left            =   1860
      TabIndex        =   30
      Top             =   1980
      Width           =   1665
      _Version        =   65536
      _ExtentX        =   2937
      _ExtentY        =   4630
      _StockProps     =   14
      Caption         =   "POWER"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.CommandButton btnCmdOn 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "+"
         Height          =   192
         Index           =   0
         Left            =   930
         TabIndex        =   38
         Top             =   270
         Width           =   192
      End
      Begin VB.CommandButton btnCmdOn 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "+"
         Height          =   192
         Index           =   1
         Left            =   930
         TabIndex        =   37
         Top             =   690
         Width           =   192
      End
      Begin VB.CommandButton btnCmdOn 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "+"
         Height          =   192
         Index           =   2
         Left            =   930
         TabIndex        =   36
         Top             =   1140
         Width           =   192
      End
      Begin VB.CommandButton btnCmdOn 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "+"
         Height          =   192
         Index           =   3
         Left            =   930
         TabIndex        =   35
         Top             =   1650
         Width           =   192
      End
      Begin VB.CommandButton btnCmdOff 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "-"
         Height          =   192
         Index           =   0
         Left            =   1350
         TabIndex        =   34
         Top             =   270
         Width           =   192
      End
      Begin VB.CommandButton btnCmdOff 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "-"
         Height          =   192
         Index           =   1
         Left            =   1350
         TabIndex        =   33
         Top             =   690
         Width           =   192
      End
      Begin VB.CommandButton btnCmdOff 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "-"
         Height          =   192
         Index           =   2
         Left            =   1350
         TabIndex        =   32
         Top             =   1140
         Width           =   192
      End
      Begin VB.CommandButton btnCmdOff 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "-"
         Height          =   192
         Index           =   3
         Left            =   1350
         TabIndex        =   31
         Top             =   1665
         Width           =   192
      End
      Begin VB.Label lblPowerNumber 
         AutoSize        =   -1  'True
         Caption         =   "PowerCount"
         Height          =   195
         Left            =   360
         TabIndex        =   55
         Top             =   2160
         Width           =   990
      End
      Begin VB.Label lblOnOff 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "ON/OFF"
         ForeColor       =   &H80000008&
         Height          =   255
         Index           =   0
         Left            =   150
         TabIndex        =   54
         Top             =   270
         Width           =   675
      End
      Begin VB.Label lblOnOff 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "ON/OFF"
         ForeColor       =   &H80000008&
         Height          =   255
         Index           =   1
         Left            =   150
         TabIndex        =   53
         Top             =   690
         Width           =   675
      End
      Begin VB.Label lblOnOff 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "ON/OFF"
         ForeColor       =   &H80000008&
         Height          =   255
         Index           =   2
         Left            =   150
         TabIndex        =   52
         Top             =   1170
         Width           =   675
      End
      Begin VB.Label lblOnOff 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "ON/OFF"
         ForeColor       =   &H80000008&
         Height          =   255
         Index           =   3
         Left            =   150
         TabIndex        =   51
         Top             =   1650
         Width           =   675
      End
      Begin VB.Label lblOnState 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFF80&
         Caption         =   " "
         ForeColor       =   &H80000008&
         Height          =   135
         Index           =   0
         Left            =   1170
         TabIndex        =   50
         Top             =   270
         Width           =   135
      End
      Begin VB.Label lblOnState 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFF80&
         Caption         =   " "
         ForeColor       =   &H80000008&
         Height          =   135
         Index           =   1
         Left            =   1170
         TabIndex        =   49
         Top             =   690
         Width           =   135
      End
      Begin VB.Label lblOnState 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFF80&
         Caption         =   " "
         ForeColor       =   &H80000008&
         Height          =   135
         Index           =   2
         Left            =   1170
         TabIndex        =   48
         Top             =   1170
         Width           =   135
      End
      Begin VB.Label lblOnState 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFF80&
         Caption         =   " "
         ForeColor       =   &H80000008&
         Height          =   135
         Index           =   3
         Left            =   1170
         TabIndex        =   47
         Top             =   1650
         Width           =   135
      End
      Begin VB.Label lblPwrLEEV 
         Alignment       =   1  'Right Justify
         Caption         =   "Volts"
         Height          =   195
         Index           =   0
         Left            =   240
         TabIndex        =   46
         Top             =   480
         Width           =   585
      End
      Begin VB.Label lblPwrLEEA 
         Caption         =   "Amps"
         Height          =   195
         Index           =   0
         Left            =   1020
         TabIndex        =   45
         Top             =   480
         Width           =   585
      End
      Begin VB.Label lblPwrLEEV 
         Alignment       =   1  'Right Justify
         Caption         =   "Volts"
         Height          =   195
         Index           =   1
         Left            =   240
         TabIndex        =   44
         Top             =   900
         Width           =   585
      End
      Begin VB.Label lblPwrLEEA 
         Caption         =   "Amps"
         Height          =   195
         Index           =   1
         Left            =   1020
         TabIndex        =   43
         Top             =   900
         Width           =   585
      End
      Begin VB.Label lblPwrLEEV 
         Alignment       =   1  'Right Justify
         Caption         =   "Volts"
         Height          =   195
         Index           =   2
         Left            =   240
         TabIndex        =   42
         Top             =   1410
         Width           =   585
      End
      Begin VB.Label lblPwrLEEA 
         Caption         =   "Amps"
         Height          =   195
         Index           =   2
         Left            =   1020
         TabIndex        =   41
         Top             =   1380
         Width           =   585
      End
      Begin VB.Label lblPwrLEEV 
         Alignment       =   1  'Right Justify
         Caption         =   "Volts"
         Height          =   195
         Index           =   3
         Left            =   240
         TabIndex        =   40
         Top             =   1890
         Width           =   585
      End
      Begin VB.Label lblPwrLEEA 
         Caption         =   "Amps"
         Height          =   195
         Index           =   3
         Left            =   1020
         TabIndex        =   39
         Top             =   1890
         Width           =   585
      End
   End
End
Attribute VB_Name = "frmPanel"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim NShowLEE As Integer
Dim CurrentLEE As String
Dim nCurLEE As Integer
Dim Msg As String
Dim BuildStr As String
Dim DataLenLEE As Integer
Dim DataLenCmd As Integer
Dim DataLenCSBFDownlink As Integer
Dim HexCom1 As String * 4
Dim HexCom2 As String * 4
Dim DefaultBackcolor As Long
Dim In_Interp As Boolean
Dim In_Hex As Boolean
Dim In_Ascii As Boolean
Dim IridiumString As String
Dim ScopeBinary As Boolean
Dim ImageValid As Boolean
Dim AscState As Integer
Dim BinState As Integer
Dim nPulseHeightMasterSeen As Long
Private Static Sub ProcessPower()
Dim OutString As String
Dim WorkString As String
Dim CurrentValue As Single
Dim PowerRateVerify As Integer
Dim N As Integer
Dim PowerMon(7) As Integer
Dim PowerAvg(7) As Single
Dim nScl As Integer
Dim nHsk As Integer
Dim W1 As Long
Dim W2 As Long
Dim RawTime As Long
'The one second, non resetting counter
W1 = (PowerRaw(PowerTimer) And 32767)
RawTime = 65536 * W1 + PowerRaw(PowerTimer + 1)
If (RejectBad And Not PowerGood Or (Not PowerValid) Or (Not PowerFresh)) Then
  OutString = "Done"
  PowerFresh = False
  LogMessage "Power Rejected: " & Format$(RawTime) & " " & Format$(RawTime - PowerOffset)
  ImportStats(1, 3) = ImportStats(1, 3) + 1
  Exit Sub
End If
ImportStats(0, 3) = ImportStats(0, 3) + 1
PowerTime = RawTime - PowerOffset
If FirstPowerSeen Then
  If AdjustCtr And (Abs(PowerTime - LastPowerTime) > 2 * PowerDefInt) Then
    PowerTime = LastPowerTime + PowerDefInt
    PowerInterval = PowerDefInt
  ElseIf AdjustCtr And (PowerTime < LastPowerTime) Then
    PowerTime = LastPowerTime + PowerDefInt
    PowerInterval = PowerDefInt
  Else
    PowerInterval = PowerTime - LastPowerTime
  End If
Else
  FirstPowerSeen = True
  PowerInterval = PowerDefInt
End If
If PowerInterval < 1 Then PowerInterval = PowerDefInt
LastPowerTime = PowerTime
GenerateTimeStamp OutString
OutString = "PB: " + OutString + " "
LastPowerTime = PowerTime
lblPowerNumber.Caption = Format$(PowerTime)
OutString = OutString + " " + lblPowerNumber.Caption
For nHsk = 0 To 7
  W1 = PowerRaw(Power_ADC1 + nHsk) And &H30&
  W1 = W1 \ 16
  W2 = PowerRaw(Power_ADC1 + nHsk) And &HFF00&
  W2 = W2 \ 64
  W2 = W2 + W1
  PowerMon(nHsk) = W2
  PowerAvg(nHsk) = PowerMon(nHsk)
  'Use the linear fit in the *.IFC file
  CurrentValue = Desc_Gain(nHsk + Power_DeOffset) * PowerAvg(nHsk) - Desc_Offset(nHsk + Power_DeOffset)
  frmStatus.lblCounterIO(nHsk + Power_DeOffset).Caption = Format$(CurrentValue, "0.00")
  Select Case nHsk
   Case 0
    lblPwrLEEV(0).Caption = frmStatus.lblCounterIO(nHsk + Power_DeOffset).Caption
   Case 1
    lblPwrLEEA(0).Caption = frmStatus.lblCounterIO(nHsk + Power_DeOffset).Caption
   Case 2
    lblPwrLEEV(1).Caption = frmStatus.lblCounterIO(nHsk + Power_DeOffset).Caption
   Case 3
    lblPwrLEEA(1).Caption = frmStatus.lblCounterIO(nHsk + Power_DeOffset).Caption
   Case 4
    lblPwrLEEV(2).Caption = frmStatus.lblCounterIO(nHsk + Power_DeOffset).Caption
   Case 5
    lblPwrLEEA(2).Caption = frmStatus.lblCounterIO(nHsk + Power_DeOffset).Caption
   Case 6
    lblPwrLEEV(3).Caption = frmStatus.lblCounterIO(nHsk + Power_DeOffset).Caption
   Case 7
    lblPwrLEEA(3).Caption = frmStatus.lblCounterIO(nHsk + Power_DeOffset).Caption
   Case Else
  End Select
    OutString = OutString + " " + frmStatus.lblCounterIO(nHsk + Power_DeOffset).Caption
Next nHsk
'PowerRateVerify = PowerRaw(Power_State2) And 255
'OutString = OutString + " " + Format$(PowerRateVerify)
OutString = OutString + " " + lblAltitude(0).Caption
OutString = OutString + " " + lblAltimeterTemperature(0).Caption
OutString = OutString + " " + lblAltitude(1).Caption
OutString = OutString + " " + lblAltimeterTemperature(1).Caption
Print #2, OutString
If RecordLee Then Print #4, OutString
WorkString = Mid$(OutString, 15)
FillDoubleArrayB PowerBoard, lPowerBoard, WorkString
PowerHistograms
OutString = "Done"
PowerFresh = False
End Sub

Private Static Sub ProcessLEEFrame()
Dim nNullWord As Long
Dim MinorFrame As Integer
Dim LastMinor As Integer
Dim nWord As Integer
Dim nMemCard As Integer
Dim nCounterIO_1 As Integer
Dim nCounterIO_2 As Integer
Dim nCounterIO_3 As Integer
Dim nPower As Integer
Dim nIridiumMessage As Integer
Dim nPulseHeightMaster As Integer
Dim nFrameGap As Long
Dim nTotlEv As Long
Dim State As Integer
Dim Split(3) As String * 1
Dim Tdata As Long
Dim I As Integer
Dim ErrorFormatString As String
Dim nErrorFormat As Integer
Dim iDoEvent As Integer
'Entering here should imply a good frame of data
MinorFrame = FrameLEE(9) And 255
If (MinorFrame <> ((LastMinor + 1) Mod 256)) Then
  nFrameGap = nFrameGap + 1
  LogMessage "Frame Gap" & Str(nFrameGap) & Str(MinorFrame) & Str(LastMinor)
  LastMinor = MinorFrame
  'Exit Sub
End If
If ((MinorFrame Mod 32) = 0) Then
  lblFrameNumber.Caption = " " & Hex$(FrameLEE(9))
End If
LastMinor = MinorFrame
'FOLLOWING LOOP MUST NEVER BE BROKEN, AND THERE MUST BE ONLY BE
'ONE RETURN PATH, FOLLOWING THE LOOP.
'State 0 Reading nulls
'State 1 Reading PHA Master
'State 2 Reading Memory Card Dump
'State 3 Reading Counter I/O 1
'State 4 Reading Counter I/O 2
'State 5 Reading Counter I/O 3
'State 6 Reading Power Management
'State 7 Reading Iridium message
For nWord = 0 To 9
  FrameLEEHistory(nWord, FrameLEEHistoryPointer) = FrameLEE(nWord)
Next nWord
FrameLEEHistoryPointer = (FrameLEEHistoryPointer + 1) Mod 11
For nWord = 0 To 8
  'Print #2, Format$(State) & " " & Hex$(FrameLEE(nWord))
  'In State 1 or 7, data may be 24 bits, so identifiers are not unique
  If (State <> 7) And (State <> 1) And (LEE_NULLW = FrameLEE(nWord)) Then
    'This is an idle word -- no data were in the
    'readout FIFO when the telemetry channel required data.
    nNullWord = nNullWord + 1
    If (nNullWord Mod 1000) = 0 Then
      lblNullCount.Caption = Format$(nNullWord \ 1000, "#####0")
    End If
  ElseIf (State <> 7) And (State <> 1) And (LEE_PulseHeight = FrameLEE(nWord)) Then
    If (State <> 0) Then
      LogMessage "PulseHeightMaster Start Error " & Str(State)
    End If
    PHAGood = True
    nPulseHeightMaster = -1
    State = 1
  ElseIf (State <> 7) And (State <> 1) And (LEE_PulseHeightA = FrameLEE(nWord)) Then
    If (State <> 0) Then
      LogMessage "PulseHeightMasterA Start Error " & Str(State)
    End If
    LogMessage "LEE_PulseHeightA"
    PHAGood = True
    nPulseHeightMaster = -1
    State = 1
  ElseIf (State <> 7) And (State <> 1) And (LEE_MemCard = FrameLEE(nWord)) Then
    If (State <> 0) Then
      LogMessage ("Memory Card Start Error " + Str(State))
    End If
    nMemCard = -1
    State = 2
  ElseIf (State <> 7) And (State <> 1) And (LEE_CtrIO1 = FrameLEE(nWord)) Then
    If (State <> 0) Then
      LogMessage ("CounterIO_1 Start Error " + Str(State))
      DumpLEEHistory
    End If
    C1Good = True
    nCounterIO_1 = -1
    State = 3
  ElseIf (State <> 7) And (State <> 1) And (LEE_CtrIO1A = FrameLEE(nWord)) Then
    If (State <> 0) Then
      LogMessage "CounterIO_1A Start Error " & Str(State)
      DumpLEEHistory
    End If
    LogMessage "LEE_CtrIO1A Seen"
    nCounterIO_1 = -1
    C1Good = True
    State = 3
  ElseIf (State <> 7) And (State <> 1) And (LEE_CtrIO2 = FrameLEE(nWord)) Then
    If (State <> 0) Then
      LogMessage "CounterIO_2 Start Error " & Str(State)
      DumpLEEHistory
    End If
    nCounterIO_2 = -1
    C2Good = True
    State = 4
  ElseIf (State <> 7) And (State <> 1) And (LEE_CtrIO2A = FrameLEE(nWord)) Then
    If (State <> 0) Then
      LogMessage "CounterIO_2A Start Error " & Str(State)
      DumpLEEHistory
    End If
    LogMessage "LEE_CtrIO2A Seen"
    nCounterIO_2 = -1
    C2Good = True
    State = 4
  ElseIf (State <> 7) And (State <> 1) And (LEE_CtrIO3 = FrameLEE(nWord)) Then
    If (State <> 0) Then
      LogMessage "CounterIO_3 Start Error " & Str(State)
      DumpLEEHistory
    End If
    nCounterIO_3 = -1
    C3Good = True
    State = 5
  ElseIf (State <> 7) And (State <> 1) And (LEE_CtrIO3A = FrameLEE(nWord)) Then
    If (State <> 0) Then
      LogMessage "CounterIO_3A Start Error " & Str(State)
      DumpLEEHistory
    End If
    LogMessage "LEE_CtrIO3A Seen"
    nCounterIO_3 = -1
    C3Good = True
    State = 5
  ElseIf (State <> 7) And (State <> 1) And (LEE_POWER = FrameLEE(nWord)) Then
    If (State <> 0) Then
      LogMessage "PowerManage Start Error " & Format$(State)
      DumpLEEHistory
   End If
    nPower = -1
    PowerGood = True
    State = 6
  ElseIf (State <> 7) And (State <> 1) And (LEE_POWERA = FrameLEE(nWord)) Then
    If (State <> 0) Then
      LogMessage "PowerManage A Start Error " & Format$(State)
      DumpLEEHistory
    End If
    LogMessage "LEE_POWERA Seen"
    nPower = -1
    PowerGood = True
    State = 6
  ElseIf (State <> 7) And (State <> 1) And (LEE_Iridium = FrameLEE(nWord)) Then
    If (State <> 0) Then
      LogMessage "Iridium Message Start Error " & Format$(State)
      DumpLEEHistory
    End If
    nIridiumMessage = -1
    IridiumMessage = ""
    State = 7
  ElseIf (State <> 7) And (State <> 1) And ((LEE_ENDEV = FrameLEE(nWord)) Or (LEE_ENDEVA = FrameLEE(nWord))) Then
    'The end of something, use this to track progress
    'in accumulating data
    LEERunEnd = CurTime
    If ((State = 2) And (nMemCard = MemCard_Last)) Then
      'Correct way to end a Memory Card Readout
      ProcessMemCard
      State = 0
    ElseIf ((State = 3) And (nCounterIO_1 = C1Last)) Then
      'Correct way to end a Counter I/O 1 Readout
      ProcessCounterIO_1
      State = 0
    ElseIf ((State = 4) And (nCounterIO_2 = C2Last)) Then
      'Correct way to end a Counter I/O 2 Readout
      ProcessCounterIO_2
      State = 0
    ElseIf ((State = 5) And (nCounterIO_3 = C3Last)) Then
      'Correct way to end a Counter I/O 2 Readout
      ProcessCounterIO_3
      State = 0
    ElseIf ((State = 6) And (nPower = Power_Last)) Then
      'Correct way to end a Power Manager Readout
      'Print #2, "PWR END " + Format$(Power_Last) + " " + Format$(nPower) & " " & Hex$(FrameLEE(nWord))
      ProcessPower
      State = 0
    Else
      'Print #2, Format$(C1Last) + " " + Format$(nCounterIO_1) & " " & Hex$(FrameLEE(nWord))
      LogMessage "Unexpected EOR in State " & Str(State) & " " & Hex$(FrameLEE(9))
      DumpLEEHistory
      State = 0
    End If
  Else
    If (State = 0) Then
      If FrameLEE(9) > (LastDumpFrame + 9) Then
        LogMessage "Non idle seen in State 0" & " " & Hex$(FrameLEE(9))
        DumpLEEHistory
      End If
      'IDLE CASE, DO NOTHING
    ElseIf (State = 1) Then
      'PulseHeight Master Board
      nPulseHeightMaster = nPulseHeightMaster + 1
      If (nPulseHeightMaster = PulseHeightMaster_Last) Then
        'Since this is binary, we must assume it is complete
        If (LEE_ENDEV = FrameLEE(nWord)) Or (LEE_ENDEVA = FrameLEE(nWord)) Then
           'Correct way to end a Pulse Height Master Readout
           PulseHeightMaster_Raw(nPulseHeightMaster) = FrameLEE(nWord)
           nPulseHeightMasterSeen = nPulseHeightMasterSeen + 1
           lblnPulseHeightMasterSeen.Caption = Format$(nPulseHeightMasterSeen)
           frmPulseHeight.lblnPulseHeightMasterSeen.Caption = Format$(nPulseHeightMasterSeen)
           frmPulseHeight.Process
        Else
           LogMessage "Pulse Height Master Format Error"
           ErrorFormatString = "MFE: " & Format$(CurTime, "mm/dd/yyyy HH:NN:SS") & " " & Format$(nPulseHeightMaster)
           For nErrorFormat = 0 To nPulseHeightMaster
            ErrorFormatString = ErrorFormatString & Right$("        " & Hex$(PulseHeightMaster_Raw(nErrorFormat)), 7)
           Next nErrorFormat
           Print #2, ErrorFormatString & " " & Hex$(FrameLEE(9))
           DumpLEEHistory
           If RecordLee Then Print #4, ErrorFormatString
        End If
        State = 0
      ElseIf (nPulseHeightMaster > PulseHeightMaster_Last) Then
        'Should never get here!
        LogMessage "Pulse Height Master Logic Error"
        State = 0
      Else
        'Buffer up the data for later processing
        PulseHeightMaster_Raw(nPulseHeightMaster) = FrameLEE(nWord)
        'Only words 0-5 have vital data
        If ((nWord < 6) And (Not FrameLeeFlag(nWord))) Then PHAGood = False
      End If
    ElseIf (State = 7) Then
      'Iridium Message
      nIridiumMessage = nIridiumMessage + 1
      If nIridiumMessage <= Iridium_Last Then
        IridiumMessage = IridiumMessage & " " & Right$("000000" & Hex$(FrameLEE(nWord)), 6)
      ElseIf (nIridiumMessage = Iridium_Last + 1) And ((LEE_ENDEV = FrameLEE(nWord)) Or (LEE_ENDEVA = FrameLEE(nWord))) Then
        LogMessage "Iridium Message " & IridiumMessage
        State = 0
      Else
        LogMessage "Iridium Message Overrun" & IridiumMessage
        State = 0
      End If
    ElseIf (State = 2) Then
      'Memory Card
      nMemCard = nMemCard + 1
      If (nMemCard = 0) Then
        MemCard_Raw(0) = FrameLEE(nWord)
      ElseIf (nMemCard < MemCard_Last) Then
        MemCard_Raw(nMemCard) = FrameLEE(nWord)
      ElseIf (nCounterIO_1 = C1Last) Then
        MemCard_Raw(nMemCard) = FrameLEE(nWord)
      Else
        'MemCard has overrun; nMemcard is counting
        'the extent, and this will be reported as an
        'error when the next valid identifier is seen.
      End If
    ElseIf (State = 3) Then
      'CounterIO_1
      nCounterIO_1 = nCounterIO_1 + 1
      If (nCounterIO_1 = 0) Then
        C1Valid = False
        C1Fresh = False
        C1Raw(0) = FrameLEE(nWord)
        If Not FrameLeeFlag(nWord) Then C1Good = False
      ElseIf (nCounterIO_1 < C1Last) Then
        C1Raw(nCounterIO_1) = FrameLEE(nWord)
        If Not FrameLeeFlag(nWord) Then C1Good = False
      ElseIf (nCounterIO_1 = C1Last) Then
        C1Raw(nCounterIO_1) = FrameLEE(nWord)
        If Not FrameLeeFlag(nWord) Then C1Good = False
        C1Valid = True
        C1Fresh = True
      Else
        'CounterIO has overrun; nCounterIO is counting
        'the extent, and this will be reported as an
        'error when the next valid identifier is seen.
      End If
    ElseIf (State = 4) Then
      'CounterIO_2
      nCounterIO_2 = nCounterIO_2 + 1
      If (nCounterIO_2 = 0) Then
        C2Valid = False
        C2Fresh = False
        C2Raw(0) = FrameLEE(nWord)
        If Not FrameLeeFlag(nWord) Then C2Good = False
      ElseIf (nCounterIO_2 < C2Last) Then
        C2Raw(nCounterIO_2) = FrameLEE(nWord)
        If Not FrameLeeFlag(nWord) Then C2Good = False
      ElseIf (nCounterIO_2 = C2Last) Then
        C2Raw(nCounterIO_2) = FrameLEE(nWord)
        If Not FrameLeeFlag(nWord) Then C2Good = False
        C2Valid = True
        C2Fresh = True
      Else
        'CounterIO has overrun; nCounterIO is counting
        'the extent, and this will be reported as an
        'error when the next valid identifier is seen.
      End If
    ElseIf (State = 5) Then
      'CounterIO_3
      nCounterIO_3 = nCounterIO_3 + 1
        If (nCounterIO_3 = 0) Then
        C3Valid = False
        C3Fresh = False
        C3Raw(0) = FrameLEE(nWord)
        If Not FrameLeeFlag(nWord) Then C3Good = False
      ElseIf (nCounterIO_3 < C3Last) Then
        C3Raw(nCounterIO_3) = FrameLEE(nWord)
        If Not FrameLeeFlag(nWord) Then C3Good = False
      ElseIf (nCounterIO_3 = C3Last) Then
        C3Raw(nCounterIO_3) = FrameLEE(nWord)
        If Not FrameLeeFlag(nWord) Then C3Good = False
        C3Valid = True
        C3Fresh = True
      Else
        'CounterIO has overrun; nCounterIO is counting
        'the extent, and this will be reported as an
        'error when the next valid identifier is seen.
      End If
    ElseIf (State = 6) Then
      'Power Management Board
      nPower = nPower + 1
      'Print #2, Format$(Power_Last) + " " + Format$(nPower) & " " & Hex$(FrameLEE(nWord))
      If (nPower = 0) Then
        PowerValid = False
        PowerFresh = False
        PowerRaw(0) = FrameLEE(nWord)
        If Not FrameLeeFlag(nWord) Then PowerGood = False
      ElseIf (nPower < Power_Last) Then
        PowerRaw(nPower) = FrameLEE(nWord)
        If Not FrameLeeFlag(nWord) Then PowerGood = False
      ElseIf (nPower = Power_Last) Then
        PowerRaw(nPower) = FrameLEE(nWord)
        'Print #2, "Set Valid"
        If Not FrameLeeFlag(nWord) Then PowerGood = False
        PowerValid = True
        PowerFresh = True
      Else
        'Here the Power has overrun, nPower is counting
        'the extent, and this will be reported as an
        'error when the next valid identifier is seen.
      End If
    Else
      'Debug.Print Hex$(FrameLEE(nWord))
      'Debug.Print ThreeChr(FrameLEE(nWord))
    End If
  End If
Next nWord
End Sub

Private Sub btdCSBFDownlink_Click(Value As Integer)
If (Value) Then
  'Command Port Open
  If (comCSBFDownlink.PortOpen = True) Then
    LogMessage ("comCSBFDownlink already open")
    Exit Sub
  End If
  'Open the command port
  On Error GoTo NotOpen
  comCSBFDownlink.CommPort = nPortCSBFDownlink
  LogMessage ("Open comCSBFDownlink on port " & Format$(comCSBFDownlink.CommPort))
  comCSBFDownlink.Settings = "19200,n,8,1"
  comCSBFDownlink.RThreshold = 1
  comCSBFDownlink.PortOpen = True
  btdCSBFDownlink.BackColor = &HFF00&
  btdCSBFDownlink.Refresh
  LogMessage ("Open comCSBFDownlink on port " & Format$(comCSBFDownlink.CommPort))
  DownlinkReadInProgress = False
  FirstDownlinkSeen = False
  Exit Sub
NotOpen:
  LogMessage ("comCSBFDownlink Open Fail: " + Str(Err))
  btdCSBFDownlink.BackColor = &HFFFF&
  btdCSBFDownlink.Refresh
  Exit Sub
Else
  'Close NSBF
  On Error GoTo NotClosed
  comCSBFDownlink.PortOpen = False
  LogMessage ("comCSBFDownlink Closed")
  btdCSBFDownlink.BackColor = &HFF&
  Exit Sub
End If
NotClosed:
  LogMessage ("comCSBFDownlink Error: " + Str(Err))
  btdCSBFDownlink.BackColor = &HFF&
Exit Sub

End Sub

Private Sub btdLEEData_Click(Value As Integer)
If (Value) Then
  'Open LEE
  If (comLEE.PortOpen = True) Then
    LogMessage ("comLEE Already Open")
    Exit Sub
  End If
  'Open the LEE port
  'There currently seems to be an unexplained lower limit
  'of 500 for the read threshold (7/5/02 PAE)
  On Error GoTo NotOpen
  If LEEBitRate = 38400 Then
    comLEE.Settings = "38400,n,8,1"
    comLEE.RThreshold = 80
  ElseIf LEEBitRate = 9600 Then
    comLEE.Settings = "9600,n,8,1"
    comLEE.RThreshold = 40
  ElseIf LEEBitRate = 4800 Then
    comLEE.Settings = "4800,n,8,1"
    comLEE.RThreshold = 20
  Else
    comLEE.Settings = "2400,n,8,1"
    comLEE.RThreshold = 10
  End If
  comLEE.CommPort = nPortLEE
  LogMessage ("Opening comLEE=" & lblDataPort.Caption & " " & comLEE.Settings & " " & Format$(comLEE.RThreshold))
  comLEE.PortOpen = True
  btdLEEData.BackColor = &HFF00&
  btdLEEData.Refresh
  LEERunStart = CurTime
  LEERunEnd = CurTime
  LEENewRun = True
  LEEDataSource = "Direct Instrument Data"
  Exit Sub
NotOpen:
  LogMessage ("comLEE Open Fail: " + Str(Err))
  btdLEEData.BackColor = &HFFFF&
  btdLEEData.Refresh
  Exit Sub
Else
  'Close LEE
  On Error GoTo NotClosed
  comLEE.PortOpen = False
  LogMessage ("comLEE Closed")
  btdLEEData.BackColor = &HFF&
  Exit Sub
NotClosed:
  LogMessage ("comLEE Error: " + Str(Err))
  btdLEEData.BackColor = &HFF&
Exit Sub
End If
End Sub



Private Sub btdNSBF_Click(Value As Integer)
If (Value) Then
  'Command Port Open
  If (comCmd.PortOpen = True) Then
    LogMessage ("comCmd already open")
    Exit Sub
  End If
  'Open the command port
  On Error GoTo NotOpen
  comCmd.CommPort = nPortCmd
  LogMessage ("Open comCmd on port " & Format$(comCmd.CommPort))
  comCmd.Settings = lblCmdBaud.Caption & ",n,8,1"
  comCmd.RThreshold = 1
  comCmd.PortOpen = True
  btdNSBF.BackColor = &HFF00&
  btdNSBF.Refresh
  FirstDownlinkSeen = False
  Exit Sub
NotOpen:
  LogMessage ("comCmd Open Fail: " + Str(Err))
  btdNSBF.BackColor = &HFFFF&
  btdNSBF.Refresh
  Exit Sub
Else
  'Close NSBF
  On Error GoTo NotClosed
  comCmd.PortOpen = False
  LogMessage ("comCmd Closed")
  btdNSBF.BackColor = &HFF&
  Exit Sub
End If
NotClosed:
  LogMessage ("comCmd Error: " + Str(Err))
  btdNSBF.BackColor = &HFF&
Exit Sub
End Sub







Private Sub btnArbitraryHex_Click()
HexCom = Right$("0000" + txtArbitraryHex.Text, 4)
QueueCommand (HexCom)
btnShowB.SetFocus
End Sub



Private Sub btnBadCommand_Click()
HexCom = "1234"
BadCommand (HexCom)
btnShowB.SetFocus
End Sub



Private Sub btnClearText_Click()
txtDisplay.Text = ""
End Sub

Private Sub btnCmdOff_Click(Index As Integer)
If (OO_Type(Index) = "S") Then
  HexCom = Left$(OO_HexOff(Index), 4)
Else
  HexCom = Left$(OO_HexOff(Index), 4) & "K"
End If
QueueCommand (HexCom)
lblOnState(Index).BackColor = &HFF&
lblOnState(Index).Refresh
btnShowB.SetFocus
End Sub

Private Sub btnCmdOn_Click(Index As Integer)
If (OO_Type(Index) = "S") Then
  HexCom = Left$(OO_HexOn(Index), 4)
Else
  HexCom = Left$(OO_HexOn(Index), 4) & "K"
End If
QueueCommand (HexCom)
lblOnState(Index).BackColor = &HFF00&
lblOnState(Index).Refresh
btnShowB.SetFocus
End Sub



















Private Sub btnCRLF_Click()
DisplayText "CrLf" & Chr$(13) & Chr$(10)
End Sub

Private Static Sub btnImportCardFile_Click()
Dim InString As String
Dim OutString As String
Dim iFor As Integer
Dim jFor As Integer
Dim nFrame As Long
Dim nWord As Integer
Dim nInput As Integer
Dim LeeWord As String
Dim GoodMark As String
Dim nGM As Integer
CMDialog1.FileName = ImportCardFile
CMDialog1.DefaultExt = "CRD"
CMDialog1.Filter = "LEE Card Data|*.CRD;*.DAT"
CMDialog1.InitDir = "C:\LEEMIP\Data"
CMDialog1.Action = 1
ImportCardFile = CMDialog1.FileName
AdjustCtr = chkAdjustCtr.Value
RejectBad = chkRejectBad.Value
FirstPowerSeen = False
PowerTime = 0
LastPowerTime = 0
PowerInterval = 5
FirstC1Seen = False
C1Time = 0
LastC1Time = 0
C1Interval = 1
FirstC2Seen = False
C2Time = 0
LastC2Time = 0
C2Interval = 1
FirstC3Seen = False
C3Time = 0
LastC3Time = 0
C3Interval = 1
Open ImportCardFile For Input As #10
LogMessage "Importing memory card file " & ImportCardFile
LEEDataSource = ImportCardFile
frmLEEData.btnClearStat_Click
LEEFirstPHASeen = False
InitialImportTimeSeen = False
ImportInProgress = True
For iFor = 0 To 4
  For jFor = 0 To 1
    ImportStats(jFor, iFor) = 0
  Next jFor
Next iFor
nFrame = 0
nWord = 0
nInput = 0
'On Error GoTo GetOut
Line Input #10, InString
If InStr(InString, "----") > 0 Then Line Input #10, InString
If RejectBad Then
  nGM = InStr(InString, "  ")
  If nGM > 0 Then
    GoodMark = Mid$(InString, nGM + 2, 8)
    InString = Left(InString, nGM - 1)
  Else
    GoodMark = "TTTTTTTT"
  End If
End If
nInput = 0
Do While (Not EOF(10))
  For nWord = 0 To 8
    LeeWord = "&H" & Mid$(InString, 7 * nInput + 2, 6)
    FrameLEE(nWord) = CLng(LeeWord)
    FrameLeeFlag(nWord) = (Mid$(GoodMark, nInput + 1, 1) = "T")
    nInput = nInput + 1
    If nInput = 8 Then
      Line Input #10, InString
      If InStr(InString, "$$$EOD$$$") Then GoTo Complete
      If InStr(InString, "----") > 0 Then Line Input #10, InString
      If RejectBad Then
        nGM = InStr(InString, "  ")
        If nGM > 0 Then
          GoodMark = Mid$(InString, nGM + 2, 8)
          InString = Left(InString, nGM - 1)
        Else
          GoodMark = "TTTTTTTT"
        End If
      End If
      nInput = 0
    End If
  Next nWord
  FrameLEE(9) = nFrame
  nFrame = nFrame + 1
  ProcessLEEFrame
Loop
Complete:
Close #10
ImportInProgress = False
CurTime = Now
LogMessage "Card file import complete"
OutString = "Good Items: "
For iFor = 0 To 4
  OutString = OutString & " " & Right$("       " & Format$(ImportStats(0, iFor)), 6)
Next iFor
LogMessage OutString
OutString = "Bad Items:  "
For iFor = 0 To 4
  OutString = OutString & " " & Right$("       " & Format$(ImportStats(1, iFor)), 6)
Next iFor
LogMessage OutString
For iFor = 0 To 9
 FrameLeeFlag(iFor) = True
Next iFor
Exit Sub
GetOut:
LogMessage "Card File Error"
LogMessage InString
GoTo Complete
End Sub

Private Sub btnMasterReset_Click()
HexCom = "0FF0"
QueueCommand (HexCom)
btnShowB.SetFocus
End Sub




Private Sub btnNoCardWrite_Click()
'Board address C, command 5
QueueCommand "0071"
End Sub

Private Sub btnReadBBRFiles_Click()
End Sub

Private Sub btnReadFrom_Click()
Dim Dta As String
Dim nToRead As Integer
Dim FileBytesLeft As Long
Dim curByte As Long
Dim iFor As Integer
Dim jFor As Integer
Dim nStartFile As Integer
Dim nFile As Integer
If comLEE.PortOpen Then
  'Serial Data Port is open -Brian
  'File data could crash into serial data
  LogMessage "DataPort is open! Cannot import Binary File"
  Exit Sub 'Do nothing until Port is closed -Brian
End If
Close #7
btnReadOneBBRFile.Visible = False
btnReadFrom.Visible = False
LEEDataSource = "BBR Data File"
nStartFile = File1.ListIndex
frmLEEData.btnClearStat_Click
LEEFirstPHASeen = False
InitialImportTimeSeen = False
ImportInProgress = True
CurrentLEE = ""
For iFor = 0 To 4
  For jFor = 0 To 1
    ImportStats(jFor, iFor) = 0
  Next jFor
Next iFor
For nFile = nStartFile To File1.ListCount - 1
  On Error GoTo NoFileOpen
  File1.ListIndex = nFile
  BBRFileSelected = File1.Path + "\" + File1.FileName
  Open BBRFileSelected For Binary Access Read As #7
  LogMessage "Binary Input File: " & BBRFileSelected
  iFor = DoEvents
  FileBytesLeft = LOF(7)
  On Error Resume Next
  Do While FileBytesLeft > 0
    If FileBytesLeft > 2000 Then
      nToRead = 2000
    Else
      nToRead = FileBytesLeft
    End If
    Dta = Input$(nToRead, #7)
    FileBytesLeft = FileBytesLeft - nToRead
    CurrentLEE = CurrentLEE + Dta
    nCurLEE = Len(CurrentLEE)
    FormatLEEFrames
  Loop
  Close #7
Next nFile
ImportInProgress = False
btnReadOneBBRFile.Visible = True
btnReadFrom.Visible = True
Exit Sub
NoFileOpen:
ImportInProgress = False
Close #7
LogMessage "BBR File Open Failure"
btnReadOneBBRFile.Visible = True
btnReadFrom.Visible = True
Exit Sub
End Sub

Private Sub btnReadMemoryCard_Click()
'Board address C, command 4
QueueCommand "0070"
End Sub

Private Sub btnReadOneBBRFile_Click()
Dim Dta As String
Dim nToRead As Integer
Dim FileBytesLeft As Long
Dim curByte As Long
Dim iFor As Integer
Dim jFor As Integer
If comLEE.PortOpen Then
  'Serial Data Port is open -Brian
  'File data could crash into serial data
  LogMessage "DataPort is open! Cannot import Binary File"
  Exit Sub 'Do nothing until Port is closed -Brian
End If
On Error GoTo NoFileOpen
btnReadOneBBRFile.Visible = False
btnReadFrom.Visible = False
Close #7
BBRFileSelected = File1.Path
LEEDataSource = "BBR Data File"
BBRFileSelected = File1.Path + "\" + File1.FileName
Open BBRFileSelected For Binary Access Read As #7
On Error GoTo 0
LogMessage "Binary Input File: " & BBRFileSelected
iFor = DoEvents
FileBytesLeft = LOF(7)
On Error Resume Next
frmLEEData.btnClearStat_Click
LEEFirstPHASeen = False
InitialImportTimeSeen = False
ImportInProgress = True
For iFor = 0 To 4
  For jFor = 0 To 1
    ImportStats(jFor, iFor) = 0
  Next jFor
Next iFor
Do While FileBytesLeft > 0
  If FileBytesLeft > 2000 Then
    nToRead = 2000
  Else
    nToRead = FileBytesLeft
  End If
  Dta = Input$(nToRead, #7)
  FileBytesLeft = FileBytesLeft - nToRead
  CurrentLEE = CurrentLEE + Dta
  nCurLEE = Len(CurrentLEE)
  FormatLEEFrames
Loop
Close #7
ImportInProgress = False
btnReadOneBBRFile.Visible = True
btnReadFrom.Visible = True
Exit Sub
NoFileOpen:
ImportInProgress = False
Close #7
LogMessage "BBR File Open Failure"
btnReadOneBBRFile.Visible = True
btnReadFrom.Visible = True
Exit Sub
End Sub

Private Static Sub btnRecord_Click(Index As Integer)
Dim LEETag As String
Dim LEENextRun As Integer
Dim Stamp As String
Select Case btnRecord(Index).Caption
Case "Record"
  Open PersonalityDirectory + "LEERun.TXT" For Input As #5
  Input #5, LEENextRun
  Close #5
  Select Case Index
   Case 0
    'LEE
    LEETag = "NL" + Right$("000" + Format$(LEENextRun), 4)
    LEENextRun = LEENextRun + 1
    btnRecord(Index).Caption = LEETag
    Close #4
    Open DataOutDir + LEETag + ".BPD" For Append As #4
    GenerateTimeStamp Stamp
    Print #4, "ME: " & Stamp & " Special Recording File Open"
    RecordLee = True
    LogMessage (DataOutDir & LEETag & " Open")
    Open PersonalityDirectory + "LEERun.TXT" For Output As #5
    Write #5, LEENextRun
    Close #5
   Case Else
  End Select
Case Else
  btnRecord(Index).Caption = "Record"
  Select Case Index
  Case 0
    'LEE
    GenerateTimeStamp Stamp
    Print #4, "ME: " & Stamp & " Special Recording File Close"
    Close #4
    RecordLee = False
    LogMessage (DataOutDir & LEETag & " Closed")
  End Select
End Select
btnShowB.SetFocus
End Sub




Private Sub btnRecordMemCard_Click()
Dim CardTag As String
Dim CardNextRun As Integer
Select Case btnRecordMemCard.Caption
Case "oRecord"
Open PersonalityDirectory + "CardRun.TXT" For Input As #5
Input #5, CardNextRun
Close #5
'Card
CardTag = "CA" + Right$("000" + Format$(CardNextRun), 4)
CardNextRun = CardNextRun + 1
btnRecordMemCard.Caption = CardTag
Close #4
Open DataOutDir + CardTag + ".dat" For Append As #4
RecordCard = True
LogMessage (DataOutDir & CardTag & " Open")
Open PersonalityDirectory + "CardRun.TXT" For Output As #5
Write #5, CardNextRun
Close #5
Case Else
btnRecordMemCard.Caption = "oRecord"
'Card
Close #4
RecordCard = False
LogMessage (DataOutDir & CardTag & " Closed")
End Select
End Sub


Private Sub btnRequestScienceData_Click()
'Request Science Data Command (Direct Mode only)
If (comCmd.PortOpen) Then
  If optComMode(0).Value Then
    'Direct to instrument, Command Format
    comCmd.Output = Chr$(16) & Chr$(19) & Chr$(3)
    LogMessage "RSD command sent in direct mode"
  ElseIf optComMode(1).Value Then
    'Command via CSBF interface
    LogMessage "RSD command not valid in CSBF interface mode"
  ElseIf optComMode(2).Value Then
    'Classic CIP/Backplane Format
    LogMessage "RSD command not valid in Classic mode"
  End If
Else
  LogMessage "Port not open on RSD command"
End If
End Sub


Private Sub btnSetReadAddress_Click()
Dim HexReadAddress As String
Dim DecimalAddress As Long
DecimalAddress = CLng(txtMemoryReadAddress.Text)
If (DecimalAddress < 0) Then DecimalAddress = 0
If (DecimalAddress Mod 2) <> 0 Then DecimalAddress = DecimalAddress - 1
txtMemoryReadAddress.Text = Format$(DecimalAddress)
'The address must be sent one byte at a time
HexReadAddress = Right$("000000" & Hex$(DecimalAddress), 6)
'Board address C, command 1
QueueCommand Left$(HexReadAddress, 2) & "31"
'Board address C, command 2
QueueCommand Mid$(HexReadAddress, 3, 2) & "32"
'Board address C, command 3
QueueCommand Right$(HexReadAddress, 2) & "33"
End Sub

Private Sub btnShowB_Click()
frmLEEData.Show 0
End Sub

Private Sub btnShowLog_Click()
frmLogEntry.Show 0
btnShowB.SetFocus
End Sub

Private Sub btnShowPMTVolts_Click()
frmPMTVolts.Show 0
btnShowB.SetFocus
End Sub


Private Sub btnShowStatus_Click()
frmStatus.Show 0
btnShowB.SetFocus
End Sub

Private Sub btnShowTemperature_Click()
frmPulseHeight.Show 0
btnShowB.SetFocus
End Sub



Private Sub btnSimpleString_Click()
Dim Actual As String
Actual = txtSimpleString.Text
If (comCmd.PortOpen) Then
  comCmd.Output = Actual
  lblLastSent.Caption = Actual
  lblLastSent.BackColor = &HFFFFFF
  nCmdSent = nCmdSent + 1
  lblNumSent.Caption = Str(nCmdSent)
Else
  lblLastSent.Caption = Actual
  lblLastSent.BackColor = &HFFFF&
End If
LogMessage (Actual)
End Sub

Private Sub btnSwapFile_Click(Index As Integer)
Select Case btnRecord(Index).Caption
Case "Record"
Case Else
  btnRecord_Click (Index)
  btnRecord_Click (Index)
End Select
btnShowB.SetFocus
End Sub








Private Sub comCmd_OnComm()
'Although the OnComm event is generated whenever a communication error or event occurs, the CommEvent property holds the numeric code for that error or event. To determine the actual error or event that caused the OnComm event, you must reference the CommEvent property.
'The code returned by the CommEvent property is one of the settings of the following communication errors or events, as specified in the object library in the Object Browser.
'Communications errors include the following settings.

'Setting Value   Description

'comBreak    1001    A Break signal was received.
'comCTSTO    1002    Clear To Send Timeout. The Clear To Send line was low for CTSTimeout number of milliseconds while trying to transmit a character.
'comDSRTO    1003    Data Set Ready Timeout. The Data Set Ready line was low for DSRTimeout number of milliseconds while trying to transmit a character.
'comFrame    1004    Framing Error. The hardware detected a framing error.
'comOverrun  1006    Port Overrun. A character was not read from the hardware before the next character arrived and was lost. If you get this error under Windows version 3.0, decrease the value of the Interval property. For more details, refer to the Interval property.

'comCDTO     1007    Carrier Detect Timeout. The Carrier Detect line was low for CDTimeout number of milliseconds while trying to transmit a character. Carrier Detect is also known as the Receive Line Signal Detect (RLSD).
'comRxOver   1008    Receive Buffer Overflow. There is no room in the receive buffer.
'comRxParity 1009    Parity Error. The hardware detected a parity error.
'comTxFull   1010    Transmit Buffer Full. The transmit buffer was full while trying to queue a character.

'Communications events include the following settings.

'Setting     Value   Description

'comEvSend     1   There are fewer than SThreshold number of characters in the transmit buffer.
'comEvReceive  2   Received RThreshold number of characters. This event is generated continuously until you use the Input property to remove the data from the receive buffer.
'comEvCTS      3   Change in Clear To Send line.
'comEvDSR      4   Change in Data Set Ready line. This event is only fired when DSR changes from  1 to 0.
'comEvCD       5   Change in Carrier Detect line.
'comEvRing     6   Ring detected. Some UARTs (universal asynchronous receiver-transmitters) may not support this event.
Select Case comCmd.CommEvent
' Errors
Case comBreak     ' A Break was received.
Case comCDTO      ' CD (RLSD) Timeout.
Case comCTSTO     ' CTS Timeout.
Case comDSRTO     ' DSR Timeout.
Case comFrame     ' Framing Error
Case comOverrun   ' Data Lost.
Case comRxOver    ' Receive buffer overflow.
Case comRxParity  ' Parity Error.
Case comTxFull    ' Transmit buffer full.
' Events
Case comEvCD      ' Change in the CD line.
Case comEvCTS     ' Change in the CTS line.
Case comEvDSR     ' Change in the DSR line.
Case comEvRing    ' Change in the Ring Indicator.
Case comEvReceive ' Received RThreshold # of chars.
 ReadCmd
Case comEvSend    ' There are SThreshold number of characters in the transmit buffer.
Case Else
End Select
End Sub

Private Sub comCSBFDownlink_OnComm()
'Although the OnComm event is generated whenever a communication error or event occurs, the CommEvent property holds the numeric code for that error or event. To determine the actual error or event that caused the OnComm event, you must reference the CommEvent property.
'The code returned by the CommEvent property is one of the settings of the following communication errors or events, as specified in the object library in the Object Browser.
'Communications errors include the following settings.

'Setting Value   Description

'comBreak    1001    A Break signal was received.
'comCTSTO    1002    Clear To Send Timeout. The Clear To Send line was low for CTSTimeout number of milliseconds while trying to transmit a character.
'comDSRTO    1003    Data Set Ready Timeout. The Data Set Ready line was low for DSRTimeout number of milliseconds while trying to transmit a character.
'comFrame    1004    Framing Error. The hardware detected a framing error.
'comOverrun  1006    Port Overrun. A character was not read from the hardware before the next character arrived and was lost. If you get this error under Windows version 3.0, decrease the value of the Interval property. For more details, refer to the Interval property.

'comCDTO     1007    Carrier Detect Timeout. The Carrier Detect line was low for CDTimeout number of milliseconds while trying to transmit a character. Carrier Detect is also known as the Receive Line Signal Detect (RLSD).
'comRxOver   1008    Receive Buffer Overflow. There is no room in the receive buffer.
'comRxParity 1009    Parity Error. The hardware detected a parity error.
'comTxFull   1010    Transmit Buffer Full. The transmit buffer was full while trying to queue a character.

'Communications events include the following settings.

'Setting     Value   Description

'comEvSend     1   There are fewer than SThreshold number of characters in the transmit buffer.
'comEvReceive  2   Received RThreshold number of characters. This event is generated continuously until you use the Input property to remove the data from the receive buffer.
'comEvCTS      3   Change in Clear To Send line.
'comEvDSR      4   Change in Data Set Ready line. This event is only fired when DSR changes from  1 to 0.
'comEvCD       5   Change in Carrier Detect line.
'comEvRing     6   Ring detected. Some UARTs (universal asynchronous receiver-transmitters) may not support this event.
Select Case comCSBFDownlink.CommEvent
' Errors
Case comBreak     ' A Break was received.
Case comCDTO      ' CD (RLSD) Timeout.
Case comCTSTO     ' CTS Timeout.
Case comDSRTO     ' DSR Timeout.
Case comFrame     ' Framing Error
Case comOverrun   ' Data Lost.
Case comRxOver    ' Receive buffer overflow.
Case comRxParity  ' Parity Error.
Case comTxFull    ' Transmit buffer full.
' Events
Case comEvCD      ' Change in the CD line.
Case comEvCTS     ' Change in the CTS line.
Case comEvDSR     ' Change in the DSR line.
Case comEvRing    ' Change in the Ring Indicator.
Case comEvReceive ' Received RThreshold # of chars.
 ReadCSBF
Case comEvSend    ' There are SThreshold number of characters in the transmit buffer.
Case Else
End Select
End Sub

Private Sub comLEE_OnComm()
'Although the OnComm event is generated whenever a communication error or event occurs, the CommEvent property holds the numeric code for that error or event. To determine the actual error or event that caused the OnComm event, you must reference the CommEvent property.
'The code returned by the CommEvent property is one of the settings of the following communication errors or events, as specified in the object library in the Object Browser.
'Communications errors include the following settings.

'Setting Value   Description

'comBreak    1001    A Break signal was received.
'comCTSTO    1002    Clear To Send Timeout. The Clear To Send line was low for CTSTimeout number of milliseconds while trying to transmit a character.
'comDSRTO    1003    Data Set Ready Timeout. The Data Set Ready line was low for DSRTimeout number of milliseconds while trying to transmit a character.
'comFrame    1004    Framing Error. The hardware detected a framing error.
'comOverrun  1006    Port Overrun. A character was not read from the hardware before the next character arrived and was lost. If you get this error under Windows version 3.0, decrease the value of the Interval property. For more details, refer to the Interval property.

'comCDTO     1007    Carrier Detect Timeout. The Carrier Detect line was low for CDTimeout number of milliseconds while trying to transmit a character. Carrier Detect is also known as the Receive Line Signal Detect (RLSD).
'comRxOver   1008    Receive Buffer Overflow. There is no room in the receive buffer.
'comRxParity 1009    Parity Error. The hardware detected a parity error.
'comTxFull   1010    Transmit Buffer Full. The transmit buffer was full while trying to queue a character.

'Communications events include the following settings.

'Setting     Value   Description

'comEvSend     1   There are fewer than SThreshold number of characters in the transmit buffer.
'comEvReceive  2   Received RThreshold number of characters. This event is generated continuously until you use the Input property to remove the data from the receive buffer.
'comEvCTS      3   Change in Clear To Send line.
'comEvDSR      4   Change in Data Set Ready line. This event is only fired when DSR changes from  1 to 0.
'comEvCD       5   Change in Carrier Detect line.
'comEvRing     6   Ring detected. Some UARTs (universal asynchronous receiver-transmitters) may not support this event.
Select Case comLEE.CommEvent
' Errors
Case comBreak     ' A Break was received.
Case comCDTO      ' CD (RLSD) Timeout.
Case comCTSTO     ' CTS Timeout.
Case comDSRTO     ' DSR Timeout.
Case comFrame     ' Framing Error
Case comOverrun   ' Data Lost.
Case comRxOver    ' Receive buffer overflow.
Case comRxParity  ' Parity Error.
Case comTxFull    ' Transmit buffer full.
' Events
Case comEvCD      ' Change in the CD line.
Case comEvCTS     ' Change in the CTS line.
Case comEvDSR     ' Change in the DSR line.
Case comEvRing    ' Change in the Ring Indicator.
Case comEvReceive ' Received RThreshold # of chars.
 ReadLEE
 FormatLEEFrames
Case comEvSend    ' There are SThreshold number of characters in the transmit buffer.
Case Else
End Select
End Sub












Private Sub Dir1_Change()
File1.Path = Dir1.Path
End Sub

Private Sub Form_Load()
Dim I As Integer
Dim iFor As Integer
Dim CurrentValue As Single
Dim DefString As String
Dim ParCode As String
Dim nPar As Integer
Dim nBlan As Integer
Dim nCom As Integer
Dim nColon As Integer
Dim Stamp As String
ActualTime = Now
CurTime = ActualTime
ImportInProgress = False
lblCurTime.Caption = Format$(CurTime, "mm/dd/yyyy HH:NN:SS")
BinState = 0
AscState = 0
ShowText = False
For iFor = 0 To 9
 FrameLeeFlag(iFor) = True
Next iFor
Close #2
Open PersonalityDirectory + "Defaults.txt" For Input As #2
nPortLEE = 4
nPortCmd = 5
nPortCSBFDownlink = 6
PowerOffset = 0
FirstPowerSeen = False
PowerTime = 0
LastPowerTime = 0
PowerDefInt = 5
PowerInterval = 5
C1Offset = 0
FirstC1Seen = False
C1Time = 0
LastC1Time = 0
C1DefInt = 1
C1Interval = 1
C2Offset = 0
FirstC2Seen = False
C2Time = 0
LastC2Time = 0
C2DefInt = 1
C2Interval = 1
C3Offset = 0
FirstC3Seen = False
C3Time = 0
LastC3Time = 0
C3DefInt = 1
C3Interval = 1
C1TimeSync = 31909547
TimeHackString = "5/17/2009"
Line Input #2, DefString
Do While (Not EOF(2))
  nColon = InStr(DefString, ":")
  If InStr(DefString, "LEE:") > 0 Then nPortLEE = CInt(Mid$(DefString, nColon + 1))
  If InStr(DefString, "Command:") > 0 Then nPortCmd = CInt(Mid$(DefString, nColon + 1))
  If InStr(DefString, "CIP:") > 0 Then vsbCIPCode.Value = CInt(Mid$(DefString, nColon + 1))
  If InStr(DefString, "CSBF:") > 0 Then vsbCIPCode.Value = CInt(Mid$(DefString, nColon + 1))
  If InStr(DefString, "PowerOffset:") > 0 Then PowerOffset = CLng(Mid$(DefString, nColon + 1))
  If InStr(DefString, "C1Offset:") > 0 Then C1Offset = CLng(Mid$(DefString, nColon + 1))
  If InStr(DefString, "C2Offset:") > 0 Then C2Offset = CLng(Mid$(DefString, nColon + 1))
  If InStr(DefString, "C3Offset:") > 0 Then C3Offset = CLng(Mid$(DefString, nColon + 1))
  If InStr(DefString, "C1TimeSync:") > 0 Then C1TimeSync = CLng(Mid$(DefString, nColon + 1))
  If InStr(DefString, "TimeHackString:") > 0 Then TimeHackString = Mid$(DefString, nColon + 1)
  Line Input #2, DefString
Loop
Close #2
TimeHack = CDate(TimeHackString)
vsbDataPort.Value = nPortLEE
vsbCommandPort.Value = nPortCmd
vsbCSBFDownlink.Value = nPortCSBFDownlink
'Default Baud Rate
optTlmBitRate(2).Value = True
LEEBitRate = CDbl(optTlmBitRate(2).Caption)
BPDDate = Format(ActualTime, "yy_mm_dd")
DatFile = DataOutDir + BPDDate + ".bpd"
Open DatFile For Append As #2
'Open "C:\LEEMIP\Diagnostic.dat" For Output As #11
GenerateTimeStamp Stamp
Print #2, "ME: " & Stamp & " LEE Start"
Print #2, "ME: " & Stamp & " Software Key Code -- " + lblSoftwareVersion
Print #2, "ME: " & Stamp & " Barometer 0 -- Serial  81941 Model 216B-102"
'Print #11, "ME: LEE Start at " + lblCurTime.Caption
'Print #11, "ME: Software Key Code -- " + lblSoftwareVersion
'Print #11, "ME: Barometer 0 -- Serial  81941 Model 216B-102"
If RecordLee Then Print #4, "ME: " & Stamp & " LEE Start at " + lblCurTime.Caption
If RecordLee Then Print #4, "ME: " & Stamp & " Software Key Code -- " + lblSoftwareVersion
If RecordLee Then Print #4, "ME: " & Stamp & " Barometer 0 -- Serial  81941 Model 216B-102"
X0(0) = 5.875516
Y1(0) = -3947.926
Y2(0) = -10090.9
Y3(0) = 0
C1(0) = 95.4503
C2(0) = 2.982818
C3(0) = -135.3036
D1(0) = 0.042247
D2(0) = 0
T1(0) = 27.91302
T2(0) = 0.873949
T3(0) = 21.00155
T4(0) = 36.63574
T5(0) = 0
TSF(0) = 1
PSF(0) = 1
Print #2, "ME: " & Stamp & " Barometer 1 -- Serial  81940 Model 216B-102"
If RecordLee Then Print #4, "ME: " & Stamp & " Barometer 1 -- Serial  81940 Model 216B-102"
X0(1) = 5.885121
Y1(1) = -3911.254
Y2(1) = -10596.68
Y3(1) = 0
C1(1) = 98.66002
C2(1) = 3.764465
C3(1) = -115.2342
D1(1) = 0.029628
D2(1) = 0
T1(1) = 27.78237
T2(1) = 0.799658
T3(1) = 19.95969
T4(1) = 31.02292
T5(1) = 0
TSF(1) = 1
PSF(1) = 1
'Multiple command upload spacing timer setup
lblUpLoadInterval.Caption = vsbUpLoadInterval.Value
'PMT Voltages
InitializeHighVoltage
'PHA Discriminators
frmPMTVolts.hsbHiVolt(LastHiVolt + 1 + 0).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + 1 + 1).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + 1 + 2).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + 1 + 3).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + 1 + 4).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + 1 + 5).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + 1 + 6).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + 1 + 7).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + 1 + 8).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + 1 + 9).Value = 7
'Logic Discriminators
frmPMTVolts.hsbHiVolt(LastHiVolt + LastPHADisc + 2 + 0).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + LastPHADisc + 2 + 1).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + LastPHADisc + 2 + 2).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + LastPHADisc + 2 + 3).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + LastPHADisc + 2 + 4).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + LastPHADisc + 2 + 5).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + LastPHADisc + 2 + 6).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + LastPHADisc + 2 + 7).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + LastPHADisc + 2 + 8).Value = 7
frmPMTVolts.hsbHiVolt(LastHiVolt + LastPHADisc + 2 + 9).Value = 7
For nCom = 0 To 3
  lblOnOff(nCom).Caption = frmStatus.lblDescribe(2 * nCom + 45).Caption
  lblOnState(nCom).BackColor = DefaultBackcolor
  lblOnState(nCom).Refresh
Next nCom
OO_Type(0) = "P"
OO_HexOn(0) = "001A"
OO_HexOff(0) = "001B"
OO_Type(1) = "S"
OO_HexOn(1) = "0434"
OO_HexOff(1) = "0834"
OO_Type(2) = "S"
OO_HexOn(2) = "1034"
OO_HexOff(2) = "2034"
OO_Type(3) = "S"
OO_HexOn(3) = "4034"
OO_HexOff(3) = "8034"
lblItemValue(0).Caption = "N/A"
For iFor = 1 To 17
  Load lblItemDesc(iFor)
  lblItemDesc(iFor).Top = lblItemDesc(iFor - 1).Top + 1.3 * lblItemDesc(iFor - 1).Height
  lblItemDesc(iFor).Visible = True
  Load lblItemValue(iFor)
  lblItemValue(iFor).Top = lblItemDesc(iFor).Top
  lblItemValue(iFor).Visible = True
Next iFor
lblItemDesc(0).Caption = "Version"
lblItemDesc(1).Caption = "Q0"
lblItemDesc(2).Caption = "Q1"
lblItemDesc(3).Caption = "MCSta"
lblItemDesc(4).Caption = "nIrTO"
lblItemDesc(5).Caption = "nIrOF"
lblItemDesc(6).Caption = "nIrIV"
lblItemDesc(7).Caption = "nIrIR"
lblItemDesc(8).Caption = "nIrCm"
lblItemDesc(9).Caption = "nEOR"
lblItemDesc(10).Caption = "nCtr1"
lblItemDesc(11).Caption = "nCtr2"
lblItemDesc(12).Caption = "nCtr3"
lblItemDesc(13).Caption = "nPowr"
lblItemDesc(14).Caption = "nEvnt"
lblItemDesc(15).Caption = "nMCEr"
lblItemDesc(16).Caption = "Write"
lblItemDesc(17).Caption = "Read"
CommandReadInProgress = False
nCommandCharRead = 0
FrameLEEHistoryPointer = 0
lblMultiRead.Caption = "No Multi"
lblMultiRead.BackColor = ColorRed
MultiRead = False
Dir1.Path = "C:\LEEMIP\"
File1.Path = Dir1.Path
File1.Pattern = "*.dat"
End Sub

Private Sub Form_Unload(Cancel As Integer)
Dim Stamp As String
GenerateTimeStamp Stamp
If RecordLee Then Print #4, "ME: " & Stamp & " LEEFlit Terminating "
Print #2, "ME: " & Stamp & " LEEFlit Terminating "
Close #2
End
End Sub

Public Sub Exception(Message As String)
lblLogMessage.Caption = Message
Print #2, "X: " + lblCurTime.Caption + " " + lblLogMessage.Caption
If RecordLee Then Print #4, "X: " + lblCurTime.Caption + " " + lblLogMessage.Caption
End Sub
Public Sub LogMessage(Message As String)
Dim Stamp As String
GenerateTimeStamp Stamp
lblLogMessageTime.Caption = Stamp
lblLogMessage.Caption = Message
Print #2, "LM: " & Stamp & " " & Message
If RecordLee Then Print #4, "LM: " & Stamp & " " & Message
End Sub

Private Static Sub ProcessCounterIO_1()
'This is actually "Counter Board 3" on the display
Dim OutString As String
'Dim WorkString As String
Dim FrequencyA(1) As Double
Dim FrequencyB(1) As Double
Dim CurrentValue As Single
Dim PulseVerify As Integer
Dim C1RateVerify As Integer
Dim AutoValveVerify As Integer
Dim DigOutVerify As Integer
Dim N As Integer
Dim LastScaler(9) As Long
Dim ScalerDelta(9) As Long
Dim House(4) As Integer
Dim HouseAvg(4) As Single
Dim nScl As Integer
Dim nHsk As Integer
Dim nAlt As Integer
Dim W1 As Long
Dim W2 As Long
Dim RawTime As Long
'The one second, non resetting counter
W1 = (C1Raw(C1Timer) And 32767)
RawTime = 65536 * W1 + C1Raw(C1Timer + 1)
If RejectBad And Not C1Good Then
  OutString = "Done"
  C1Fresh = False
  LogMessage "C1 Rejected: " & Format$(RawTime) & " " & Format$(RawTime - C1Offset)
  ImportStats(1, 0) = ImportStats(1, 0) + 1
  Exit Sub
End If
C1Time = RawTime - C1Offset
ImportStats(0, 0) = ImportStats(0, 0) + 1
If FirstC1Seen Then
  If AdjustCtr And (Abs(C1Time - LastC1Time) > 2 * C1DefInt) Then
    C1Time = LastC1Time + C1DefInt
    C1Interval = C1DefInt
  ElseIf AdjustCtr And (C1Time < LastC1Time) Then
    C1Time = LastC1Time + C1DefInt
    C1Interval = C1DefInt
  Else
    C1Interval = C1Time - LastC1Time
  End If
Else
  FirstC1Seen = True
  C1Interval = C1DefInt
End If
If C1Interval < 1 Then C1Interval = C1DefInt
LastC1Time = C1Time
If ImportInProgress Then
  CurTime = TimeHack + CDbl(C1Time - C1TimeSync) / 86400#
  lblCurTime.Caption = Format$(CurTime, "mm/dd/yyyy HH:NN:SS")
End If
GenerateTimeStamp OutString
OutString = "C1: " + OutString + " "
lblCounterIONum(0).Caption = Format$(C1Time)
OutString = OutString + " " + lblCounterIONum(0).Caption
lblLastRec(0).Caption = Right$("0000" & Hex$(C1Raw(C1LastCmd)), 4)
OutString = OutString + " " + lblLastRec(0).Caption
lblNumRec(0).Caption = Str(C1Raw(C1CmdCtr))
OutString = OutString + " " + lblNumRec(0).Caption
For nScl = 0 To 9
  ScalerDelta(nScl) = Str(C1Raw(C1Scaler + nScl) - LastScaler(nScl))
  If (ScalerDelta(nScl) < 0) Then
    ScalerDelta(nScl) = ScalerDelta(nScl) + 2 ^ 23
  End If
  CurrentValue = Desc_Gain(nScl) * (ScalerDelta(nScl) / C1Interval) - Desc_Offset(nScl)
  frmStatus.lblCounterIO(nScl).Caption = Format$(CurrentValue, "0.0")
  If nScl = 2 Then
    FrequencyB(0) = CurrentValue
    EnterLEEHis CurrentValue, C1HistOr, 0
  ElseIf nScl = 3 Then
    FrequencyA(0) = CurrentValue
    EnterLEEHis CurrentValue, C1HistOr + 1, 0
  ElseIf nScl = 4 Then
    FrequencyB(1) = CurrentValue
    EnterLEEHis CurrentValue, C1HistOr + 2, 0
  ElseIf nScl = 5 Then
    FrequencyA(1) = CurrentValue
    EnterLEEHis CurrentValue, C1HistOr + 3, 0
  ElseIf nScl = 8 Then
    EnterLEEHis CurrentValue, C1HistOr + 8, 0
  ElseIf nScl = 9 Then
    EnterLEEHis CurrentValue, C1HistOr + 9, 0
  Else
  End If
  OutString = OutString + " " + frmStatus.lblCounterIO(nScl).Caption
  LastScaler(nScl) = C1Raw(C1Scaler + nScl)
Next nScl
For nAlt = 0 To 1
  Digiquartz FrequencyA(nAlt), FrequencyB(nAlt), DigiPress(nAlt), DigiTemp(nAlt), nAlt
  If (DigiPress(nAlt) > 0#) And (DigiTemp(nAlt) > -100#) And (DigiPress(nAlt) < 2000#) And (DigiTemp(nAlt) < 100#) Then
    CurrentValue = DigiPress(nAlt)
    EnterLEEHis CurrentValue, C1HistOr + 2 * nAlt + 4, 0
    CurrentValue = DigiTemp(nAlt)
    EnterLEEHis CurrentValue, C1HistOr + 2 * nAlt + 5, 0
    lblAltitude(nAlt).Caption = Format$(DigiPress(nAlt), "0.00")
    lblAltimeterTemperature(nAlt).Caption = Format$(DigiTemp(nAlt), "0.00")
  Else
    lblAltitude(nAlt).Caption = "-1"
    lblAltimeterTemperature(nAlt).Caption = "-1"
  End If
  OutString = OutString + " " + lblAltitude(nAlt).Caption
  OutString = OutString + " " + lblAltimeterTemperature(nAlt)
Next nAlt
For nHsk = 0 To 4
  W1 = C1Raw(C1Hskp1 + nHsk) And &H30&
  W1 = W1 \ 16
  W2 = C1Raw(C1Hskp1 + nHsk) And &HFF00&
  W2 = W2 \ 64
  W2 = W2 + W1
  House(nHsk) = W2
  HouseAvg(nHsk) = House(nHsk)
  CurrentValue = Desc_Gain(nHsk + 10) * HouseAvg(nHsk) - Desc_Offset(nHsk + 10)
  frmStatus.lblCounterIO(nHsk + 10).Caption = Format$(CurrentValue, "0.00")
  If (nHsk < 3) Then EnterLEEHis CurrentValue, C1HistOr + nHsk + 10, 0
  OutString = OutString + " " + frmStatus.lblCounterIO(nHsk + 10).Caption
Next nHsk
Print #2, OutString
If RecordLee Then Print #4, OutString
'WorkString = Mid$(OutString, 14)
'FillDoubleArrayB Counter1, lCounter1, WorkString
'Counter1Histograms
OutString = "Done"
C1Fresh = False
End Sub
Private Static Sub ProcessCounterIO_3()
'This is actually "Counter Board 1" on the display
Dim OutString As String
Dim CurrentValue As Single
Dim PulseVerify As Integer
Dim C3RateVerify As Integer
Dim AutoValveVerify As Integer
Dim DigOutVerify As Integer
Dim N As Integer
Dim LastScaler(9) As Long
Dim ScalerDelta(9) As Long
Dim House(4) As Integer
Dim HouseAvg(4) As Single
Dim nScl As Integer
Dim nHsk As Integer
Dim W1 As Long
Dim W2 As Long
Dim RawTime As Long
'The one second, non resetting counter
W1 = (C3Raw(C3Timer) And 32767)
RawTime = 65536 * W1 + C3Raw(C3Timer + 1)
If RejectBad And Not C3Good Then
  OutString = "Done"
  C3Fresh = False
  LogMessage "C3 Rejected: " & Format$(RawTime) & " " & Format$(RawTime - C3Offset)
  ImportStats(1, 2) = ImportStats(1, 2) + 1
  Exit Sub
End If
ImportStats(0, 2) = ImportStats(0, 2) + 1
C3Time = RawTime - C3Offset
If FirstC3Seen Then
  If AdjustCtr And (Abs(C3Time - LastC3Time) > 2 * C3DefInt) Then
    C3Time = LastC3Time + C3DefInt
    C3Interval = C3DefInt
  ElseIf AdjustCtr And (C3Time < LastC3Time) Then
    C3Time = LastC3Time + C3DefInt
    C3Interval = C3DefInt
  Else
    C3Interval = C3Time - LastC3Time
  End If
Else
  FirstC3Seen = True
  C3Interval = C3DefInt
End If
If C3Interval < 1 Then C3Interval = C3DefInt
LastC3Time = C3Time
GenerateTimeStamp OutString
OutString = "C3: " + OutString + " "
lblCounterIONum(2).Caption = Format$(C3Time)
OutString = OutString + " " + lblCounterIONum(2).Caption
lblLastRec(2).Caption = Right$("0000" & Hex$(C3Raw(C3LastCmd)), 4)
OutString = OutString + " " + lblLastRec(2).Caption
lblNumRec(2).Caption = Str(C3Raw(C3CmdCtr))
OutString = OutString + " " + lblNumRec(2).Caption
For nScl = 0 To 9
  ScalerDelta(nScl) = Str(C3Raw(C3Scaler + nScl) - LastScaler(nScl))
  If (ScalerDelta(nScl) < 0) Then
    ScalerDelta(nScl) = ScalerDelta(nScl) + 2 ^ 23
  End If
  CurrentValue = Desc_Gain(nScl + C3DeOffset) * ScalerDelta(nScl) / C3Interval - Desc_Offset(nScl + C3DeOffset)
  If ZeroCountAlarm And (CurrentValue = 0#) Then Beep
  frmStatus.lblCounterIO(nScl + C3DeOffset).Caption = Format$(CurrentValue, "0.0")
  EnterLEEHis CurrentValue, C3HistOr + nScl, 0
  OutString = OutString + " " + frmStatus.lblCounterIO(nScl + C3DeOffset).Caption
  LastScaler(nScl) = C3Raw(C3Scaler + nScl)
Next nScl
For nHsk = 0 To 4
  W1 = C3Raw(C3Hskp1 + nHsk) And &H30&
  W1 = W1 \ 16
  W2 = C3Raw(C3Hskp1 + nHsk) And &HFF00&
  W2 = W2 \ 64
  W2 = W2 + W1
  House(nHsk) = W2
  HouseAvg(nHsk) = House(nHsk)
  CurrentValue = Desc_Gain(nHsk + 10 + C3DeOffset) * HouseAvg(nHsk) - Desc_Offset(nHsk + 10 + C3DeOffset)
  frmStatus.lblCounterIO(nHsk + 10 + C3DeOffset).Caption = Format$(CurrentValue, "0.00")
  If (nHsk < 3) Then EnterLEEHis CurrentValue, C3HistOr + nHsk + 10, 0
  OutString = OutString + " " + frmStatus.lblCounterIO(nHsk + 10 + C3DeOffset).Caption
Next nHsk
Print #2, OutString
If RecordLee Then Print #4, OutString
OutString = "Done"
C3Fresh = False
End Sub


Private Static Sub ProcessCounterIO_2()
'This is actually "Counter Board 2" on the display
Dim OutString As String
'Dim WorkString As String
Dim CurrentValue As Single
Dim PulseVerify As Integer
Dim C2RateVerify As Integer
Dim AutoValveVerify As Integer
Dim DigOutVerify As Integer
Dim N As Integer
Dim LastScaler(9) As Long
Dim ScalerDelta(9) As Long
Dim House(4) As Integer
Dim HouseAvg(4) As Single
Dim nScl As Integer
Dim nHsk As Integer
Dim W1 As Long
Dim W2 As Long
Dim RawTime As Long
Dim iFor As Integer
'Dim DiagStr As String
'The one second, non resetting counter
W1 = (C2Raw(C2Timer) And 32767)
RawTime = 65536 * W1 + C2Raw(C2Timer + 1)
'DiagStr = "C2Raw: " & Format$(W1)
'For iFor = 0 To C2Last
'  DiagStr = DiagStr + " " + Format$(C2Raw(iFor))
'Next iFor
'Print #2, DiagStr
If RejectBad And Not C2Good Then
  OutString = "Done"
  C2Fresh = False
  LogMessage "C2 Rejected: " & Format$(RawTime) & " " & Format$(RawTime - C2Offset)
  ImportStats(1, 1) = ImportStats(1, 1) + 1
  Exit Sub
End If
C2Time = RawTime - C2Offset
ImportStats(0, 1) = ImportStats(0, 1) + 1
If FirstC2Seen Then
  If AdjustCtr And (Abs(C2Time - LastC2Time) > 2 * C2DefInt) Then
    C2Time = LastC2Time + C2DefInt
    C2Interval = C2DefInt
  ElseIf AdjustCtr And (C2Time < LastC2Time) Then
    C2Time = LastC2Time + C2DefInt
    C2Interval = C2DefInt
  Else
    C2Interval = C2Time - LastC2Time
  End If
Else
  FirstC2Seen = True
  C2Interval = C2DefInt
End If
If C2Interval < 1 Then C2Interval = C2DefInt
LastC2Time = C2Time
GenerateTimeStamp OutString
OutString = "C2: " + OutString + " "
lblCounterIONum(1).Caption = Format$(C2Time)
OutString = OutString + " " + lblCounterIONum(1).Caption
lblLastRec(1).Caption = Right$("0000" & Hex$(C2Raw(C2LastCmd)), 4)
OutString = OutString + " " + lblLastRec(1).Caption
lblNumRec(1).Caption = Str(C2Raw(C2CmdCtr))
OutString = OutString + " " + lblNumRec(1).Caption
For nScl = 0 To 9
  ScalerDelta(nScl) = Str(C2Raw(C2Scaler + nScl) - LastScaler(nScl))
  If (ScalerDelta(nScl) < 0) Then
    ScalerDelta(nScl) = ScalerDelta(nScl) + 2 ^ 23
  End If
  CurrentValue = Desc_Gain(nScl + C2DeOffset) * ScalerDelta(nScl) / C2Interval - Desc_Offset(nScl + C2DeOffset)
  If ZeroCountAlarm And (CurrentValue = 0#) Then Beep
  frmStatus.lblCounterIO(nScl + C2DeOffset).Caption = Format$(CurrentValue, "0.0")
  EnterLEEHis CurrentValue, C2HistOr + nScl, 0
  OutString = OutString + " " + frmStatus.lblCounterIO(nScl + C2DeOffset).Caption
  LastScaler(nScl) = C2Raw(C2Scaler + nScl)
Next nScl
For nHsk = 0 To 4
  W1 = C2Raw(C2Hskp1 + nHsk) And &H30&
  W1 = W1 \ 16
  W2 = C2Raw(C2Hskp1 + nHsk) And &HFF00&
  W2 = W2 \ 64
  W2 = W2 + W1
  House(nHsk) = W2
  HouseAvg(nHsk) = House(nHsk)
  CurrentValue = Desc_Gain(nHsk + 10 + C2DeOffset) * HouseAvg(nHsk) - Desc_Offset(nHsk + 10 + C2DeOffset)
  frmStatus.lblCounterIO(nHsk + 10 + C2DeOffset).Caption = Format$(CurrentValue, "0.00")
  If (nHsk < 3) Then EnterLEEHis CurrentValue, C2HistOr + nHsk + 10, 0
  OutString = OutString + " " + frmStatus.lblCounterIO(nHsk + 10 + C2DeOffset).Caption
Next nHsk
Print #2, OutString
If RecordLee Then Print #4, OutString
'WorkString = Mid$(InString, 14)
'FillDoubleArrayB Counter2, lCounter2, WorkString
'Counter2Histograms
OutString = "Done"
C2Fresh = False
End Sub


Private Static Sub ReadLEE()
Dim Dta As String
Dim NS1 As Integer
Dim NS2 As Integer
Dim nBetween As Integer
Dim II As Integer
On Error Resume Next
'Read from LEE port
Dta = comLEE.Input
DataLenLEE = Len(Dta)
If (DataLenLEE > 0) Then
  lblLEENread = Format$(DataLenLEE)
  'Make sure the existing text doesn't get too large
  If Len(CurrentLEE) >= 2000 Then
    CurrentLEE = Mid$(CurrentLEE, 1400)
  End If
  CurrentLEE = CurrentLEE + Dta
  nCurLEE = Len(CurrentLEE)
End If
End Sub
Private Static Sub ReadCmd()
Dim Dta As String
Dim iFor As Integer
Dim nBytes As Integer
On Error Resume Next
'Read from Command port
Dta = comCmd.Input
DataLenCmd = Len(Dta)
If lblInputEcho.Caption = "Echo" Then DisplayText Dta
If (DataLenCmd > 0) Then
  lblCmdnRead.Caption = Format$(DataLenCmd)
  Do While Len(Dta) > 0
    If Not CommandReadInProgress Then
      If Asc(Left$(Dta, 1)) = &H10 Then
        lblnCommandReport.Caption = CLng(lblnCommandReport.Caption) + 1
        nCommandCharRead = 1
        CommandReadInProgress = True
      End If
    Else
      If nCommandCharRead = 1 Then
        If (Asc(Left$(Dta, 1))) <> &H53 Then
          LogMessage "Command Format Error"
          CommandReadInProgress = False
        Else
          nCommandCharRead = 2
        End If
      ElseIf nCommandCharRead = 2 Then
        DownlinkMessage = Left$(Dta, 1)
        nBytes = Asc(DownlinkMessage)
        nCommandCharRead = 3
      ElseIf (nCommandCharRead >= 3) And (nCommandCharRead < nBytes + 3) Then
        DownlinkMessage = DownlinkMessage & Left$(Dta, 1)
        nCommandCharRead = nCommandCharRead + 1
      ElseIf (nCommandCharRead = nBytes + 3) And (Asc(Left$(Dta, 1)) = &H3) Then
        ProcessDownlink
        CommandReadInProgress = False
      Else
        LogMessage "Command Science Message Length Error " & Format$(nCommandCharRead) & " " & Format$(Asc(Left$(Dta, 1)))
        CommandReadInProgress = False
      End If
    End If
    Dta = Mid$(Dta, 2)
  Loop
End If
End Sub
Private Static Sub ReadCSBF()
Dim Dta As String
Dim iFor As Integer
Dim nBytes As Integer
'Ringo 2/13/2009 Iridium Header Found Flag
Dim IridFlg As Integer
On Error Resume Next
'Read from Command port
Dta = comCSBFDownlink.Input
DataLenCSBFDownlink = Len(Dta)
lblTotRead.Caption = Format$(CLng(lblTotRead.Caption)) + DataLenCSBFDownlink
If (DataLenCSBFDownlink > 0) Then
  lblnReadCSBFDownlink.Caption = Format$(DataLenCSBFDownlink)
  Do While Len(Dta) > 0
    If DownlinkReadInProgress Then
      If nDownCharRead = 1 Then
        'Ringo 2/13/2009
        'Accept both Iridium and LOS headers
        'If (Asc(Left$(Dta, 1))) <> &HFD Then
        If ((Asc(Left$(Dta, 1))) <> &HFA) And ((Asc(Left$(Dta, 1))) <> &HFD) Then
          LogMessage "Downlink Format Error"
          DownlinkReadInProgress = False
        Else
          nDownCharRead = 2
          'Ringo 2/13/09
          'Tag Iridium header in packets
          'Tag Iridium packets
          IridFlg = 0
          If (Asc(Left$(Dta, 1))) = &HFD Then
            IridFlg = 1
          End If
        End If
      ElseIf nDownCharRead = 2 Then
        lblDownRoute.Caption = Right$("00" & Hex$(Asc(Left$(Dta, 1))), 2)
        nDownCharRead = 3
      ElseIf nDownCharRead = 3 Then
        nDownCharRead = 4
      ElseIf nDownCharRead = 4 Then
        nBytes = 256 * Asc(Left$(Dta, 1))
        lblnBytes.Caption = Format$(nBytes)
        nDownCharRead = 5
      ElseIf nDownCharRead = 5 Then
        nBytes = nBytes + Asc(Left$(Dta, 1))
        lblnBytes.Caption = Format$(nBytes)
        If nBytes > 255 Then
          LogMessage "Downlink Data Length Error " & Format$(nBytes)
          DownlinkReadInProgress = False
        Else
          nDownCharRead = 6
          DownlinkMessage = Left$(Dta, 1)
        End If
      ElseIf (nDownCharRead >= 6) And (nDownCharRead < 6 + nBytes) Then
        nDownCharRead = nDownCharRead + 1
        DownlinkMessage = DownlinkMessage + Left$(Dta, 1)
      ElseIf (nDownCharRead = nBytes + 6) Then
        'Ringo 2/13/2009
        'Distinguish downlink from Iridium and LOS
        If IridFlg = 0 Then
          LogMessage "Downlink LOS Message Complete"
        Else
          LogMessage "Downlink Iridium Message Complete"
        End If
        'Distinguish downlink from Iridium and LOS
        ProcessDownlink
        DownlinkReadInProgress = False
      Else
        LogMessage "Downlink Message Length Error " & Format$(nBytes) & " " & Format$(nDownCharRead) & " " & Format$(Asc(Left$(Dta, 1)))
        DownlinkReadInProgress = False
      End If
    Else
      If Asc(Left$(Dta, 1)) = &HFA Then
        nDownCharRead = 1
        nBytes = 0
        lblnBytes.Caption = Format$(nBytes)
        DownlinkReadInProgress = True
        DownlinkMessage = ""
      Else
        LogMessage "CSBF Start Fail " & Hex$(Asc(Left$(Dta, 1)))
      End If
    End If
    Dta = Mid$(Dta, 2)
  Loop
End If
End Sub


Public Sub SendCommand(HexCom As String)
Dim CIPForm As String
Dim BaseCommand As String
Dim ByteCommand(1) As String
Dim Pulse As Boolean
BaseCommand = Left$(HexCom, 4)
ByteCommand(0) = CByte("&H" & Left$(BaseCommand, 2))
ByteCommand(1) = CByte("&H" & Right$(BaseCommand, 2))
If (Len(HexCom) = 5 And Mid$(HexCom, 5) = "K") Then
  Pulse = True
  CIPForm = "S" + Left$(HexCom, 4) + " " + lblCIPCode.Caption + "K"
Else
  Pulse = False
  CIPForm = "S" + Left$(HexCom, 4) + " " + lblCIPCode.Caption + "W"
End If
If (comCmd.PortOpen) Then
  If optComMode(0).Value Then
    'Direct to instrument, Command Format
    If Not Pulse Then comCmd.Output = Chr$(16) & Chr$(20) & Chr$(2) & Chr$(ByteCommand(0)) & Chr$(ByteCommand(1)) & Chr$(3)
  ElseIf optComMode(1).Value Then
    '13 Feb-2009 Ringo
    'Command via CSBF Iridium interface
    'If Not Pulse Then comCmd.Output = Chr$(16) & Chr$(1) & Chr$(9) & Chr$(2) & Chr$(ByteCommand(0)) & Chr$(ByteCommand(1)) & Chr$(3)
    If Not Pulse Then comCmd.Output = Chr$(16) & Chr$(2) & Chr$(9) & Chr$(2) & Chr$(ByteCommand(0)) & Chr$(ByteCommand(1)) & Chr$(3)
    'Cmdlast = "2222"
  ElseIf optComMode(2).Value Then
    'Classic CIP/Backplane Format
    comCmd.Output = CIPForm + CIPForm + CIPForm + Chr$(13) + Chr(10)
  ElseIf optComMode(3).Value Then
    'Command via CSBF LOS interface
    If Not Pulse Then comCmd.Output = Chr$(16) & Chr$(0) & Chr$(9) & Chr$(2) & Chr$(ByteCommand(0)) & Chr$(ByteCommand(1)) & Chr$(3)
'   Cmdlast = "0000"
  End If
  lblLastSent.Caption = HexCom
 ' lblLastSent.Caption = Cmdlast
  lblLastSent.BackColor = &HFFFFFF
  nCmdSent = nCmdSent + 1
  lblNumSent.Caption = Str(nCmdSent)
Else
  lblLastSent.Caption = HexCom
  'lblLastSent.Caption = Cmdlast
  lblLastSent.BackColor = &HFFFF&
  CIPForm = "Port not open: " & CIPForm
End If
LogMessage (CIPForm)
End Sub




Private Sub lblCmdBaud_Click()
Dim CurBaud As Long
CurBaud = CLng(lblCmdBaud.Caption)
CurBaud = CurBaud * 2
If CurBaud > 38400 Then CurBaud = 600
lblCmdBaud.Caption = Format$(CurBaud)
End Sub

Private Sub lblCommandPort_Change()
nPortCmd = CInt(lblCommandPort.Caption)
End Sub

Private Sub lblCSBFDownlink_Change()
nPortCSBFDownlink = CInt(lblCSBFDownlink.Caption)
End Sub

Private Sub lblDataPort_Change()
nPortLEE = CInt(lblDataPort.Caption)
End Sub

Private Sub lblInputEcho_Click()
If lblInputEcho.Caption = "NoEcho" Then
  lblInputEcho.Caption = "Echo"
Else
  lblInputEcho.Caption = "NoEcho"
End If
End Sub

Private Sub lblMultiRead_Click()
If lblMultiRead.Caption = "No Multi" Then
  lblMultiRead.Caption = "Multi"
  lblMultiRead.BackColor = ColorGreen
  MultiRead = True
Else
  lblMultiRead.Caption = "No Multi"
  lblMultiRead.BackColor = ColorRed
  MultiRead = False
End If
End Sub

Private Sub lblTextFormat_Click()
If lblTextFormat.Caption = "ASCII" Then
  lblTextFormat.Caption = "HEX"
Else
  lblTextFormat.Caption = "ASCII"
End If
End Sub

Private Sub optComMode_Click(Index As Integer)
Dim CurBaud As Long
Select Case Index
Case 0
CurBaud = 1200
lblCmdBaud.Caption = Format$(CurBaud)
Case 1
CurBaud = 2400
lblCmdBaud.Caption = Format$(CurBaud)
Case 2
CurBaud = 1200
lblCmdBaud.Caption = Format$(CurBaud)
Case 3
CurBaud = 2400
lblCmdBaud.Caption = Format$(CurBaud)
Case Else
End Select
End Sub

Private Sub optTlmBitRate_Click(Index As Integer)
LEEBitRate = CDbl(optTlmBitRate(Index).Caption)
End Sub

Private Static Sub Timer2_Timer()
Dim I As Integer
Dim J As Integer
Dim CurMin As Integer
Dim PrevMin As Integer
Dim CurStamp As String
'For playback from memory cards, one must distinguish between the actual time and the file time.
ActualTime = Now
'Series (time history) update:
If AnimateLEESeries Then
  GraphDest = "LEE"
  ShowLEESeries LEEHisNum, LEEHisType
  GraphDest = " "
End If
CurMin = Val(Format(ActualTime, "nn"))
If CurMin <> PrevMin Then
  PrevMin = CurMin
  If (optComMode(0).Value = True) And (comCmd.PortOpen = True) Then btnRequestScienceData_Click
End If
'The BPD file name is based on actual time
If BPDDate <> Format(ActualTime, "yy_mm_dd") Then
  'Switch data files
  GenerateTimeStamp CurStamp
  BPDDate = Format(ActualTime, "yy_mm_dd")
  Print #2, "ME: " & CurStamp & " Actual Date Change " + Format$(ActualTime, "m/d/yyyy HH:NN:SS")
  If RecordLee Then Print #4, "ME: " & CurStamp & " Actual Date Change " + Format$(ActualTime, "m/d/yyyy HH:NN:SS")
  Close #2
  DatFile = DataOutDir + BPDDate + ".bpd"
  Open DatFile For Append As #2
  Print #2, "ME: " & CurStamp & " Actual Date Change " + Format$(ActualTime, "m/d/yyyy HH:NN:SS")
End If
'Update the visible time
If Not ImportInProgress Then
  CurTime = ActualTime
  GenerateTimeStamp CurStamp
  lblCurTime.Caption = CurStamp
End If
End Sub

Private Sub Timer3_Timer()
Dim I As Integer
'Queued Command Service
If nComQueued > 0 Then
  nUpLoad = nComQueued
  lblUpLoadCount.Caption = Str$(nUpLoad)
  HexCom = ComQueue(1)
  For I = 1 To nComQueued
    ComQueue(I) = ComQueue(I + 1)
  Next I
  nComQueued = nComQueued - 1
  SendCommand HexCom
Else
  nUpLoad = 0
  lblUpLoadCount.Caption = Str$(nUpLoad)
  lblUpLoadCount.BackColor = &HFF00&
  Timer3.Enabled = False
End If
End Sub










Private Static Sub FormatLEEFrames()
Dim locSync1 As Integer
Dim locSync2 As Integer
Dim nBetween As Integer
Dim PartialFrameString As String
Dim nPartial As Integer
Dim wPartial As Long
Dim II As Integer
'Process the data in the LEE Buffer
While nCurLEE > 45
  'There are enough bytes to find at least one sync
  locSync1 = InStr(CurrentLEE, SyncStrLEE)
  If locSync1 = 0 Then
    'The whole string is nonsense
    CurrentLEE = "ERROR"
    LogMessage "NoSync A"
  ElseIf locSync1 = 1 Then
    'The string is positioned
    'There should be a valid message here
    If Mid$(CurrentLEE, 35, 4) = SyncStrLEE Then
      'Convert the data to integers
      For II = 0 To 9
        FrameLEE(II) = Asc(Mid$(CurrentLEE, 3 * II + 5, 1))
        FrameLEE(II) = 256 * FrameLEE(II) + Asc(Mid$(CurrentLEE, 3 * II + 6, 1))
        FrameLEE(II) = 256 * FrameLEE(II) + Asc(Mid$(CurrentLEE, 3 * II + 7, 1))
      Next II
      ProcessLEEFrame
      CurrentLEE = Mid$(CurrentLEE, 35)
    Else
      'There was probably a dropout
      locSync2 = InStr(5, CurrentLEE, SyncStrLEE)
      If locSync2 > 0 Then
        nBetween = locSync2 - locSync1
        LogMessage "Length: " + Str(nBetween)
        PartialFrameString = "PFR: " + Format$(CurTime, "mm/dd/yyyy HH:NN:SS") + " "
        wPartial = Asc(Mid$(CurrentLEE, 1, 1))
        wPartial = 256 * wPartial + Asc(Mid$(CurrentLEE, 2, 1))
        PartialFrameString = PartialFrameString & " " & Right$("0000" & Hex$(wPartial), 4)
        wPartial = Asc(Mid$(CurrentLEE, 3, 1))
        wPartial = 256 * wPartial + Asc(Mid$(CurrentLEE, 4, 1))
        PartialFrameString = PartialFrameString & " " & Right$("0000" & Hex$(wPartial), 4)
        For nPartial = locSync1 + 4 To locSync2 Step 3
          wPartial = Asc(Mid$(CurrentLEE, nPartial, 1))
          wPartial = 256 * wPartial + Asc(Mid$(CurrentLEE, nPartial + 1, 1))
          wPartial = 256 * wPartial + Asc(Mid$(CurrentLEE, nPartial + 2, 1))
          PartialFrameString = PartialFrameString & " " & Right$("000000" & Hex$(wPartial), 6)
        Next nPartial
        Print #2, PartialFrameString
        If RecordLee Then Print #4, PartialFrameString
        CurrentLEE = Mid$(CurrentLEE, locSync2)
      Else
        LogMessage "locSynch2 Error"
        CurrentLEE = ""
      End If
    End If
  Else
    'Just position the first Sync
    CurrentLEE = Mid$(CurrentLEE, locSync1)
    LogMessage "Resync"
  End If
  nCurLEE = Len(CurrentLEE)
Wend

End Sub



Private Sub vsbCIPCode_Change()
lblCIPCode.Caption = Right$("0000" + Hex$(vsbCIPCode.Value), 2)
End Sub

Private Sub vsbCommandPort_Change()
lblCommandPort.Caption = Right$("     " + Format$(vsbCommandPort.Value), 2)
End Sub

Private Sub vsbCSBFDownlink_Change()
lblCSBFDownlink.Caption = Right$("    " + Format$(vsbCSBFDownlink.Value), 2)
End Sub


Private Sub vsbDataPort_Change()
lblDataPort.Caption = Right$("    " + Format$(vsbDataPort.Value), 2)
End Sub


Private Sub vsbUpLoadInterval_Change()
lblUpLoadInterval.Caption = vsbUpLoadInterval.Value
End Sub









Public Function ThreeChr(Data As Long) As String
Dim Tdata As Long
Dim Split(3) As String * 1
Tdata = Data
Split(2) = Chr$(Tdata And &HFF)
Tdata = Tdata \ 256
Split(1) = Chr$(Tdata And &HFF)
Tdata = Tdata \ 256
Split(0) = Chr$(Tdata And &HFF)
ThreeChr = Split(0) & Split(1) & Split(2)
End Function

Private Sub BadCommand(HexCom As String)
Dim Actual As String
Actual = "S" + HexCom + " " + lblCIPCode.Caption + "W"
If (comCmd.PortOpen) Then
  comCmd.Output = Actual + Actual + Chr$(13) + Chr(10)
  lblLastSent.Caption = HexCom
  lblLastSent.BackColor = &HFFFFFF
  nCmdSent = nCmdSent + 1
  lblNumSent.Caption = Str(nCmdSent)
Else
  lblLastSent.Caption = HexCom
  lblLastSent.BackColor = &HFFFF&
End If
LogMessage (Actual)
End Sub

Private Sub Digiquartz(FreqA As Double, FreqB As Double, Press As Double, Temp As Double, iDQ As Integer)
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
  X = 1000000# / (FreqA * TSF(iDQ))
  U = X - X0(iDQ)
  U2 = U * U
  U3 = U * U2
  U4 = U * U3
  Temp = (Y1(iDQ) * U) + (Y2(iDQ) * U2) + (Y3(iDQ) * U3)
  T = 1000000# / (FreqB * PSF(iDQ))
  C = C1(iDQ) + (C2(iDQ) * U) + (C3(iDQ) * U2)
  D = D1(iDQ) + (D2(iDQ) * U)
  T0 = T1(iDQ) + (T2(iDQ) * U) + (T3(iDQ) * U2) + (T4(iDQ) * U3) + (T5(iDQ) * U4)
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


Public Static Sub QueueCommand(Qcom As String)
If nComQueued = 0 Then
  nComQueued = 1
  nUpLoad = nComQueued
  ComQueue(1) = Qcom
  lblUpLoadCount.BackColor = &HFFFF&
  lblUpLoadCount.ForeColor = 0
  lblUpLoadCount.Caption = Str$(nUpLoad)
  Timer3.Interval = vsbUpLoadInterval.Value
  Timer3.Enabled = True
ElseIf nComQueued < lastComQueue Then
  nComQueued = nComQueued + 1
  nUpLoad = nComQueued
  lblUpLoadCount.Caption = Str$(nUpLoad)
  ComQueue(nComQueued) = Qcom
Else
  LogMessage "Command Queue Overflow: " + Qcom
End If
End Sub

Public Static Sub ProcessDownlink()
Dim iFor As Integer
Dim OutString As String
Dim Delta As Single
Dim TempLong As Long
If Not ImportLEE Then
  'Decode the message
  If Asc(Left$(DownlinkMessage, 1)) <> 26 Then
    LogMessage "Downlink Data Length Error " & Format$(Asc(Left$(DownlinkMessage, 1)))
    DisplayText DownlinkMessage
    Exit Sub
  End If
  DownlinkData(0, 0) = Mid$(DownlinkMessage, 2, 5)
  For iFor = 1 To 3
    DownlinkData(iFor, 0) = Right$("00" & Hex$(Asc(Mid$(DownlinkMessage, iFor + 6, 1))), 2)
    OutString = OutString & " " & lblItemValue(iFor).Caption
  Next iFor
  For iFor = 4 To 15
    DownlinkData(iFor, 0) = Format$(Asc(Mid$(DownlinkMessage, iFor + 6, 1)))
    OutString = OutString & " " & lblItemValue(iFor).Caption
  Next iFor
  TempLong = Asc(Mid$(DownlinkMessage, 22, 1))
  TempLong = 256 * TempLong + Asc(Mid$(DownlinkMessage, 23, 1))
  TempLong = 256 * TempLong + Asc(Mid$(DownlinkMessage, 24, 1))
  DownlinkData(16, 0) = Format$(TempLong)
  TempLong = Asc(Mid$(DownlinkMessage, 25, 1))
  TempLong = 256 * TempLong + Asc(Mid$(DownlinkMessage, 26, 1))
  TempLong = 256 * TempLong + Asc(Mid$(DownlinkMessage, 27, 1))
  DownlinkData(17, 0) = Format$(TempLong)
End If
'Record and display the data just received
CardWriteBlock = CLng(DownlinkData(16, 0))
CardReadBlock = CLng(DownlinkData(17, 0))
lblItemValue(0).Caption = DownlinkData(0, 0)
OutString = "DLM: " + Format$(CurTime, "mm/dd/yyyy HH:NN:SS") & " "
For iFor = 1 To 17
  lblItemValue(iFor).Caption = DownlinkData(iFor, 0)
  OutString = OutString & " " & lblItemValue(iFor).Caption
Next iFor
If Not ImportLEE Then
  Print #2, OutString
  If RecordLee Then Print #4, OutString
End If
lblnDownlinkReport.Caption = CLng(lblnDownlinkReport.Caption) + 1
MCKiloBytesUsed = CDbl(lblItemValue(16).Caption) / 4000#
lblMCKilobytesUsed.Caption = Format$(MCKiloBytesUsed, "0.00")
lblDownlinkReportTime.Caption = Format$(CurTime, "HH:NN:SS")
'Put the total command count in a histogram/series
Delta = CSng(DownlinkData(8, 0))
If Delta >= 0 Then EnterLEEHis Delta, Iridium_HistOr + 4, 0
'Compute some deltas and put them in histograms/series
If FirstDownlinkSeen Then
  Delta = CSng(DownlinkData(9, 0)) - CSng(DownlinkData(9, 1))
  If Delta < 0 Then Delta = Delta + 256#
  If Delta >= 0 Then EnterLEEHis Delta, Iridium_HistOr + 5, 0
  Delta = CDbl(DownlinkData(16, 0)) - CDbl(DownlinkData(16, 1))
  If (Delta >= 0) And (Delta < 5000#) Then EnterLEEHis Delta, Iridium_HistOr + 12, 0
End If
FirstDownlinkSeen = True
'Copy the data just received to the previous data slots
For iFor = 0 To 17
  DownlinkData(iFor, 1) = DownlinkData(iFor, 0)
Next iFor
End Sub

Public Static Sub DisplayText(TxtStr As String)
Dim iFor As Integer
'Make sure the existing text doesn't get too large
If Len(txtDisplay.Text) > 2000 Then txtDisplay.Text = ""
Select Case lblTextFormat.Caption
Case "ASCII"
  txtDisplay.Text = txtDisplay.Text & TxtStr
Case "HEX"
  For iFor = 1 To Len(TxtStr)
    txtDisplay.Text = txtDisplay.Text & "<" & Right("00" & Hex$(Asc(Mid$(TxtStr, iFor, 1))), 2) & ">"
  Next iFor
Case Else
End Select
End Sub

Public Static Sub DumpLEEHistory()
Dim iFor As Integer
Dim nWord
Dim DumpString As String
Dim Pointer As Integer
For iFor = 0 To 10
  Pointer = (FrameLEEHistoryPointer + iFor) Mod 11
  DumpString = "LHD: "
  For nWord = 0 To 9
    DumpString = DumpString & " " & Right$("000000" & Hex$(FrameLEEHistory(nWord, Pointer)), 6)
  Next nWord
  LastDumpFrame = FrameLEEHistory(9, Pointer)
  Print #2, DumpString
Next iFor
End Sub

Public Static Sub ProcessMemCard()
Dim OutString As String
Dim B64String As String
Dim iFor As Integer
Dim jFor As Integer
Dim kFor As Integer
Dim HexWord As String
Dim WordB64 As String
Dim Word24 As Long
Dim NextGroup As Integer
Dim NullBlock As Boolean
OutString = Format$(CurTime, "mm/dd/yyyy HH:NN:SS") & " " & Right$("000000" & Hex$(MemCard_Raw(0)), 6) & " " & Right$("000000" & Hex$(MemCard_Raw(170)), 6) & " " & Right$("000000" & Hex$(MemCard_Raw(171)), 6)
Print #2, "MEM: " & OutString
OutString = "----" & OutString
Print #2, OutString
B64String = ""
NullBlock = MemCard_Raw(1) = 0
If Not NullBlock Then
For iFor = 1 To 171
  HexWord = Right$("000000" & Hex$(MemCard_Raw(iFor)), 6)
  B64String = B64String & Chr$(CLng("&H" & Left$(HexWord, 2)))
  B64String = B64String & Chr$(CLng("&H" & Mid$(HexWord, 3, 2)))
  B64String = B64String & Chr$(CLng("&H" & Right$(HexWord, 2)))
Next iFor
For iFor = 1 To 512 Step 64
  OutString = Mid$(B64String, iFor, 64)
  Print #2, " " & OutString
Next iFor
If RecordCard Then
  For iFor = 1 To 512 Step 32
    OutString = ""
    For jFor = iFor To iFor + 31 Step 4
      WordB64 = Mid$(B64String, jFor, 4)
      Word24 = 0
      For kFor = 1 To 4
        Word24 = 64 * Word24 + (InStr(B64Codes, Mid$(WordB64, kFor, 1)) - 1)
      Next kFor
      OutString = OutString & " " & Right$("000000" & Hex$(Word24), 6)
    Next jFor
    Print #4, OutString
  Next iFor
End If
End If
btnRequestScienceData_Click
If NullBlock Then
  lblMultiRead.Caption = "No Multi"
  lblMultiRead.BackColor = ColorRed
  MultiRead = False
End If
If MultiRead Then btnReadMemoryCard_Click
End Sub
