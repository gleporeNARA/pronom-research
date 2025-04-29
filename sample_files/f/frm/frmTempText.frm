VERSION 5.00
Begin VB.Form frmTempText 
   Caption         =   "Text"
   ClientHeight    =   8670
   ClientLeft      =   11535
   ClientTop       =   1110
   ClientWidth     =   3210
   Icon            =   "frmTempText.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8670
   ScaleWidth      =   3210
   Begin VB.TextBox txtRawData 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   8625
      Left            =   0
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   0
      Text            =   "frmTempText.frx":0442
      Top             =   0
      Width           =   3195
   End
End
Attribute VB_Name = "frmTempText"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
frmTempText.Caption = frmPanel.lblTankID.Caption & " Text"

End Sub
