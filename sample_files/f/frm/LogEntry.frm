VERSION 5.00
Begin VB.Form frmLogEntry 
   Caption         =   "LogEntry"
   ClientHeight    =   3870
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8985
   Icon            =   "LogEntry.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3870
   ScaleWidth      =   8985
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnClearBox 
      Caption         =   "CLEAR"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   2760
      TabIndex        =   2
      Top             =   3420
      Width           =   1425
   End
   Begin VB.CommandButton Command1 
      Caption         =   "RECORD"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   300
      TabIndex        =   1
      Top             =   3420
      Width           =   1425
   End
   Begin VB.TextBox txtMessageText 
      Height          =   3015
      Left            =   240
      MaxLength       =   400
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   0
      Text            =   "LogEntry.frx":0442
      Top             =   120
      Width           =   8565
   End
   Begin VB.Label lblNewData 
      BackColor       =   &H00FFFF00&
      Height          =   375
      Left            =   1890
      TabIndex        =   3
      Top             =   3420
      Width           =   735
   End
End
Attribute VB_Name = "frmLogEntry"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnClearBox_Click()
txtMessageText.Text = ""
lblNewData.BackColor = &HFF00&
End Sub

Private Sub Command1_Click()
Print #2, "LOG: " + frmPanel.lblCurTime.Caption + " " + txtMessageText.Text
If RecordLee Then Print #4, "LOG: " + frmPanel.lblCurTime.Caption + " " + txtMessageText.Text
lblNewData.BackColor = &HFF00&
End Sub

Private Sub txtMessageText_Change()
lblNewData.BackColor = &HFF&
End Sub
