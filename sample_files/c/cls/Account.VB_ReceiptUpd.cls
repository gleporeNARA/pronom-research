VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "UpdateReceipt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
' Filename: Account.vbp
'
' Description:  UpdateReceipt Class
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

Private Const ERROR_NUMBER = vbObjectError + 0
Private Const APP_ERROR = -2147467008
Private Const strConnect = "FILEDSN=MTSSamples"

Public Function Update() As Long
    
    On Error GoTo ErrorHandler
    
    ' get result set and then update table with new receipt number
    Dim adoConn As New ADODB.Connection
    Dim adoRsReceipt As ADODB.Recordset
    Dim lngNextReceipt As Long
    Dim strSQL As String
  
    strSQL = "Update Receipt set NextReceipt = NextReceipt + 100"
    
    adoConn.Open strConnect
    
    ' Assume that if there is an ado error then the receipt
    ' table does not exist
    On Error GoTo ErrorCreateTable

TryAgain:
    
    adoConn.Execute strSQL
    
    strSQL = "Select NextReceipt from Receipt"
    Set adoRsReceipt = adoConn.Execute(strSQL)
    lngNextReceipt = adoRsReceipt!NextReceipt
    
    Set adoConn = Nothing
    Set adoRsReceipt = Nothing
  
    GetObjectContext.SetComplete          ' we are finished and happy

    Update = lngNextReceipt
    
    Exit Function

ErrorCreateTable:

    On Error GoTo ErrorHandler
   
    ' create the receipt table
    Dim objCreateTable As CreateTable
    Set objCreateTable = CreateObject("Bank.CreateTable")
    objCreateTable.CreateReceipt
      
    GoTo TryAgain
    
ErrorHandler:
    
    If Not adoConn Is Nothing Then
        Set adoConn = Nothing
    End If
    If Not adoRsReceipt Is Nothing Then
        Set adoRsReceipt = Nothing
    End If
    
    GetObjectContext.SetAbort      ' we are unhappy
    
    Update = -1                    ' indicate that an error occured
    
    Err.Raise Err.Number, "Bank.UpdateReceipt.Update", Err.Description
    
End Function
