VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END

Attribute VB_Name = "VB5Simple"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit

Dim gsmyProperty As String

Private Sub Class_Initialize()
    
    gsmyProperty = "Visual Basic 5 Simple Component"
    
End Sub

Public Property Get myProperty() As String
    
    myProperty = gsmyProperty
    
End Property

Public Property Let myProperty(ByVal sNewValue As String)
    
    gsmyProperty = sNewValue
    
End Property

Public Function myMethod(ByVal myString As String) As String

    myMethod = UCase(myString)
    
End Function
