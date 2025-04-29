VERSION 5.00
Begin VB.Form frmStatus 
   Caption         =   "IceTop Tank Housekeeping"
   ClientHeight    =   11010
   ClientLeft      =   60
   ClientTop       =   540
   ClientWidth     =   10335
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmStatus.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   11010
   ScaleWidth      =   10335
   Begin VB.Frame Frame7 
      Height          =   10965
      Left            =   300
      TabIndex        =   0
      Top             =   30
      Width           =   10035
      Begin VB.CommandButton btnPanelSettings 
         Caption         =   "LOAD"
         Height          =   255
         Index           =   1
         Left            =   1170
         TabIndex        =   27
         Top             =   240
         Width           =   915
      End
      Begin VB.CommandButton btnPanelSettings 
         Caption         =   "SAVE"
         Height          =   255
         Index           =   0
         Left            =   90
         TabIndex        =   26
         Top             =   240
         Width           =   915
      End
      Begin VB.CommandButton btnTankSelect 
         Caption         =   "00A"
         Height          =   255
         Index           =   0
         Left            =   450
         TabIndex        =   21
         Top             =   1095
         Width           =   645
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Verify"
         Height          =   195
         Left            =   5700
         TabIndex        =   37
         Top             =   570
         Width           =   495
      End
      Begin VB.Label lblControlVerify 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Ctl"
         Height          =   195
         Index           =   0
         Left            =   6120
         TabIndex        =   36
         Top             =   1125
         Width           =   240
      End
      Begin VB.Label lblDirectVerify 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Dir"
         Height          =   195
         Index           =   0
         Left            =   5580
         TabIndex        =   35
         Top             =   1125
         Width           =   255
      End
      Begin VB.Label Label5 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Ctl"
         Height          =   195
         Left            =   6120
         TabIndex        =   34
         Top             =   825
         Width           =   240
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Dir"
         Height          =   195
         Left            =   5580
         TabIndex        =   33
         Top             =   825
         Width           =   255
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Check Box"
         Height          =   195
         Left            =   6690
         TabIndex        =   32
         Top             =   570
         Width           =   930
      End
      Begin VB.Label Label2 
         Caption         =   "Time Since"
         Height          =   195
         Left            =   4230
         TabIndex        =   31
         Top             =   570
         Width           =   1035
      End
      Begin VB.Label lblRemSer 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "#"
         Height          =   195
         Index           =   0
         Left            =   180
         TabIndex        =   30
         Top             =   1125
         Width           =   135
      End
      Begin VB.Label lblActiveTank 
         AutoSize        =   -1  'True
         Caption         =   "Active Tank"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   2520
         TabIndex        =   29
         Top             =   210
         Width           =   1410
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Computer Control"
         Height          =   195
         Left            =   7800
         TabIndex        =   28
         Top             =   570
         Width           =   1470
      End
      Begin VB.Label lb4 
         Alignment       =   1  'Right Justify
         Caption         =   "InAmp"
         Height          =   195
         Left            =   3390
         TabIndex        =   25
         Top             =   825
         Width           =   600
      End
      Begin VB.Label lbl1 
         Alignment       =   1  'Right Justify
         Caption         =   "Vac"
         Height          =   195
         Left            =   1170
         TabIndex        =   24
         Top             =   825
         Width           =   600
      End
      Begin VB.Label lbl2 
         Alignment       =   1  'Right Justify
         Caption         =   "Sump"
         Height          =   195
         Left            =   1950
         TabIndex        =   23
         Top             =   825
         Width           =   600
      End
      Begin VB.Label lbl3 
         Alignment       =   1  'Right Justify
         Caption         =   "Tmp"
         Height          =   195
         Left            =   2550
         TabIndex        =   22
         Top             =   825
         Width           =   600
      End
      Begin VB.Label lblTemperature 
         Alignment       =   1  'Right Justify
         Caption         =   "Tmp"
         Height          =   195
         Index           =   0
         Left            =   2580
         TabIndex        =   20
         Top             =   1125
         Width           =   600
      End
      Begin VB.Label lblSump 
         Alignment       =   1  'Right Justify
         Caption         =   "Sump"
         Height          =   195
         Index           =   0
         Left            =   1950
         TabIndex        =   19
         Top             =   1125
         Width           =   600
      End
      Begin VB.Label lblVacuum 
         Alignment       =   1  'Right Justify
         Caption         =   "Vac"
         Height          =   195
         Index           =   0
         Left            =   1170
         TabIndex        =   18
         Top             =   1125
         Width           =   600
      End
      Begin VB.Label lblInAmp 
         Alignment       =   1  'Right Justify
         Caption         =   "InAmp"
         Height          =   195
         Index           =   0
         Left            =   3390
         TabIndex        =   17
         Top             =   1125
         Width           =   600
      End
      Begin VB.Label lblSecSinceADC 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "ADC"
         Height          =   195
         Index           =   0
         Left            =   4230
         TabIndex        =   16
         Top             =   1125
         Width           =   390
      End
      Begin VB.Label lblSecSinceNVM 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "NVM"
         Height          =   195
         Index           =   0
         Left            =   4770
         TabIndex        =   15
         Top             =   1125
         Width           =   420
      End
      Begin VB.Label lblSecADC 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "ADC"
         Height          =   195
         Left            =   4230
         TabIndex        =   14
         Top             =   825
         Width           =   390
      End
      Begin VB.Label lblSecNVM 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "NVM"
         Height          =   195
         Left            =   4770
         TabIndex        =   13
         Top             =   825
         Width           =   420
      End
      Begin VB.Label lblDirect 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Dir"
         Height          =   195
         Left            =   6750
         TabIndex        =   12
         Top             =   825
         Width           =   255
      End
      Begin VB.Label lblcontrolW 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Ctl"
         Height          =   195
         Left            =   7290
         TabIndex        =   11
         Top             =   825
         Width           =   240
      End
      Begin VB.Label lblDirectWanted 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Dir"
         Height          =   195
         Index           =   0
         Left            =   6750
         TabIndex        =   10
         Top             =   1125
         Width           =   255
      End
      Begin VB.Label lblControlWanted 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Ctl"
         Height          =   195
         Index           =   0
         Left            =   7290
         TabIndex        =   9
         Top             =   1125
         Width           =   240
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Cir"
         Height          =   195
         Left            =   7800
         TabIndex        =   8
         Top             =   825
         Width           =   240
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Smp"
         Height          =   195
         Left            =   8100
         TabIndex        =   7
         Top             =   825
         Width           =   375
      End
      Begin VB.Label Label19 
         AutoSize        =   -1  'True
         Caption         =   "Vac"
         Height          =   195
         Left            =   8580
         TabIndex        =   6
         Top             =   825
         Width           =   345
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Tmp"
         Height          =   195
         Left            =   8910
         TabIndex        =   5
         Top             =   825
         Width           =   375
      End
      Begin VB.Label lblCirculateEnable 
         AutoSize        =   -1  'True
         BackColor       =   &H000000FF&
         Caption         =   "D"
         Height          =   195
         Index           =   0
         Left            =   7890
         TabIndex        =   4
         Top             =   1125
         Width           =   150
      End
      Begin VB.Label lblSumpPumpEnable 
         AutoSize        =   -1  'True
         BackColor       =   &H000000FF&
         Caption         =   "D"
         Height          =   195
         Index           =   0
         Left            =   8250
         TabIndex        =   3
         Top             =   1125
         Width           =   150
      End
      Begin VB.Label lblVacuumEnable 
         AutoSize        =   -1  'True
         BackColor       =   &H000000FF&
         Caption         =   "D"
         Height          =   195
         Index           =   0
         Left            =   8610
         TabIndex        =   2
         Top             =   1125
         Width           =   150
      End
      Begin VB.Label lblTemperatureEnable 
         AutoSize        =   -1  'True
         BackColor       =   &H000000FF&
         Caption         =   "D"
         Height          =   195
         Index           =   0
         Left            =   8970
         TabIndex        =   1
         Top             =   1125
         Width           =   150
      End
   End
End
Attribute VB_Name = "frmStatus"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Public Sub btnPanelSettings_Click(Index As Integer)
Dim nTank As Integer
Dim OutString As String
Dim TempString As String
Dim InLine As String
Dim InArray(6) As Integer
Select Case Index
Case 0
  Open Table_Dir & "PanelSettings.txt" For Output As #1
  For nTank = 0 To maxTank
    OutString = "Index" & Right$("00" & Format$(nTank), 2) & " "
    If nTank <= lTank Then
      OutString = OutString + Format$(DirectWanted(nTank)) + ", "
      OutString = OutString + Format$(ControlWanted(nTank)) + ", "
      OutString = OutString + Format$(SendCommand(nTank)) + ", "
      If frmStatus.lblCirculateEnable(nTank).BackColor = ColorRed Then
        OutString = OutString + "1, "
      Else
        OutString = OutString + "0, "
      End If
      If frmStatus.lblSumpPumpEnable(nTank).BackColor = ColorRed Then
        OutString = OutString + "1, "
      Else
        OutString = OutString + "0, "
      End If
      If frmStatus.lblVacuumEnable(nTank).BackColor = ColorRed Then
        OutString = OutString + "1, "
      Else
        OutString = OutString + "0, "
      End If
      If frmStatus.lblTemperatureEnable(nTank).BackColor = ColorRed Then
        OutString = OutString + "1, "
      Else
        OutString = OutString + "0, "
      End If
    Else
      OutString = OutString & "0, 0, 0, 1, 1, 1, 1,"
    End If
    Print #1, OutString
  Next nTank
  Close #1
Case 1
  Open Table_Dir & "PanelSettings.txt" For Input As #1
  For nTank = 0 To lTank
    Line Input #1, InLine
    TempString = Mid$(InLine, 8)
    FillIntegerArray InArray(), 6, TempString
    DirectWanted(nTank) = InArray(0)
    ControlWanted(nTank) = InArray(1)
    SendCommand(nTank) = InArray(2)
    If nTank <= lTank Then
      frmStatus.lblCirculateEnable(nTank).BackColor = ColorGreen
      frmStatus.lblCirculateEnable(nTank).Caption = "E"
      If InArray(3) > 0 Then
        frmStatus.lblCirculateEnable(nTank).BackColor = ColorRed
        frmStatus.lblCirculateEnable(nTank).Caption = "D"
      End If
      lblSumpPumpEnable(nTank).BackColor = ColorGreen
      lblSumpPumpEnable(nTank).Caption = "E"
      If InArray(4) > 0 Then
        lblSumpPumpEnable(nTank).BackColor = ColorRed
        lblSumpPumpEnable(nTank).Caption = "D"
      End If
      lblVacuumEnable(nTank).BackColor = ColorGreen
      lblVacuumEnable(nTank).Caption = "E"
      If InArray(5) > 0 Then
        lblVacuumEnable(nTank).BackColor = ColorRed
        lblVacuumEnable(nTank).Caption = "D"
      End If
      lblTemperatureEnable(nTank).BackColor = ColorGreen
      lblTemperatureEnable(nTank).Caption = "E"
      If InArray(6) > 0 Then
        lblTemperatureEnable(nTank).BackColor = ColorRed
        lblTemperatureEnable(nTank).Caption = "D"
      End If
    End If
  Next nTank
  Close #1
  frmPanel.RefreshPanel
Case Else
End Select
End Sub

Private Sub btnTankSelect_Click(Index As Integer)
DisplayTank Index
End Sub

Private Sub Form_Load()
Dim iFor As Integer
'Set up the status panel
hSpace = 700
vSpace = 250
btnTankSelect(iFor).Caption = Right$("00" & Format$(AddressTable(0, iFor)), 2) & "A"
lblRemSer(0).Top = btnTankSelect(0).Top
lblVacuum(0).Top = btnTankSelect(0).Top
lblSump(0).Top = btnTankSelect(0).Top
lblTemperature(0).Top = btnTankSelect(0).Top
lblInAmp(0).Top = btnTankSelect(0).Top
lblVacuum(0).Caption = "0.00"
lblSump(0).Caption = "0.00"
lblTemperature(0).Caption = "0.00"
lblInAmp(0).Caption = "0.00"
lblDirectVerify(0).Caption = "ff"
lblControlVerify(0).Caption = "fff"
lblVacuum(0).Alignment = 1
lblSump(0).Alignment = 1
lblTemperature(0).Alignment = 1
lblInAmp(0).Alignment = 1
lblRemSer(0).Caption = AddressTable(1, 0)
For iFor = 1 To lTank
  Load btnTankSelect(iFor)
  btnTankSelect(iFor).Top = btnTankSelect(iFor - 1).Top + vSpace
  btnTankSelect(iFor).Visible = True
  If iFor Mod 2 = 0 Then
    btnTankSelect(iFor).Caption = Right$("00" & Format$(AddressTable(0, iFor)), 2) & "A"
  Else
    btnTankSelect(iFor).Caption = Right$("00" & Format$(AddressTable(0, iFor)), 2) & "B"
  End If
  Load lblRemSer(iFor)
  lblRemSer(iFor).Top = btnTankSelect(iFor).Top
  lblRemSer(iFor).Visible = True
  lblRemSer(iFor).Caption = AddressTable(1, iFor)
  Load lblVacuum(iFor)
  lblVacuum(iFor).Top = btnTankSelect(iFor).Top
  lblVacuum(iFor).Visible = True
  lblVacuum(iFor).Caption = "0.00"
  lblVacuum(iFor).Alignment = 1
  Load lblSump(iFor)
  lblSump(iFor).Top = btnTankSelect(iFor).Top
  lblSump(iFor).Visible = True
  lblSump(iFor).Caption = "0.00"
  lblSump(iFor).Alignment = 1
  Load lblTemperature(iFor)
  lblTemperature(iFor).Top = btnTankSelect(iFor).Top
  lblTemperature(iFor).Visible = True
  lblTemperature(iFor).Caption = "0.00"
  lblTemperature(iFor).Alignment = 1
  Load lblInAmp(iFor)
  lblInAmp(iFor).Top = btnTankSelect(iFor).Top
  lblInAmp(iFor).Visible = True
  lblInAmp(iFor).Caption = "0.00"
  lblInAmp(iFor).Alignment = 1
  Load lblSecSinceADC(iFor)
  lblSecSinceADC(iFor).Top = btnTankSelect(iFor).Top
  lblSecSinceADC(iFor).Visible = True
  Load lblSecSinceNVM(iFor)
  lblSecSinceNVM(iFor).Top = btnTankSelect(iFor).Top
  lblSecSinceNVM(iFor).Visible = True
  Load lblDirectWanted(iFor)
  lblDirectWanted(iFor).Top = btnTankSelect(iFor).Top
  lblDirectWanted(iFor).Visible = True
  Load lblDirectVerify(iFor)
  lblDirectVerify(iFor).Top = btnTankSelect(iFor).Top
  lblDirectVerify(iFor).Visible = True
  Load lblControlWanted(iFor)
  lblControlWanted(iFor).Top = btnTankSelect(iFor).Top
  lblControlWanted(iFor).Visible = True
  Load lblControlVerify(iFor)
  lblControlVerify(iFor).Top = btnTankSelect(iFor).Top
  lblControlVerify(iFor).Visible = True
  Load lblCirculateEnable(iFor)
  lblCirculateEnable(iFor).Top = btnTankSelect(iFor).Top
  lblCirculateEnable(iFor).Visible = True
  Load lblSumpPumpEnable(iFor)
  lblSumpPumpEnable(iFor).Top = btnTankSelect(iFor).Top
  lblSumpPumpEnable(iFor).Visible = True
  Load lblVacuumEnable(iFor)
  lblVacuumEnable(iFor).Top = btnTankSelect(iFor).Top
  lblVacuumEnable(iFor).Visible = True
  Load lblTemperatureEnable(iFor)
  lblTemperatureEnable(iFor).Top = btnTankSelect(iFor).Top
  lblTemperatureEnable(iFor).Visible = True
Next iFor
btnPanelSettings_Click 1
End Sub



Private Sub Form_Unload(Cancel As Integer)
btnPanelSettings_Click 0
End Sub


Private Sub lblCirculateEnable_Click(Index As Integer)
If lblCirculateEnable(Index).Caption = "D" Then
  lblCirculateEnable(Index).Caption = "E"
  lblCirculateEnable(Index).BackColor = ColorGreen
Else
  lblCirculateEnable(Index).Caption = "D"
  lblCirculateEnable(Index).BackColor = ColorRed
End If
End Sub


Private Sub lblSumpPumpEnable_Click(Index As Integer)
If lblSumpPumpEnable(Index).Caption = "D" Then
  lblSumpPumpEnable(Index).Caption = "E"
  lblSumpPumpEnable(Index).BackColor = ColorGreen
Else
  lblSumpPumpEnable(Index).Caption = "D"
  lblSumpPumpEnable(Index).BackColor = ColorRed
End If
End Sub


Private Sub lblTemperatureEnable_Click(Index As Integer)
If lblTemperatureEnable(Index).Caption = "D" Then
  lblTemperatureEnable(Index).Caption = "E"
  lblTemperatureEnable(Index).BackColor = ColorGreen
Else
  lblTemperatureEnable(Index).Caption = "D"
  lblTemperatureEnable(Index).BackColor = ColorRed
End If
End Sub


Private Sub lblVacuumEnable_Click(Index As Integer)
If lblVacuumEnable(Index).Caption = "D" Then
  lblVacuumEnable(Index).Caption = "E"
  lblVacuumEnable(Index).BackColor = ColorGreen
Else
  lblVacuumEnable(Index).Caption = "D"
  lblVacuumEnable(Index).BackColor = ColorRed
End If
End Sub


Public Sub optTankSel_Click(Index As Integer)
DisplayTank Index
End Sub


