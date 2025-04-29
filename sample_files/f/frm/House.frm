VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Begin VB.Form frmHouse 
   Caption         =   "HOUSEKEEPING"
   ClientHeight    =   4035
   ClientLeft      =   4560
   ClientTop       =   2775
   ClientWidth     =   6210
   Icon            =   "House.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4035
   ScaleWidth      =   6210
   Begin Threed.SSFrame SSFrame2 
      Height          =   4035
      Left            =   4110
      TabIndex        =   37
      Top             =   0
      Width           =   2115
      _Version        =   65536
      _ExtentX        =   3731
      _ExtentY        =   7117
      _StockProps     =   14
      Caption         =   "Counters"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.Label lblDelta 
         AutoSize        =   -1  'True
         Caption         =   "Delta"
         Height          =   195
         Index           =   9
         Left            =   1200
         TabIndex        =   57
         Top             =   2460
         Width           =   375
      End
      Begin VB.Label lblDelta 
         AutoSize        =   -1  'True
         Caption         =   "Delta"
         Height          =   195
         Index           =   8
         Left            =   1200
         TabIndex        =   56
         Top             =   2220
         Width           =   375
      End
      Begin VB.Label lblDelta 
         AutoSize        =   -1  'True
         Caption         =   "Delta"
         Height          =   195
         Index           =   7
         Left            =   1200
         TabIndex        =   55
         Top             =   1980
         Width           =   375
      End
      Begin VB.Label lblDelta 
         AutoSize        =   -1  'True
         Caption         =   "Delta"
         Height          =   195
         Index           =   6
         Left            =   1200
         TabIndex        =   54
         Top             =   1740
         Width           =   375
      End
      Begin VB.Label lblDelta 
         AutoSize        =   -1  'True
         Caption         =   "Delta"
         Height          =   195
         Index           =   5
         Left            =   1200
         TabIndex        =   53
         Top             =   1500
         Width           =   375
      End
      Begin VB.Label lblDelta 
         AutoSize        =   -1  'True
         Caption         =   "Delta"
         Height          =   195
         Index           =   4
         Left            =   1200
         TabIndex        =   52
         Top             =   1260
         Width           =   375
      End
      Begin VB.Label lblDelta 
         AutoSize        =   -1  'True
         Caption         =   "Delta"
         Height          =   195
         Index           =   3
         Left            =   1200
         TabIndex        =   51
         Top             =   1020
         Width           =   375
      End
      Begin VB.Label lblDelta 
         AutoSize        =   -1  'True
         Caption         =   "Delta"
         Height          =   195
         Index           =   2
         Left            =   1200
         TabIndex        =   50
         Top             =   780
         Width           =   375
      End
      Begin VB.Label lblDelta 
         AutoSize        =   -1  'True
         Caption         =   "Delta"
         Height          =   195
         Index           =   1
         Left            =   1200
         TabIndex        =   49
         Top             =   540
         Width           =   375
      End
      Begin VB.Label lblDelta 
         AutoSize        =   -1  'True
         Caption         =   "Delta"
         Height          =   195
         Index           =   0
         Left            =   1200
         TabIndex        =   48
         Top             =   300
         Width           =   375
      End
      Begin VB.Label lblCounter 
         AutoSize        =   -1  'True
         Caption         =   "Counter"
         Height          =   195
         Index           =   9
         Left            =   120
         TabIndex        =   47
         Top             =   2460
         Width           =   555
      End
      Begin VB.Label lblCounter 
         AutoSize        =   -1  'True
         Caption         =   "Counter"
         Height          =   195
         Index           =   8
         Left            =   120
         TabIndex        =   46
         Top             =   2220
         Width           =   555
      End
      Begin VB.Label lblCounter 
         AutoSize        =   -1  'True
         Caption         =   "Counter"
         Height          =   195
         Index           =   7
         Left            =   120
         TabIndex        =   45
         Top             =   1980
         Width           =   555
      End
      Begin VB.Label lblCounter 
         AutoSize        =   -1  'True
         Caption         =   "Counter"
         Height          =   195
         Index           =   6
         Left            =   120
         TabIndex        =   44
         Top             =   1740
         Width           =   555
      End
      Begin VB.Label lblCounter 
         AutoSize        =   -1  'True
         Caption         =   "Counter"
         Height          =   195
         Index           =   5
         Left            =   120
         TabIndex        =   43
         Top             =   1500
         Width           =   555
      End
      Begin VB.Label lblCounter 
         AutoSize        =   -1  'True
         Caption         =   "Counter"
         Height          =   195
         Index           =   4
         Left            =   120
         TabIndex        =   42
         Top             =   1260
         Width           =   555
      End
      Begin VB.Label lblCounter 
         AutoSize        =   -1  'True
         Caption         =   "Counter"
         Height          =   195
         Index           =   3
         Left            =   120
         TabIndex        =   41
         Top             =   1020
         Width           =   555
      End
      Begin VB.Label lblCounter 
         AutoSize        =   -1  'True
         Caption         =   "Counter"
         Height          =   195
         Index           =   2
         Left            =   120
         TabIndex        =   40
         Top             =   780
         Width           =   555
      End
      Begin VB.Label lblCounter 
         AutoSize        =   -1  'True
         Caption         =   "Counter"
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   39
         Top             =   540
         Width           =   555
      End
      Begin VB.Label lblCounter 
         AutoSize        =   -1  'True
         Caption         =   "Counter"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   38
         Top             =   300
         Width           =   555
      End
   End
   Begin Threed.SSFrame SSFrame1 
      Height          =   4035
      Left            =   60
      TabIndex        =   0
      Top             =   0
      Width           =   4035
      _Version        =   65536
      _ExtentX        =   7117
      _ExtentY        =   7117
      _StockProps     =   14
      Caption         =   "Remote Unit Status Reports"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.CommandButton cmdFirmware 
         Caption         =   "302"
         Height          =   195
         Index           =   3
         Left            =   3120
         TabIndex        =   70
         Top             =   360
         Width           =   675
      End
      Begin VB.CommandButton cmdFirmware 
         Caption         =   "302"
         Height          =   195
         Index           =   0
         Left            =   840
         TabIndex        =   4
         Top             =   360
         Width           =   675
      End
      Begin VB.CommandButton cmdFirmware 
         Caption         =   "302"
         Height          =   195
         Index           =   1
         Left            =   1620
         TabIndex        =   3
         Top             =   360
         Width           =   675
      End
      Begin VB.CommandButton cmdFirmware 
         Caption         =   "302"
         Height          =   195
         Index           =   2
         Left            =   2340
         TabIndex        =   2
         Top             =   360
         Width           =   675
      End
      Begin VB.Label lblRemStatus1 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Status1"
         Height          =   195
         Index           =   3
         Left            =   3120
         TabIndex        =   81
         Top             =   660
         Width           =   615
      End
      Begin VB.Label lblRemStatus2 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Status2"
         Height          =   195
         Index           =   3
         Left            =   3120
         TabIndex        =   80
         Top             =   900
         Width           =   615
      End
      Begin VB.Label lblHiVolt 
         BackColor       =   &H00FFFFFF&
         Caption         =   "HiVolt"
         Height          =   195
         Index           =   3
         Left            =   3120
         TabIndex        =   79
         Top             =   1140
         Width           =   615
      End
      Begin VB.Label lblMinus12 
         BackColor       =   &H00FFFFFF&
         Caption         =   "-12"
         Height          =   195
         Index           =   3
         Left            =   3120
         TabIndex        =   78
         Top             =   1380
         Width           =   615
      End
      Begin VB.Label lblPlus12 
         BackColor       =   &H00FFFFFF&
         Caption         =   "+12"
         Height          =   195
         Index           =   3
         Left            =   3120
         TabIndex        =   77
         Top             =   1620
         Width           =   615
      End
      Begin VB.Label lblPlus5 
         BackColor       =   &H00FFFFFF&
         Caption         =   "+5"
         Height          =   195
         Index           =   3
         Left            =   3120
         TabIndex        =   76
         Top             =   1860
         Width           =   615
      End
      Begin VB.Label lblHODB 
         BackColor       =   &H00FFFFFF&
         Caption         =   "HODB"
         Height          =   195
         Index           =   3
         Left            =   3120
         TabIndex        =   75
         Top             =   2100
         Width           =   615
      End
      Begin VB.Label lblLODB 
         BackColor       =   &H00FFFFFF&
         Caption         =   "LODB"
         Height          =   195
         Index           =   3
         Left            =   3120
         TabIndex        =   74
         Top             =   2340
         Width           =   615
      End
      Begin VB.Label lblVersion 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Ver"
         Height          =   195
         Index           =   3
         Left            =   3120
         TabIndex        =   73
         Top             =   2580
         Width           =   615
      End
      Begin VB.Label lblRevision 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Rev"
         Height          =   195
         Index           =   3
         Left            =   3120
         TabIndex        =   72
         Top             =   2820
         Width           =   615
      End
      Begin VB.Label lblResetType 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Type"
         Height          =   195
         Index           =   3
         Left            =   3120
         TabIndex        =   71
         Top             =   3060
         Width           =   615
      End
      Begin VB.Label Label12 
         Caption         =   "Reset"
         Height          =   195
         Left            =   120
         TabIndex        =   69
         Top             =   3060
         Width           =   615
      End
      Begin VB.Label lblResetType 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Type"
         Height          =   195
         Index           =   0
         Left            =   900
         TabIndex        =   68
         Top             =   3060
         Width           =   615
      End
      Begin VB.Label lblResetType 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Type"
         Height          =   195
         Index           =   1
         Left            =   1620
         TabIndex        =   67
         Top             =   3060
         Width           =   615
      End
      Begin VB.Label lblResetType 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Type"
         Height          =   195
         Index           =   2
         Left            =   2340
         TabIndex        =   66
         Top             =   3060
         Width           =   615
      End
      Begin VB.Label Label11 
         Caption         =   "Revison"
         Height          =   195
         Left            =   120
         TabIndex        =   65
         Top             =   2820
         Width           =   615
      End
      Begin VB.Label lblRevision 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Rev"
         Height          =   195
         Index           =   0
         Left            =   900
         TabIndex        =   64
         Top             =   2820
         Width           =   615
      End
      Begin VB.Label lblRevision 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Rev"
         Height          =   195
         Index           =   1
         Left            =   1620
         TabIndex        =   63
         Top             =   2820
         Width           =   615
      End
      Begin VB.Label lblRevision 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Rev"
         Height          =   195
         Index           =   2
         Left            =   2340
         TabIndex        =   62
         Top             =   2820
         Width           =   615
      End
      Begin VB.Label Label10 
         Caption         =   "Version"
         Height          =   195
         Left            =   120
         TabIndex        =   61
         Top             =   2580
         Width           =   615
      End
      Begin VB.Label lblVersion 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Ver"
         Height          =   195
         Index           =   0
         Left            =   900
         TabIndex        =   60
         Top             =   2580
         Width           =   615
      End
      Begin VB.Label lblVersion 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Ver"
         Height          =   195
         Index           =   1
         Left            =   1620
         TabIndex        =   59
         Top             =   2580
         Width           =   615
      End
      Begin VB.Label lblVersion 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Ver"
         Height          =   195
         Index           =   2
         Left            =   2340
         TabIndex        =   58
         Top             =   2580
         Width           =   615
      End
      Begin VB.Label lblLODB 
         BackColor       =   &H00FFFFFF&
         Caption         =   "LODB"
         Height          =   195
         Index           =   2
         Left            =   2340
         TabIndex        =   36
         Top             =   2340
         Width           =   615
      End
      Begin VB.Label lblLODB 
         BackColor       =   &H00FFFFFF&
         Caption         =   "LODB"
         Height          =   195
         Index           =   1
         Left            =   1620
         TabIndex        =   35
         Top             =   2340
         Width           =   615
      End
      Begin VB.Label lblLODB 
         BackColor       =   &H00FFFFFF&
         Caption         =   "LODB"
         Height          =   195
         Index           =   0
         Left            =   900
         TabIndex        =   34
         Top             =   2340
         Width           =   615
      End
      Begin VB.Label Label9 
         Caption         =   "Lo Seq"
         Height          =   195
         Left            =   120
         TabIndex        =   33
         Top             =   2340
         Width           =   615
      End
      Begin VB.Label lblHODB 
         BackColor       =   &H00FFFFFF&
         Caption         =   "HODB"
         Height          =   195
         Index           =   2
         Left            =   2340
         TabIndex        =   32
         Top             =   2100
         Width           =   615
      End
      Begin VB.Label lblHODB 
         BackColor       =   &H00FFFFFF&
         Caption         =   "HODB"
         Height          =   195
         Index           =   1
         Left            =   1620
         TabIndex        =   31
         Top             =   2100
         Width           =   615
      End
      Begin VB.Label lblHODB 
         BackColor       =   &H00FFFFFF&
         Caption         =   "HODB"
         Height          =   195
         Index           =   0
         Left            =   900
         TabIndex        =   30
         Top             =   2100
         Width           =   615
      End
      Begin VB.Label Label8 
         Caption         =   "Hi Seq"
         Height          =   195
         Left            =   120
         TabIndex        =   29
         Top             =   2100
         Width           =   615
      End
      Begin VB.Label lblPlus5 
         BackColor       =   &H00FFFFFF&
         Caption         =   "+5"
         Height          =   195
         Index           =   2
         Left            =   2340
         TabIndex        =   28
         Top             =   1860
         Width           =   615
      End
      Begin VB.Label lblPlus5 
         BackColor       =   &H00FFFFFF&
         Caption         =   "+5"
         Height          =   195
         Index           =   1
         Left            =   1620
         TabIndex        =   27
         Top             =   1860
         Width           =   615
      End
      Begin VB.Label lblPlus5 
         BackColor       =   &H00FFFFFF&
         Caption         =   "+5"
         Height          =   195
         Index           =   0
         Left            =   900
         TabIndex        =   26
         Top             =   1860
         Width           =   615
      End
      Begin VB.Label Label7 
         Caption         =   "+5 Volt"
         Height          =   195
         Left            =   120
         TabIndex        =   25
         Top             =   1860
         Width           =   615
      End
      Begin VB.Label lblPlus12 
         BackColor       =   &H00FFFFFF&
         Caption         =   "+12"
         Height          =   195
         Index           =   2
         Left            =   2340
         TabIndex        =   24
         Top             =   1620
         Width           =   615
      End
      Begin VB.Label lblPlus12 
         BackColor       =   &H00FFFFFF&
         Caption         =   "+12"
         Height          =   195
         Index           =   1
         Left            =   1620
         TabIndex        =   23
         Top             =   1620
         Width           =   615
      End
      Begin VB.Label lblPlus12 
         BackColor       =   &H00FFFFFF&
         Caption         =   "+12"
         Height          =   195
         Index           =   0
         Left            =   900
         TabIndex        =   22
         Top             =   1620
         Width           =   615
      End
      Begin VB.Label Label6 
         Caption         =   "+12 Volt"
         Height          =   195
         Left            =   120
         TabIndex        =   21
         Top             =   1620
         Width           =   615
      End
      Begin VB.Label lblMinus12 
         BackColor       =   &H00FFFFFF&
         Caption         =   "-12"
         Height          =   195
         Index           =   2
         Left            =   2340
         TabIndex        =   20
         Top             =   1380
         Width           =   615
      End
      Begin VB.Label lblMinus12 
         BackColor       =   &H00FFFFFF&
         Caption         =   "-12"
         Height          =   195
         Index           =   1
         Left            =   1620
         TabIndex        =   19
         Top             =   1380
         Width           =   615
      End
      Begin VB.Label lblMinus12 
         BackColor       =   &H00FFFFFF&
         Caption         =   "-12"
         Height          =   195
         Index           =   0
         Left            =   900
         TabIndex        =   18
         Top             =   1380
         Width           =   615
      End
      Begin VB.Label Label5 
         Caption         =   "-12 Volt"
         Height          =   195
         Left            =   120
         TabIndex        =   17
         Top             =   1380
         Width           =   615
      End
      Begin VB.Label lblHiVolt 
         BackColor       =   &H00FFFFFF&
         Caption         =   "HiVolt"
         Height          =   195
         Index           =   2
         Left            =   2340
         TabIndex        =   16
         Top             =   1140
         Width           =   615
      End
      Begin VB.Label lblHiVolt 
         BackColor       =   &H00FFFFFF&
         Caption         =   "HiVolt"
         Height          =   195
         Index           =   1
         Left            =   1620
         TabIndex        =   15
         Top             =   1140
         Width           =   615
      End
      Begin VB.Label lblHiVolt 
         BackColor       =   &H00FFFFFF&
         Caption         =   "HiVolt"
         Height          =   195
         Index           =   0
         Left            =   900
         TabIndex        =   14
         Top             =   1140
         Width           =   615
      End
      Begin VB.Label Label4 
         Caption         =   "HiVolt"
         Height          =   195
         Left            =   120
         TabIndex        =   13
         Top             =   1140
         Width           =   615
      End
      Begin VB.Label lblRemStatus2 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Status2"
         Height          =   195
         Index           =   2
         Left            =   2340
         TabIndex        =   12
         Top             =   900
         Width           =   615
      End
      Begin VB.Label lblRemStatus2 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Status2"
         Height          =   195
         Index           =   1
         Left            =   1620
         TabIndex        =   11
         Top             =   900
         Width           =   615
      End
      Begin VB.Label lblRemStatus2 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Status2"
         Height          =   195
         Index           =   0
         Left            =   900
         TabIndex        =   10
         Top             =   900
         Width           =   615
      End
      Begin VB.Label Label3 
         Caption         =   "Status 2"
         Height          =   195
         Left            =   120
         TabIndex        =   9
         Top             =   900
         Width           =   615
      End
      Begin VB.Label lblRemStatus1 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Status1"
         Height          =   195
         Index           =   2
         Left            =   2340
         TabIndex        =   8
         Top             =   660
         Width           =   615
      End
      Begin VB.Label lblRemStatus1 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Status1"
         Height          =   195
         Index           =   1
         Left            =   1620
         TabIndex        =   7
         Top             =   660
         Width           =   615
      End
      Begin VB.Label lblRemStatus1 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Status1"
         Height          =   195
         Index           =   0
         Left            =   900
         TabIndex        =   6
         Top             =   660
         Width           =   615
      End
      Begin VB.Label Label2 
         Caption         =   "Status 1"
         Height          =   195
         Left            =   120
         TabIndex        =   5
         Top             =   660
         Width           =   615
      End
      Begin VB.Label Label1 
         Caption         =   "Firmware"
         Height          =   195
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   735
      End
   End
End
Attribute VB_Name = "frmHouse"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdFirmware_Click(Index As Integer)
Select Case cmdFirmware(Index).Caption
Case "300"
  cmdFirmware(Index).Caption = "600"
  FirmVersion(Index) = 600
Case Else
  cmdFirmware(Index).Caption = "300"
  FirmVersion(Index) = 300
End Select
lblRemStatus1(Index).Caption = cmdFirmware(Index).Caption
End Sub

