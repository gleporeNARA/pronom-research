VERSION 5.00
Begin VB.Form frmStartMonitor 
   Caption         =   "Start Land Monitor"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4155
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmStartMonitor.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4155
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   4320
      Top             =   180
   End
   Begin VB.Frame Frame1 
      Height          =   3075
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4155
      Begin VB.CommandButton btnReset 
         Caption         =   "Reset to 15"
         Height          =   435
         Left            =   1230
         TabIndex        =   3
         Top             =   2220
         Width           =   1875
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Countdown"
         BeginProperty Font 
            Name            =   "@Arial Unicode MS"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   540
         Left            =   915
         TabIndex        =   1
         Top             =   210
         Width           =   2235
      End
      Begin VB.Label lblCountDown 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "10"
         BeginProperty Font 
            Name            =   "@Arial Unicode MS"
            Size            =   72
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1845
         Left            =   1230
         TabIndex        =   2
         Top             =   390
         Width           =   1725
      End
   End
End
Attribute VB_Name = "frmStartMonitor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub btnReset_Click()
lblCountDown.Caption = "15"
End Sub

Private Sub Timer1_Timer()
Dim CountNow As Integer
Dim ShellRetCode As Integer
CountNow = Val(lblCountDown.Caption)
CountNow = CountNow - 1
If CountNow < 0 Then
  ShellRetCode = Shell("C:\LandBase\LandMonitor", 1)
  Unload frmStartMonitor
Else
  lblCountDown.Caption = Format$(CountNow)
End If
End Sub
