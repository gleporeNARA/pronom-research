VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "PlotView"
   ClientHeight    =   9990
   ClientLeft      =   1725
   ClientTop       =   1200
   ClientWidth     =   13440
   FillColor       =   &H00C0C0C0&
   ForeColor       =   &H0080FF80&
   Icon            =   "GetData.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   9990
   ScaleWidth      =   13440
   Begin VB.TextBox Text25 
      BackColor       =   &H000080FF&
      Height          =   285
      Left            =   6720
      TabIndex        =   68
      Top             =   9360
      Width           =   255
   End
   Begin VB.TextBox Text24 
      Height          =   375
      Left            =   10560
      TabIndex        =   60
      Top             =   4320
      Width           =   1455
   End
   Begin VB.TextBox Text23 
      Height          =   375
      Left            =   9960
      TabIndex        =   59
      Top             =   4320
      Width           =   615
   End
   Begin VB.TextBox Text22 
      Height          =   375
      Left            =   9360
      TabIndex        =   58
      Top             =   4320
      Width           =   615
   End
   Begin VB.PictureBox Picture3 
      Height          =   6255
      Left            =   240
      ScaleHeight     =   413
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   581
      TabIndex        =   56
      Top             =   0
      Visible         =   0   'False
      Width           =   8775
   End
   Begin VB.PictureBox Open2 
      AutoRedraw      =   -1  'True
      Height          =   6255
      Left            =   360
      ScaleHeight     =   413
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   581
      TabIndex        =   55
      Top             =   0
      Width           =   8775
   End
   Begin VB.TextBox Text21 
      Height          =   375
      Left            =   10560
      TabIndex        =   54
      Top             =   3720
      Width           =   1455
   End
   Begin VB.PictureBox Picture2 
      Height          =   1095
      Left            =   12480
      ScaleHeight     =   1035
      ScaleWidth      =   555
      TabIndex        =   53
      Top             =   8040
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      Height          =   2250
      Left            =   9480
      ScaleHeight     =   146
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   146
      TabIndex        =   52
      Top             =   600
      Width           =   2250
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "&Clear"
      Enabled         =   0   'False
      Height          =   495
      Left            =   12360
      TabIndex        =   48
      Top             =   6720
      Width           =   855
   End
   Begin VB.CommandButton cmdRemove 
      Caption         =   "&Remove"
      Enabled         =   0   'False
      Height          =   495
      Left            =   12360
      TabIndex        =   47
      Top             =   6240
      Width           =   855
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "&Include"
      Enabled         =   0   'False
      Height          =   495
      Left            =   12360
      TabIndex        =   46
      Top             =   5760
      Width           =   855
   End
   Begin VB.TextBox txtPoint 
      Height          =   495
      Left            =   9360
      TabIndex        =   44
      Top             =   5640
      Width           =   2655
   End
   Begin VB.ListBox lstPoint 
      Height          =   2400
      Left            =   9360
      TabIndex        =   41
      Top             =   6360
      Width           =   2655
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Check2"
      Height          =   255
      Left            =   3240
      TabIndex        =   39
      Top             =   9120
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Check1"
      Height          =   255
      Left            =   2040
      TabIndex        =   38
      Top             =   9120
      Width           =   255
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Load Data"
      Height          =   615
      Left            =   6840
      TabIndex        =   27
      Top             =   7320
      Width           =   975
   End
   Begin VB.OptionButton Option4 
      Caption         =   "Option4"
      Height          =   195
      Left            =   5640
      TabIndex        =   26
      Top             =   8520
      Width           =   255
   End
   Begin VB.TextBox Text20 
      Height          =   375
      Left            =   4800
      TabIndex        =   25
      Top             =   8520
      Width           =   735
   End
   Begin VB.TextBox Text19 
      Height          =   375
      Left            =   3840
      TabIndex        =   24
      Top             =   8520
      Width           =   735
   End
   Begin VB.TextBox Text18 
      Height          =   375
      Left            =   2520
      TabIndex        =   23
      Top             =   8520
      Width           =   1095
   End
   Begin VB.TextBox Text17 
      Height          =   375
      Left            =   1200
      TabIndex        =   22
      Top             =   8520
      Width           =   1095
   End
   Begin VB.OptionButton Option3 
      Caption         =   "Option3"
      Height          =   255
      Left            =   5640
      TabIndex        =   21
      Top             =   7920
      Width           =   255
   End
   Begin VB.TextBox Text16 
      Height          =   375
      Left            =   4800
      TabIndex        =   20
      Top             =   7920
      Width           =   735
   End
   Begin VB.TextBox Text15 
      Height          =   375
      Left            =   3840
      TabIndex        =   19
      Top             =   7920
      Width           =   735
   End
   Begin VB.TextBox Text14 
      Height          =   375
      Left            =   2520
      TabIndex        =   18
      Top             =   7920
      Width           =   1095
   End
   Begin VB.TextBox Text13 
      Height          =   375
      Left            =   1200
      TabIndex        =   17
      Top             =   7920
      Width           =   1095
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Option2"
      Height          =   255
      Left            =   5640
      TabIndex        =   16
      Top             =   7320
      Width           =   255
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Option1"
      Height          =   255
      Left            =   5640
      TabIndex        =   15
      Top             =   6720
      Width           =   255
   End
   Begin VB.TextBox Text12 
      Height          =   375
      Left            =   4800
      TabIndex        =   14
      Top             =   7320
      Width           =   735
   End
   Begin VB.TextBox Text11 
      Height          =   375
      Left            =   3840
      TabIndex        =   13
      Text            =   " "
      Top             =   7320
      Width           =   735
   End
   Begin VB.TextBox Text10 
      Height          =   375
      Left            =   2520
      TabIndex        =   12
      Top             =   7320
      Width           =   1095
   End
   Begin VB.TextBox Text9 
      Height          =   375
      Left            =   1200
      TabIndex        =   11
      Top             =   7320
      Width           =   1095
   End
   Begin VB.TextBox Text8 
      Height          =   375
      Left            =   4800
      TabIndex        =   10
      Text            =   " "
      Top             =   6720
      Width           =   735
   End
   Begin VB.TextBox Text7 
      Height          =   375
      Left            =   3840
      TabIndex        =   9
      Top             =   6720
      Width           =   735
   End
   Begin VB.TextBox Text6 
      Height          =   375
      Left            =   2520
      TabIndex        =   8
      Top             =   6720
      Width           =   1095
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Left            =   1200
      TabIndex        =   7
      Text            =   "  "
      Top             =   6720
      Width           =   1095
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   5040
      TabIndex        =   4
      Top             =   9480
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.TextBox Text3 
      Height          =   405
      Left            =   3840
      TabIndex        =   3
      Top             =   9480
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   9960
      TabIndex        =   2
      Top             =   3720
      Width           =   615
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   9360
      TabIndex        =   1
      Top             =   3720
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "E&xit"
      Height          =   372
      Left            =   12480
      TabIndex        =   0
      Top             =   9360
      Width           =   732
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   9120
      Top             =   9360
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label19 
      Caption         =   "Click Location"
      Height          =   255
      Left            =   12240
      TabIndex        =   67
      Top             =   4320
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "Mouse Tracker"
      Height          =   255
      Left            =   12240
      TabIndex        =   66
      Top             =   3720
      Width           =   1215
   End
   Begin VB.Label Label26 
      Caption         =   "Corner "
      Height          =   255
      Left            =   240
      TabIndex        =   65
      Top             =   6480
      Width           =   615
   End
   Begin VB.Label Label25 
      Caption         =   "Magnifying Glass"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   9840
      TabIndex        =   64
      Top             =   120
      Width           =   1575
   End
   Begin VB.Shape Shape2 
      BorderWidth     =   3
      Height          =   4215
      Left            =   9240
      Top             =   5040
      Width           =   4095
   End
   Begin VB.Label Label24 
      Caption         =   "Please report any  problems John Clem"
      Height          =   495
      Left            =   9840
      TabIndex        =   63
      Top             =   9360
      Width           =   2055
   End
   Begin VB.Label Label23 
      Caption         =   "Verify Your Results !!"
      Height          =   255
      Left            =   10080
      TabIndex        =   62
      Top             =   8880
      Width           =   1575
   End
   Begin VB.Label Label22 
      Caption         =   "Transformation is Valid outside 4 corners"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   615
      Left            =   6000
      TabIndex        =   61
      Top             =   8160
      Width           =   2415
   End
   Begin VB.Label Label21 
      Caption         =   "Color Code"
      Height          =   255
      Left            =   10800
      TabIndex        =   57
      Top             =   3360
      Width           =   855
   End
   Begin VB.Label Label20 
      Caption         =   "Transformation Enabled Indicator"
      Height          =   375
      Left            =   7080
      TabIndex        =   51
      Top             =   9240
      Width           =   1335
   End
   Begin VB.Label Label18 
      Caption         =   "Point to Include"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   9840
      TabIndex        =   50
      Top             =   5280
      Width           =   1575
   End
   Begin VB.Label Label17 
      Caption         =   "# Points"
      Height          =   255
      Left            =   12480
      TabIndex        =   49
      Top             =   7800
      Width           =   615
   End
   Begin VB.Label lblDisplay 
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Left            =   12360
      TabIndex        =   45
      Top             =   7320
      Width           =   855
   End
   Begin VB.Label Label16 
      Caption         =   "Select Corner and Click On Image"
      Height          =   495
      Left            =   4320
      TabIndex        =   43
      Top             =   9000
      Width           =   1455
   End
   Begin VB.Label Label15 
      Caption         =   "Key In  Corner Coordinate Values into Text Boxes"
      Height          =   375
      Left            =   1440
      TabIndex        =   42
      Top             =   9480
      Width           =   1935
   End
   Begin VB.Label Label14 
      Caption         =   "Corner Data Transfer"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6720
      TabIndex        =   40
      Top             =   6600
      Width           =   1095
   End
   Begin VB.Shape Shape1 
      BorderWidth     =   3
      Height          =   3615
      Left            =   0
      Top             =   6360
      Width           =   8535
   End
   Begin VB.Label Label13 
      Caption         =   "Pix  Y Addr"
      Height          =   255
      Left            =   4800
      TabIndex        =   37
      Top             =   6480
      Width           =   855
   End
   Begin VB.Label Label12 
      Caption         =   "Pix  X Addr"
      Height          =   255
      Left            =   3840
      TabIndex        =   36
      Top             =   6480
      Width           =   855
   End
   Begin VB.Label Label11 
      Caption         =   "Coord  Y"
      Height          =   255
      Left            =   2640
      TabIndex        =   35
      Top             =   6480
      Width           =   855
   End
   Begin VB.Label Label10 
      Caption         =   "Coord  X"
      Height          =   255
      Left            =   1320
      TabIndex        =   34
      Top             =   6480
      Width           =   855
   End
   Begin VB.Label Label9 
      Caption         =   "Lower-Right"
      Height          =   255
      Left            =   120
      TabIndex        =   33
      Top             =   8520
      Width           =   855
   End
   Begin VB.Label Label8 
      Caption         =   "Lower-Left"
      Height          =   255
      Left            =   120
      TabIndex        =   32
      Top             =   7920
      Width           =   855
   End
   Begin VB.Label Label7 
      Caption         =   "Upper-Right"
      Height          =   255
      Left            =   120
      TabIndex        =   31
      Top             =   7320
      Width           =   855
   End
   Begin VB.Label Label6 
      Caption         =   "Upper-Left"
      Height          =   255
      Left            =   120
      TabIndex        =   30
      Top             =   6840
      Width           =   975
   End
   Begin VB.Label Label5 
      Caption         =   "LOG Y"
      Height          =   255
      Left            =   2640
      TabIndex        =   29
      Top             =   9120
      Width           =   495
   End
   Begin VB.Label Label4 
      Caption         =   "LOG X"
      Height          =   255
      Left            =   1440
      TabIndex        =   28
      Top             =   9120
      Width           =   495
   End
   Begin VB.Label Label3 
      Caption         =   "Pix Y"
      Height          =   255
      Left            =   10080
      TabIndex        =   6
      Top             =   3360
      Width           =   495
   End
   Begin VB.Label Label2 
      Caption         =   " Pix X"
      Height          =   255
      Left            =   9360
      TabIndex        =   5
      Top             =   3360
      Width           =   495
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&Get Image"
      Begin VB.Menu Openfile 
         Caption         =   "&Open Image File "
      End
      Begin VB.Menu mnupaste 
         Caption         =   "&Paste Image from Clipboard"
      End
   End
   Begin VB.Menu mnuView 
      Caption         =   "&Save Data"
      Begin VB.Menu Savedata 
         Caption         =   "&Save Data to text file"
      End
      Begin VB.Menu SvEx 
         Caption         =   "&Save Data to Excel Sheet"
      End
   End
   Begin VB.Menu mnuMag 
      Caption         =   "&Magnifying Glass"
      Begin VB.Menu mnuZoom 
         Caption         =   "&Zoom Setting"
         Begin VB.Menu mnuMag1 
            Caption         =   "1X"
         End
         Begin VB.Menu mnuMag2 
            Caption         =   "2X"
         End
         Begin VB.Menu mnuMag4 
            Caption         =   "4X"
         End
         Begin VB.Menu mnuMag8 
            Caption         =   "8X"
         End
      End
      Begin VB.Menu mnuColor 
         Caption         =   "&Cross Hair Color"
         Begin VB.Menu mnuRed 
            Caption         =   "Red"
         End
         Begin VB.Menu mnuBlue 
            Caption         =   "Blue"
         End
         Begin VB.Menu mnuGreen 
            Caption         =   "Green"
         End
         Begin VB.Menu mnuYellow 
            Caption         =   "Yellow"
         End
         Begin VB.Menu mnuCyan 
            Caption         =   "Cyan"
         End
         Begin VB.Menu mnuMagenta 
            Caption         =   "Magenta"
         End
         Begin VB.Menu mnuBlack 
            Caption         =   "Black"
         End
         Begin VB.Menu mnuwhite 
            Caption         =   "White"
         End
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Check1_Click()
Corners(0, 4) = 0
If Check1.Value = vbChecked Then
Corners(0, 4) = 1
End If
End Sub

Private Sub Check2_Click()
Corners(1, 4) = 0
If Check2.Value = vbChecked Then
Corners(1, 4) = 1
End If
End Sub



Private Sub cmdAdd_Click()
lstPoint.AddItem txtPoint.Text
txtPoint.Text = ""
txtPoint.SetFocus
lblDisplay.Caption = lstPoint.ListCount
cmdClear.Enabled = True
End Sub

Private Sub cmdClear_Click()
lstPoint.Clear
cmdRemove.Enabled = False
cmdClear.Enabled = False
lblDisplay.Caption = lstPoint.ListCount
End Sub

Private Sub cmdRemove_Click()
Dim Ind As Integer
Ind = lstPoint.ListIndex
If Ind >= 0 Then
lstPoint.RemoveItem Ind
lblDisplay.Caption = lstPoint.ListCount
Else
Beep
End If
If Ind = 0 Then
 cmdClear.Enabled = False
End If
cmdRemove.Enabled = (lstPoint.ListIndex <> -1)
End Sub

'Private Sub cmdSave_Click()
'Dim Ind2 As Integer
'Dim Ind2end As Integer
'Open txtFilename.Text For Output Access Write As #55
'Ind2end = lstPoint.ListCount - 1
''Print Ind2end
'For Ind2 = 0 To Ind2end
''Print Ind2
'Print #55, lstPoint.List(Ind2)
'Next Ind2
'Close #55
'End Sub

Private Sub Command1_Click()
    Unload Me
    End
End Sub

Private Sub Command2_Click()
'Upper Left
Corners(0, 0) = Text5.Text
Corners(1, 0) = Text6.Text
Corners(2, 0) = Text7.Text
Corners(3, 0) = Text8.Text
'Upper Right
Corners(0, 1) = Text9.Text
Corners(1, 1) = Text10.Text
Corners(2, 1) = Text11.Text
Corners(3, 1) = Text12.Text
'Lower Left
Corners(0, 2) = Text13.Text
Corners(1, 2) = Text14.Text
Corners(2, 2) = Text15.Text
Corners(3, 2) = Text16.Text
'Lower Right
Corners(0, 3) = Text17.Text
Corners(1, 3) = Text18.Text
Corners(2, 3) = Text19.Text
Corners(3, 3) = Text20.Text

Call Check1_Click
Call Check2_Click
Call SETCORN(Corners(0, 0))
Text25.BackColor = QBColor(2)
GOCONV = True
'Print Corners(0, 0), Corners(1, 0), Corners(2, 0), Corners(3, 0)
'Print Text5.Text, Text6.Text, Text7.Text, Text8.Text
End Sub

'Private Sub Command3_Click()
'WinZoom = 2#
'End Sub

'Private Sub Command4_Click()
'WinZoom = 4#
'End Sub
'Private Sub Command5_Click()
'WinZoom = 8#
'End Sub

'Private Sub Command6_Click()
'     Dim X As Single
'     Dim Y As Single
'     X = 0
'     Y = 0
'     CommonDialog1.Filter = "Image files (*.bmp, *.ico, *.wmf)|*.bmp;*.ico;*.wmf|"
'     CommonDialog1.ShowOpen
'     WinZoom = 2
'
'     Picture3.ScaleMode = vbPixels
'     Picture3.Picture = LoadPicture(CommonDialog1.filename)
'     Form1.ScaleMode = vbPixels
'     Open2.ScaleMode = vbPixels
'     Open2.PaintPicture LoadPicture(CommonDialog1.filename), X, Y, _
'     Open2.ScaleX(Open2.Width, vbPixels), Open2.ScaleY(Open2.Height, vbPixels)
'End Sub

'Private Sub Dir1_Change()
'    File1.Path = Dir1.Path
'End Sub

'Private Sub Drive1_Change()
'     Dir1.Path = Drive1.Drive
'End Sub

'Private Sub File1_Click()
'     Dim X As Single
'     Dim Y As Single
'     X = 0
'     Y = 0
'     WinZoom = 2
'     If Right(File1.Path, 1) <> "\" Then
'         Label1.Caption = File1.Path & "\" & File1.filename
'     Else
'          Label1.Caption = File1.Path & File1.filename
'     End If
'
'     Picture3.ScaleMode = vbPixels
'     Picture3.Picture = LoadPicture(Label1.Caption)
'     Form1.ScaleMode = vbPixels
'     Open2.ScaleMode = vbPixels
'     Open2.PaintPicture LoadPicture(Label1.Caption), X, Y, _
'     Open2.ScaleX(Open2.Width, vbPixels), Open2.ScaleY(Open2.Height, vbPixels)
'     Open2.ScaleMode = vbPixels
'     Picture1.ScaleMode = vbPixels
'     Open2.ScaleMode = vbPixels
'     Open2.PaintPicture LoadPicture(Label1.Caption), X, Y, _
'     Open2.ScaleX(Open2.Width, vbPixels), Open2.ScaleY(Open2.Height, vbPixels)
'    Form1.Open.Picture = LoadPicture(Label1.Caption)
'    Form1.ScaleX (Picture1.Picture.Width) * WinZoom
'      Print Form1.Open.Width, Form1.Open.Height
'      Print Form1.ScaleX(Form1.Open.Picture.Width), Form1.ScaleY(Form1.Open.Picture.Height)
'    Picture2.Picture = LoadPicture(Label1.Caption)
'    Picture1.PaintPicture Form1.Open.Picture, X, Y
'   Picture1.Picture = Form1.Open.Picture
'    Form1.Open2.Picture = Form1.Open.Picture
'End Sub



Private Sub Form_Load()
WinZoom = 1
GOCONV = False
'Form1.ScrollBars = True
Text25.BackColor = QBColor(4)
ClrId = 4
'Command6.BackColor = QBColor(4)
End Sub

Private Sub mnuBlue_Click()
ClrId = 1
End Sub

Private Sub mnuCyan_Click()
ClrId = 3
End Sub

Private Sub mnuMag1_Click()
WinZoom = 1#
End Sub
Private Sub mnuMag2_Click()
WinZoom = 2#
End Sub
Private Sub mnuMag4_Click()
WinZoom = 4#
End Sub
Private Sub mnuMag8_Click()
WinZoom = 8#
End Sub

Private Sub mnupaste_Click()
Dim X As Single
Dim Y As Single
X = 0
Y = 0
 
'If TypeOf Screen.ActiveControl Is PictureBox Then
ImgPst = True
Screen.ActiveControl.Picture = Clipboard.GetData()
Picture3.ScaleMode = vbPixels
Picture3.Picture = Screen.ActiveControl.Picture
Form1.ScaleMode = vbPixels
Open2.ScaleMode = vbPixels
Open2.PaintPicture Screen.ActiveControl.Picture, X, Y, _
Open2.ScaleX(Open2.Width, vbPixels), Open2.ScaleY(Open2.Height, vbPixels)
GOCONV = False
Text25.BackColor = QBColor(4)


'End If
End Sub


Private Sub mnuRed_Click()
ClrId = 4
End Sub

Private Sub mnuBlack_Click()
ClrId = 0
End Sub
Private Sub mnuGreen_Click()
ClrId = 2
End Sub


Private Sub mnuwhite_Click()
ClrId = 7
End Sub

Private Sub mnuYellow_Click()
ClrId = 6
End Sub

Private Sub Open2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'     If Button = 1 Then
     Text1.Text = X
     Text2.Text = Y
    Text21.Text = Open2.Point(X, Y)
'    Picture1.Picture = LoadPicture("")
'    Picture1.PaintPicture Picture2.Picture, -X, -Y, _
'    Picture1.ScaleX(Picture2.Picture.Width) * WinZoom, Picture1.ScaleY(Picture2.Picture.Height) * WinZoom
'     End If
End Sub

Private Sub Openfile_Click()
    Dim X As Single
     Dim Y As Single
     X = 0
     Y = 0
     CommonDialog1.Filter = "Image files (*.bmp, *.ico, *.wmf)|*.bmp;*.ico;*.wmf|"
     CommonDialog1.ShowOpen
     WinZoom = 2
'     If Right(File1.Path, 1) <> "\" Then
'         Label1.Caption = File1.Path & "\" & File1.filename
'     Else
'          Label1.Caption = File1.Path & File1.filename
'     End If
     ImgPst = False
     Picture3.ScaleMode = vbPixels
     Picture3.Picture = LoadPicture(CommonDialog1.filename)
     Form1.ScaleMode = vbPixels
     Open2.ScaleMode = vbPixels
     Open2.PaintPicture LoadPicture(CommonDialog1.filename), X, Y, _
     Open2.ScaleX(Open2.Width, vbPixels), Open2.ScaleY(Open2.Height, vbPixels)
     GOCONV = False
     Text25.BackColor = QBColor(4)
End Sub

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim X1 As Single
    Dim Y1 As Single
 
    X1 = (X - Picture1.Width / 2) / WinZoom + XX
    Y1 = (Y - Picture1.Height / 2) / WinZoom + YY
'    XX = X1
'    YY = Y1
     
     Text1.Text = X1
     Text2.Text = Y1
    Text21.Text = Picture1.Point(X, Y)

End Sub
Private Sub Open2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
      Dim Pic1x As Single
      Dim Pic1y As Single
      Dim Sclfcx As Single
      Dim X1 As Single
      Dim Y1 As Single
    If Button = 1 Then
      Text22.Text = X
      Text23.Text = Y
    Text24.Text = Open2.Point(X, Y)
      X1 = 0
      Y1 = 0
      XX = X
      YY = Y
'     Text3.Text = X
'     Text4.Text = Y
'      Picture1.Picture = LoadPicture("Label1.Caption")


      Picture1.Picture = LoadPicture("")
'      Picture1.Picture = Picture3.Picture
'      Picture1.PaintPicture Picture3.Picture, Picture1.ScaleX(-X, vbPixels) / 2, Picture1.ScaleY(-Y, vbPixels) / 2, _
'      Picture1.ScaleX(Open2.Width, vbPixels) * 2, Picture1.ScaleY(Open2.Height, vbPixels) * 2
      Form1.ScaleMode = vbPixels
      Picture1.ScaleMode = vbPixels
      Picture1.PaintPicture Picture3.Picture, Picture1.Width / 2 - X * WinZoom, Picture1.Height / 2 - Y * WinZoom, _
      Picture1.ScaleX(Open2.Width, vbPixels) * WinZoom, Picture1.ScaleY(Open2.Height, vbPixels) * WinZoom
      Picture1.Line (X1, Picture1.Height / 2)-(Picture1.Width, Picture1.Height / 2), QBColor(ClrId)
      Picture1.Line (Picture1.Width / 2, Y1)-(Picture1.Width / 2, Picture1.Height), QBColor(ClrId)
      Picture1.Line (Picture1.Width, Y1)-(X1, Picture1.Height), QBColor(ClrId)
      Picture1.Line (X1, Y1)-(Picture1.Width, Picture1.Height), QBColor(ClrId)

      Open2.Picture = LoadPicture("")
      Open2.ScaleMode = vbPixels
'      Open2.PaintPicture LoadPicture(Label1.Caption), X1, Y1, _
'      Open2.ScaleX(Open2.Width, vbPixels), Open2.ScaleY(Open2.Height, vbPixels)
If ImgPst Then
       Open2.PaintPicture Picture3.Picture, X1, Y1, _
      Open2.ScaleX(Open2.Width, vbPixels), Open2.ScaleY(Open2.Height, vbPixels)
Else
       Open2.PaintPicture LoadPicture(CommonDialog1.filename), X1, Y1, _
      Open2.ScaleX(Open2.Width, vbPixels), Open2.ScaleY(Open2.Height, vbPixels)
End If

'      X * 2 * Open2.Height / Open2.Width, Y * 2
'      Picture1.ScaleX(Open2.Width, vbPixels), Picture1.ScaleY(Open2.Height, vbPixels)

'Picture1.Picture = Form1.Open.Picture
'   Sclfcx = Form1.ScaleX(Form1.Open.Picture.Width) / Form1.ScaleY(Form1.Open.Picture.Height)
'      Print Form1.Open.Width, Picture1.Width
'    Pic1x = 3 * Form1.Open.Width / Picture1.Width
'    Pic1y = 3 * Form1.Open.Height / Picture1.Height
'   Picture1.PaintPicture Form1.Open.Picture, -X * Sclfcx / Pic1x, -Y / Pic1y, _
'   Picture1.ScaleX(Form1.Open.Picture.Width) * 2, _
'   Picture1.ScaleY(Form1.Open.Picture.Height) * 2 * Sclfcx
   
'Form1.ScaleX(Form1.Open.Picture.Width) / Form1.ScaleY(Form1.Open.Picture.Height)

'    Pic1h = Form1.Open.Picture.Height
'    Pic2h = Form1.Picture1.Picture.Height
'     Text3.Text = Pic1h
'     Text4.Text = Pic2h
'    Picture1.PaintPicture Form1.Open.Picture, -X, -Y, _
'    Picture1.ScaleX(Form1.Open.Picture.Width), Picture1.ScaleY(Form1.Open.Picture.Height)

If GOCONV = True Then
     POS(0) = X
     POS(1) = Y
     Call POINTMAP2(POS(0))
     Text3.Text = POS(2)
     Text4.Text = POS(3)
'     List1.AddItem Text3.Text & "  " & Text4.Text
      txtPoint.Text = Text3.Text & "  " & Text4.Text
     End If
    If Option1.Value = True Then
         Text7.Text = X
         Text8.Text = Y
    ElseIf Option2.Value = True Then
        Text11.Text = X
        Text12.Text = Y
    ElseIf Option3.Value = True Then
        Text15.Text = X
        Text16.Text = Y
     ElseIf Option4.Value = True Then
        Text19.Text = X
        Text20.Text = Y
    End If
     
     End If
End Sub

Private Sub Option1_Click()
'     Call Open_MouseDown(Button%, Shift%, X!, Y!)
'     If Button% = 1 Then
'     Text7.Text = X!
'     Text8.Text = Y!
'     End If
End Sub


Private Sub lstPoint_Click()
cmdRemove.Enabled = lstPoint.ListIndex <> -1
End Sub

Private Sub Savedata_Click()
Dim Ind2 As Integer
Dim Ind2end As Integer
CommonDialog1.Filter = "All files (*.*)|*.*|"
CommonDialog1.filename = ""
CommonDialog1.ShowOpen

Open CommonDialog1.filename For Output Access Write As #55
Ind2end = lstPoint.ListCount - 1
'Print Ind2end
For Ind2 = 0 To Ind2end
'Print Ind2
Print #55, lstPoint.List(Ind2)
Next Ind2
Close #55
End Sub


Private Sub SvEx_Click()
Dim X As Single
Dim Y As Single
Dim Ln As Integer
Dim SpLo As Integer
Dim Lin As String
Dim Ind2end As Integer
Dim Ind2 As Integer

'Open "test.dat" For Output Access Write As #55
Set EXXL = CreateObject("Excel.Sheet")
EXXL.Application.Visible = True
Ind2end = lstPoint.ListCount - 1
''Print Ind2end
For Ind2 = 0 To Ind2end
Ln = Len(lstPoint.List(Ind2))

SpLo = InStr(1, lstPoint.List(Ind2), " ", 1)
'Write #55, Ln, SpLo
'Lin = Mid(lstPoint.List(Ind2), 1, SpLo)

'X = Val(Lin)
'Lin = Mid(lstPoint.List(Ind2), SpLo, Ln - SpLo + 1)
'Y = Val(Lin)
'Lin = Mid(lstPoint.List(Ind2), SpLo, Ln - SpLo + 1)
'Write #55, Lin
Lin = Mid(lstPoint.List(Ind2), 1, SpLo)
'Write #55, Lin
'Close #55
EXXL.Application.Cells(Ind2 + 1, 1).Value = Lin
Lin = Mid(lstPoint.List(Ind2), SpLo, Ln - SpLo + 1)
EXXL.Application.Cells(Ind2 + 1, 2).Value = Lin

''Print Ind2
'Print #55, lstPoint.List(Ind2)
Next Ind2

'EXXL.SaveAs "c:\temp.xls"
'EXXL.Application.Quit
'Set EXXL = Nothing '
End Sub

'Private Sub txtFilename_Change()
'cmdSave.Enabled = (Len(txtFilename.Text) > 0)
'End Sub

Private Sub txtPoint_Change()
cmdAdd.Enabled = (Len(txtPoint.Text) > 0)
End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim X1 As Single
    Dim Y1 As Single
    Dim X0 As Single
    Dim Y0 As Single
    X0 = 0
    Y0 = 0
    If Button = 1 Then
    X1 = (X - Picture1.Width / 2) / WinZoom + XX
    Y1 = (Y - Picture1.Height / 2) / WinZoom + YY
    Text22.Text = X1
    Text23.Text = Y1
    Text24.Text = Picture1.Point(X, Y)
      
      Picture1.Picture = LoadPicture("")
      Form1.ScaleMode = vbPixels
      Picture1.ScaleMode = vbPixels
      Picture1.PaintPicture Picture3.Picture, Picture1.Width / 2 - X1 * WinZoom, Picture1.Height / 2 - Y1 * WinZoom, _
      Picture1.ScaleX(Open2.Width, vbPixels) * WinZoom, Picture1.ScaleY(Open2.Height, vbPixels) * WinZoom
      Picture1.Line (X0, Picture1.Height / 2)-(Picture1.Width, Picture1.Height / 2), QBColor(ClrId)
      Picture1.Line (Picture1.Width / 2, Y0)-(Picture1.Width / 2, Picture1.Height), QBColor(ClrId)
      Picture1.Line (Picture1.Width, Y0)-(X0, Picture1.Height), QBColor(ClrId)
      Picture1.Line (X0, Y0)-(Picture1.Width, Picture1.Height), QBColor(ClrId)
      
      Open2.Picture = LoadPicture("")
      Open2.ScaleMode = vbPixels
 '     Open2.PaintPicture LoadPicture(Label1.Caption), X1, Y1, _
 '     Open2.ScaleX(Open2.Width, vbPixels), Open2.ScaleY(Open2.Height, vbPixels)
 If ImgPst Then
       Open2.PaintPicture Picture3.Picture, X0, Y0, _
      Open2.ScaleX(Open2.Width, vbPixels), Open2.ScaleY(Open2.Height, vbPixels)
Else
      Open2.PaintPicture LoadPicture(CommonDialog1.filename), X0, Y0, _
      Open2.ScaleX(Open2.Width, vbPixels), Open2.ScaleY(Open2.Height, vbPixels)
End If
       
      Open2.Line (X1 + Picture1.Width / (2 * WinZoom), Y1 - Picture1.Height / (2 * WinZoom))-(X1 + Picture1.Width / (2 * WinZoom), Y1 + Picture1.Height / (2 * WinZoom)), QBColor(ClrId)
      Open2.Line (X1 - Picture1.Width / (2 * WinZoom), Y1 - Picture1.Height / (2 * WinZoom))-(X1 - Picture1.Width / (2 * WinZoom), Y1 + Picture1.Height / (2 * WinZoom)), QBColor(ClrId)
      Open2.Line (X1 - Picture1.Width / (2 * WinZoom), Y1 - Picture1.Height / (2 * WinZoom))-(X1 + Picture1.Width / (2 * WinZoom), Y1 - Picture1.Height / (2 * WinZoom)), QBColor(ClrId)
      Open2.Line (X1 - Picture1.Width / (2 * WinZoom), Y1 + Picture1.Height / (2 * WinZoom))-(X1 + Picture1.Width / (2 * WinZoom), Y1 + Picture1.Height / (2 * WinZoom)), QBColor(ClrId)

If GOCONV = True Then
     POS(0) = X1
     POS(1) = Y1
     Call POINTMAP2(POS(0))
     Text3.Text = POS(2)
     Text4.Text = POS(3)
'     List1.AddItem Text3.Text & "  " & Text4.Text
      txtPoint.Text = Text3.Text & "  " & Text4.Text
     End If
    If Option1.Value = True Then
         Text7.Text = X1
         Text8.Text = Y1
    ElseIf Option2.Value = True Then
        Text11.Text = X1
        Text12.Text = Y1
    ElseIf Option3.Value = True Then
        Text15.Text = X1
        Text16.Text = Y1
     ElseIf Option4.Value = True Then
        Text19.Text = X1
        Text20.Text = Y1
    End If
      
     XX = X1
     YY = Y1
     End If

End Sub

