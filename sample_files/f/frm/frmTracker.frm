VERSION 5.00
Begin VB.Form frmTracker 
   Caption         =   "Tracker Monitor and Control"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9330
   Icon            =   "frmTracker.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   9330
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Messages"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3135
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9255
      Begin VB.Label lblEventMessage 
         AutoSize        =   -1  'True
         Caption         =   "Event"
         Height          =   195
         Left            =   960
         TabIndex        =   12
         Top             =   1680
         Width           =   420
      End
      Begin VB.Label lblnCode 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   705
         TabIndex        =   11
         Top             =   1680
         Width           =   90
      End
      Begin VB.Label lblnCode 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   705
         TabIndex        =   10
         Top             =   1440
         Width           =   90
      End
      Begin VB.Label lblnCode 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   705
         TabIndex        =   9
         Top             =   1200
         Width           =   90
      End
      Begin VB.Label lblCode 
         AutoSize        =   -1  'True
         Caption         =   "Code"
         Height          =   195
         Index           =   2
         Left            =   840
         TabIndex        =   8
         Top             =   840
         Width           =   375
      End
      Begin VB.Label lblCodeTag 
         AutoSize        =   -1  'True
         Caption         =   "Type:"
         Height          =   195
         Index           =   2
         Left            =   240
         TabIndex        =   7
         Top             =   840
         Width           =   405
      End
      Begin VB.Label lblCode 
         AutoSize        =   -1  'True
         Caption         =   "Code"
         Height          =   195
         Index           =   1
         Left            =   840
         TabIndex        =   6
         Top             =   600
         Width           =   375
      End
      Begin VB.Label lblCodeTag 
         AutoSize        =   -1  'True
         Caption         =   "Length:"
         Height          =   195
         Index           =   1
         Left            =   240
         TabIndex        =   5
         Top             =   600
         Width           =   540
      End
      Begin VB.Label lblCode 
         AutoSize        =   -1  'True
         Caption         =   "Code"
         Height          =   195
         Index           =   0
         Left            =   840
         TabIndex        =   4
         Top             =   360
         Width           =   375
      End
      Begin VB.Label lblCodeTag 
         AutoSize        =   -1  'True
         Caption         =   "Code:"
         Height          =   195
         Index           =   0
         Left            =   240
         TabIndex        =   3
         Top             =   360
         Width           =   420
      End
      Begin VB.Label lblTrackerASCII 
         Caption         =   "ASCII"
         Height          =   255
         Left            =   960
         TabIndex        =   2
         Top             =   1440
         Width           =   1575
      End
      Begin VB.Label lblTrackMessages 
         AutoSize        =   -1  'True
         Caption         =   "Command"
         Height          =   195
         Left            =   960
         TabIndex        =   1
         Top             =   1200
         Width           =   705
      End
   End
End
Attribute VB_Name = "frmTracker"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
