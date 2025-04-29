VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "MONITOR FILE COPY"
   ClientHeight    =   2175
   ClientLeft      =   1080
   ClientTop       =   3645
   ClientWidth     =   4140
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
   Icon            =   "LOGCOP1.frx":0000
   LinkTopic       =   "Form1"
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   2175
   ScaleWidth      =   4140
   Begin VB.TextBox txtStatus 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   360
      TabIndex        =   3
      Text            =   "File Copy Status"
      Top             =   1440
      Width           =   3615
   End
   Begin VB.TextBox txtLogCopy 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   360
      TabIndex        =   2
      Text            =   "Log Copy Name"
      Top             =   1080
      Width           =   3615
   End
   Begin VB.TextBox txtLogName 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   360
      TabIndex        =   1
      Text            =   "Log File Name"
      Top             =   720
      Width           =   3615
   End
   Begin VB.CommandButton btnCopyLog 
      Appearance      =   0  'Flat
      Caption         =   "COPY FILE"
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   1455
   End
   Begin MSComDlg.CommonDialog Dlog 
      Left            =   6720
      Top             =   240
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      FontSize        =   0
      MaxFileSize     =   256
   End
   Begin VB.Label Label1 
      Caption         =   "Version 6.00, Seattle, April 5, 2006"
      Height          =   255
      Left            =   360
      TabIndex        =   4
      Top             =   1800
      Width           =   3615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim LogFile As String
Dim LogFileCopy As String
Dim LogDirectory As String

Private Sub btnCopyLog_Click()
btnCopyLog.Refresh
Dlog.DialogTitle = "Select File for Copy"
Dlog.InitDir = LogDirectory
Dlog.Filter = "Log Files (*.LOG)|*.LOG|Histograms (*.HIS)|*.HIS|All Files|*.*"
Dlog.Action = 1
If Dlog.FileName = "" Then
MsgBox "No File Selected"
End If
If Dlog.FileName <> "" Then
LogFile = Dlog.FileName
LogFileCopy = LogFile
While InStr(LogFileCopy, "\") > 0
LogFileCopy = Mid$(LogFileCopy, InStr(LogFileCopy, "\") + 1)
Wend
LogFileCopy = "A:\" + LogFileCopy
txtLogName.Text = LogFile
txtLogName.Refresh
txtLogCopy.Text = LogFileCopy
On Error GoTo ErrorHandler
txtStatus.Text = "Starting Copy"
txtStatus.Refresh
FileCopy LogFile, LogFileCopy
txtStatus.Text = "Successful Copy"
End If
Exit Sub
ErrorHandler:
txtStatus.Text = "Copy Failed"
Exit Sub


End Sub

Private Sub Form_Load()
Dim InputStr As String
Open "C:\VanSys\Personality\TasVan\WhoAmI.gpc" For Input As #1
Line Input #1, InputStr
LogDirectory = Mid$(InputStr, 15)
Close #1
End Sub


