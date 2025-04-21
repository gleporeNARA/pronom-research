VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "zRoutine"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public StackSerial As Long
Private lLocals(16) As Long
Public FramePointer As Long
Public ReturnAddress As Long
Public ArgCount As Long
Public LocalCount As Long
'Public CallingRoutine As zRoutine
Public StoreVar As Integer
Property Get Locals(ByVal Index As Byte) As Long
    Locals = lLocals(Index)
End Property
Property Let Locals(ByVal Index As Byte, NewVal As Long)
    lLocals(Index) = NewVal
End Property
