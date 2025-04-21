VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "zInstruction"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public Address As Long
Public OpCode As OpCodes
Public OpCodeType As OpCodeTypes
Public NextInstr As Long
Public OperandCount As Byte
Private lOperand() As Long
Private lOperandType() As OperandTypes
Public Store As Long
Public Branch As Long
Public BranchCond As Boolean
Public Text As String
Property Get Operand(ByVal Index As Integer) As Long
    Operand = lOperand(Index)
End Property
Property Let Operand(ByVal Index As Integer, expr As Long)
    lOperand(Index) = expr
End Property
Property Get OperandType(ByVal Index As Integer) As Long
    OperandType = lOperandType(Index)
End Property
Property Let OperandType(ByVal Index As Integer, expr As Long)
    lOperandType(Index) = expr
End Property
Public Function SetOperandCount(Size As Integer, Optional KeepValues As Boolean)
    If KeepValues Then
        ReDim Preserve lOperand(Size)
        ReDim Preserve lOperandType(Size)
    Else
        ReDim lOperand(Size)
        ReDim lOperandType(Size)
    End If
End Function
