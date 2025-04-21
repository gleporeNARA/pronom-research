VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "zScreen"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Private BackColor As Long
Private TextColor As Long
Private bSetup As Boolean
Private lDC As Long
Private lWnd As Long
Private Type zWindow
    Top As Integer
    Left As Integer
    Width As Integer
    Height As Integer
    CursorX As Integer
    CursorY As Integer
    CurrentX As Long
    CurrentY As Long
    TextStyle As Byte
    BufferMode As Byte
End Type
Private CurX As Long
Private CurY As Long
Public LinesPrinted As Long
Public CharWidth As Long
Public CharHeight As Long
Public ScreenHeight As Long
Public ScreenWidth As Long
Public FixedFontSize As Long
Public VariableFontSize As Long
Dim Window(8) As zWindow
Dim ActiveWindow As Integer
Public Function SetColor(ForeColor As Long, BackColor As Long)
    Select Case ForeColor
        Case 0
            
        Case 1
            SetTextColor lDC, 0
            TextColor = 0
        Case 2
            SetTextColor lDC, 0
            TextColor = 0
        Case 3
            SetTextColor lDC, (256# * 256# * 255)
            TextColor = (256# * 256# * 255)
        Case 4
            SetTextColor lDC, (256# * 255#)
            TextColor = (256# * 255#)
        Case 5
            SetTextColor lDC, (256# * 255 + 256# * 256# * 255)
            TextColor = (256# * 255 + 256# * 256# * 255)
        Case 6
            SetTextColor lDC, 255
            TextColor = 255
        Case 7
            SetTextColor lDC, (256# * 256# * 255 + 255)
            TextColor = (256# * 256# * 255 + 255)
        Case 8
            SetTextColor lDC, (256# * 255 + 255)
            TextColor = (256# * 255 + 255)
        Case 9
            SetTextColor lDC, (256# * 255 + 256# * 256# * 255 + 255)
            TextColor = (256# * 255 + 256# * 256# * 255 + 255)
        Case 10
            SetTextColor lDC, (256# * 192 + 256# * 256# * 192 + 192)
            TextColor = (256# * 192 + 256# * 256# * 192 + 192)
        Case 11
            SetTextColor lDC, (256# * 128 + 256# * 256# * 128 + 128)
            TextColor = (256# * 128 + 256# * 256# * 128 + 128)
        Case 12
            SetTextColor lDC, (256# * 64 + 256# * 256# * 64 + 64)
            TextColor = (256# * 64 + 256# * 256# * 64 + 64)
    End Select
    Select Case BackColor
        Case 0
            
        Case 1
            SetBkColor lDC, (256# * 255 + 256# * 256# * 255 + 255)
            BackColor = (256# * 255 + 256# * 256# * 255 + 255)
        Case 2
            SetBkColor lDC, 0
            BackColor = 0
        Case 3
            SetBkColor lDC, (256# * 256# * 255)
            BackColor = (256# * 256# * 255)
        Case 4
            SetBkColor lDC, (256# * 255)
            BackColor = (256# * 255)
        Case 5
            SetBkColor lDC, (256# * 255 + 256# * 256# * 255)
            BackColor = (256# * 255 + 256# * 256# * 255)
        Case 6
            SetBkColor lDC, 255
            BackColor = 255
        Case 7
            SetBkColor lDC, (256# * 256# * 255 + 255)
            BackColor = (256# * 256# * 255 + 255)
        Case 8
            SetBkColor lDC, (256# * 255 + 255)
            BackColor = (256# * 255 + 255)
        Case 9
            SetBkColor lDC, (256# * 255 + 256# * 256# * 255 + 255)
            BackColor = (256# * 255 + 256# * 256# * 255 + 255)
        Case 10
            SetBkColor lDC, (256# * 192 + 256# * 256# * 192 + 192)
            BackColor = (256# * 192 + 256# * 256# * 192 + 192)
        Case 11
            SetBkColor lDC, (256# * 128 + 256# * 256# * 128 + 128)
            BackColor = (256# * 128 + 256# * 256# * 128 + 128)
        Case 12
            SetBkColor lDC, (256# * 64 + 256# * 256# * 64 + 64)
            BackColor = (256# * 64 + 256# * 256# * 64 + 64)
    End Select
    'SetWindow ActiveWindow
End Function
Public Function SplitWindow(ByVal Lines As Long)
    'If Window(1).Top > Lines Then
        'Window(1).CurrentY = Window(1).CurrentY + CharHeight * (Window(1).Top - Line)
    'End If
    Window(1).Top = 1 + Lines
    Window(1).Height = (ScreenHeight / CharHeight) - Lines
    Window(1).Width = ScreenWidth / CharWidth
    Window(2).Top = 1
    Window(2).Height = Lines
    Window(2).Width = ScreenWidth / CharWidth
    If Window(1).CurrentY < Window(1).Top * CharHeight Then Window(1).CurrentY = Window(1).Top * CharHeight
End Function
Public Function SetWindow(ByVal WindowNo As Long)
    Dim Italics As Long
    Dim Bold As Long
    Dim Fixed As Long
    ActiveWindow = WindowNo + 1
    If (Window(WindowNo + 1).TextStyle And 2) = 2 Then Bold = 700 Else Bold = 400
    If (Window(WindowNo + 1).TextStyle And 4) = 4 Then Italics = 1 Else Italics = False
    If (Window(WindowNo + 1).TextStyle And 8) = 8 Or ActiveWindow = 2 Then Fixed = 1 Else Fixed = 2
    SetOutputFont 15, Fixed, Bold, Italics
    If (Window(WindowNo + 1).TextStyle And 1) = 1 Then
        SetTextColor lDC, BackColor
        SetBkColor lDC, TextColor
    Else
        SetTextColor lDC, TextColor
        SetBkColor lDC, BackColor
    End If
    If ActiveWindow = 2 Then Window(2).CurrentX = 0: Window(2).CurrentY = 0
End Function
Public Function EraseWindow(ByVal WindowNo As Long)
    Dim rt As RECT
    If WindowNo = -1 Then
        Window(2).Top = 0
        Window(2).Left = 0
        Window(2).Height = 0
        Window(2).Width = 0
        bSetup = False
        WindowNo = 0
    End If
    If Not bSetup Then SetupScreen
    WindowNo = WindowNo + 1
    rt.Top = (Window(WindowNo).Top - 1) * CharHeight
    rt.Left = (Window(WindowNo).Left - 1) * CharWidth
    rt.Bottom = (Window(WindowNo).Top + Window(WindowNo).Height + -1) * CharHeight
    rt.Right = (Window(WindowNo).Left + Window(WindowNo).Width + -1) * CharWidth
    Rectangle lDC, rt.Left, rt.Top, rt.Right, rt.Bottom
    Window(WindowNo).CurrentX = 0
    Window(WindowNo).CurrentY = 0
    InvalidateRect lWnd, rt, 0
    DoEvents
End Function
Public Function EraseLine(ByVal value As Long, ByVal Ver As Long)

End Function
Public Function SetCursor(ByVal Ln As Long, ByVal Cl As Long, ByVal Ver As Long, Optional ByVal WindowNo As Long)
    If WindowNo <> 0 Then ActiveWindow = WindowNo
    If Ln < Window(ActiveWindow).Top Then Ln = Window(ActiveWindow).Top
    If Ln > Window(ActiveWindow).Top + Window(ActiveWindow).Height Then Ln = Window(ActiveWindow).Top + Window(ActiveWindow).Height
    If Cl < Window(ActiveWindow).Left Then Ln = Window(ActiveWindow).Left
    If Cl > Window(ActiveWindow).Left + Window(ActiveWindow).Width Then Ln = Window(ActiveWindow).Left + Window(ActiveWindow).Width
    Window(ActiveWindow).CurrentX = (Cl - 1) * CharWidth
    Window(ActiveWindow).CurrentY = (Ln - 1) * CharHeight
End Function
Public Function GetCursor(ByRef Row As Long, ByRef Col As Long)
    Row = Window(ActiveWindow).CurrentY \ CharHeight + 1
    Col = Window(ActiveWindow).CurrentX \ CharWidth + 1
End Function
Public Function GetTextStyle() As Long
    GetTextStyle = Window(ActiveWindow).TextStyle
End Function
Public Function SetTextStyle(ByVal style As Long)
    Dim Italics As Long
    Dim Bold As Long
    Dim Fixed As Long
    If style = 0 Then
         Window(ActiveWindow).TextStyle = 0
    Else
         Window(ActiveWindow).TextStyle = (Window(ActiveWindow).TextStyle Or style)
    End If
    If (Window(ActiveWindow).TextStyle And 2) = 2 Then Bold = 700 Else Bold = 400
    If (Window(ActiveWindow).TextStyle And 4) = 4 Then Italics = 1 Else Italics = False
    If (Window(ActiveWindow).TextStyle And 8) = 8 Or ActiveWindow = 2 Then Fixed = 1 Else Fixed = 2
    SetOutputFont 15, Fixed, Bold, Italics
    If (Window(ActiveWindow).TextStyle And 1) = 1 Then
        SetTextColor lDC, BackColor
        SetBkColor lDC, TextColor
    Else
        SetTextColor lDC, TextColor
        SetBkColor lDC, BackColor
    End If
End Function
Public Function OutPut(ByVal OutStr As String, Optional EraseLastLine As Boolean) As String
    Dim sz As Size
    Dim i As Integer
    Dim a As String
    Dim rt As RECT
    Dim TempStr As String
    If Not bSetup Then SetupScreen
    rt.Top = (Window(ActiveWindow).Top - 1) * CharHeight
    rt.Left = (Window(ActiveWindow).Left - 1) * CharWidth
    rt.Bottom = (Window(ActiveWindow).Top + Window(ActiveWindow).Height + -1) * CharHeight
    rt.Right = (Window(ActiveWindow).Left + Window(ActiveWindow).Width + -1) * CharWidth
    If EraseLastLine Then Rectangle lDC, rt.Left, rt.Bottom, rt.Right, rt.Bottom + CharHeight * 2
    'OutStr = Replace(OutStr, "^", vbCrLf)
    For i = 1 To Len(OutStr)
        If Mid(OutStr, i, 2) = vbCrLf Then
            Window(ActiveWindow).CurrentX = 0
            GetTextExtentPoint32 lDC, OutStr, Len(OutStr), sz
            Window(ActiveWindow).CurrentY = Window(ActiveWindow).CurrentY + CharHeight
            If ActiveWindow = 1 Then LinesPrinted = LinesPrinted + 1
            If LinesPrinted > Window(ActiveWindow).Height - 1 Then
                TextOut lDC, 0, Window(ActiveWindow).CurrentY, "[**MORE**]", 10
                OutPut = Mid(OutStr, i + 1)
                Exit Function
            End If
            If Window(ActiveWindow).CurrentY + CharHeight > rt.Bottom And ActiveWindow = 1 Then
                BitBlt lDC, rt.Left, rt.Top, rt.Right - rt.Left, rt.Bottom - CharHeight, lDC, rt.Left, rt.Top + CharHeight, SRCCOPY
                Rectangle lDC, rt.Left, rt.Bottom - CharHeight, rt.Right, rt.Bottom
                Window(ActiveWindow).CurrentY = rt.Bottom - CharHeight
            End If
            i = i + 1
        Else
            TempStr = SeperateWord(Mid(OutStr, i))
            GetTextExtentPoint32 lDC, TempStr, Len(TempStr), sz
            If Window(ActiveWindow).CurrentX + sz.cx > rt.Right Then
                Window(ActiveWindow).CurrentX = 0
                Window(ActiveWindow).CurrentY = Window(ActiveWindow).CurrentY + CharHeight
                If ActiveWindow = 1 Then LinesPrinted = LinesPrinted + 1
            End If
            If Window(ActiveWindow).CurrentY + CharHeight > rt.Bottom And ActiveWindow = 1 Then
                BitBlt lDC, rt.Left, rt.Top, rt.Right - rt.Left, rt.Bottom - CharHeight, lDC, rt.Left, rt.Top + CharHeight, SRCCOPY
                Rectangle lDC, rt.Left, rt.Bottom - CharHeight, rt.Right, rt.Bottom
                Window(ActiveWindow).CurrentY = rt.Bottom - CharHeight
                If ActiveWindow = 1 Then LinesPrinted = LinesPrinted + 1
                If LinesPrinted > Window(ActiveWindow).Height - 1 Then
                    TextOut lDC, 0, Window(ActiveWindow).CurrentY, "[**MORE**]", 10
                    OutPut = Mid(OutStr, i + 1)
                    Exit Function
                End If
            End If
            TextOut lDC, Window(ActiveWindow).CurrentX, Window(ActiveWindow).CurrentY, TempStr, Len(TempStr)
            Window(ActiveWindow).CurrentX = Window(ActiveWindow).CurrentX + sz.cx
            i = i + Len(TempStr) - 1
        End If
    Next
End Function
Property Let hdc(value As Long)
    Dim hBrush As Long
    lDC = value
    SetBkMode lDC, OPAQUE
    BackColor = GetBkColor(lDC)
    TextColor = GetTextColor(lDC)
    hBrush = CreateSolidBrush(BackColor)
    SelectObject lDC, hBrush
    hBrush = CreatePen(0, 1, BackColor)
    SelectObject lDC, hBrush
End Property
Property Let hWnd(value As Long)
    lWnd = value
End Property
Public Sub SetupScreen()
    Dim sz As Size
    SetOutputFont 15, 1, 400, 0
    GetTextExtentPoint32 lDC, "0", 1, sz
    SetOutputFont 15, 2, 400, 0
    CharWidth = sz.cx
    CharHeight = sz.cy
    Window(1).Top = 1
    Window(1).Left = 1
    Window(1).Width = ScreenWidth \ CharWidth
    Window(1).Height = ScreenHeight \ CharHeight
    ActiveWindow = 1
    bSetup = True
End Sub
Public Function UpdateDisplay()
    Dim rt As RECT
    If Not bSetup Then SetupScreen
    rt.Top = 0
    rt.Left = 0
    rt.Bottom = ScreenHeight + 100
    rt.Right = ScreenWidth + 100
    InvalidateRect lWnd, rt, 0
End Function
Public Function DeleteChar(char As String)
    Dim sz As Size
    Dim delx As Long
    GetTextExtentPoint32 lDC, char, Len(char), sz
    delx = sz.cx
    Window(ActiveWindow).CurrentX = Window(ActiveWindow).CurrentX - delx
    GetTextExtentPoint32 lDC, " ", 1, sz
    OutPut String((delx \ sz.cx) + 1, " ")
    Window(ActiveWindow).CurrentX = Window(ActiveWindow).CurrentX - sz.cx * ((delx \ sz.cx) + 1)
End Function
Private Function SeperateWord(szStr As String) As String
    Dim i As Integer
    If ActiveWindow <> 1 Or Window(1).BufferMode = 0 Then
        SeperateWord = Left(szStr, 1)
        Exit Function
    End If
    For i = 1 To Len(szStr)
        If Mid(szStr, i, 2) = vbCrLf Then SeperateWord = Left(szStr, i - 1): Exit Function
        If Mid(szStr, i, 1) = " " Then SeperateWord = Left(szStr, i): Exit Function
    Next
    SeperateWord = szStr
End Function
Private Function SetOutputFont(Height As Long, Fixed As Long, Bold As Long, Italics As Long)
    Dim hFont As Long
    Dim FontName As String
    If Fixed = 2 Then FontName = "Arial" Else FontName = "Courier New"
    hFont = CreateFont(20, 0, 0, 0, Bold, Italics, 0, 0, 162, 7, 0, 2, Fixed, FontName)
    SelectObject lDC, hFont
End Function
Public Function BufferMode(Flag As Long)
    Window(1).BufferMode = Flag
End Function
