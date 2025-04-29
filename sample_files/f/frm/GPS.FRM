VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Begin VB.Form GPS 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "NEUTRON MONITOR STATUS"
   ClientHeight    =   7320
   ClientLeft      =   615
   ClientTop       =   315
   ClientWidth     =   8535
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
   Icon            =   "GPS.frx":0000
   LinkTopic       =   "Form1"
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   7320
   ScaleWidth      =   8535
   Begin Threed.SSFrame SSFrame3 
      Height          =   705
      Left            =   0
      TabIndex        =   112
      Top             =   6630
      Width           =   4635
      _Version        =   65536
      _ExtentX        =   8176
      _ExtentY        =   1244
      _StockProps     =   14
      Caption         =   "SOFTWARE"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.Label lblSoftVersion 
         AutoSize        =   -1  'True
         Caption         =   "Version 6.07"
         Height          =   195
         Left            =   2880
         TabIndex        =   114
         Top             =   300
         Width           =   1080
      End
      Begin VB.Label lblSoftLocation 
         AutoSize        =   -1  'True
         Caption         =   "Seattle, November 16, 2006"
         Height          =   195
         Left            =   180
         TabIndex        =   113
         Top             =   300
         Width           =   2400
      End
   End
   Begin Threed.SSFrame SSFrame1 
      Height          =   5895
      Left            =   7320
      TabIndex        =   82
      Top             =   1440
      Width           =   1215
      _Version        =   65536
      _ExtentX        =   2143
      _ExtentY        =   10398
      _StockProps     =   14
      Caption         =   "!Experts!"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Alignment       =   2
      Begin VB.CommandButton btnTestTasPress 
         Caption         =   "TestTDQ"
         Height          =   255
         Left            =   120
         TabIndex        =   127
         Top             =   3990
         Width           =   975
      End
      Begin VB.CommandButton btnPSIonoff 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "PSI Off"
         Height          =   255
         Left            =   120
         TabIndex        =   125
         Top             =   3300
         Width           =   975
      End
      Begin VB.CommandButton btnMultiWindow 
         Caption         =   "Multi"
         Height          =   255
         Left            =   120
         TabIndex        =   124
         Top             =   1500
         Width           =   975
      End
      Begin VB.CommandButton btnMultiplicityRecord 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "MSumry"
         Height          =   255
         Left            =   120
         TabIndex        =   123
         Top             =   1800
         Width           =   975
      End
      Begin VB.CommandButton btnTasVanOnOff 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Log Off"
         Height          =   255
         Left            =   108
         TabIndex        =   96
         Top             =   2670
         Width           =   975
      End
      Begin VB.CommandButton btnRackOnOff 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Rack Off"
         Height          =   255
         Left            =   108
         TabIndex        =   95
         Top             =   2955
         Width           =   975
      End
      Begin VB.CommandButton btnGPSonoff 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "GPS Off"
         Height          =   255
         Left            =   108
         TabIndex        =   94
         Top             =   2370
         Width           =   975
      End
      Begin VB.CommandButton btnRemoteWin 
         Caption         =   "Remote"
         Height          =   255
         Left            =   120
         TabIndex        =   86
         Top             =   1188
         Width           =   975
      End
      Begin VB.CommandButton btnCmdTest 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Cmd Test"
         Height          =   255
         Left            =   120
         TabIndex        =   85
         Top             =   300
         Width           =   975
      End
      Begin VB.CommandButton cmdDisplay 
         Caption         =   "Data"
         Height          =   255
         Left            =   120
         TabIndex        =   84
         Top             =   600
         Width           =   975
      End
      Begin VB.CommandButton cmdHouseWin 
         Caption         =   "House"
         Height          =   255
         Left            =   120
         TabIndex        =   83
         Top             =   900
         Width           =   975
      End
      Begin VB.Label lblPillYear 
         Alignment       =   2  'Center
         Caption         =   "MPY Yr"
         Height          =   195
         Left            =   240
         TabIndex        =   140
         Top             =   2100
         Width           =   675
      End
      Begin VB.Label lblPSIRead 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Standard"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   210
         TabIndex        =   126
         Top             =   3690
         Width           =   780
      End
   End
   Begin Threed.SSFrame Frame3D1 
      Height          =   855
      Left            =   0
      TabIndex        =   37
      Top             =   3240
      Width           =   7335
      _Version        =   65536
      _ExtentX        =   12938
      _ExtentY        =   1508
      _StockProps     =   14
      Caption         =   "Rack"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.CommandButton btnRackReset 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Reset"
         Height          =   255
         Index           =   0
         Left            =   144
         TabIndex        =   43
         Top             =   252
         Width           =   675
      End
      Begin VB.Label lblMuxItem 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "MITEM"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   4560
         TabIndex        =   103
         Top             =   120
         Width           =   675
      End
      Begin VB.Label lblMuxItem 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "MITEM"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   4560
         TabIndex        =   102
         Top             =   360
         Width           =   675
      End
      Begin VB.Label lblMuxItem 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "MITEM"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   4560
         TabIndex        =   101
         Top             =   600
         Width           =   675
      End
      Begin VB.Label lblMuxValue 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Value"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   5280
         TabIndex        =   100
         Top             =   120
         Width           =   615
      End
      Begin VB.Label lblMuxValue 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Value"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   5280
         TabIndex        =   99
         Top             =   360
         Width           =   615
      End
      Begin VB.Label lblMuxValue 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Value"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   5280
         TabIndex        =   98
         Top             =   600
         Width           =   615
      End
      Begin VB.Label lblHrRead 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "HrRead"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   2400
         TabIndex        =   97
         Top             =   360
         Width           =   660
      End
      Begin VB.Label lblDoneCount 
         AutoSize        =   -1  'True
         BackColor       =   &H80000009&
         Caption         =   "Done"
         Height          =   195
         Left            =   2400
         TabIndex        =   93
         Top             =   120
         Width           =   465
      End
      Begin VB.Label lblResetCount 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "#"
         ForeColor       =   &H80000008&
         Height          =   192
         Index           =   0
         Left            =   324
         TabIndex        =   59
         Top             =   540
         Width           =   432
      End
      Begin VB.Label Label6 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Error"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   3240
         TabIndex        =   45
         Top             =   600
         Width           =   615
      End
      Begin VB.Label lblCtrCmd 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Err"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   3960
         TabIndex        =   44
         Top             =   600
         Width           =   255
      End
      Begin VB.Label lblCtrCmd 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Ctr"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   3960
         TabIndex        =   42
         Top             =   360
         Width           =   285
      End
      Begin VB.Label lblCtrCmd 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Cmd"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   3960
         TabIndex        =   41
         Top             =   120
         Width           =   375
      End
      Begin VB.Label Label5 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Count"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   3240
         TabIndex        =   40
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label4 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Last"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   3240
         TabIndex        =   39
         Top             =   120
         Width           =   615
      End
      Begin VB.Label lblCtrTmr 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "CtrTmr"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   1320
         TabIndex        =   38
         Top             =   600
         Width           =   975
      End
      Begin VB.Label lblNRead 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "NRead"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   1320
         TabIndex        =   35
         Top             =   120
         Width           =   600
      End
      Begin VB.Label lblNCurrent 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "NCurrent"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   1320
         TabIndex        =   36
         Top             =   360
         Width           =   765
      End
   End
   Begin Threed.SSFrame Frame3D12 
      Height          =   3255
      Left            =   4620
      TabIndex        =   29
      Top             =   4080
      Width           =   2715
      _Version        =   65536
      _ExtentX        =   4789
      _ExtentY        =   5741
      _StockProps     =   14
      Caption         =   "Digiquartz Barometers"
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
      Begin VB.Label lblDigiModel 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Model"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   1320
         TabIndex        =   139
         Top             =   1980
         Width           =   525
      End
      Begin VB.Label lblDigiSerial 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Serial"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   120
         TabIndex        =   138
         Top             =   1980
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
         Left            =   1320
         TabIndex        =   137
         Top             =   1170
         Width           =   525
      End
      Begin VB.Label lblDigiSerial 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Serial"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   136
         Top             =   1170
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
         Left            =   1320
         TabIndex        =   135
         Top             =   330
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
         Left            =   120
         TabIndex        =   134
         Top             =   330
         Width           =   495
      End
      Begin VB.Label lblDigiT 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Tempr"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   120
         TabIndex        =   133
         Top             =   2460
         Width           =   540
      End
      Begin VB.Label lblDigiP 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Pressure"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   120
         TabIndex        =   132
         Top             =   2220
         Width           =   750
      End
      Begin VB.Label lblFreqBsd 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Std B"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   1860
         TabIndex        =   131
         Top             =   2460
         Width           =   480
      End
      Begin VB.Label lblFreqB 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Freq B"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   1860
         TabIndex        =   130
         Top             =   2220
         Width           =   570
      End
      Begin VB.Label lblFreqAsd 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Std A"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   960
         TabIndex        =   129
         Top             =   2460
         Width           =   480
      End
      Begin VB.Label lblFreqA 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Freq A"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   960
         TabIndex        =   128
         Top             =   2220
         Width           =   570
      End
      Begin VB.Label lblFreqA 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Freq A"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   960
         TabIndex        =   92
         Top             =   1410
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
         Left            =   960
         TabIndex        =   91
         Top             =   1650
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
         Left            =   1860
         TabIndex        =   90
         Top             =   1410
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
         Left            =   1860
         TabIndex        =   89
         Top             =   1650
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
         Left            =   120
         TabIndex        =   88
         Top             =   1410
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
         Left            =   120
         TabIndex        =   87
         Top             =   1650
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
         Left            =   120
         TabIndex        =   14
         Top             =   810
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
         Left            =   120
         TabIndex        =   34
         Top             =   570
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
         Left            =   1860
         TabIndex        =   33
         Top             =   810
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
         Left            =   1860
         TabIndex        =   32
         Top             =   570
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
         Left            =   960
         TabIndex        =   31
         Top             =   810
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
         Left            =   960
         TabIndex        =   30
         Top             =   570
         Width           =   570
      End
   End
   Begin Threed.SSFrame frmLastGoodGPS 
      Height          =   1815
      Index           =   0
      Left            =   1620
      TabIndex        =   16
      Top             =   4080
      Width           =   1515
      _Version        =   65536
      _ExtentX        =   2672
      _ExtentY        =   3201
      _StockProps     =   14
      Caption         =   "Good GPS0"
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
      Begin VB.Label lblGPSNumSat 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "NumSat"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   19
         Top             =   1440
         Width           =   675
      End
      Begin VB.Label lblGPSComTime 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Computer Time"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   10
         Top             =   1080
         Width           =   1275
      End
      Begin VB.Label lblGPSLong 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Longitude"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   11
         Top             =   480
         Width           =   855
      End
      Begin VB.Label lblGPSLat 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Latitude"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   18
         Top             =   240
         Width           =   705
      End
      Begin VB.Label lblGPSGMT 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "GMT"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   17
         Top             =   840
         Width           =   420
      End
   End
   Begin Threed.SSFrame Frame3D9 
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   8535
      _Version        =   65536
      _ExtentX        =   15055
      _ExtentY        =   661
      _StockProps     =   14
      Caption         =   "Status"
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
      Begin VB.Label lblException 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Last Exceptional Event and Time"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   2400
         TabIndex        =   15
         Top             =   120
         Width           =   2820
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
   Begin Threed.SSFrame frmGPS 
      Height          =   375
      Index           =   0
      Left            =   0
      TabIndex        =   13
      Top             =   360
      Width           =   8535
      _Version        =   65536
      _ExtentX        =   15055
      _ExtentY        =   661
      _StockProps     =   14
      Caption         =   "GPS0"
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
      Begin VB.Label lblLatestGPS 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Latest GPS Message Received"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   720
         TabIndex        =   3
         Top             =   120
         Width           =   2655
      End
   End
   Begin Threed.SSFrame Frame3D6 
      Height          =   375
      Left            =   0
      TabIndex        =   12
      Top             =   1080
      Width           =   8535
      _Version        =   65536
      _ExtentX        =   15055
      _ExtentY        =   661
      _StockProps     =   14
      Caption         =   "Logger"
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
      Begin VB.Label lblTasLogger 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Latest UTas Logger Transmission (Starts with ""TRA"" if valid)"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   720
         TabIndex        =   4
         Top             =   120
         Width           =   5175
      End
   End
   Begin Threed.SSFrame Frame3D5 
      Height          =   1815
      Left            =   -60
      TabIndex        =   2
      Top             =   1440
      Width           =   7395
      _Version        =   65536
      _ExtentX        =   13044
      _ExtentY        =   3201
      _StockProps     =   14
      Caption         =   "Remote Unit Reports"
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
      Begin VB.Label lblDeltaVerify 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Verify"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   3
         Left            =   2700
         TabIndex        =   149
         Top             =   1200
         Width           =   555
      End
      Begin VB.Label lblWindowVerify 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Counts"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   3
         Left            =   1860
         TabIndex        =   148
         Top             =   1200
         Width           =   615
      End
      Begin VB.Label lblCts 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Reading"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   3
         Left            =   3300
         TabIndex        =   147
         Top             =   1200
         Width           =   915
      End
      Begin VB.Label lblDel 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Delta"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   3
         Left            =   1140
         TabIndex        =   146
         Top             =   1200
         Width           =   615
      End
      Begin VB.Label lblT1 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Temp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   3
         Left            =   4860
         TabIndex        =   145
         Top             =   1200
         Width           =   555
      End
      Begin VB.Label lblT2 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Temp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   3
         Left            =   5580
         TabIndex        =   144
         Top             =   1200
         Width           =   555
      End
      Begin VB.Label lblT3 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Temp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   3
         Left            =   6300
         TabIndex        =   143
         Top             =   1200
         Width           =   555
      End
      Begin VB.Label lblHourDel 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Sum"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   3
         Left            =   300
         TabIndex        =   142
         Top             =   1200
         Width           =   675
      End
      Begin VB.Label lblHourDelNumber 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Num"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   3
         Left            =   4260
         TabIndex        =   141
         Top             =   1200
         Width           =   495
      End
      Begin VB.Label lblHourDelNumber 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Num"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   4260
         TabIndex        =   122
         Top             =   960
         Width           =   495
      End
      Begin VB.Label lblHourDelNumber 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Num"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   4260
         TabIndex        =   121
         Top             =   720
         Width           =   495
      End
      Begin VB.Label lblHourDelNumber 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Num"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   4260
         TabIndex        =   120
         Top             =   480
         Width           =   495
      End
      Begin VB.Label lblHourDel 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Sum"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   300
         TabIndex        =   119
         Top             =   960
         Width           =   675
      End
      Begin VB.Label lblHourDel 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Sum"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   300
         TabIndex        =   118
         Top             =   720
         Width           =   675
      End
      Begin VB.Label lblHourDel 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Sum"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   300
         TabIndex        =   117
         Top             =   480
         Width           =   675
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "#"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   4
         Left            =   4380
         TabIndex        =   116
         Top             =   240
         Width           =   195
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Scaler"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   3
         Left            =   3420
         TabIndex        =   115
         Top             =   240
         Width           =   675
      End
      Begin VB.Label lblT3 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Temp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   6300
         TabIndex        =   81
         Top             =   960
         Width           =   555
      End
      Begin VB.Label lblT3 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Temp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   6300
         TabIndex        =   80
         Top             =   720
         Width           =   555
      End
      Begin VB.Label lblT2 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Temp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   5580
         TabIndex        =   79
         Top             =   960
         Width           =   555
      End
      Begin VB.Label lblT2 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Temp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   5580
         TabIndex        =   78
         Top             =   720
         Width           =   555
      End
      Begin VB.Label lblT3 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Temp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   6300
         TabIndex        =   77
         Top             =   480
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
         Left            =   5580
         TabIndex        =   76
         Top             =   480
         Width           =   555
      End
      Begin VB.Label lblT1 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Temp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   4860
         TabIndex        =   75
         Top             =   960
         Width           =   555
      End
      Begin VB.Label lblT1 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Temp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   4860
         TabIndex        =   74
         Top             =   720
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
         Left            =   4860
         TabIndex        =   73
         Top             =   480
         Width           =   555
      End
      Begin VB.Label lblDel 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Delta"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   1140
         TabIndex        =   72
         Top             =   960
         Width           =   615
      End
      Begin VB.Label lblDel 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Delta"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   1140
         TabIndex        =   71
         Top             =   720
         Width           =   615
      End
      Begin VB.Label lblDel 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Delta"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   1140
         TabIndex        =   70
         Top             =   480
         Width           =   615
      End
      Begin VB.Label lblCts 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Reading"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   3300
         TabIndex        =   69
         Top             =   960
         Width           =   915
      End
      Begin VB.Label lblCts 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Reading"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   3300
         TabIndex        =   68
         Top             =   720
         Width           =   915
      End
      Begin VB.Label lblCts 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Reading"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   3300
         TabIndex        =   67
         Top             =   480
         Width           =   915
      End
      Begin VB.Label lblWindowVerify 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Counts"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   1860
         TabIndex        =   66
         Top             =   960
         Width           =   615
      End
      Begin VB.Label lblWindowVerify 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Counts"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   1860
         TabIndex        =   65
         Top             =   720
         Width           =   615
      End
      Begin VB.Label lblWindowVerify 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Counts"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   1860
         TabIndex        =   64
         Top             =   480
         Width           =   615
      End
      Begin VB.Label lblDeltaVerify 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Verify"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   2700
         TabIndex        =   63
         Top             =   960
         Width           =   555
      End
      Begin VB.Label lblDeltaVerify 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Verify"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   2700
         TabIndex        =   62
         Top             =   720
         Width           =   555
      End
      Begin VB.Label lblDeltaVerify 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Verify"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   2700
         TabIndex        =   61
         Top             =   480
         Width           =   555
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Delta"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   8
         Left            =   2700
         TabIndex        =   60
         Top             =   240
         Width           =   555
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Temp 3"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   7
         Left            =   6300
         TabIndex        =   52
         Top             =   240
         Width           =   675
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Temp 2"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   6
         Left            =   5520
         TabIndex        =   51
         Top             =   240
         Width           =   675
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Temp 1"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   5
         Left            =   4800
         TabIndex        =   50
         Top             =   240
         Width           =   675
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Window"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   1860
         TabIndex        =   48
         Top             =   240
         Width           =   675
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Sec"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   1260
         TabIndex        =   47
         Top             =   240
         Width           =   375
      End
      Begin VB.Label lblRemotes 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Hour"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   420
         TabIndex        =   46
         Top             =   240
         Width           =   495
      End
   End
   Begin Threed.SSFrame Frame3D3 
      Height          =   765
      Left            =   0
      TabIndex        =   9
      Top             =   5880
      Width           =   4635
      _Version        =   65536
      _ExtentX        =   8176
      _ExtentY        =   1349
      _StockProps     =   14
      Caption         =   "AIR Barometer"
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
      Begin VB.Label lblLastAirTime 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Time Rcd"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   2460
         TabIndex        =   28
         Top             =   180
         Width           =   825
      End
      Begin VB.Label lblLastAir 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Last Rdg"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   1500
         TabIndex        =   27
         Top             =   180
         Width           =   780
      End
   End
   Begin Threed.SSFrame Frame3D2 
      Height          =   1815
      Left            =   0
      TabIndex        =   5
      Top             =   4080
      Width           =   1635
      _Version        =   65536
      _ExtentX        =   2884
      _ExtentY        =   3201
      _StockProps     =   14
      Caption         =   "Tiltmeters"
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
      Begin VB.Label lblTiltTemp 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Tmp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   900
         TabIndex        =   49
         Top             =   1560
         Width           =   375
      End
      Begin VB.Label lblLastPitch 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Last"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   58
         Top             =   1260
         Width           =   375
      End
      Begin VB.Label lblMinitPitch 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Minit"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   600
         TabIndex        =   57
         Top             =   1260
         Width           =   420
      End
      Begin VB.Label lblMinitPitchSigma 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Sig"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   1140
         TabIndex        =   56
         Top             =   1260
         Width           =   285
      End
      Begin VB.Label lblLastRoll 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Last"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   55
         Top             =   660
         Width           =   375
      End
      Begin VB.Label lblMinitRoll 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Minit"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   600
         TabIndex        =   54
         Top             =   660
         Width           =   420
      End
      Begin VB.Label lblMinitRollSigma 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Sig"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   1140
         TabIndex        =   53
         Top             =   660
         Width           =   285
      End
      Begin VB.Label lblMinitPitchSigma 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Sig"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   1140
         TabIndex        =   26
         Top             =   1080
         Width           =   285
      End
      Begin VB.Label lblMinitPitch 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Minit"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   600
         TabIndex        =   25
         Top             =   1080
         Width           =   420
      End
      Begin VB.Label lblLastPitch 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Last"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   24
         Top             =   1080
         Width           =   375
      End
      Begin VB.Label lblMinitRollSigma 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Sig"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   1140
         TabIndex        =   23
         Top             =   480
         Width           =   285
      End
      Begin VB.Label lblMinitRoll 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Minit"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   600
         TabIndex        =   22
         Top             =   480
         Width           =   420
      End
      Begin VB.Label lblLastRoll 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Last"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   21
         Top             =   480
         Width           =   375
      End
      Begin VB.Label lblTiltTemp 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Tmp"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   420
         TabIndex        =   20
         Top             =   1560
         Width           =   375
      End
      Begin VB.Label Label14 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "Pitch"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   120
         TabIndex        =   8
         Top             =   840
         Width           =   450
      End
      Begin VB.Label Label15 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "Roll"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   120
         TabIndex        =   7
         Top             =   240
         Width           =   345
      End
      Begin VB.Label Label18 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "T"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   120
         TabIndex        =   6
         Top             =   1560
         Width           =   135
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   2310
      Top             =   7320
   End
   Begin MSCommLib.MSComm comRack 
      Left            =   1800
      Top             =   7200
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CommPort        =   5
      DTREnable       =   -1  'True
      BaudRate        =   300
   End
   Begin MSCommLib.MSComm comPSI 
      Left            =   1260
      Top             =   7320
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CommPort        =   7
      DTREnable       =   0   'False
      RThreshold      =   1
   End
   Begin MSCommLib.MSComm comTasVan 
      Left            =   60
      Top             =   7200
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CommPort        =   6
      DTREnable       =   0   'False
      RThreshold      =   1
      BaudRate        =   4800
   End
   Begin MSCommLib.MSComm comGPS 
      Left            =   660
      Top             =   7200
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CommPort        =   2
      DTREnable       =   0   'False
      RThreshold      =   1
      BaudRate        =   4800
   End
   Begin Threed.SSFrame frmGPS 
      Height          =   375
      Index           =   1
      Left            =   0
      TabIndex        =   104
      Top             =   720
      Width           =   8535
      _Version        =   65536
      _ExtentX        =   15055
      _ExtentY        =   661
      _StockProps     =   14
      Caption         =   "GPS1"
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
      Begin VB.Label lblLatestGPS 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Latest GPS Message Received"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   720
         TabIndex        =   105
         Top             =   120
         Width           =   2655
      End
   End
   Begin Threed.SSFrame frmLastGoodGPS 
      Height          =   1815
      Index           =   1
      Left            =   3120
      TabIndex        =   106
      Top             =   4080
      Width           =   1515
      _Version        =   65536
      _ExtentX        =   2672
      _ExtentY        =   3201
      _StockProps     =   14
      Caption         =   "Good GPS1"
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
      Begin VB.Label lblGPSGMT 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "GMT"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   111
         Top             =   840
         Width           =   420
      End
      Begin VB.Label lblGPSLat 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Latitude"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   110
         Top             =   240
         Width           =   705
      End
      Begin VB.Label lblGPSLong 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Longitude"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   109
         Top             =   480
         Width           =   855
      End
      Begin VB.Label lblGPSComTime 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "Computer Time"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   108
         Top             =   1080
         Width           =   1275
      End
      Begin VB.Label lblGPSNumSat 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         Caption         =   "NumSat"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   107
         Top             =   1440
         Width           =   675
      End
   End
End
Attribute VB_Name = "GPS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Ret As Integer                'Scratch integer
Dim Temp As String               'Scratch string
Dim FreshException As Boolean
Dim ADC0 As Single
Dim ADC1 As Single
Dim ADC2 As Single
Dim RawPitch(1) As Single
Dim RawRoll(1) As Single
Dim RawTemp(1) As Single
Dim Neof  As Integer
Dim Tleof As Variant
Dim Nrbo As Integer
Dim Tlrbo As Variant
Dim DelCycle As Long
Dim IsLive(7, 7) As Integer
Dim AirCom As Integer
Dim AirOn As Integer
Dim AirActive As Integer
Dim AirPauseCt As Long
Dim AirCase As Integer
Dim AirBeat As Long
Dim PressDecAIR(1) As Single
Dim FullRdgAIR(1) As String
Dim RdgAIR(1)  As String
Dim DigIn As Integer
Dim CurTimTag As String
Dim CurHour As Integer
Dim CurMin As Integer
Dim CurSec As Integer
Dim CurDate As String
Dim LastTAS As String
Dim DigiTemp(2) As Double
Dim DigiPress(2) As Double
Dim NDigiQ As Double, SumDigiA(1) As Double, SSDigiA(1) As Double
Dim MADigiA(1) As Double, MSDigiA(1) As Double
Dim SumDigiB(1) As Double, SSDigiB(1) As Double
Dim MADigiB(1) As Double, MSDigiB(1) As Double
Dim NRawRoll(1) As Double, SumRawRoll(1) As Double, SSRawRoll(1) As Double
Dim MARawRoll(1) As Double, MSRawRoll(1) As Double
Dim NRawPitch(1) As Double, SumRawPitch(1) As Double, SSRawPitch(1) As Double
Dim MARawPitch(1) As Double, MSRawPitch(1) As Double





'Private Declare Function ComInput Lib "MSCOMM.VBX" (ByVal hWnd As Integer, IPDATA As Any, ByVal cbdata As Integer)








Private Sub btnCmdTest_Click()
If comRack.PortOpen Then comRack.Output = CmdTest + CmdTest + CmdTest + Chr$(13) + Chr$(10)
End Sub



Private Sub btnGPSonoff_Click()
If btnGPSonoff.Caption = "GPS0 On" Then
  btnGPSonoff.Caption = "GPS0 Off"
  Select Case comGPS.PortOpen
  Case False
    Exception "GPS Port Already Closed"
  Case Else
    comGPS.PortOpen = False
  End Select
Else
  btnGPSonoff.Caption = "GPS0 On"
  Select Case comGPS.PortOpen
  Case True
    Exception "GPS Port Already Open"
  Case Else
    comGPS.PortOpen = True
  End Select
End If
End Sub

Private Sub btnMultiplicityRecord_Click()
If btnMultiplicityRecord.Caption = "MSumry" Then
  btnMultiplicityRecord.Caption = "MFull"
  RecordFullTiming = True
Else
  btnMultiplicityRecord.Caption = "MSumry"
  RecordFullTiming = False
End If
LogEntry "Record Timing Status: " + btnMultiplicityRecord.Caption
End Sub

Private Sub btnMultiWindow_Click()
Load frmMultiplicity
frmMultiplicity.Visible = True
End Sub

Private Sub btnPSIonoff_Click()
If btnPSIonoff.Caption = "PSI On" Then
  btnPSIonoff.Caption = "PSI Off"
  lblPSIRead.Caption = "Standard"
  Select Case comPSI.PortOpen
  Case False
    Exception "PSI Port Already Closed"
  Case Else
    comPSI.Output = "*" + Chr$(10) + Chr$(13)
    comPSI.PortOpen = False
  End Select
Else
  btnPSIonoff.Caption = "PSI On"
  Select Case comPSI.PortOpen
  Case True
    Exception "PSI Port Already Open"
  Case Else
    comPSI.PortOpen = True
    comPSI.Output = "*0199P4" + Chr$(10) + Chr$(13)
  End Select
End If
End Sub

Private Sub btnRackonoff_Click()
Dim I As Integer
If btnRackOnOff.Caption = "Rack On" Then
  btnRackOnOff.Caption = "Rack Off"
  Select Case comRack.PortOpen
  Case False
    Exception "Rack Port Already Closed"
  Case Else
    comRack.RThreshold = 0
    comRack.InBufferCount = 0
    comRack.PortOpen = False
  End Select
Else
  btnRackOnOff.Caption = "Rack On"
  Select Case comRack.PortOpen
  Case True
    Exception "Rack Port Already Open"
  Case Else
    comRack.PortOpen = True
    comRack.InBufferCount = 0
    comRack.RThreshold = 1
    For I = 0 To LastUnit
      NewOpen(I) = True
    Next I
  End Select
End If
End Sub

Private Sub btnRackReset_Click(Index As Integer)
Dim I As Integer
Select Case Index
Case 0
 If comRack.PortOpen Then
  comRack.Output = RackReset + RackReset + RackReset + Chr$(13) + Chr$(10)
  lblResetCount(0).Caption = Val(lblResetCount(0).Caption) + 1
  ResetSent = True
  For I = 0 To LastUnit
   HourDeltaRef(I) = PriorScaler(I)
  Next I
 End If
Case Else
End Select
End Sub


Private Sub btnRemoteWin_Click()
Load frmREMOTE
frmREMOTE.Visible = True
End Sub


Private Sub btnTasVanonoff_Click()
If btnTasVanOnOff.Caption = "Log On" Then
  btnTasVanOnOff.Caption = "Log Off"
  Select Case comTasVan.PortOpen
  Case False
    Exception "Logger Port Already Closed"
  Case Else
    comTasVan.PortOpen = False
  End Select
Else
  btnTasVanOnOff.Caption = "Log On"
  Select Case comTasVan.PortOpen
  Case True
    Exception "Logger Port Already Open"
  Case Else
    comTasVan.PortOpen = True
  End Select
End If

End Sub





Private Sub btnTestTasPress_Click()
Dim TestString As String
TestString = "TRA 12950200   8438  1954  2208  2007  1992   229 65008   291  0"
ShowTasPressure TestString
End Sub

Private Sub cmdDisplay_Click()
Load frmDisplay
frmDisplay.Visible = True
End Sub


Private Sub cmdHouseWin_Click()
Load frmHouse
frmHouse.Visible = True
End Sub

Private Sub comGPS_OnComm()
    Dim EVMsg$
    Dim ERMsg$
    '--- Branch according to the CommEvent Prop..
    Select Case comGPS.CommEvent
        '--- Event messages
        Case MSCOMM_EV_RECEIVE
            ShowInternalGPSData
        Case MSCOMM_EV_SEND
            
        Case MSCOMM_EV_CTS
            EVMsg$ = "Change in CTS Detected"
        Case MSCOMM_EV_DSR
            EVMsg$ = "Change in DSR Detected"
        Case MSCOMM_EV_CD
            EVMsg$ = "Change in CD Detected"
        Case MSCOMM_EV_RING
            EVMsg$ = "The Phone is Ringing"
            'Shut down the port
            btnGPSonoff.Caption = "GPS0 Off"
            comGPS.PortOpen = False
        Case MSCOMM_EV_EOF
            EVMsg$ = "End of File Detected"

        '--- Error messages
        Case MSCOMM_ER_BREAK
            ERMsg$ = "Break Received"
        Case MSCOMM_ER_CTSTO
            ERMsg$ = "CTS Timeout"
        Case MSCOMM_ER_DSRTO
            ERMsg$ = "DSR Timeout"
        Case MSCOMM_ER_FRAME
            ERMsg$ = "Framing Error"
        Case MSCOMM_ER_OVERRUN
            ERMsg$ = "Overrun Error"
            ShowInternalGPSData
        Case MSCOMM_ER_CDTO
            ERMsg$ = "Carrier Detect Timeout"
        Case MSCOMM_ER_RXOVER
            ERMsg$ = "Receive Buffer Overflow"
        Case MSCOMM_ER_RXPARITY
            EVMsg$ = "Parity Error"
        Case MSCOMM_ER_TXFULL
            ERMsg$ = "Transmit Buffer Full"
        Case Else
            ERMsg$ = "Unknown error or event"
    End Select
    If Len(EVMsg$) Then
      Exception "GPSa " + EVMsg$
      EVMsg$ = ""
    ElseIf Len(ERMsg$) Then
      Exception "GPSb " + ERMsg$
      ERMsg$ = ""
    End If
End Sub

Private Sub comPSI_OnComm()
    Dim EVMsg$
    Dim ERMsg$
    '--- Branch according to the CommEvent Prop..
    Select Case comPSI.CommEvent
        '--- Event messages
        Case MSCOMM_EV_RECEIVE
            PSIData
        Case MSCOMM_EV_SEND
            
        Case MSCOMM_EV_CTS
'            EVMsg$ = "Change in CTS Detected"
        Case MSCOMM_EV_DSR
'            EVMsg$ = "Change in DSR Detected"
        Case MSCOMM_EV_CD
'            EVMsg$ = "Change in CD Detected"
        Case MSCOMM_EV_RING
            EVMsg$ = "The Phone is Ringing"
        Case MSCOMM_EV_EOF
            EVMsg$ = "End of File Detected"

        '--- Error messages
        Case MSCOMM_ER_BREAK
            EVMsg$ = "Break Received"
        Case MSCOMM_ER_CTSTO
            ERMsg$ = "CTS Timeout"
        Case MSCOMM_ER_DSRTO
            ERMsg$ = "DSR Timeout"
        Case MSCOMM_ER_FRAME
            ERMsg$ = "Framing Error"
        Case MSCOMM_ER_OVERRUN
            ERMsg$ = "Overrun Error"
        Case MSCOMM_ER_CDTO
            ERMsg$ = "Carrier Detect Timeout"
        Case MSCOMM_ER_RXOVER
            ERMsg$ = "Receive Buffer Overflow"
        Case MSCOMM_ER_RXPARITY
            ERMsg$ = "Parity Error"
        Case MSCOMM_ER_TXFULL
            ERMsg$ = "Transmit Buffer Full"
        Case Else
            ERMsg$ = "Unknown error or event"
    End Select
    If Len(EVMsg$) Then
      Exception "PSIa " + EVMsg$
      EVMsg$ = ""
    ElseIf Len(ERMsg$) Then
      Exception "PSIb " + ERMsg$
      ERMsg$ = ""
    End If

End Sub

Private Sub comRack_OnComm()
    Dim EVMsg$
    Dim ERMsg$

    '--- Branch according to the CommEvent Prop..
    Select Case comRack.CommEvent
        '--- Event messages
        Case MSCOMM_EV_RECEIVE
            RackData
        Case MSCOMM_EV_SEND
            
        Case MSCOMM_EV_CTS
'            EVMsg$ = "Change in CTS Detected"
        Case MSCOMM_EV_DSR
'            EVMsg$ = "Change in DSR Detected"
        Case MSCOMM_EV_CD
'            EVMsg$ = "Change in CD Detected"
        Case MSCOMM_EV_RING
            EVMsg$ = "The Phone is Ringing"
        Case MSCOMM_EV_EOF
'            EVMsg$ = "End of File Detected"
        '--- Error messages
        Case MSCOMM_ER_BREAK
            EVMsg$ = "Break Received"
        Case MSCOMM_ER_CTSTO
            ERMsg$ = "CTS Timeout"
        Case MSCOMM_ER_DSRTO
            ERMsg$ = "DSR Timeout"
        Case MSCOMM_ER_FRAME
            ERMsg$ = "Framing Error"
        Case MSCOMM_ER_OVERRUN
            ERMsg$ = "Overrun Error"
        Case MSCOMM_ER_CDTO
            ERMsg$ = "Carrier Detect Timeout"
        Case MSCOMM_ER_RXOVER
'            ERMsg$ = "Receive Buffer Overflow"
             Nrbo = Neof + 1
             Tlrbo = Now
        Case MSCOMM_ER_RXPARITY
            ERMsg$ = "Parity Error"
        Case MSCOMM_ER_TXFULL
            ERMsg$ = "Transmit Buffer Full"
        Case Else
            ERMsg$ = "Unknown error or event"
    End Select
    
    If Len(EVMsg$) Then
      Exception "Racka " + EVMsg$
      EVMsg$ = ""
    ElseIf Len(ERMsg$) Then
      Exception "Rackb " + ERMsg$
      ERMsg$ = ""
    End If
End Sub

Private Sub comTasVan_OnComm()
    Dim EVMsg$
    Dim ERMsg$
    '--- Branch according to the CommEvent Prop..
    Select Case comTasVan.CommEvent
        '--- Event messages
        Case MSCOMM_EV_RECEIVE
            TasData
        Case MSCOMM_EV_SEND
            
        Case MSCOMM_EV_CTS
'            EVMsg$ = "Change in CTS Detected"
        Case MSCOMM_EV_DSR
'            EVMsg$ = "Change in DSR Detected"
        Case MSCOMM_EV_CD
'            EVMsg$ = "Change in CD Detected"
        Case MSCOMM_EV_RING
            EVMsg$ = "The Phone is Ringing"
        Case MSCOMM_EV_EOF
            EVMsg$ = "End of File Detected"

        '--- Error messages
        Case MSCOMM_ER_BREAK
            EVMsg$ = "Break Received"
        Case MSCOMM_ER_CTSTO
            ERMsg$ = "CTS Timeout"
        Case MSCOMM_ER_DSRTO
            ERMsg$ = "DSR Timeout"
        Case MSCOMM_ER_FRAME
            ERMsg$ = "Framing Error"
        Case MSCOMM_ER_OVERRUN
            ERMsg$ = "Overrun Error"
        Case MSCOMM_ER_CDTO
            ERMsg$ = "Carrier Detect Timeout"
        Case MSCOMM_ER_RXOVER
            ERMsg$ = "Receive Buffer Overflow"
        Case MSCOMM_ER_RXPARITY
            ERMsg$ = "Parity Error"
        Case MSCOMM_ER_TXFULL
            ERMsg$ = "Transmit Buffer Full"
        Case Else
            ERMsg$ = "Unknown error or event"
    End Select
    If Len(EVMsg$) Then
      Exception "TASa " + EVMsg$
      EVMsg$ = ""
    ElseIf Len(ERMsg$) Then
      Exception "TASb " + ERMsg$
      ERMsg$ = ""
    End If
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
If Not BarLoaded(iDQ) Then Exit Sub
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

Private Sub DriverError(ByVal ErrorCode As Integer)
Exception "AD12-8 Driver Error: " + Format(ErrorCode, "####")
'ErrorCode = AD128_Shutdown()
End Sub


Private Sub Exception(Message As String)
lblException.Caption = Message + " " + Format(Now, "yy/mm/dd hh:mm:ss")
'Allow for logging of exceptions at a limited rate.
FreshException = True
End Sub

Private Sub Form_Load()
Dim ErrorCode As Integer
Dim InputStr As String
Dim WorkFile As String
Dim KeyStr As String
Dim PortNo As Integer
Dim SetStr As String
Dim DeviceThere As Boolean
Dim II As Integer
Dim JJ As Integer
Dim I As Integer
Dim nSlot As Integer
Dim nKey As Integer
'Form Initializations
CRLF = Chr$(13) + Chr$(10)
lblResetCount(0).Caption = 0
'Hourly Delta-counts accumulation
For I = 0 To LastUnit
  HourDel(I) = 0
  HourDelNumber(I) = 0
Next I
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
'Windows for PHA Classification
'Remote Personalities
frmHouse.cmdFirmware(0).Caption = "600"
FirmVersion(0) = 600
frmHouse.cmdFirmware(1).Caption = "600"
FirmVersion(1) = 600
frmHouse.cmdFirmware(2).Caption = "600"
FirmVersion(2) = 600
frmHouse.cmdFirmware(3).Caption = "600"
FirmVersion(3) = 600
'Standard limits -- for version 600 firmware
For I = 0 To LastUnit
 WinLimit(0, I) = 10
 WinLimit(1, I) = 80
Next I
For I = 0 To 2
 lblMuxItem(I).Caption = ItemTag(I)
Next I
' Show the current time
CurTime = Now
CurDate = Format(CurTime, "yy_mm_dd")
lblComputerTime.Caption = Format(CurTime, "yy/mm/dd hh:mm:ss")
FullRdgAIR(0) = "0000"
FullRdgAIR(1) = "0000"
'Generate the name of the data file
DataFileName = DataDirectory + CurDate + ".DAT"
'Then open the data file
Close #2
Open DataFileName For Append As #2
LogEntry "New Van Program Keys: " & " " & lblSoftLocation & " " & lblSoftVersion
LogEntry "Data: " & DataDirectory
LogEntry "Histograms: " & HistogramDirectory
LogEntry "Logs: " & LogDirectory
'Get the essentials of the machine configuration
'and initialize the proper I/O devices
While WhoOpen
 Line Input #1, InputStr
 II = InStr(InputStr, " ")
 KeyStr = Left$(InputStr, II - 1)
 InputStr = Mid$(InputStr, II + 1)
 Select Case KeyStr
  Case "comGPS"
   PortNo = CInt(Mid$(InputStr, 1, 1))
   InputStr = Mid$(InputStr, 3)
   II = InStr(InputStr, " ")
   SetStr = Left$(InputStr, II - 1)
   InputStr = Mid$(InputStr, II + 1)
   comGPS.CommPort = PortNo
   comGPS.Settings = SetStr
   If InStr(InputStr, "On") > 0 Then btnGPSonoff_Click
   LogEntry "Set up " + KeyStr + " P:" + Format$(PortNo) + " S:" + SetStr + " A:" + InputStr
  Case "comPSI"
   PortNo = CInt(Mid$(InputStr, 1, 1))
   InputStr = Mid$(InputStr, 3)
   II = InStr(InputStr, " ")
   SetStr = Left$(InputStr, II - 1)
   InputStr = Mid$(InputStr, II + 1)
   comPSI.CommPort = PortNo
   comPSI.Settings = SetStr
   If InStr(InputStr, "On") > 0 Then btnPSIonoff_Click
   LogEntry "Set up " + KeyStr + " P:" + Format$(PortNo) + " S:" + SetStr + " A:" + InputStr
  Case "comRack"
   PortNo = CInt(Mid$(InputStr, 1, 1))
   InputStr = Mid$(InputStr, 3)
   II = InStr(InputStr, " ")
   SetStr = Left$(InputStr, II - 1)
   InputStr = Mid$(InputStr, II + 1)
   comRack.CommPort = PortNo
   comRack.Settings = SetStr
   If InStr(InputStr, "On") > 0 Then btnRackonoff_Click
   LogEntry "Set up " + KeyStr + " P:" + Format$(PortNo) + " S:" + SetStr + " A:" + InputStr
  Case "comTasVan"
   PortNo = CInt(Mid$(InputStr, 1, 1))
   InputStr = Mid$(InputStr, 3)
   II = InStr(InputStr, " ")
   SetStr = Left$(InputStr, II - 1)
   InputStr = Mid$(InputStr, II + 1)
   comTasVan.CommPort = PortNo
   comTasVan.Settings = SetStr
   If InStr(InputStr, "On") > 0 Then btnTasVanonoff_Click
   LogEntry "Set up " + KeyStr + " P:" + Format$(PortNo) + " S:" + SetStr + " A:" + InputStr
  Case "TimingData"
   II = InStr(InputStr, "Full")
   If (II > 0) And (II < 6) Then
     btnMultiplicityRecord.Caption = "MFull"
     RecordFullTiming = True
   Else
     btnMultiplicityRecord.Caption = "MSumry"
     RecordFullTiming = False
   End If
   LogEntry "Set up " + KeyStr + " " + btnMultiplicityRecord.Caption
  Case "PoisonPillYear"
    PoisonPillYear = CInt(Left$(InputStr, 4))
    lblPillYear.Caption = Format$(PoisonPillYear)
    LogEntry "Set up " + KeyStr + " " + lblPillYear.Caption
  Case "EndOfInformation"
    Close #1
    WhoOpen = False
  Case Else
    Exception KeyStr + " invalid in WhoAmI"
 End Select
Wend
'Beginning in 2003 the barometer parameters are loaded from
'instructions in the WhoAmI file
'Slots 0 and 1 are used for barometers in the rack
TSF(0) = 1
PSF(0) = 1
TSF(1) = 1
PSF(1) = 1
'Slot 2 is used to interpret the TasLogger barometer
TSF(2) = 32
PSF(2) = 8
For nSlot = 0 To 2
  lblDigiSerial(nSlot).Visible = False
  lblDigiModel(nSlot).Visible = False
  lblDigiT(nSlot).Visible = False
  lblDigiP(nSlot).Visible = False
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
    WorkFile = "C:\VanSys\Personality\TasVan\" & BarometerFile(nSlot)
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
'Set the arrays that determine which channels are alive
For II = 0 To LastUnit
 For JJ = 0 To LastUnit
  IsLive(II, JJ) = True
 Next JJ
Next II
'Make currently unused items invisible
'lblT1(0).Visible = False
'lblT2(0).Visible = False
'lblT3(0).Visible = False
'lblT1(1).Visible = False
'lblT2(1).Visible = False
'lblT3(1).Visible = False
'lblT1(2).Visible = False
'lblT2(2).Visible = False
'lblT3(2).Visible = False
btnRackReset_Click (0)
End Sub

Private Function HexVal(InByte As String) As Integer
'Takes a character assumed to be a hex digit
'and returns the value as an integer
Select Case InByte
 Case "0"
  HexVal = 0
 Case "1"
  HexVal = 1
 Case "2"
  HexVal = 2
 Case "3"
  HexVal = 3
 Case "4"
  HexVal = 4
 Case "5"
  HexVal = 5
 Case "6"
  HexVal = 6
 Case "7"
  HexVal = 7
 Case "8"
  HexVal = 8
 Case "9"
  HexVal = 9
 Case "A"
  HexVal = 10
 Case "B"
  HexVal = 11
 Case "C"
  HexVal = 12
 Case "D"
  HexVal = 13
 Case "E"
  HexVal = 14
 Case "F"
  HexVal = 15
 Case Else
  Exception "Bad Hex: " + InByte
End Select
End Function

Public Sub LogEntry(Message As String)
  Print #2, "Log: " + Message + " " + Format(Now, "yy/mm/dd hh:mm:ss")
End Sub

Private Function Mux4(Nibbles As String, Adr As Integer, Flg As Integer) As Long
Dim Temp As Long
Temp = Asc(Mid$(Nibbles, 1, 1)) And 15
Temp = (16 * Temp) + (Asc(Mid$(Nibbles, 2, 1)) And 15)
Temp = (4 * Temp) + (Asc(Mid$(Nibbles, 3, 1)) And 3)
Adr = Asc(Mid$(Nibbles, 4, 1)) And 7
Flg = Asc(Mid$(Nibbles, 4, 1)) And 8
Mux4 = Temp
End Function
Private Function bMux2(Bytes As String, Adr As Integer, Flg As Integer) As Long
Dim Temp As Long
Temp = Asc(Mid$(Bytes, 1, 1))
Temp = (4 * Temp) + (Asc(Mid$(Bytes, 2, 1)) \ 64)
Adr = Asc(Mid$(Bytes, 2, 1)) And 7
Flg = Asc(Mid$(Bytes, 2, 1)) And 8
bMux2 = Temp
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
Dim DeviceData As String
Dim PrevCtr As Long
Dim Nd As Integer
Dim Dta As String
Dim NDta As Integer
Dim Current As String
Dim NSByte As Integer
Dim CurrentValue As Single
Dim nTube As Integer
Dim nCtr As Integer
Dim nDone As Integer
Dim nSync As Integer
Dim I As Integer
Dim II As Integer
Dim JJ As Integer
Dim CtrTmr As Long
Dim CurPls As Long
Dim LastCmd As Long
Dim CmdCtr As Long
Dim CmdErr As Long
'Read the Rack port
Dta = comRack.Input
lblNRead(1).Caption = Format$(Len(Dta), "0")
'Make sure the data string doesn't get too large.
If Len(Current) >= 800 Then
  Current = Mid$(Current, 400)
End If
'Add the new data to the buffer
Current = Current + Dta
StillHope = True
While StillHope And Len(Current) > RackSyncLen
Do
  Select Case Left$(Current, 4)
  Case TubeSync
    If Len(Current) >= TubeByteLen + RackSyncLen + 2 Then
      'The string is long enough, look for delimiter
      If Mid$(Current, TubeByteLen + RackSyncLen + 1, 2) = CRLF Then
        DeviceData = Mid$(Current, RackSyncLen + 1, TubeByteLen + 1)
        DecomTube DeviceData
        'Remove the message from the buffer
        If Len(Current) > TubeByteLen + RackSyncLen + 2 Then
          Current = Mid$(Current, TubeByteLen + RackSyncLen + 3)
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
        DeviceData = Mid$(Current, RackSyncLen + 1, CtrByteLen)
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
  Case DoneSync
    If Len(Current) >= DoneByteLen + RackSyncLen + 2 Then
      'The string is long enough, look for delimiter
      If Mid$(Current, DoneByteLen + RackSyncLen + 1, 2) = CRLF Then
        'This is a valid Done indicator
        'Count it
        DoneMessageCount = DoneMessageCount + 1
        lblDoneCount.Caption = Format$(DoneMessageCount)
        RecordDeltas
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
  Case GPS1Sync
    If Len(Current) >= GPS1ByteLen + RackSyncLen + 2 Then
      'The string is long enough, look for delimiter
      If Mid$(Current, GPS1ByteLen + RackSyncLen + 1, 2) = CRLF Then
        'This is a valid transmission from the GPS manager board
        'Count it
        GPS1MessageCount = GPS1MessageCount + 1
        If Mid$(Current, RackSyncLen + 1, 7) = "$GPGGA," Then
          'This is actually a GPS message
          lblLatestGPS(1).Caption = Mid$(Current, RackSyncLen + 8, GPS1ByteLen - 7) + " at " + Format$(Now, "yy/mm/dd hh:mm:ss")
          ShowRackGPSData Mid$(Current, RackSyncLen + 8, GPS1ByteLen - 7)
        End If
        'Remove the message from the buffer
        If Len(Current) > GPS1ByteLen + RackSyncLen + 2 Then
          Current = Mid$(Current, GPS1ByteLen + RackSyncLen + 3)
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
  Case GPS2Sync
    If Len(Current) >= GPS2ByteLen + RackSyncLen + 2 Then
      'The string is long enough, look for delimiter
      If Mid$(Current, GPS2ByteLen + RackSyncLen + 1, 2) = CRLF Then
        'This is a valid GPS Message, Type 2
        'Count it
        GPS2MessageCount = GPS2MessageCount + 1
        'lblRackGPS(0).Caption = Asc(Mid$(Current, 5, 1))
        'lblRackGPS(1).Caption = Asc(Mid$(Current, 6, 1))
        'Remove the message from the buffer
        If Len(Current) > GPS2ByteLen + RackSyncLen + 2 Then
          Current = Mid$(Current, GPS2ByteLen + RackSyncLen + 3)
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
    Exception "Sync Loss"
    Current = Mid$(Current, 2)
    Exit Do
  End Select
Loop
Wend
lblNCurrent(1).Caption = Format(Len(Current), "0")
End Sub

Private Static Sub RecordDeltas()
Dim OutStr As String
Dim I As Integer
Dim HourDelNum(LastUnit) As Long
Dim PrevHourDelNum(LastUnit) As Long
Dim Differs As Boolean
'Check to be sure that this request is not the result of
'a stray "Done" marker
On Error Resume Next
'Check to see that at least one unit counter has incremented
Differs = False
For I = 0 To LastUnit
  HourDelNum(I) = 0
  HourDelNum(I) = CLng(lblHourDelNumber(I).Caption)
  If HourDelNum(I) <> PrevHourDelNum(I) Then Differs = True
  PrevHourDelNum(I) = HourDelNum(I)
Next I
On Error GoTo 0
If Not Differs Then
  'Note the situation for future reference
  OutStr = " "
  For I = 0 To LastUnit
    OutStr = OutStr + lblHourDelNumber(I).Caption + " "
  Next I
  Print #2, "EDM: " + OutStr
  'Suppress further processing
  Exit Sub
End If
HrRead = HrRead + 1
MiRead = MiRead + 1
lblHrRead.Caption = Format(HrRead)
'Record the latest tiltmeter readings
OutStr = lblLastPitch(0).Caption + " " + lblLastRoll(0).Caption + " " + lblLastPitch(1).Caption + " " + lblLastRoll(1).Caption
'Record the counter deltas
For I = 0 To LastUnit
  OutStr = OutStr + " " + lblDel(I).Caption
Next I
'Add the latest AIR readings if selected
If HiResAir Then OutStr = OutStr + " " + FullRdgAIR(0) + " " + FullRdgAIR(1)
'Accumulate Window Statistics
If LastUnit >= 0 Then
  For I = 0 To LastUnit
    HrBelow(I) = HrBelow(I) + Below(I)
    MinBelow(I) = MinBelow(I) + Below(I)
    Below(I) = 0
    HrIn(I) = HrIn(I) + InArray(I)
    lblWindowVerify(I).Caption = Format(HrIn(I))
    MinIn(I) = MinIn(I) + InArray(I)
    InArray(I) = 0
    HrAbove(I) = HrAbove(I) + Above(I)
    MinAbove(I) = MinAbove(I) + Above(I)
    Above(I) = 0
  Next I
End If
OutStr = OutStr + " "
For I = 0 To LastUnit
  OutStr = OutStr + lblHourDelNumber(I).Caption + " "
Next I
Print #2, "LS: " + OutStr
End Sub


Private Static Sub ShowInternalGPSData()
'Captures and Formats GPS Data
    On Error Resume Next
    Dim Nd, I, NGGA As Long, NCR As Long
    Dim Dta As String
    Dim LastGGA As String
    Dim CurText As String
    Dim LatestTime As String
    Dim Parse As String
    Dim nCom As Integer
    Dim nLen As Integer
    Dim nDot As Integer
    Dta$ = comGPS.Input

    '--- Make sure the existing text doesn't get
    '    too large -- in case the GPS goes crazy
    '    and drops its sync characters.
    Nd = Len(CurText)
    If Nd >= 500 Then
       CurText = Mid$(CurText, 200)
    End If
   '--- Eliminate Line Feeds
    Do
       I = InStr(Dta$, Chr$(10))
       If I Then
          Dta$ = Left$(Dta$, I - 1) + Mid$(Dta$, I + 1)
       End If
    Loop While I


    '--- Add the filtered data to curText
    CurText = CurText + Dta$
    'Now look for pattern
    Nd = Len(CurText)
    If Nd > 10 Then
      NGGA = InStr(CurText, "$GPGGA")
    Else
      NGGA = 0
    End If
    While NGGA > 0
      'The GGA Identifier is there, so reposition the string
      CurText = Mid$(CurText, NGGA)
      'Now look for a carriage return
      NCR = InStr(CurText, Chr$(13))
      Nd = Len(CurText)
      If NCR > 0 Then
       'There is a complete message so remember it
       LastGGA = Left$(CurText, NCR - 1)
       LastGGA = Mid$(LastGGA, 8)
       LatestTime = Format$(Now, "yy/mm/dd hh:mm:ss")
       lblLatestGPS(0).Caption = LastGGA + " at " + LatestTime
       If InStr(LastGGA, ",,,") = 0 Then
         'This record contains a current fix
         lblGPSComTime(0).Caption = Format$(Now, "HH:mm:ss")
         lblGPSGMT(0).Caption = Left$(LastGGA, 2) + ":" + Mid$(LastGGA, 3, 2) + ":" + Mid$(LastGGA, 5, 2)
         nCom = InStr(LastGGA, ",")
         Parse = Mid$(LastGGA, nCom + 1)
         nCom = InStr(Parse, ",")
         lblGPSLat(0).Caption = Left$(Parse, nCom - 1)
         nDot = InStr(lblGPSLat(0).Caption, ".")
         lblGPSLat(0).Caption = Left$(lblGPSLat(0).Caption, nDot - 3) + " " + Mid$(lblGPSLat(0).Caption, nDot - 2)
         Parse = Mid$(Parse, nCom + 1)
         nCom = InStr(Parse, ",")
         lblGPSLat(0).Caption = lblGPSLat(0).Caption + " " + Left$(Parse, 1)
         Parse = Mid$(Parse, nCom + 1)
         nCom = InStr(Parse, ",")
         lblGPSLong(0).Caption = Left$(Parse, nCom - 1)
         nDot = InStr(lblGPSLong(0).Caption, ".")
         lblGPSLong(0).Caption = Left$(lblGPSLong(0).Caption, nDot - 3) + " " + Mid$(lblGPSLong(0).Caption, nDot - 2)
         Parse = Mid$(Parse, nCom + 1)
         nCom = InStr(Parse, ",")
         lblGPSLong(0).Caption = lblGPSLong(0).Caption + " " + Left$(Parse, 1)
         Parse = Mid$(Parse, nCom + 1)
         nCom = InStr(Parse, ",")
         Parse = Mid$(Parse, nCom + 1)
         nCom = InStr(Parse, ",")
         lblGPSNumSat(0).Caption = Left$(Parse, nCom - 1)
       End If
       CurText = Mid$(CurText, NCR + 1)
       Nd = Len(CurText)
       If Nd > 10 Then
        NGGA = InStr(CurText, "$GPGGA")
       Else
        NGGA = 0
       End If
      Else
       'Wait to see if more comes in
       NGGA = 0
      End If
     Wend
End Sub

Private Static Sub TasData()
'Captures and Formats TasVan Data
On Error Resume Next
Dim Nd As Integer
Dim I As Integer
Dim NTRA As Long
Dim NCR As Long
Dim Dta As String
Dim CurText As String
Dta = comTasVan.Input
'Make sure the existing text doesn't get
'too large -- in case the TasVan goes crazy
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
'Flag Carriage Returns
Do
  I = InStr(Dta, Chr$(13))
  If I > 0 Then
    Dta = Left$(Dta, I - 1) + "r" + Mid$(Dta, I + 1)
  End If
Loop While I > 0
'Debug.Print "[" + Dta + "]"
'Add the filtered data to curText
CurText = CurText + Dta$
'Debug.Print "{" + CurText + "}"
'Now look for pattern
NTRA = InStr(CurText, "TRA")
If InStr(CurText, "system") > 0 Then
  Exception "System Directive in TasLogger Stream"
End If
While NTRA > 0
  'There is a TRA Identifier; put it at start
  CurText = Mid$(CurText, NTRA)
  'Now look for a carriage return
  NCR = InStr(CurText, "r")
  If NCR > 0 Then
    'There is a complete message so remember it
    LastTAS = Left$(CurText, NCR - 1)
    lblTasLogger.Caption = LastTAS + " " + lblComputerTime.Caption
    'Log on data file
    LogEntry LastTAS
    'Write the record to the hour file
    LogFileName = LogDirectory + Format(Now, "yy_mm_dd") + ".LOG"
    Open LogFileName For Append As #3
    Print #3, LastTAS + " " + lblComputerTime.Caption
    Close #3
    ShowTasPressure LastTAS
    'Now remove the text from the buffer
    CurText = Mid$(CurText, NCR + 1)
    'See if there might be another one
    NTRA = InStr(CurText, "TRA")
  Else
    'Wait until more text comes in
    Exit Sub
  End If
Wend
If Len(CurText) > 100 Then
  'The data in CurText are useless, as there is no
  'TRA string and there are plenty of characters.
  'So get rid of everything but the end of the string,
  'which might contain the start of the TRA
   CurText = Right$(CurText, 4)
   Exception "TasLogger Characters Ignored"
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
LogEntry "Program Closing"
End
End Sub



Private Static Sub Timer1_Timer()
Dim ErrorCode As Integer
Dim CurHist As Integer
Dim CurValue As Single
Dim LogFileName$
Dim HrTrigger As Integer
Dim PrevMin As Integer
Dim Temp As Double
Dim HouseText As String
Dim HrStr As String
Dim OutPos(1) As String
Dim OutPress As String
Dim OutTilt As String
Dim OutWin As String
Dim OutStr As String
Dim OutMult As String
Dim I As Integer
Dim II As Integer
Dim J As Integer
Dim iDQ As Integer
Dim NewDay As Boolean
Dim nUnit As Integer
Dim nMult As Integer
Dim nControl As Integer
If (FreshException) Then
  Print #2, "Exc: " + lblException.Caption
End If
FreshException = False
' Show the current time and parse it for control
CurTime = Now
CurTimTag = Format(CurTime, "hh:mm:ss")
CurHour = Val(Format(CurTime, "hh"))
CurMin = Val(Format(CurTime, "nn"))
CurSec = Val(Format(CurTime, "ss"))
CurYear = Val(Format(CurTime, "yyyy"))
lblComputerTime.Caption = Format(CurTime, "yy/mm/dd hh:mm:ss")
' Check for a date change
If CurDate <> Format(CurTime, "yy_mm_dd") Then
  'Switch data files
  CurDate = Format(CurTime, "yy_mm_dd")
  Close #2
  DataFileName = DataDirectory + CurDate + ".DAT"
  Open DataFileName For Append As #2
  LogEntry "Date Change"
  'Update the current file name and
  'add an entry to the Hour (Log) File
  'with housekeeping
  LogFileName = LogDirectory + CurDate + ".LOG"
  Open LogFileName For Append As #3
  Print #3, "HH: " & lblComputerTime.Caption + " Housekeeping Data"
  ' Put out the current housekeeping on the data file
  For J = 0 To LastUnit
    HouseText = "DH: "
    For I = 0 To 6
      HouseText = HouseText + Format(House(I, J)) + " "
    Next I
    Print #3, HouseText
  Next J
  Close #3
  'Allow deferral of some new day actions.
  NewDay = True
End If
' Once per second
If AnimateMonitorSeries Then
  GraphDest = "Monitor"
  ShowMonitorSeries MonitorHisNum, MonitorHisType
  GraphDest = " "
End If
For nUnit = 0 To LastUnit
 For nMult = 0 To maxMultiplicity
  nControl = nUnit * (maxMultiplicity + 1) + nMult
  frmMultiplicity.lblMultiplicitySummary(nControl).Caption = Format$(MultiplicitySummary(nMult, nUnit))
 Next nMult
Next nUnit
' Every Minute
If CurMin <> PrevMin Then
  PrevMin = CurMin
  'Poison pill to stop full recording of
  'multiplicity data after reaching McMurdo
  'in 2001-2002 voyage:
  'Generalize and include in the personality file 4/05/06 PAE
  If ((CurYear > PoisonPillYear) And (btnMultiplicityRecord.Caption = "MFull")) Then
    btnMultiplicityRecord.Caption = "MSumry"
    RecordFullTiming = False
    LogEntry "Multiplicity Poison Pill: " + btnMultiplicityRecord.Caption
  End If
  'Process Tiltmeter Data
  For II = 0 To 1
    If NRawRoll(II) > 0 Then
      MARawRoll(II) = SumRawRoll(II) / NRawRoll(II)
      Temp = (SSRawRoll(II) / NRawRoll(II)) - (MARawRoll(II) ^ 2)
      If Temp > 0 Then
        MSRawRoll(II) = Sqr(Temp)
      Else
        MSRawRoll(II) = 0
      End If
    Else
      MARawRoll(II) = 0
      MSRawRoll(II) = 0
    End If
    lblMinitRoll(II).Caption = Format(MARawRoll(II), "#0.00")
    lblMinitRollSigma(II).Caption = Format(MSRawRoll(II), "#0.00")
    NRawRoll(II) = 0
    SumRawRoll(II) = 0
    SSRawRoll(II) = 0
    If NRawPitch(II) > 0 Then
      MARawPitch(II) = SumRawPitch(II) / NRawPitch(II)
      Temp = (SSRawPitch(II) / NRawPitch(II)) - (MARawPitch(II) ^ 2)
      If Temp > 0 Then
        MSRawPitch(II) = Sqr(Temp)
      Else
        MSRawPitch(II) = 0
      End If
    Else
      MARawPitch(II) = 0
      MSRawPitch(II) = 0
    End If
    lblMinitPitch(II).Caption = Format(MARawPitch(II), "#0.00")
    lblMinitPitchSigma(II).Caption = Format(MSRawPitch(II), "#0.00")
    NRawPitch(II) = 0
    SumRawPitch(II) = 0
    SSRawPitch(II) = 0
  Next II
  If NDigiQ > 0 Then
    For iDQ = 0 To 1
      MADigiA(iDQ) = SumDigiA(iDQ) / NDigiQ
      Temp = (SSDigiA(iDQ) / NDigiQ) - (MADigiA(iDQ) ^ 2)
      If Temp > 0 Then
        MSDigiA(iDQ) = Sqr(Temp)
      Else
        MSDigiA(iDQ) = 0
      End If
      MADigiB(iDQ) = SumDigiB(iDQ) / NDigiQ
      Temp = (SSDigiB(iDQ) / NDigiQ) - (MADigiB(iDQ) ^ 2)
      If Temp > 0 Then
        MSDigiB(iDQ) = Sqr(Temp)
      Else
        MSDigiB(iDQ) = 0
      End If
    Next iDQ
  Else
    For iDQ = 0 To 1
        MADigiA(iDQ) = 0
        MSDigiA(iDQ) = 0
        MADigiB(iDQ) = 0
        MSDigiB(iDQ) = 0
    Next iDQ
  End If
  For iDQ = 0 To 1
   lblFreqA(iDQ).Caption = Format(MADigiA(iDQ), "0.0")
   lblFreqAsd(iDQ).Caption = Format(MSDigiA(iDQ), "0.0")
   lblFreqB(iDQ).Caption = Format(MADigiB(iDQ), "0.0")
   lblFreqBsd(iDQ).Caption = Format(MSDigiB(iDQ), "0.0")
   SumDigiA(iDQ) = 0
   SSDigiA(iDQ) = 0
   SumDigiB(iDQ) = 0
   SSDigiB(iDQ) = 0
   Digiquartz MADigiA(iDQ), MADigiB(iDQ), DigiPress(iDQ), DigiTemp(iDQ), iDQ
   lblDigiP(iDQ).Caption = Format$(DigiPress(iDQ), "0.00")
   lblDigiT(iDQ).Caption = Format$(DigiTemp(iDQ), "0.00")
   CurHist = iDQ + ParamHisStart + 1
   CurValue = DigiPress(iDQ)
   EnterMonitorHis CurValue, CurHist, 0
  Next iDQ
  If (NDigiQ < 50) Or (MiRead < 50) Then
    'Something seems stalled
    btnRackReset_Click (0)
  End If
  OutWin = Format$(MiRead)
  NDigiQ = 0
  MiRead = 0
  If LastUnit >= 0 Then
      For I = 0 To LastUnit
        OutWin = OutWin + " " + Format(MinBelow(I))
        MinBelow(I) = 0
        OutWin = OutWin + " " + Format(MinIn(I))
        MinIn(I) = 0
        OutWin = OutWin + " " + Format(MinAbove(I))
        MinAbove(I) = 0
      Next I
  End If
  For I = 0 To LastUnit
    OutWin = OutWin + " " + lblCts(I).Caption
  Next I
  For I = 0 To LastUnit
    OutWin = OutWin + " " + lblHourDelNumber(I).Caption
    OutWin = OutWin + " " + lblHourDel(I).Caption
  Next I
  For I = 0 To 1
     OutPos(I) = lblGPSLat(I).Caption
     OutPos(I) = OutPos(I) + " " + lblGPSLong(I).Caption
     OutPos(I) = OutPos(I) + " " + lblGPSNumSat(I).Caption
     OutPos(I) = OutPos(I) + " " + lblGPSGMT(I).Caption
     OutPos(I) = OutPos(I) + " " + lblGPSComTime(I).Caption
  Next I
  OutPress = lblComputerTime.Caption
  OutPress = OutPress + " " + lblLastAirTime(0).Caption
  OutPress = OutPress + " " + lblLastAir(0).Caption
  OutPress = OutPress + " " + lblDigiP(0).Caption
  OutPress = OutPress + " " + lblDigiT(0).Caption
  OutPress = OutPress + " " + lblDigiP(1).Caption
  OutPress = OutPress + " " + lblDigiT(1).Caption
  OutPress = OutPress + " " + lblPSIRead.Caption
  OutTilt = lblMinitRoll(0).Caption
  OutTilt = OutTilt + " " + lblMinitRollSigma(0).Caption
  OutTilt = OutTilt + " " + lblMinitPitch(0).Caption
  OutTilt = OutTilt + " " + lblMinitPitchSigma(0).Caption
  OutTilt = OutTilt + " " + lblMinitRoll(1).Caption
  OutTilt = OutTilt + " " + lblMinitRollSigma(1).Caption
  OutTilt = OutTilt + " " + lblMinitPitch(1).Caption
  OutTilt = OutTilt + " " + lblMinitPitchSigma(1).Caption
  Print #2, "LP: " + OutPress
  Print #2, "LG0: " + lblLatestGPS(0)
  Print #2, "LG1: " + lblLatestGPS(1)
  Print #2, "LL0: " + OutPos(0)
  Print #2, "LL1: " + OutPos(1)
  Print #2, "LT: " + OutTilt
  Print #2, "LW: " + OutWin
  'Record Multiplicity Summary
  For nUnit = 0 To LastUnit
    OutMult = "MP" + Format$(nUnit) + ":"
    For nMult = 0 To maxMultiplicity
      OutMult = OutMult + " " + Format$(MultiplicitySummary(nMult, nUnit) - LastMultiplicitySummary(nMult, nUnit))
      LastMultiplicitySummary(nMult, nUnit) = MultiplicitySummary(nMult, nUnit)
    Next nMult
    Print #2, OutMult
  Next nUnit
  'Keep the datafile current
  Close #2
  Open DataFileName For Append As #2
End If
'Arm the Hour Trigger
If CurMin <> 0 Then
    HrTrigger = True
End If
'Every Hour
If HrTrigger And (CurMin = 0) Then
  'Add an entry to the Hour (Log) File
  LogFileName = LogDirectory + CurDate + ".LOG"
  Open LogFileName For Append As #3
  Print #3, "P: " + OutPress
  Print #3, "G0: " + lblLatestGPS(0)
  Print #3, "L0: " + OutPos(0)
  Print #3, "G1: " + lblLatestGPS(1)
  Print #3, "L1: " + OutPos(1)
  Print #3, "T: " + OutTilt
  OutStr = "C: "
  For I = 0 To LastUnit
    OutStr = OutStr + lblCts(I).Caption + " "
  Next I
  For I = 0 To LastUnit
    OutStr = OutStr + lblHourDelNumber(I).Caption + " "
    OutStr = OutStr + lblHourDel(I).Caption + " "
    HourDel(I) = 0
    HourDelNumber(I) = 0
  Next I
  Print #3, OutStr
  HrStr = "W: " + Format(HrRead)
  HrRead = 0
  If LastUnit >= 0 Then
      For I = 0 To LastUnit
        HrStr = HrStr + " " + Format(HrBelow(I))
        HrBelow(I) = 0
        HrStr = HrStr + " " + Format(HrIn(I))
        HrIn(I) = 0
        HrStr = HrStr + " " + Format(HrAbove(I))
        HrAbove(I) = 0
      Next I
      Print #3, HrStr
  End If
  HrStr = "H:"
  For I = 0 To LastUnit
    HrStr = HrStr + " " + lblT1(I).Caption + " " + lblT2(I).Caption + " " + lblT3(I).Caption
  Next I
  Print #3, HrStr
  HrStr = "R: " + lblResetCount(0)
  Print #3, HrStr
  'Record and zero the multiplicity summary
  For nUnit = 0 To LastUnit
    HrStr = "MP" + Format$(nUnit) + ":"
    For nMult = 0 To maxMultiplicity
      HrStr = HrStr + " " + Format$(MultiplicitySummary(nMult, nUnit))
      MultiplicitySummary(nMult, nUnit) = 0
      LastMultiplicitySummary(nMult, nUnit) = 0
    Next nMult
    Print #3, HrStr
  Next nUnit
  For I = 0 To LastUnit
   HourDeltaRef(I) = PriorScaler(I)
  Next I
  DoneMessageCount = 0
  Close #3
  'Put out the current housekeeping on the data file
  For J = 0 To LastUnit
    HouseText = ""
    For I = 0 To 6
      HouseText = HouseText + Format(House(I, J)) + " "
    Next I
    Print #2, "LH: " + HouseText
  Next J
  'Record and clear indicated histograms
  frmDisplay.DumpGroup 1
  HrTrigger = False
End If
If NewDay Then
  'Clear the internal statistics
  frmDisplay.btnClearStat_Click
End If
NewDay = False
End Sub

Private Static Sub DecomCtrIO(Current As String)
Dim PrevCtr As Long
Dim Nd As Integer
Dim NSByte As Integer
Dim CurrentValue As Single
Dim nCurrent As Integer
Dim NLS1 As Integer
Dim I As Integer
Dim II As Integer
Dim JJ As Integer
Dim CtrTmr As Long
Dim CurPls As Long
Dim LastCmd As Long
Dim CmdCtr As Long
Dim CmdErr As Long
Dim CurHist As Integer
Dim CurValue As Single
'The Counter-I/O data string (binary) is assumed to be
'left justified in the input string "Current", with the
'Sync information removed
'Extract the sequence counter
CtrTmr = Asc(Mid$(Current, 2, 1)) And 127
CtrTmr = 256 * CtrTmr Or Asc(Mid$(Current, 3, 1))
CtrTmr = 256 * CtrTmr Or Asc(Mid$(Current, 5, 1))
CtrTmr = 256 * CtrTmr Or Asc(Mid$(Current, 6, 1))
lblCtrTmr = Format$(CtrTmr)
'Extract the ADC values (which are repeated as a noise check)
For JJ = 0 To 1
  For II = 0 To 12
    NSByte = (JJ * 13 + II + 2) * 3
    CtrIOADC(JJ, II) = Asc(Mid$(Current, NSByte + 2, 1))
    CtrIOADC(JJ, II) = 4 * CtrIOADC(JJ, II) + Asc(Mid$(Current, NSByte + 3, 1)) \ 64
  Next II
Next JJ
'The first 8 readings are two's complement
'For JJ = 0 To 1
'  For II = 0 To 7
'    If CtrIOADC(JJ, II) > 511 Then
'      CtrIOADC(JJ, II) = -((CtrIOADC(JJ, II) Xor 1023) + 1)
'    End If
'  Next II
'Next JJ
'Show tiltmeter data
For JJ = 0 To 1
 RawPitch(JJ) = ((CtrIOADC(0, 4 * JJ) + CtrIOADC(1, 4 * JJ)) - 1250) / 51.2
 CurHist = JJ + ParamHisStart + 6
 CurValue = RawPitch(JJ)
 EnterMonitorHis CurValue, CurHist, 0
 lblLastPitch(JJ).Caption = Format$(RawPitch(JJ), "#0.00")
 RawRoll(JJ) = ((CtrIOADC(0, 4 * JJ + 1) + CtrIOADC(1, 4 * JJ + 1)) - 1250) / 51.2
 CurHist = JJ + ParamHisStart + 4
 CurValue = RawRoll(JJ)
 EnterMonitorHis CurValue, CurHist, 0
 lblLastRoll(JJ) = Format$(RawRoll(JJ), "#0.00")
 NRawRoll(JJ) = NRawRoll(JJ) + 1
 SumRawRoll(JJ) = SumRawRoll(JJ) + RawRoll(JJ)
 SSRawRoll(JJ) = SSRawRoll(JJ) + RawRoll(JJ) ^ 2
 NRawPitch(JJ) = NRawPitch(JJ) + 1
 SumRawPitch(JJ) = SumRawPitch(JJ) + RawPitch(JJ)
 SSRawPitch(JJ) = SSRawPitch(JJ) + RawPitch(JJ) ^ 2
 RawTemp(JJ) = ((CtrIOADC(0, 4 * JJ + 2) + CtrIOADC(1, 4 * JJ + 2)) - 1250) / 5.12
 lblTiltTemp(JJ).Caption = Format(RawTemp(JJ), "0.0")
Next JJ
'Show scaled values
For II = 0 To 2
  CurrentValue = CalConst(0, II) * (CtrIOADC(0, II + 8) + CtrIOADC(1, II + 8)) / 2# - CalConst(1, II)
  lblMuxValue(II).Caption = Format$(CurrentValue, "0.00")
Next II
'Should be rack temperature:
CurHist = ParamHisStart + 8
CurValue = CSng(lblMuxValue(0).Caption)
EnterMonitorHis CurValue, CurHist, 0
'Extract the counter data
For II = 0 To 9
  NSByte = 85 + 3 * II
  CtrIOCount(0, II) = Asc(Mid$(Current, NSByte, 1))
  CtrIOCount(0, II) = 256 * CtrIOCount(0, II) + Asc(Mid$(Current, NSByte + 1, 1))
  CtrIOCount(0, II) = 256 * CtrIOCount(0, II) + Asc(Mid$(Current, NSByte + 2, 1))
Next II
'Compute Deltas and remember current
For II = 0 To 9
  frmHouse.lblCounter(II).Caption = Format$(CtrIOCount(0, II))
  If ResetSent Then
    CtrIOCount(1, II) = CtrIOCount(0, II)
  Else
    CtrIOCount(1, II) = CtrIOCount(0, II) - CtrIOCount(2, II)
  End If
  If CtrIOCount(1, II) < 0 Then
    CtrIOCount(1, II) = CtrIOCount(1, II) + DelCycle
  End If
  frmHouse.lblDelta(II).Caption = Format$(CtrIOCount(1, II))
  CtrIOCount(2, II) = CtrIOCount(0, II)
Next II
NDigiQ = NDigiQ + 1
SumDigiA(0) = SumDigiA(0) + CtrIOCount(1, 1)
SSDigiA(0) = SSDigiA(0) + CtrIOCount(1, 1) ^ 2
SumDigiB(0) = SumDigiB(0) + CtrIOCount(1, 0)
SSDigiB(0) = SSDigiB(0) + CtrIOCount(1, 0) ^ 2
SumDigiA(1) = SumDigiA(1) + CtrIOCount(1, 3)
SSDigiA(1) = SSDigiA(1) + CtrIOCount(1, 3) ^ 2
SumDigiB(1) = SumDigiB(1) + CtrIOCount(1, 2)
SSDigiB(1) = SSDigiB(1) + CtrIOCount(1, 2) ^ 2
LastCmd = Val(Mid$(Current, RackSyncLen + 40 * 3 + 1, 1))
CmdCtr = Val(Mid$(Current, RackSyncLen + 41 * 3 + 1, 1))
CmdErr = Val(Mid$(Current, RackSyncLen + 42 * 3 + 1, 1))
lblCtrCmd(0).Caption = Hex$(LastCmd)
lblCtrCmd(1).Caption = Format$(CmdCtr)
lblCtrCmd(2).Caption = Hex$(CmdErr)
NSByte = 141
RdgAIR(0) = Chr$(Asc(Mid$(Current, NSByte, 1)) Or Asc("0"))
RdgAIR(0) = RdgAIR(0) + Chr$(Asc(Mid$(Current, NSByte + 3, 1)) Or Asc("0"))
RdgAIR(0) = RdgAIR(0) + Chr$(Asc(Mid$(Current, NSByte + 6, 1)) Or Asc("0"))
RdgAIR(0) = RdgAIR(0) + Chr$(Asc(Mid$(Current, NSByte + 9, 1)) Or Asc("0"))
lblLastAirTime(0).Caption = Format(Now, "hh:mm:ss")
FullRdgAIR(0) = RdgAIR(0)
PressDecAIR(0) = Val(FullRdgAIR(0)) / 10#
lblLastAir(0).Caption = Format$(PressDecAIR(0), "0.0")
CurHist = ParamHisStart
CurValue = PressDecAIR(0)
EnterMonitorHis CurValue, CurHist, 0
Exit Sub
End Sub

Private Static Sub DecomTube(Current As String)
Dim TestString As String
Dim MultString As String
Dim Nd As Integer
Dim nCurrent As Integer
Dim NCRLF As Integer
Dim NLS1 As Integer
Dim I As Integer
Dim II As Integer
Dim JJ As Integer
Dim LOB As Integer
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
Dim Time2 As Long
Dim MaxEvent As Integer
Dim RawScaler As Long
Dim RawUnit As Integer
'The first four bytes are independent of firmware version
'Remote Unit Address
RawUnit = Asc(Mid$(Current$, 2, 1)) And 15
'Main counting scaler
RawScaler = Asc(Mid$(Current, 3, 1))
RawScaler = (256 * RawScaler) + Asc(Mid$(Current, 4, 1))
RawScaler = (256 * RawScaler) + Asc(Mid$(Current, 5, 1))
'Make sure address is in bounds
If (RemoteAddress < 0) Or (RemoteAddress > LastUnit) Then
  Exception "Illegal RemoteAddress " & Format$(RemoteAddress) & " " & Format$(RawScaler)
  Exit Sub
End If
RemoteAddress = RawUnit
CurrentScaler(RemoteAddress) = RawScaler
ProcessScaler
If FirmVersion(RemoteAddress) = 300 Then
  'There are no status bytes
  frmHouse.lblRemStatus1(RemoteAddress).Caption = " N/A "
  frmHouse.lblRemStatus2(RemoteAddress).Caption = " N/A "
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
  'Temperatures
  For I = 4 To 6
  '  TestString = Format$(RemoteAddress) + " " + Format$(I) + " " + Format$(Asc(Mid$(Current, 2 * I + 11, 1))) + " " + Format$(Asc(Mid$(Current, 2 * I + 10, 1)))
  '  LogEntry TestString
    If (Asc(Mid$(Current, 2 * I + 11, 1)) And 16) <> 0 Then
      House(I, RemoteAddress) = -(Asc(Mid$(Current, 2 * I + 10, 1)) Xor 255 + 1)
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
  If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then frmREMOTE.lblSent.Caption = Format$(EvSent)
  'Pulse Height Data
  For I = 0 To 15
    'JJ is the discriminator flag bit
    'II is the address (zero by definition for PHA)
    JJ = 0
    CurPls = bMux2(Mid$(Current$, 2 * I + 24, 2), II, JJ)
    'A zero pulse height and no pulse height are indistinguishable
    If (CurPls > 0) And (RemoteAddress <= LastUnit) And (II = 0) Then
      'First bump the relevant counters
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
        If frmREMOTE.Visible And ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
          frmREMOTE.lblPHA(I).Caption = Format(CurPls)
          frmREMOTE.lblPHA(I).BackColor = &HFFFF&
          frmREMOTE.lblPHA(I).Visible = True
        End If
      Else
        CurHist = RemoteAddress
        CurValue = CurPls
        EnterMonitorHis CurValue, CurHist, 1
        If frmREMOTE.Visible And ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
          frmREMOTE.lblPHA(I).Caption = Format(CurPls)
          frmREMOTE.lblPHA(I).BackColor = &HFFFFFF
          frmREMOTE.lblPHA(I).Visible = True
        End If
      End If
    Else
      If frmREMOTE.Visible And ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
        frmREMOTE.lblPHA(I).Caption = " 0 "
        frmREMOTE.lblPHA(I).Visible = False
      End If
    End If
  Next I
ElseIf FirmVersion(RemoteAddress) = 600 Then
  'This is the 2001-2002 developmental multiplicty unit
  'Science and housekeeping data formats are quite different
  DatFlag = (Asc(Mid$(Current, 2, 1))) \ 16
  frmHouse.lblRemStatus1(RemoteAddress).Caption = DatFlag
  SciData = (DatFlag And 1) = 1
  If SciData Then
    MultString = "LM: " + Format$(RemoteAddress)
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
          If RecordFullTiming Then MultString = MultString + " +"
        Else
          If RecordFullTiming Then MultString = MultString + " -"
        End If
        CurPls = (Asc(Mid$(Current, I + 8, 1)) And 127)
        If RecordFullTiming Then MultString = MultString + Format$(CurPls)
        Time1(I) = Asc(Mid$(Current, I + nEv600 + 8, 1))
        Time1(I) = 256 * Time1(I) + Asc(Mid$(Current, I + 2 * nEv600 + 8, 1))
        If RecordFullTiming Then MultString = MultString + " " + Format$(Time1(I))
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
          CurHist = CurHist + LastUnit + 1
          EnterMonitorHis CurValue, CurHist, 0
          CurHist = CurHist + LastUnit + 1
          EnterMonitorHis CurValue, CurHist, 0
        Else
          CurHist = RemoteAddress
          CurValue = CurPls
          EnterMonitorHis CurValue, CurHist, 1
          CurValue = Time1(I)
          CurHist = CurHist + LastUnit + 1
          EnterMonitorHis CurValue, CurHist, 1
          CurHist = CurHist + LastUnit + 1
          EnterMonitorHis CurValue, CurHist, 1
        End If
      Next I
      If ShowSelectedRemote And (RemoteAddress = WatchThisRemote) Then
        If MaxEvent <= nEv600 Then
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
    Print #2, MultString
    MultString = "Null MultString"
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
      HourDeltaRef(RemoteAddress) = CurrentScaler(RemoteAddress)
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
        House(I, RemoteAddress) = -(Asc(Mid$(Current, 2 * I + 10, 1)) Xor 255 + 1)
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
  Exception "Undefined Firmware Version " & Format$(FirmVersion(RemoteAddress))
End If
'Here the possibly unique character of each unit
'can be taken into account explicitly.
Select Case RemoteAddress
  Case 0
  Case 1
  Case 2
  Case 3
End Select
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

Public Sub ShowRackGPSData(InputString As String)
'Captures and Formats GPS Data
    On Error Resume Next
    Dim Nd, I, NGGA As Long, NCR As Long
    Dim CurText As String
    Dim LastGGA As String
    Dim Parse As String
    Dim nCom As Integer
    Dim nLen As Integer
    LastGGA = InputString
       If InStr(LastGGA, ",,,") = 0 Then
         'This record contains a current fix
         lblGPSComTime(1).Caption = Format$(Now, "HH:mm:ss")
         lblGPSGMT(1).Caption = Left$(LastGGA, 2) + ":" + Mid$(LastGGA, 3, 2) + ":" + Mid$(LastGGA, 5, 2)
         nCom = InStr(LastGGA, ",")
         Parse = Mid$(LastGGA, nCom + 1)
         nCom = InStr(Parse, ",")
         lblGPSLat(1).Caption = Left$(Parse, nCom - 1)
         nLen = Len(lblGPSLat(1).Caption)
         lblGPSLat(1).Caption = Left$(lblGPSLat(1).Caption, nLen - 7) + " " + Right$(lblGPSLat(1).Caption, 7)
         Parse = Mid$(Parse, nCom + 1)
         nCom = InStr(Parse, ",")
         lblGPSLat(1).Caption = lblGPSLat(1).Caption + " " + Left$(Parse, 1)
         Parse = Mid$(Parse, nCom + 1)
         nCom = InStr(Parse, ",")
         lblGPSLong(1).Caption = Left$(Parse, nCom - 1)
         nLen = Len(lblGPSLong(1).Caption)
         lblGPSLong(1).Caption = Left$(lblGPSLong(1).Caption, nLen - 7) + " " + Right$(lblGPSLong(1).Caption, 7)
         Parse = Mid$(Parse, nCom + 1)
         nCom = InStr(Parse, ",")
         lblGPSLong(1).Caption = lblGPSLong(1).Caption + " " + Left$(Parse, 1)
         Parse = Mid$(Parse, nCom + 1)
         nCom = InStr(Parse, ",")
         Parse = Mid$(Parse, nCom + 1)
         nCom = InStr(Parse, ",")
         lblGPSNumSat(1).Caption = Left$(Parse, nCom - 1)
       End If
       CurText = Mid$(CurText, NCR + 1)
       Nd = Len(CurText)
       If Nd > 10 Then
        NGGA = InStr(CurText, "$GPGGA")
       Else
        NGGA = 0
       End If
End Sub

Public Sub ProcessScaler()
Dim CurHist As Integer
Dim CurValue As Single
If NewOpen(RemoteAddress) Then
  PriorScaler(RemoteAddress) = CurrentScaler(RemoteAddress)
  HourDeltaRef(RemoteAddress) = CurrentScaler(RemoteAddress)
  NewOpen(RemoteAddress) = False
End If
Deltas(RemoteAddress) = CurrentScaler(RemoteAddress) - PriorScaler(RemoteAddress)
If Deltas(RemoteAddress) < 0 Then
  Deltas(RemoteAddress) = Deltas(RemoteAddress) + DelCycle
End If
HourDel(RemoteAddress) = HourDel(RemoteAddress) + Deltas(RemoteAddress)
HourDelNumber(RemoteAddress) = HourDelNumber(RemoteAddress) + 1
PriorScaler(RemoteAddress) = CurrentScaler(RemoteAddress)
'Put the information in its place
lblCts(RemoteAddress).Caption = Format$(CurrentScaler(RemoteAddress))
lblDel(RemoteAddress).Caption = Format$(Deltas(RemoteAddress))
lblHourDel(RemoteAddress).Caption = Format$(HourDel(RemoteAddress))
lblHourDelNumber(RemoteAddress).Caption = Format$(HourDelNumber(RemoteAddress))
CurHist = RemoteAddress + 3 * (LastUnit + 1)
CurValue = Deltas(RemoteAddress)
EnterMonitorHis CurValue, CurHist, 0
lblDeltaVerify(RemoteAddress).Caption = Format$(CurrentScaler(RemoteAddress) - HourDeltaRef(RemoteAddress))
End Sub

Private Static Sub ShowTasPressure(TRAString As String)
Dim TasNumberString As String
Dim TasNumbers(10) As Double
Dim TempFreq As Double
Dim PressFreq As Double
Dim TasPress As Double
Dim TasTemp As Double
Dim nBlank As Integer
Dim iDQ As Integer
Dim iTasNum As Integer
Dim I As Integer
'This is by definition unit 2
iDQ = 2
On Error GoTo BadRead
TasNumberString = Mid$(TRAString, 5)
'Parse the data
iTasNum = 0
While Len(TasNumberString) > 0
nBlank = InStr(TasNumberString, " ")
If nBlank = 0 Then
  TasNumbers(iTasNum) = CDbl(TasNumberString)
  iTasNum = iTasNum + 1
  TasNumberString = ""
ElseIf nBlank = 1 Then
  TasNumberString = Mid$(TasNumberString, 2)
 Else
  TasNumbers(iTasNum) = CDbl(Left$(TasNumberString, nBlank - 1))
  iTasNum = iTasNum + 1
  TasNumberString = Mid$(TasNumberString, nBlank + 1)
 End If
Wend
'Construct the two frequencies
TempFreq = (TasNumbers(5) + TasNumbers(6) * 65536#)
TempFreq = TempFreq / 3600#
PressFreq = (TasNumbers(7) + TasNumbers(8) * 65536#)
PressFreq = PressFreq / 3600#
lblFreqA(iDQ).Caption = Format$(PressFreq, "0.00")
lblFreqB(iDQ).Caption = Format$(TempFreq, "0.00")
Digiquartz PressFreq, TempFreq, DigiPress(iDQ), DigiTemp(iDQ), iDQ
lblDigiP(iDQ).Caption = Format$(DigiPress(iDQ), "0.00")
lblDigiT(iDQ).Caption = Format$(DigiTemp(iDQ), "0.00")
Exit Sub
BadRead:
lblDigiP(iDQ).Caption = "-1"
lblDigiT(iDQ).Caption = "-1"
Exit Sub
End Sub
