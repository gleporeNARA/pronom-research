VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Account"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
' Filename: Account.vbp
'
' Description:  Account Class
'
' This file is provided as part of the Microsoft Transaction Server Samples
'
' THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT
' WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED,
' INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES
' OF MERCHANTABILITY AND/OR FITNESS FOR A  PARTICULAR
' PURPOSE.
'
' Copyright (C) 1997 Microsoft Corporation, All rights reserved

Option Explicit

Public Function Post(ByRef lngAccount As Long, ByRef lngAmount As Long) As String
    
    On Error GoTo ErrorHandler
    Post = "Hello from Account!!!"
    Exit Function
    ' Return the error message indicating that an error occurred.
ErrorHandler:
    Err.Raise Err.Number, "Bank.Account.Post", Err.Description
End Function
