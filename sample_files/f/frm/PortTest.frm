VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form PortTest 
   Caption         =   "Com Port Test"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin MSCommLib.MSComm comRack 
      Left            =   3840
      Top             =   240
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin VB.Label lblMessage 
      Caption         =   "Message"
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   2895
   End
End
Attribute VB_Name = "PortTest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub comRack_OnComm()
'--- MSComm event constants
 Const MSCOMM_EV_SEND = 1
 Const MSCOMM_EV_RECEIVE = 2
 Const MSCOMM_EV_CTS = 3
 Const MSCOMM_EV_DSR = 4
 Const MSCOMM_EV_CD = 5
 Const MSCOMM_EV_RING = 6
 Const MSCOMM_EV_EOF = 7
'--- MSComm error code constants
 Const MSCOMM_ER_BREAK = 1001
 Const MSCOMM_ER_CTSTO = 1002
 Const MSCOMM_ER_DSRTO = 1003
 Const MSCOMM_ER_FRAME = 1004
 Const MSCOMM_ER_OVERRUN = 1006
 Const MSCOMM_ER_CDTO = 1007
 Const MSCOMM_ER_RXOVER = 1008
 Const MSCOMM_ER_RXPARITY = 1009
 Const MSCOMM_ER_TXFULL = 1010
    Dim EVMsg As String
    Dim ERMsg As String
    Dim Dta As String
    Dim nRead As Integer
    EVMsg = ""
    ERMsg = ""
    '--- Branch according to the CommEvent Prop..
    Select Case comRack.CommEvent
        '--- Event messages
        Case MSCOMM_EV_RECEIVE
            'Read the Rack port
            Dta = comRack.Input
            nRead = Len(Dta)
            lblMessage.Caption = Format$(nRead, "0")
        Case MSCOMM_EV_SEND
             EVMsg = "EV Send Detected"
        Case MSCOMM_EV_CTS
'            EVMsg = "Change in CTS Detected"
        Case MSCOMM_EV_DSR
'            EVMsg = "Change in DSR Detected"
        Case MSCOMM_EV_CD
'            EVMsg = "Change in CD Detected"
        Case MSCOMM_EV_RING
            EVMsg = "The Phone is Ringing"
        Case MSCOMM_EV_EOF
'            EVMsg = "End of File Detected"
        '--- Error messages
        Case MSCOMM_ER_BREAK
            EVMsg = "Break Received"
        Case MSCOMM_ER_CTSTO
            ERMsg = "CTS Timeout"
        Case MSCOMM_ER_DSRTO
            ERMsg = "DSR Timeout"
        Case MSCOMM_ER_FRAME
            ERMsg = "Framing Error"
        Case MSCOMM_ER_OVERRUN
             ERMsg = "Overrun Error"
        Case MSCOMM_ER_CDTO
            ERMsg = "Carrier Detect Timeout"
        Case MSCOMM_ER_RXOVER
            ERMsg = "Receive Buffer Overflow"
        Case MSCOMM_ER_RXPARITY
            ERMsg = "Parity Error"
        Case MSCOMM_ER_TXFULL
            ERMsg = "Transmit Buffer Full"
        Case Else
            ERMsg = "Unknown error or event"
    End Select
    
    If Len(EVMsg) > 0 Then
      lblMessage.Caption = EVMsg
      EVMsg = ""
    ElseIf Len(ERMsg) > 0 Then
      lblMessage.Caption = ERMsg
      ERMsg = ""
    End If
End Sub

Private Sub Form_Load()
Dim PortNo As Integer
Dim SetStr As String
PortNo = 3
SetStr = "38400,n,8,1"
comRack.CommPort = PortNo
comRack.Settings = SetStr
comRack.PortOpen = True
comRack.InBufferCount = 0
comRack.RThreshold = 1
End Sub
