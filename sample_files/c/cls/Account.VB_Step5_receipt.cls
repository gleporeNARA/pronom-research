VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "GetReceipt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
' Filename: Account.vbp
'
' Description:  GetReceipt Class
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

Public Function GetNextReceipt() As Long
    
    On Error GoTo ErrorHandler
    
    ' If Shared property does not already exist it will be initialized
    Dim spmMgr As SharedPropertyGroupManager
    Set spmMgr = CreateObject("MTxSpm.SharedPropertyGroupManager.1")

    Dim spmGroup As SharedPropertyGroup
    Dim bResult As Boolean
    Set spmGroup = spmMgr.CreatePropertyGroup("Receipt", LockMethod, Process, bResult)

    Dim spmPropNextReceipt As SharedProperty
    Set spmPropNextReceipt = spmGroup.CreateProperty("Next", bResult)
    
    ' Set the initial value of the Shared Property to
    ' 0 if the Shared Property didn’t already exist.
    ' This is not entirely necessary but demonstrates how to initialize a value.
    If bResult = False Then
        spmPropNextReceipt.Value = 0
    End If

    ' Get the next receipt number and update property
    spmPropNextReceipt.Value = spmPropNextReceipt.Value + 1

    GetObjectContext.SetComplete          ' we are finished and happy
    
    GetNextReceipt = spmPropNextReceipt.Value
    
    Exit Function
    
ErrorHandler:
    GetObjectContext.SetAbort             ' we are unhappy
    
    GetNextReceipt = -1            ' indicate that an error occured
    
    Err.Raise Err.Number, "Bank.GetReceipt.GetNextReceipt", Err.Description
    
End Function


