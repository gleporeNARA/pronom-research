VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E-0000C0EF6F5E}#1.0#0"; "THREED32.OCX"
Begin VB.Form frmMultiplicity 
   Caption         =   "Multiplicity"
   ClientHeight    =   2892
   ClientLeft      =   48
   ClientTop       =   336
   ClientWidth     =   3276
   Icon            =   "Multiplicity.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   2892
   ScaleWidth      =   3276
   StartUpPosition =   3  'Windows Default
   Begin Threed.SSFrame SSFrame1 
      Height          =   2856
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   3216
      _Version        =   65536
      _ExtentX        =   5673
      _ExtentY        =   5038
      _StockProps     =   14
      Caption         =   "Summary by Tube and Count"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.6
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.Label lblMultiplicitySummary 
         Alignment       =   1  'Right Justify
         BackColor       =   &H8000000E&
         Caption         =   "Number"
         Height          =   192
         Index           =   0
         Left            =   144
         TabIndex        =   1
         Top             =   324
         Width           =   636
      End
   End
End
Attribute VB_Name = "frmMultiplicity"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
Dim nUnit As Integer
Dim nMult As Integer
Dim nControl As Integer
For nUnit = 0 To LastUnit
 For nMult = 0 To maxMultiplicity
  nControl = nUnit * (maxMultiplicity + 1) + nMult
  If nControl > 0 Then
   Load lblMultiplicitySummary(nControl)
   lblMultiplicitySummary(nControl).Top = lblMultiplicitySummary(0).Top + lblMultiplicitySummary(0).Height * nMult * 1.25
   lblMultiplicitySummary(nControl).Left = lblMultiplicitySummary(0).Left + lblMultiplicitySummary(0).Width * nUnit * 1.25
   lblMultiplicitySummary(nControl).Visible = True
  End If
 Next nMult
Next nUnit
End Sub

Public Static Sub Calculate(Interval As Long, DiscFlag As Boolean)
Dim tInterval(LastUnit) As Long
Dim cMulti(LastUnit) As Integer
'At present, consider all events as equivalent
tInterval(RemoteAddress) = tInterval(RemoteAddress) + Interval
If tInterval(RemoteAddress) > MultiWindow Then
  'This is a new multiplicity group
  'Document previous group
  MultiplicitySummary(cMulti(RemoteAddress), RemoteAddress) = MultiplicitySummary(cMulti(RemoteAddress), RemoteAddress) + 1
  'This is by definition time zero of a new group
  tInterval(RemoteAddress) = 0
  'The group type starts at zero
  cMulti(RemoteAddress) = 0
Else
  'This is part of the current group, so count it
  If cMulti(RemoteAddress) < maxMultiplicity Then cMulti(RemoteAddress) = cMulti(RemoteAddress) + 1
End If
End Sub
