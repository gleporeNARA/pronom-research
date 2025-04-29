VERSION 5.00
Begin VB.Form GroupLog 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "FILE CONCATENATE"
   ClientHeight    =   5055
   ClientLeft      =   1035
   ClientTop       =   1095
   ClientWidth     =   5595
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
   Icon            =   "GroupLog.frx":0000
   LinkTopic       =   "Form1"
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   5055
   ScaleWidth      =   5595
   Begin VB.FileListBox File1 
      Height          =   2430
      Left            =   2400
      Pattern         =   "*.LOG"
      TabIndex        =   4
      Top             =   240
      Width           =   1815
   End
   Begin VB.DirListBox Dir1 
      Height          =   2115
      Left            =   360
      TabIndex        =   3
      Top             =   1080
      Width           =   1845
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   360
      TabIndex        =   2
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
   Begin VB.PictureBox Dlog 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   480
      Left            =   6720
      ScaleHeight     =   450
      ScaleWidth      =   1170
      TabIndex        =   1
      Top             =   240
      Width           =   1200
   End
   Begin VB.Label lblVersion 
      Caption         =   "Winchester November 23, 2006"
      Height          =   255
      Left            =   150
      TabIndex        =   7
      Top             =   4230
      Width           =   5415
   End
   Begin VB.Label lblCurrentRec 
      Caption         =   "Label1"
      Height          =   255
      Left            =   150
      TabIndex        =   6
      Top             =   3840
      Width           =   5295
   End
   Begin VB.Label lblSelFile 
      Caption         =   "Label1"
      Height          =   255
      Left            =   180
      TabIndex        =   5
      Top             =   3450
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
Open File1.Path + "\GroupLog.MSG" For Output As #2
For nFile = 0 To File1.ListCount - 1
 File1.ListIndex = nFile
 lblSelFile = File1.Path + "\" + File1.FileName
 Open lblSelFile.Caption For Input As #1
 Print #2, "filename=""" + File1.FileName + """"
 Do While Not EOF(1)
  Line Input #1, DataRec
  Print #2, DataRec
  lblCurrentRec.Caption = DataRec
  iDummy = DoEvents
 Loop
 Close #1
Next nFile
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
Dir1.Path = "C:\LATSURVEY\EditedData\06Edit07\Logs"
OutOpen = False
End Sub
