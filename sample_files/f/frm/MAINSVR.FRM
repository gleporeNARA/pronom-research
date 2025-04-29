VERSION 5.00
Begin VB.Form formmainsvr 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Time Card Server"
   ClientHeight    =   6795
   ClientLeft      =   1410
   ClientTop       =   1515
   ClientWidth     =   8880
   Height          =   7200
   Left            =   1350
   LinkTopic       =   "Form2"
   ScaleHeight     =   6795
   ScaleWidth      =   8880
   Top             =   1170
   Width           =   9000
   Begin VB.ListBox lstUsers 
      Height          =   4575
      Left            =   480
      TabIndex        =   7
      Top             =   720
      Width           =   3372
   End
   Begin VB.CommandButton btnAddUsr 
      Caption         =   "&Add"
      Height          =   372
      Left            =   480
      TabIndex        =   6
      Top             =   5880
      Width           =   1212
   End
   Begin VB.CommandButton btnRemoveAllUsers 
      Caption         =   "&Remove All"
      Height          =   372
      Left            =   2640
      TabIndex        =   5
      Top             =   5880
      Width           =   1212
   End
   Begin VB.TextBox txtCat 
      Height          =   372
      Left            =   4920
      TabIndex        =   3
      Top             =   720
      Width           =   3372
   End
   Begin VB.ListBox lstCat 
      Height          =   3795
      ItemData        =   "mainsvr.frx":0000
      Left            =   4920
      List            =   "mainsvr.frx":0007
      TabIndex        =   2
      Top             =   1500
      Width           =   3372
   End
   Begin VB.CommandButton btnAddCat 
      Caption         =   "A&dd"
      Default         =   -1  'True
      Enabled         =   0   'False
      Height          =   372
      Left            =   4920
      TabIndex        =   1
      Top             =   5880
      Width           =   1212
   End
   Begin VB.CommandButton btnRemoveCat 
      Caption         =   "Remo&ve"
      Enabled         =   0   'False
      Height          =   372
      Left            =   7080
      TabIndex        =   0
      Top             =   5880
      Width           =   1212
   End
   Begin VB.Label Label1 
      Caption         =   "User List"
      Height          =   252
      Left            =   480
      TabIndex        =   8
      Top             =   240
      Width           =   1572
   End
   Begin VB.Label lblName 
      Caption         =   "Category to add"
      Height          =   252
      Left            =   4800
      TabIndex        =   4
      Top             =   240
      Width           =   1572
   End
   Begin VB.Line Line1 
      X1              =   4440
      X2              =   4440
      Y1              =   0
      Y2              =   6840
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuSave 
         Caption         =   "&Save"
      End
      Begin VB.Menu mnus 
         Caption         =   "-"
         Index           =   1
      End
      Begin VB.Menu mnuExit 
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu mnuReport 
      Caption         =   "&Report"
      Begin VB.Menu mnuSend 
         Caption         =   "&Send Requests"
      End
      Begin VB.Menu mnuGenerate 
         Caption         =   "&Generate Report"
      End
      Begin VB.Menu mnuse 
         Caption         =   "-"
      End
      Begin VB.Menu mnuCleanUp 
         Caption         =   "&Clean Up Receiving Folder"
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuAbout 
         Caption         =   "&About"
      End
   End
End
Attribute VB_Name = "formmainsvr"
Attribute VB_Base = "0{CFF16A11-C697-11CF-A520-00A0D1003923}"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_TemplateDerived = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Attribute VB_Customizable = False
Option Explicit




Sub GetCategoryList()

ReDim CategoryList.aCats(lstCat.ListCount) As String
Dim ind As Integer

CategoryList.cCats = lstCat.ListCount

ind = 0
Do While ind < CategoryList.cCats
    CategoryList.aCats(ind) = lstCat.List(ind)
    ind = ind + 1
Loop
    
End Sub




Public Sub SendRequest(cCats As Integer, Cats() As String, PayPrd As Date, Reminder As Boolean)
'sends request message

On Error GoTo error_olemsg

Dim objmessage As Object
Dim prop As Object
Dim objRecip As Object
Dim objRecipCol As Object
Dim objFieldCol As Object
Dim objAttachmentCol As Object
Dim objAtt As Object
Dim ind As Integer
Dim msgBody As String


If UserList.cUsers = 0 Then
    MsgBox "User List is empty"
    Exit Sub
End If

If cCats = 0 Then
    MsgBox "Category list is empty"
    Exit Sub
End If

If Not Reminder Then
    If Not frmCalender.GetDate(PayPrd) Then
        Exit Sub
    End If
End If

If objSession Is Nothing Then
    MsgBox "Not logged on"
    Exit Sub
End If

'create new message in the outbox
Set objmessage = objSession.Outbox.Messages.Add
If objmessage Is Nothing Then
    MsgBox "Can't add a prop"
    Exit Sub
End If


If Not Reminder Then
    objmessage.Subject = "Time to fill out your time report"
    msgBody = ""
Else
    objmessage.Subject = "SECOND NOTICE: Time to fill out your time report"
    msgBody = "Your time report has not been received. "
End If

msgBody = msgBody & "Please run the attached application (double click on the attachment) and fill out the form"
'set the body of the message
objmessage.Text = msgBody

'set the message class
objmessage.Type = RequestMsgType

'open recipients collection
Set objRecipCol = objmessage.Recipients
If objRecipCol Is Nothing Then
    MsgBox "Can't open msg's recipients"
    Exit Sub
End If

'add recipients
For ind = 0 To UserList.cUsers - 1
    If Not Reminder Then 'send to everybody
        Set objRecip = objRecipCol.Add(EntryID:=UserList.aUsers(ind).EntryID, _
                    Name:=UserList.aUsers(ind).DisplayName)
                    
    Else 'if this is a reminder, send only to the people we don't have reports from
        If UserList.aUsers(ind).ReportIndex = E_NOT_FOUND Then
            Set objRecip = objRecipCol.Add(EntryID:=UserList.aUsers(ind).EntryID, _
                    Name:=UserList.aUsers(ind).DisplayName)
        Else
            GoTo continue
        End If
        
    End If
    If objRecip Is Nothing Then
        MsgBox "Can't add recipient"
        Exit Sub
    End If
continue:
Next ind


'open msg's field collection
Set objFieldCol = objmessage.Fields
If objFieldCol Is Nothing Then
    MsgBox "Can't open msg's fields collection"
    Exit Sub
End If


'set the report categories
'we can't write:
'Set prop = objFieldCol.Add(Name:=CatPropName, _
            Class:=vbString + vbArray, _
            Value:=Cats)
'because of the way VB passes array parameters
'so we first add a property and then set its value
Set prop = objFieldCol.Add(Name:=CatPropName, _
            Class:=vbString + vbArray)
If prop Is Nothing Then
        MsgBox "Can't add a prop"
        Exit Sub
    End If
prop.Value = Cats

'set the number of report categories
Set prop = objFieldCol.Add(Name:=NumCatPropName, _
            Class:=vbInteger, _
            Value:=cCats)
If prop Is Nothing Then
        MsgBox "Can't add a prop"
        Exit Sub
    End If
            
'set the report payperiod
Set prop = objFieldCol.Add(Name:=PayPeriodPropName, _
            Class:=vbDate, _
            Value:=PayPrd)
If prop Is Nothing Then
        MsgBox "Can't add a prop"
        Exit Sub
End If
    
'open msg's attachment collection
Set objAttachmentCol = objmessage.Attachments
If objAttachmentCol Is Nothing Then
    MsgBox "Can't open attachment collection"
    Exit Sub
End If

'create a new attachment
Set objAtt = objAttachmentCol.Add
If objAtt Is Nothing Then
    MsgBox "Can't add attachment"
    Exit Sub
End If

'send the client.exe as an attachment
objAtt.Type = mapiFileData      'means the file is contained withing the message
objAtt.position = 0             'no particular position
objAtt.ReadFromFile ClientExePath   'read in the file
objAtt.Name = ClientExeName      'set the file name

objmessage.Send showDialog:=False

Exit Sub

error_olemsg:
    MsgBox "Error " & Str(err) & ": " & Error$(err)
    Resume Next

End Sub



Private Sub btnAddCat_Click()
    lstCat.AddItem txtCat.Text  ' Add a client name to the list box.
    txtCat.Text = ""            ' Clear the text box.
    txtCat.SetFocus             ' Place focus back to the text box.

End Sub


Private Sub btnAddUsr_Click()
Dim objNewUsers As Object
Dim ind As Integer

On Error GoTo err_btnAdd_Click

If objSession Is Nothing Then
    MsgBox "must first create MAPI session and logon"
    Exit Sub
End If

Set objNewUsers = objSession.AddressBook( _
        Title:="Select Users", _
        forceResolution:=True, _
        recipLists:=1, _
        toLabel:="&New Users")  ' appears on button
        
ReDim Preserve UserList.aUsers(UserList.cUsers + objNewUsers.Count)

With objNewUsers
For ind = 0 To (objNewUsers.Count - 1) Step 1
    With .Item(ind + 1)
    UserList.aUsers(UserList.cUsers + ind).DisplayName = .Name
    UserList.aUsers(UserList.cUsers + ind).EntryID = .addressentry.id
    UserList.aUsers(UserList.cUsers + ind).ReportIndex = E_NOT_FOUND
    End With
Next ind
End With

  
UserList.cUsers = UserList.cUsers + objNewUsers.Count
  
PopulateUserList

Exit Sub

err_btnAdd_Click:
    If Not (err = 91) Then   ' object not set
           MsgBox "Unrecoverable Error:" & err
    End If


End Sub

Private Sub btnRemoveAllUsers_Click()
    lstUsers.Clear                                 ' Empty the list box.
    btnRemoveAllUsers.Enabled = False
    
    UserList.cUsers = 0
End Sub


Private Sub btnRemoveCat_Click()
Dim ind As Integer
    
    ind = lstCat.ListIndex              ' Get index.
    If ind >= 0 Then                    ' Make sure a list item is selected.
        lstCat.RemoveItem ind           ' Remove the item from the list box.
    Else
        Beep                            ' This should never occur, because Remove is always disabled if no entry is selected.
    End If
    ' Disable the Remove button if no entries are selected in the list box.
    btnRemoveCat.Enabled = (lstCat.ListIndex <> -1)

End Sub


Private Sub Form_Load()
Dim bFlag As Boolean

On Error GoTo error_olemsg

bFlag = Util_CreateSessionAndLogon()

If Not bFlag Then End


InitUserList
PopulateUserList

InitCategorylist
PopulateCatList

InitPayPeriod


Exit Sub

    
error_olemsg:
    If Not bFlag Then
        MsgBox "Error " & Str(err) & ": " & Error$(err)
        End
    End If
    

End Sub

Private Sub Form_Unload(Cancel As Integer)
If Not objSession Is Nothing Then
        objSession.logoff
    End If
            

End Sub


Private Sub lstCat_Click()
    btnRemoveCat.Enabled = (lstCat.ListIndex <> -1)

End Sub

Private Sub lstUsers_Click()
    btnRemoveAllUsers.Enabled = (lstUsers.ListIndex <> -1)

End Sub

Private Sub lstUsers_DblClick()
On Error GoTo err

Dim ind As Integer
Dim AddrEntry As Object

    ind = lstUsers.ListIndex
    If ind >= 0 Then
        Set AddrEntry = objSession.GetAddressEntry(UserList.aUsers(ind).EntryID)
        If AddrEntry Is Nothing Then Exit Sub
        AddrEntry.details
        
    Else
        Beep
    End If
    
Exit Sub
 
err:
    If Not (err = -2147221229) Then   ' object not set
           MsgBox "Unrecoverable Error:" & err
    End If

End Sub


Private Sub mnuAbout_Click()
    formAbout.Show 1
    
End Sub


Private Sub mnuCleanUp_Click()

On Error GoTo error_olemsg

Dim objReceivFolder As Object
Dim objmessages As Object
Dim objmessage As Object

If objSession Is Nothing Then
    MsgBox "Not logged on"
    Exit Sub
End If

GetReceivIPCFolder objReceivFolder
If objReceivFolder Is Nothing Then
    MsgBox "Can't open receive folder"
    Exit Sub
End If
    
Set objmessages = objReceivFolder.Messages
If objmessages Is Nothing Then
    MsgBox "Failed to open folder's Messages collection"
    Exit Sub
End If

Set objmessage = objmessages.getfirst(ReportMsgType)
Do While Not objmessage Is Nothing
    
    If Not objmessage.Unread Then
        objmessage.Delete
    End If
    
    Set objmessage = objmessages.getnext
Loop

Exit Sub

error_olemsg:
    MsgBox "Error " & Str(err) & ": " & Error$(err)
    Resume Next
    
End Sub

Private Sub mnuExit_Click()
    
    Unload Me
    'End
End Sub

Private Sub mnuGenerate_Click()
    
If formReport.CompileReport Then
    formReport.Show 1
End If

'user list may have changed
PopulateUserList

End Sub


Private Sub SaveCats()
On Error GoTo CheckError

Dim ind As Integer


Open CatsListFile For Output As #1

Write #1, CategoryList.cCats

ind = 0
Do While ind < CategoryList.cCats
    Print #1, CategoryList.aCats(ind)
    ind = ind + 1
Loop

Close #1

Exit Sub

CheckError:
MsgBox "Error saving user list"

End Sub

Private Sub SaveUsers()

On Error GoTo CheckError

Dim ind As Integer

'If UserList.cUsers = 0 Then Exit Sub


Open UserListFile For Output As #1

Write #1, UserList.cUsers

ind = 0
Do While ind < UserList.cUsers
    Print #1, UserList.aUsers(ind).DisplayName
    Print #1, UserList.aUsers(ind).EntryID
    ind = ind + 1
Loop

Close #1

Exit Sub

CheckError:
MsgBox "Error saving user list"

End Sub



Private Sub mnuSave_Click()

GetUserList
SaveUsers

GetCategoryList
SaveCats

End Sub

Private Sub mnuSend_Click()

GetUserList
GetCategoryList

MousePointer = WaitCursor
SendRequest CategoryList.cCats, CategoryList.aCats, PayPeriod, False
MousePointer = DefaultCursor

End Sub


Function Util_CreateSessionAndLogon() As Boolean
    On Error GoTo err_CreateSessionAndLogon

    Set objSession = CreateObject("MAPI.Session")
    If Not objSession Is Nothing Then
        objSession.Logon
    Else
        Util_CreateSessionAndLogon = False
        Exit Function
    End If
    Util_CreateSessionAndLogon = True
    
    Exit Function

err_CreateSessionAndLogon:
    Set objSession = Nothing
    
    If (err <> -2147221229) Then  ' VB4.0 uses "Err.Number"
        MsgBox "Unrecoverable Error:" & err
    End If
    Util_CreateSessionAndLogon = False
    Exit Function
    
error_olemsg:
    MsgBox "Error " & Str(err) & ": " & Error$(err)
    Resume Next

End Function


Sub GetUserList()
'empty for now
End Sub

Sub InitPayPeriod()

    PayPeriod = Date
End Sub

Sub InitUserList()

On Error GoTo CheckError

Dim ind As Integer
Dim cSavedUsers As Integer

Open UserListFile For Input As #1

Input #1, cSavedUsers
Debug.Print "found " & cSavedUsers & " saved users"

ReDim UserList.aUsers(cSavedUsers)

ind = 0
Do While ind < cSavedUsers
    Line Input #1, UserList.aUsers(ind).DisplayName
    Line Input #1, UserList.aUsers(ind).EntryID
    UserList.aUsers(ind).ReportIndex = E_NOT_FOUND
    ind = ind + 1
Loop

Close #1

UserList.cUsers = cSavedUsers

Exit Sub

CheckError:
UserList.cUsers = 0
    
End Sub




Sub InitCategorylist()
'Read saved cats from file

On Error GoTo CheckError

Dim ind As Integer
Dim cSavedCats As Integer

Open CatsListFile For Input As #1

Input #1, cSavedCats
Debug.Print "found " & cSavedCats & " saved categories"

ReDim CategoryList.aCats(cSavedCats)

ind = 0
Do While ind < cSavedCats
    Line Input #1, CategoryList.aCats(ind)
    ind = ind + 1
Loop

Close #1

CategoryList.cCats = cSavedCats

Exit Sub

CheckError:
CategoryList.cCats = 0
    
End Sub



Private Sub txtCat_Change()
    ' Enable the Add button if at least one character in the name is entered or changed.
    btnAddCat.Enabled = (Len(txtCat.Text) > 0)

End Sub
Sub PopulateUserList()

Dim ind As Integer

lstUsers.Clear

For ind = 0 To UserList.cUsers - 1
       lstUsers.AddItem UserList.aUsers(ind).DisplayName
Next ind

End Sub



Private Sub PopulateCatList()
Dim ind As Integer

lstCat.Clear

For ind = 0 To CategoryList.cCats - 1
    lstCat.AddItem CategoryList.aCats(ind)
Next ind

End Sub
