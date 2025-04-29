VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   615
      Left            =   480
      TabIndex        =   1
      Top             =   1200
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Type IMP8
    izero As Integer
    time As Long
    flux1(60) As Single
    flux2(58) As Single
    flux3(34) As Single
    flux4(4) As Single
    flux5(36) As Single
End Type
Private Sub Command1_Click()
Open "d:\neutron_bck2\transfer\19731101_flux6hr_gme_i8_v01.pcr" For Binary As 40
Open "d:\neutron_bck2\transfer\19740101_flux6hr_gme_i8_v01.pcr" For Binary As 41
Open "d:\neutron_bck2\transfer\19760101_flux6hr_gme_i8_v01.pcr" For Binary As 42
Open "d:\neutron_bck2\transfer\19780101_flux6hr_gme_i8_v01.pcr" For Binary As 43
Open "d:\neutron_bck2\transfer\19800101_flux6hr_gme_i8_v01.pcr" For Binary As 44
Open "d:\neutron_bck2\transfer\19820101_flux6hr_gme_i8_v01.pcr" For Binary As 45
Open "d:\neutron_bck2\transfer\19840101_flux6hr_gme_i8_v01.pcr" For Binary As 46
Open "d:\neutron_bck2\transfer\19860101_flux6hr_gme_i8_v01.pcr" For Binary As 47
Open "d:\neutron_bck2\transfer\19880101_flux6hr_gme_i8_v01.pcr" For Binary As 48
Open "d:\neutron_bck2\transfer\19900101_flux6hr_gme_i8_v01.pcr" For Binary As 49
Open "d:\neutron_bck2\transfer\19920101_flux6hr_gme_i8_v01.pcr" For Binary As 50
Open "d:\neutron_bck2\transfer\19940101_flux6hr_gme_i8_v01.pcr" For Binary As 51
Open "d:\neutron_bck2\transfer\19960101_flux6hr_gme_i8_v01.pcr" For Binary As 52
Open "d:\neutron_bck2\transfer\19980101_flux6hr_gme_i8_v01.pcr" For Binary As 53
Open "d:\neutron_bck2\transfer\20000101_flux6hr_gme_i8_v01.pcr" For Binary As 54
'  Open "c:\transfer\junk.dat" For Binary As 45
Open "d:\neutron_bck2\transfer\junk.dat" For Output As 25
End Sub

Private Sub Command2_Click()
'Dim imp8data As IMP8
Dim line As String
Dim output As String
Dim bytdata(774) As Byte
Dim bythead(7732) As Byte
Dim itest As Integer
Dim itest2 As Long
Dim flux1 As Single
Dim error1 As Single
Dim flxhe0 As Single
Dim errhe0 As Single
Dim flxhe As Single
Dim errhe As Single
Dim flxhe2 As Single
Dim errhe2 As Single
Dim flxhe3 As Single
Dim errhe3 As Single
Dim lun As Integer
Dim ch1 As Single
Dim ech1 As Single
Dim ch50 As Single
Dim ech50 As Single
Dim bw50 As Single
Dim ch51 As Single
Dim ech51 As Single
Dim bw51 As Single
Dim ch52 As Single
Dim ech52 As Single
Dim bw52 As Single
Dim ch53 As Single
Dim ech53 As Single
Dim bw53 As Single
Dim ch54 As Single
Dim ech54 As Single
Dim bw54 As Single
Dim ch55 As Single
Dim ech55 As Single
Dim bw55 As Single
Dim ch56 As Single
Dim ech56 As Single
Dim bw56 As Single
Dim ch57 As Single
Dim ech57 As Single
Dim bw57 As Single
Dim ch58 As Single
Dim ech58 As Single
Dim bw58 As Single
Dim ch59 As Single
Dim ech59 As Single
Dim bw59 As Single
Dim ch5058 As Single


Dim ch63 As Single
Dim ech63 As Single

Dim ch70 As Single
Dim ech70 As Single
Dim ch71 As Single
Dim ech71 As Single
Dim ch72 As Single
Dim ech72 As Single
Dim ch73 As Single
Dim ech73 As Single
Dim ch74 As Single
Dim ech74 As Single
Dim ch76 As Single
Dim ech76 As Single

Dim sumref(9) As Single
Dim sum(9) As Single

Dim icntref(9) As Single
Dim icnt(9) As Single

Dim rat(9) As Single
Dim rigid(9)

Dim err As Single
Dim errat As Single
Dim xxx As Single
Dim xxxref As Single




rigid(1) = 0.746394262
rigid(2) = 0.929336714
rigid(3) = 1.001286989
rigid(4) = 1.103856285
rigid(5) = 1.225418266
rigid(6) = 1.366271686
rigid(7) = 1.543732654
rigid(8) = 1.743054637
rigid(9) = 1.955247988

bw50 = -51 + 63.3
bw51 = -63.3 + 81
bw52 = -101 + 118
bw53 = -118 + 134
bw54 = -134 + 169
bw55 = -169 + 198
bw56 = -198 + 250
bw57 = -250 + 307
bw58 = -307 + 382
bw59 = -382 + 456
bwall = 382 - 51
For m = 1 To 9
icnt(m) = 0
icntref(m) = 0
sum(m) = 0
sumref(m) = 0
Next m

'Dim flux2(58) As Single
'Dim flux3(34) As Single
'Dim flux4(4) As Single
'Dim flux5(36) As Single
'Get #44, , bythead
'lun = 41
For lun = 40 To 54
'For lun = 53 To 54
For i = 1 To 130
Line Input #lun, line
'Get #44, , line
'Write #45, line
Next i
'Line Input #lun, line
Do Until EOF(lun)
'For k = 1 To 400
'Get #44, izero, flux
'Get #44, , bytdata
Get #lun, , itest
Get #lun, , itest2
For m = 1 To 96
Get #lun, , flux1
Get #lun, , error1
If (m = 1) Then
ch1 = flux1
ech1 = error1
End If

If (m = 50) Then
ch50 = flux1
ech50 = error1
End If

If (m = 59) Then
ch59 = flux1
ech59 = error1
End If

If (m = 58) Then
ch58 = flux1
ech58 = error1
End If



If (m = 57) Then
ch57 = flux1
ech57 = error1
End If

If (m = 56) Then
ch56 = flux1
ech56 = error1
End If


If (m = 55) Then
ch55 = flux1
ech55 = error1
End If

If (m = 54) Then
ch54 = flux1
ech54 = error1
End If

If (m = 53) Then
ch53 = flux1
ech53 = error1
End If

If (m = 52) Then
ch52 = flux1
ech52 = error1
End If

If (m = 51) Then
ch51 = flux1
ech51 = error1
End If

If (m = 63) Then
ch63 = flux1
ech63 = error1
End If

If (m = 70) Then
ch70 = flux1
ech70 = error1
End If

If (m = 71) Then
ch71 = flux1
ech71 = error1
End If

If (m = 72) Then
ch72 = flux1
ech72 = error1
End If

If (m = 73) Then
ch73 = flux1
ech73 = error1
End If

If (m = 74) Then
ch74 = flux1
ech74 = error1
End If

If (m = 76) Then
ch76 = flux1
ech76 = error1
End If





Next m

If (ch51 > 0) Then
ch5058 = ch50 * bw50 + ch51 * bw51 + ch52 * bw52 + ch53 * bw53 + ch54 * bw54 + ch55 * bw55 + ch56 * bw56 + ch57 * bw57 + ch58 * bw58
ch5058 = ch5058 / bwall
'output = CStr(itest2) + "  " + CStr(ch1) + "  " + CStr(ch51) + "  " + CStr(ech51) + "  " + CStr(ch53) + "  " + CStr(ech53) + "  " + CStr(ch57) + "  " + CStr(ech57) + "  " + CStr(ch59) + "  " + CStr(ech59)
'output = CStr(itest2) + "  " + CStr(ch1) + "  " + CStr(ch72) + "  " + CStr(ech72) + "  " + CStr(ch73) + "  " + CStr(ech73) + "  " + CStr(ch74) + "  " + CStr(ech74) + "  " + CStr(ch76) + "  " + CStr(ech76)
output = CStr(itest2) + "  " + CStr(ch1) + "  " + CStr(ch5058)
''output = CStr(itest2) + "  " + CStr(flxhe0)
''Write #25, itest2, flxhe, errhe, flxhe2, effhe2
Print #25, output
End If

Loop

Close (lun)
'Print , 'end'
Next lun
For m = 1 To 9


Next m
Close (25)
Stop
End Sub


