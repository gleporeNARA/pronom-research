VERSION 5.00
Begin VB.Form frmShow2 
   Caption         =   "Form2"
   ClientHeight    =   1545
   ClientLeft      =   1740
   ClientTop       =   4425
   ClientWidth     =   4410
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
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   1545
   ScaleWidth      =   4410
   Begin VB.CommandButton Command3 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Set Form1 = Nothing"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2895
      TabIndex        =   2
      Top             =   300
      Width           =   1365
   End
   Begin VB.CommandButton Command2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Unload Form1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1545
      TabIndex        =   1
      Top             =   300
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Show Form1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   135
      TabIndex        =   0
      Top             =   285
      Width           =   1215
   End
   Begin VB.Label lblStatus 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Height          =   420
      Left            =   165
      TabIndex        =   3
      Top             =   990
      Width           =   4080
   End
End
Attribute VB_Name = "frmShow2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_TemplateDerived = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
  frmShow1.Show
End Sub

Private Sub Command2_Click()
  
  Unload frmShow1
  lblStatus.Caption = ""

End Sub

Private Sub Command3_Click()
  Set frmShow1 = Nothing
End Sub

Private Sub Form_Load()
  Me.Left = frmExplore.Width + 600
  Me.Top = (Screen.Height - Me.Height) * 0.9
End Sub


