VERSION 2.00
Begin Form login 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   3  'Fixed Double
   Caption         =   "SQL Server Login"
   ForeColor       =   &H00000000&
   Height          =   2640
   Left            =   975
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2235
   ScaleWidth      =   6720
   Top             =   2055
   Width           =   6840
   Begin TextBox password_field 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   1320
      TabIndex        =   5
      Text            =   "Text1"
      Top             =   1440
      Width           =   3480
   End
   Begin CommandButton CANCEL_BUTTON 
      BackColor       =   &H00C0C0C0&
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   480
      Left            =   5160
      TabIndex        =   7
      Top             =   960
      Width           =   1320
   End
   Begin TextBox login_id_field 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   1320
      TabIndex        =   3
      Text            =   "Text1"
      Top             =   840
      Width           =   3480
   End
   Begin CommandButton OK_BUTTON 
      BackColor       =   &H00C0C0C0&
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   480
      Left            =   5160
      TabIndex        =   6
      Top             =   240
      Width           =   1320
   End
   Begin TextBox Server_name_field 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   1320
      TabIndex        =   1
      Text            =   "Text1"
      Top             =   240
      Width           =   3480
   End
   Begin Label Label3 
      BackColor       =   &H00FFFFFF&
      Caption         =   "&Password:"
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   120
      TabIndex        =   4
      Top             =   1560
      Width           =   960
   End
   Begin Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "&Login ID:"
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   120
      TabIndex        =   2
      Top             =   960
      Width           =   960
   End
   Begin Label Label1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "&Server:"
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   960
   End
End
'$INCLUDE: 'VBQUERY.BI'
'$INCLUDE: 'VBDSQL.BI'

Sub CANCEL_BUTTON_Click ()
 Unload Login
End Sub

Sub Form_Load ()
	Server_name_field.Text = DefServer$
	Login_id_field.Text = DefLogin$
	Password_field.Text = ""
	password$ = ""

End Sub

Sub OK_BUTTON_Click ()

Rem
Rem Get the server name, login Id, & password from the form
Rem

   Servername$ = Server_name_field.Text
   LoginID$ = Login_id_field.Text

Rem Note: Allow a null server name because you may be running on the
Rem same machine as SQL Server.  Allow a null login id because
Rem SQL Server may be running integrated security.


Rem
Rem Connect to the server
Rem

	If LoginToServer() = SUCCEED Then
	    Unload Login
	Else
	    Password_field.Text = ""
	    password$ = ""
	End If


End Sub

Sub password_field_KeyPress (keyascii As Integer)

Rem
Rem This will keep the key from being seen
Rem

'   if key pressed is a letter or a number, add it to password and show *

If (keyascii >= 48 And keyascii <= 57) Or (keyascii >= 65 And keyascii <= 90) Or (keyascii >= 97 And keyascii <= 122) Then
	password$ = password$ + Chr$(keyascii)
	keyascii = Asc("*")

ElseIf (keyascii = 8) Then   'if backspace
	If Len(password$) > 0 Then
	password$ = Left$(password$, Len(password$) - 1)
	End If
Else                        'if anything else, throw out
	keyascii = 0
	Beep
End If

End Sub

