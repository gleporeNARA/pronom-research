VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form Primary 
   Caption         =   "Startup Form"
   ClientHeight    =   3975
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5295
   LinkTopic       =   "Form1"
   ScaleHeight     =   3975
   ScaleWidth      =   5295
   StartUpPosition =   3  'Windows Default
   Begin MSCommLib.MSComm MSComm1 
      Left            =   3660
      Top             =   690
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin VB.Label lblOutput 
      Caption         =   "Output Will Go here"
      Height          =   255
      Left            =   810
      TabIndex        =   1
      Top             =   2760
      Width           =   3885
   End
   Begin VB.Label lblClicker 
      BackColor       =   &H0000FF00&
      Height          =   1365
      Left            =   1140
      TabIndex        =   0
      Top             =   570
      Width           =   1485
   End
End
Attribute VB_Name = "Primary"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
ColorGreen = &HFF00&
ColorRed = &HFF&
End Sub

Private Sub Label1_Click()

End Sub

Private Sub lblClicker_Click()
If lblClicker.BackColor = ColorRed Then
   lblClicker.BackColor = ColorGreen
   MSComm1.RThreshold = 0
   MSComm1.InBufferCount = 0
   MSComm1.PortOpen = False
Else
   lblClicker.BackColor = ColorRed
   MSComm1.CommPort = 1
   MSComm1.Settings = "38400,n,8,1"
   MSComm1.PortOpen = True
   MSComm1.InBufferCount = 0
   MSComm1.RThreshold = 1
   MSComm1.PortOpen = False
End If
   lblOutput.Caption = "BackColor is now " & Hex$(lblClicker.BackColor)
End Sub

Private Sub MSComm1_OnComm()
Dim InData As String
Dim iFor As Integer
Select Case comRack.CommEvent
  '--- Event messages
Case MSCOMM_EV_RECEIVE
  'Read the port
    InData = MSComm1.Input
    For iFor = 1 To Len(InData)
      lblOutput.Caption = lblOutput.Caption & Hex$(Asc(Mid$(InData, iFor, 1)))
      If Len(lblOutput.Caption) > 80 Then
       lblOutput.Caption = Right$(lblOutput.Caption, 80)
      End If
    Next iFor
Case Else
     lblOutput.Caption = "Unknown error or event"
End Select
End Sub


