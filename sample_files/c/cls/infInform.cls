VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "infInform"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"

Public Enum FormMode
    fmSHOW
    fmHIDE
End Enum

Public Enum GrammarKeywords
    gkREPLACE
    gkFIRST
    gkLAST
End Enum

Private Enum ItemTypes
    itCOMMENT
    itSERIAL
    itRELEASE
    itCONSTANT
    itREPLACE
    itINCLUDE
    itGLOBAL
    itARRAY
    itPROPERTY
    itATTRIBUTE
    itPROCEDURE
    itCLASS
    itOBJECT
    itGRAMMAR
    itEND
End Enum

Private Enum PropertyTypes
    ptNUMERIC
    ptNUMERIC_ARRAY
    ptSTRING
    ptSTRING_ARRAY
    ptPROCEDURE
    ptIDENTIFIER
    ptIDENTIFIER_ARRAY
End Enum

Private Type ItemType
    Name As String
    ClassName As String
    Type As ItemTypes
    Start As Long
    End As Long
End Type

Private Const cnWHITESPACE = " " & vbTab & vbCrLf & Null
Private Const cnSEPARATOR = ",;"
Private Const cnNONSPACEARROW = " " & vbTab & vbCrLf & "->"

Private CurrentItem As ItemType
Private sFileAll As String
Private lFileLen As Long
Private lNoName As Long
Private lTimer As Long
Private EOLChar As String
Private sCurrentModuleName As String

Private mModules As New infModules
Private mComments As New infComments
Private mName As String
Private mColumns As Integer
Private mTabLength As Integer
Private mBrowserFilename As String

Public LoadError As ErrObject

Public Property Let Columns(iColumns As Integer)
    mColumns = iColumns
End Property

Public Property Let BrowserFilename(sBrowserFilename As String)
    mBrowserFilename = sBrowserFilename
End Property

Public Property Get BrowserFilename() As String
    BrowserFilename = mBrowserFilename
End Property

Public Property Let TabLength(iTabLength As Integer)
    mTabLength = iTabLength
End Property

Public Property Get Columns() As Integer
    Columns = mColumns
End Property

Public Property Get TabLength() As Integer
    TabLength = mTabLength
End Property

Public Property Get Version() As String
    Version = "Beta 1.000601"
End Property

Public Property Set Comments(ByVal vData As infComments)
    Set mComments = vData
End Property

Public Property Get Comments() As infComments
    Set Comments = mComments
End Property

Public Property Let Name(ByVal sName As String)
    mName = sName
End Property

Public Property Get Name() As String
    Name = mName
End Property


Public Function LoadInformFile(sFilename As String, mtModuleType As infMODULE_TYPE, mnModuleName As String, lFormMode As FormMode, pbLoad As Object, sError As String) As Boolean
    '
    ' Create module
    ' Load it - any errors will remove it and return false
    '
    On Error GoTo errHandler

    If lFormMode = fmSHOW Then
        frmInfo.Show
    End If

    lTimer = Timer
    mModules.Add mnModuleName, mtModuleType
    sCurrentModuleName = mnModuleName
    ReadFileIntoBuffer sFilename

    If InStr(1, LCase(sFileAll), "#ifdef") > 0 Or InStr(1, LCase(sFileAll), "#ifndef") > 0 Or InStr(1, LCase(sFileAll), "iftrue") > 0 Or InStr(1, LCase(sFileAll), "iffalse") > 0 Then
        Err.Raise 10000, "Inform.LoadInformFile", "Visual Inform does not currently support #ifdef, #ifndef, iftrue, or iffalse."
    End If

    lNoName = 0
    LoadFile pbLoad

    LoadInformFile = True
exitLIF:
    Exit Function
errHandler:
    sError = Err.Description
    mModules.Remove mnModuleName
    LoadInformFile = False
    Resume exitLIF
End Function

Public Function SaveInformFile(mnModuleName As String, sFilename As String, ftFileType As infMODULE_TYPE, pbSave As Object) As Boolean
    '
    ' This is currently a serial process - recreated everytime, but there are ways
    ' to speed it up:
    '
    ' - save sections of code at the module level
    '   - header section (headercomments, story constant, headline constant, serial,
    '                     release, and switches)
    '   - constants section
    '   - parser section (parser.h, sack_object, verblib.h)
    '   - definition section (property defs, attribute defs, globals)
    '   - class section (classes)
    '   - procedure section (procedures)
    '   - object section (objects)
    '   - grammar section (grammar.h, grammardefs)
    '
    '   Anytime something within a section is changed, that section gets rebuilt....
    '
    '   For objects, classes, and procedures, this could be at the individual level
    '   in case the program has hundreds of objects, there is no need to rewrite all
    '   of them everytime an object changes
    '
    '   Also - would it be faster to write to a temporary file?
    '
    '   Do I implement a backup system?
    '
    Dim sOutput As String
    Dim cm As infComment
    Dim cn As infNameValueDef
    Dim rp As infNameDef
    Dim obj As infObject
    Dim cls As infObject
    Dim prc As infProcedure
    Dim gb As infNameValueDef
    Dim pd As infNameDef
    Dim ad As infNameDef
    Dim ar As infArray
    Dim inc As infInclude
    Dim grm As infGrammarDefs
    Dim objPrint As Long
    Dim clsPrint As Long

    sOutput = ""

    sOutput = "!VI This source code was created by" & vbCrLf & _
              "!VI      Visual Inform" & vbCrLf & _
              "!VI      on " & FormatDateTime(Now(), vbLongDate) & vbCrLf & _
              "!VI" & vbCrLf

    If ftFileType = infmtMAIN Then

        '
        ' Prerequisites
        '
        If mModules(mnModuleName).Constants.Find("Story") = 0 Then
            '
            ' If they forgot to create the story constant - go ahead and add it with the
            ' name of the file
            '
            mModules(mnModuleName).Constants.Add "Story", mModules(mnModuleName).Name
        End If
        If mModules(mnModuleName).Constants.Find("Headline") = 0 Then
            '
            ' Same for Headline constant
            '
            mModules(mnModuleName).Constants.Add "Headline", "Created using Visual Inform"
        End If
        If mModules(mnModuleName).Procedures.Find("Initialise") = 0 Then
            '
            ' And same for Initialise procedure
            '
            mModules(mnModuleName).Procedures.Add "Initialise", Chr(34) & "Place logic here to start your game" & Chr(34) & ";"
        End If

        '
        ' Predetermined structure - Straight from the DM...
        '
        ' This section summarises Inform's "this has to be defined before that
        ' can be" rules.
        '
        ' 1. The three library files, Parser, Verblib and Grammar must be
        '     included in that order.
        ' -- (a) Before inclusion of Parser: you must define the constants
        '        Story and Headline; the constant DEBUG must be defined here,
        '        if anywhere; similarly for Replace directives; but you may
        '        not yet define global variables, objects or routines. If
        '        you are linking in the library (using USE_MODULES) then
        '        you may not use the Attribute or Property directive in
        '        this part of the program.

        ' *** Write Header Comments;

        For Each cm In mModules(mnModuleName).HeaderComments
            If Left(cm.Text & "  ", 2) <> "VI" Then
                sOutput = sOutput & "!" & cm.Text & vbCrLf
            End If
        Next
        sOutput = sOutput & vbCrLf

        ' *** Write switches;
        'If mModules(mnModuleName).Switches <> "" Then
        '    sOutput = sOutput & "Switches " & mModules(mnModuleName).Switches & ";" & vbCrLf & vbCrLf
        'End If

        ' *** Write Constant Story;

        For Each cm In mModules(mnModuleName).Constants("Story").Comments
            sOutput = sOutput & "!" & cm.Text & vbCrLf
        Next

        sOutput = sOutput & "Constant Story " & _
                  VStringToIString(mModules(mnModuleName).Constants("Story").Value, True) & ";" & _
                  vbCrLf

        ' *** Write Constant Headline;

        For Each cm In mModules(mnModuleName).Constants("Headline").Comments
            sOutput = sOutput & "!" & cm.Text & vbCrLf
        Next

        sOutput = sOutput & "Constant Headline " & vbCrLf & _
                  VStringToIString(mModules(mnModuleName).Constants("Headline").Value, True) & ";" & _
                  vbCrLf & vbCrLf

        ' *** Write Serial;

        For Each cm In mModules(mnModuleName).SerialComments
            sOutput = sOutput & "!" & cm.Text & vbCrLf
        Next

        sOutput = sOutput & "Serial " & Chr(34) & InformDate(mModules(mnModuleName).Serial) & Chr(34) & ";" & vbCrLf

        ' *** Write Release;

        For Each cm In mModules(mnModuleName).ReleaseComments
            sOutput = sOutput & "!" & cm.Text & vbCrLf
        Next

        sOutput = sOutput & "Release " & mModules(mnModuleName).Release & ";" & vbCrLf & vbCrLf

        ' *** Write Constants;
        For Each cn In mModules(mnModuleName).Constants
            If LCase(cn.Name) <> "story" And LCase(cn.Name) <> "headline" Then
                If cn.Comments.Count > 0 Then
                    sOutput = sOutput & vbCrLf
                    For Each cm In cn.Comments
                        sOutput = sOutput & "!" & cm.Text & vbCrLf
                    Next
                End If
                If IsNumeric(cn.Value) Then
                    sOutput = sOutput & "Constant " & cn.Name & " = " & cn.Value & ";" & _
                                vbCrLf
                ElseIf Trim(cn.Value & " ") = "" Then
                    sOutput = sOutput & "Constant " & cn.Name & ";" & vbCrLf
                Else
                    sOutput = sOutput & "Constant " & cn.Name & " = " & VStringToIString(cn.Value, True) & ";" & _
                                vbCrLf
                End If
            End If
        Next
        sOutput = sOutput & vbCrLf

        ' *** Write Replace statements...;

        For Each rp In mModules(mnModuleName).Replaces
            For Each cm In rp.Comments
                sOutput = sOutput & "!" & cm.Text & vbCrLf
            Next
            sOutput = sOutput & "Replace " & rp.Name & ";" & vbCrLf
        Next

        ' *** Write Include "Parser";
        sOutput = sOutput & "Include " & Chr(34) & "Parser.h" & Chr(34) & ";" & _
                                    vbCrLf

        ' *** Write sack object and constant...
        '
        ' Could speed this up with a property at the module level for the
        ' sack_object name...
        '

        ' -- (b) Between Parser and Verblib: if a 'sack object' is to be
        '        included, it should be defined here, and the constant
        '        SACK_OBJECT set to it; the LibraryMessages object should
        '        be defined here, if at all; likewise the task_scores array.
        '

        For Each obj In mModules(mnModuleName).Objects
            If obj.isSackObject Then
                For Each cm In obj.Comments
                    sOutput = sOutput & "!" & cm.Text & vbCrLf
                Next
                sOutput = sOutput & FormatObjectClass(obj, True)
                sOutput = sOutput & "Constant SACK_OBJECT = " & obj.Name & ";" & _
                                vbCrLf
                Exit For
            End If
        Next
        sOutput = sOutput & vbCrLf

        ' *** Write Include "VerbLib";
        sOutput = sOutput & "Include " & Chr(34) & "Verblib" & Chr(34) & ";" & _
                                    vbCrLf

        ' *** Write Includes;
        If mModules(mnModuleName).Includes.Count > 0 Then
            For Each inc In mModules(mnModuleName).Includes
                If LCase(inc.Filename) <> "parser" And LCase(inc.Filename) <> "verblib" And _
                                    LCase(inc.Filename) <> "grammar" Then
                    For Each cm In inc.Comments
                        sOutput = sOutput & "!" & cm.Text & vbCrLf
                    Next
                    sOutput = sOutput & "Include " & Chr(34) & inc.Filename & Chr(34) & ";" & _
                                        vbCrLf
                End If
            Next
            sOutput = sOutput & vbCrLf
        End If

        ' *** Write Globals;
        If mModules(mnModuleName).Globals.Count > 0 Then
            For Each gb In mModules(mnModuleName).Globals
                For Each cm In gb.Comments
                    sOutput = sOutput & "!" & cm.Text & vbCrLf
                Next
                If Trim(gb.Value & " ") = "" Then
                    sOutput = sOutput & "Global " & gb.Name & ";" & vbCrLf
                Else
                    sOutput = sOutput & "Global " & gb.Name & " = " & gb.Value & ";" & vbCrLf
                End If
            Next
            sOutput = sOutput & vbCrLf
        End If

        ' *** Write PropertyDefs;
        If mModules(mnModuleName).PropertyDefs.Count > 0 Then
            For Each pd In mModules(mnModuleName).PropertyDefs
                For Each cm In pd.Comments
                    sOutput = sOutput & "!" & cm.Text & vbCrLf
                Next
                sOutput = sOutput & "Property "
                If pd.isAdditive Then sOutput = sOutput & "additive "
                sOutput = sOutput & pd.Name & ";" & vbCrLf
            Next
            sOutput = sOutput & vbCrLf
        End If

        ' *** Write AttributeDefs;
        If mModules(mnModuleName).AttributeDefs.Count > 0 Then
            For Each ad In mModules(mnModuleName).AttributeDefs
                For Each cm In ad.Comments
                    sOutput = sOutput & "!" & cm.Text & vbCrLf
                Next
                sOutput = sOutput & "Attribute "
                sOutput = sOutput & ad.Name & ";" & vbCrLf
            Next
            sOutput = sOutput & vbCrLf
        End If
        
        ' *** Write Arrays; Added per PV, 5/22/00
        If mModules(mnModuleName).Arrays.Count > 0 Then
            For Each ar In mModules(mnModuleName).Arrays
                For Each cm In ar.Comments
                    sOutput = sOutput & "!" & cm.Text & vbCrLf
                Next
                sOutput = sOutput & "Array "
                Select Case ar.AType
                    Case atBYTE_ARRAY
                        sOutput = sOutput & ar.Name & " -> " & ar.Value & ";" & vbCrLf
                    Case atSTRING_ARRAY
                        sOutput = sOutput & ar.Name & " string " & ar.Value & ";" & vbCrLf
                    Case atTABLE_ARRAY
                        sOutput = sOutput & ar.Name & " table " & ar.Value & ";" & vbCrLf
                    Case atWORD_ARRAY
                        sOutput = sOutput & ar.Name & " --> " & ar.Value & ";" & vbCrLf
                End Select
            Next
            sOutput = sOutput & vbCrLf
        End If


        ' *** Write Classes; (base, then sub)
        clsPrint = mModules(mnModuleName).Classes.Count
        For Each cls In mModules(mnModuleName).Classes
            cls.Printed = False
        Next

        '
        ' Base classes have no classname value
        '
        For Each cls In mModules(mnModuleName).Classes
            If Trim(cls.ClassName & " ") = "" Then
                For Each cm In cls.Comments
                    sOutput = sOutput & "!" & cm.Text & vbCrLf
                Next
                sOutput = sOutput & FormatObjectClass(cls, False) & vbCrLf
                clsPrint = clsPrint - 1
                cls.Printed = True
            End If
        Next

        '
        ' Sub classes have a classname value
        '
        Do Until clsPrint = 0
            For Each cls In mModules(mnModuleName).Classes
                sClassName = Trim(cls.ClassName & " ")
                If sClassName <> "" Then
                    If mModules(mnModuleName).Classes(sClassName).Printed Then
                        For Each cm In cls.Comments
                            sOutput = sOutput & "!" & cm.Text & vbCrLf
                        Next
                        sOutput = sOutput & FormatObjectClass(cls, False)
                        clsPrint = clsPrint - 1
                        cls.Printed = True
                    End If
                End If
            Next
        Loop

        ' *** Write Objects; (parents, then children)
        objPrint = mModules(mnModuleName).Objects.Count
        For Each obj In mModules(mnModuleName).Objects
            obj.Printed = False
        Next

        '
        ' Parent objects have no parentname value
        '
        For Each obj In mModules(mnModuleName).Objects
            If Trim(obj.ParentName & " ") = "" Then
                For Each cm In obj.Comments
                    sOutput = sOutput & "!" & cm.Text & vbCrLf
                Next
                sOutput = sOutput & FormatObjectClass(obj, True)
                objPrint = objPrint - 1
                obj.Printed = True
            End If
        Next

        '
        ' Children objects have a parent name
        '
        Do Until objPrint = 0
            For Each obj In mModules(mnModuleName).Objects
                sParentName = obj.ParentName
                If Trim(sParentName & " ") <> "" Then
                    If mModules(mnModuleName).Objects.Find(sParentName) <> 0 Then
                        If mModules(mnModuleName).Objects(sParentName).Printed Then
                            For Each cm In obj.Comments
                                sOutput = sOutput & "!" & cm.Text & vbCrLf
                            Next
                            sOutput = sOutput & FormatObjectClass(obj, True)
                            objPrint = objPrint - 1
                            obj.Printed = True
                        End If
                    Else
                        For Each cm In obj.Comments
                            sOutput = sOutput & "!" & cm.Text & vbCrLf
                        Next
                        sOutput = sOutput & FormatObjectClass(obj, True)
                        objPrint = objPrint - 1
                        obj.Printed = True
                    End If
                End If
            Next
        Loop

        ' *** Write Procedures;
        For Each prc In mModules(mnModuleName).Procedures
            For Each cm In prc.Comments
                sOutput = sOutput & "!" & cm.Text & vbCrLf
            Next
            sOutput = sOutput & FormatProcedure(prc)
        Next

        ' *** Write Include "Grammar"
        sOutput = sOutput & "Include " & Chr(34) & "Grammar.h" & Chr(34) & ";" & _
                                    vbCrLf & vbCrLf

        ' *** Write Grammar;
        For Each grm In mModules(mnModuleName).Grammar
            For Each cm In grm.Comments
                sOutput = sOutput & "!" & cm.Text & vbCrLf
            Next
            sOutput = sOutput & FormatGrammar(grm)
        Next

        sOutput = sOutput & vbCrLf & "END;" & vbCrLf

        ' *** Write END;

        ' -- (d) Before inclusion of Grammar: Verb and Extend directives
        '        cannot be used.
        ' -- (e) After inclusion of Grammar: It's too late to define any
        '        entry point routines.
        ' 2. Any Switches directive must come before the definition of any
        '    constants.
        ' 3. If an object begins inside another, it must be defined after its parent.
        ' 4. Global variables must be declared earlier in the program than the first
        '    reference to them.
        ' 5. Attributes and classes must be declared earlier than their first usage
        '    in an object definition.
        ' 6. General parsing and scope routines must be defined before being quoted
        '    in grammar tokens.
        ' 7. Nothing can be defined after the End directive.
        '

        '
        ' Write To File...
        '
        Dim lFile As Long

        Close 1, 2, 3

        lFile = FreeFile()
        sOutput = Replace(sOutput, Chr(0), " ")
        sOutput = Replace(sOutput, vbCrLf & vbCrLf, vbCrLf)
        sOutput = Replace(sOutput, vbCrLf & vbCrLf, vbCrLf)
        sOutput = Replace(sOutput, vbCrLf & vbCrLf, vbCrLf)
        sOutput = Replace(sOutput, vbCrLf & vbCrLf, vbCrLf)
        sOutput = Replace(sOutput, Chr(13) & Chr(13), Chr(13))
        sOutput = Replace(sOutput, Chr(13) & Chr(13), Chr(13))
        sOutput = Replace(sOutput, Chr(13) & Chr(13), Chr(13))
        sOutput = Replace(sOutput, Chr(13) & Chr(13), Chr(13))
        sOutput = Replace(sOutput, ";" & vbCrLf & "Object", ";" & vbCrLf & vbCrLf & "Object")
        sOutput = Replace(sOutput, ";" & vbCrLf & "Class", ";" & vbCrLf & vbCrLf & "Class")

        Open sFilename For Binary As lFile
        Put #lFile, , sOutput
        Close lFile

        SaveInformFile = True
    Else
        SaveInformFile = False
    End If
End Function

Private Function FormatGrammar(grm As infGrammarDefs) As String
    Dim ph As infPhrase
    Dim wrd As infGrammarWord
    Dim sText As String

    If grm.GType <> gtEXTEND Then
        sText = "Verb "
    Else
        sText = "Extend "
    End If

    If grm.Meta Then
        sText = sText & "meta "
    End If

    If grm.Only Then
        sText = sText & "only "
    End If
    
    For Each wrd In grm.Words
        sText = sText & "'" & wrd.Word & "' "
    Next

    Select Case grm.Keyword
        Case gkFIRST
            sText = sText & "first "
        Case gkREPLACE
            sText = sText & "replace "
    End Select

    If grm.GType = gtSYNONYM Then
        FormatGrammar = sText & " = '" & grm.Definition & "';" & vbCrLf
        Exit Function
    End If

    sText = sText & vbCrLf

    For Each ph In grm.Phrases
        sText = sText & Space(10) & "* " & ph.Definition & " -> " & ph.ProcedureName & vbCrLf
    Next

    FormatGrammar = Left(sText, Len(sText) - 2) & ";" & vbCrLf
End Function

Private Function FormatNameDef(ndItem As Variant, ndType As ItemTypes) As String
    '
    ' All in one formatter for the items listed below...
    '
    If ndType = itATTRIBUTE Then
        FormatNameDef = "Attribute " & ndItem.Name & ";" & vbCrLf
    ElseIf ndType = itCONSTANT Then
        FormatNameDef = "Constant " & ndItem.Name & " = " & ndItem.Value & ";" & vbCrLf
    ElseIf ndType = itGLOBAL Then
        If ndItem.Value <> "" Then
            FormatNameDef = "Global " & ndItem.Name & " = " & ndItem.Value & ";" & vbCrLf
        Else
            FormatNameDef = "Global " & ndItem.Name & ";" & vbCrLf
        End If
    ElseIf ndType = itPROPERTY Then
        If ndItem.Additive Then
            FormatNameDef = "Property additive " & ndItem.Name & ";" & vbCrLf
        Else
            FormatNameDef = "Property " & ndItem.Name & ";" & vbCrLf
        End If
    ElseIf ndType = itRELEASE Then
        FormatDef = "Release " & ndItem.Release & ";" & vbCrLf
    ElseIf ndType = itSERIAL Then
        FormatDef = "Serial " & Chr(34) & InformDate(ndItem.Serial) & Chr(34) & ";" & vbCrLf
    End If
End Function

Private Function InformDate(dDate As Date) As String
    InformDate = Right(Year(dDate), 2) & Right("0" & Month(dDate), 2) & Right("0" & Day(dDate), 2)
End Function

Private Function FormatProcedure(oProc As infProcedure) As String

    Dim sText As String

    sText = sText & "[ " & oProc.Name

    If Trim(oProc.Arguments & " ") <> "" Then sText = sText & " " & oProc.Arguments

    FormatProcedure = sText & ";" & vbCrLf & vbCrLf & oProc.Code & vbCrLf & "];" & vbCrLf

End Function

Private Function FormatObjectClass(cObject As infObject, isObject As Boolean) As String
    '
    ' Using Object information from cObject, output Inform 6 syntax...
    '
    Dim CText As String
    Dim sTab As String
    Dim sIndent As String
    Dim prop As infProperty
    Dim attr As infAttribute
    Dim bFirstProp As Boolean
    Dim sPrivate As String
    sTab = "    "
    sIndent = Space(12)

    If isObject Then
        If cObject.ClassName <> "" Then
            CText = cObject.ClassName & " " & cObject.Name
        Else
            CText = "Object " & cObject.Name
        End If
    Else
        CText = "Class " & cObject.Name
        If cObject.ClassName <> "" Then CText = CText & " class " & cObject.ClassName
    End If
    If cObject.ShortName <> "" Then
        CText = CText & " " & VStringToIString(cObject.ShortName, False)
    End If
    If cObject.ParentName <> "" Then
        CText = CText & " " & cObject.ParentName
    End If
    CText = CText & vbCrLf

    If cObject.Properties.Count = 0 And cObject.Attributes.Count = 0 Then
        FormatObjectClass = Left(CText, Len(CText) - 2) & ";" & vbCrLf
        Exit Function
    End If

    bFirstProp = True
    If cObject.Properties.Count > 0 Then
        CText = CText & sTab & "with"
        For Each prop In cObject.Properties
            If prop.isPrivate Then
                sPrivate = "private "
            Else
                sPrivate = ""
            End If
            If bFirstProp Then
                bFirstProp = False
                CText = CText & sTab & sPrivate & prop.Name
            Else
                CText = CText & sIndent & sPrivate & prop.Name
            End If

            If prop.Mode = infptSTRING And Left(prop.Code, 1) <> "'" Then
                CText = CText & IIf(Len(prop.Code) > 40, vbCrLf, " ") & " " & VStringToIString(prop.Code, True) & "," & vbCrLf
            ElseIf prop.Mode = infptPROCEDURE Then
                CText = CText & vbCrLf & sIndent & "[" & Trim(prop.Arguments) & ";" & vbCrLf & _
                        sTab & prop.Code & vbCrLf & sIndent & "]," & vbCrLf 'sIndent & Replace(prop.Code, vbCrLf, vbCrLf & sIndent) & vbCrLf & sIndent & "]," & vbCrLf
            ElseIf prop.Mode = infptIDENTIFIER Then
                CText = CText & sTab & Replace(prop.Code, vbCrLf, "") & "," & vbCrLf
            Else
                CText = CText & IIf(Len(prop.Code) > 40, vbCrLf & sIndent, " ") & Replace(prop.Code, vbCrLf, "") & "," & vbCrLf
            End If
        Next
    End If

    If cObject.Attributes.Count > 0 Then
        CText = CText & sTab & "has "
        For Each attr In cObject.Attributes
            If attr.Value = False Then
                CText = CText & "~" & attr.Name & " "
            Else
                CText = CText & attr.Name & " "
            End If
        Next
        CText = Left(CText, Len(CText) - 1) & ";"
    Else
        CText = Left(CText, Len(CText) - 3) & ";"
    End If

    FormatObjectClass = CText & vbCrLf & vbCrLf
End Function

Public Property Set Modules(ByVal infData As infModules)
    Set mModules = infData
End Property

Public Property Get Modules() As infModules
    Set Modules = mModules
End Property

Public Property Get isLoaded(mtModuleType As infMODULE_TYPE) As Boolean
    Dim m As infModule
    For Each m In mModules
        If m.MType = mtModuleType Then
            isLoaded = True
            Exit Property
        End If
    Next
    isLoaded = False
    Set m = Nothing
End Property

Private Sub ReadFileIntoBuffer(sFilename As String)
    Dim sFileText As String
    Dim lBlock As Long
    Dim sBlock As String * 8192
    
    Open sFilename For Random As #1 Len = 8192
    lBlock = 0
    Do Until EOF(1)
        lBlock = lBlock + 1
        Get #1, lBlock, sBlock
        sFileText = sFileText & sBlock
    Loop
    Close #1
    sFileAll = sFileText
    If InStr(1, sFileAll, Chr(10)) > 0 Then
        sFileAll = Replace(sFileAll, Chr(10), vbCrLf)
    ElseIf InStr(1, sFileAll, Chr(13)) > 0 Then
        sFileAll = Replace(sFileAll, Chr(13), vbCrLf)
    End If
    sFileAll = Replace(sFileAll, "\" & vbCrLf, vbCrLf)
    lFileLen = Len(sFileAll)
End Sub

Private Sub LoadFile(pbLoad As Object)
    Dim eol As Long
    Dim lCursor As Long             ' Current position in file
    Dim sFileSection As String

    Dim lCurrentItem As Long
    Dim lItemCursor As Long         ' Start of current item in sFileAll
    Dim bItem As Boolean            ' on or off
    Dim lItemType As ItemTypes
    Dim bSquareBracket As Boolean   ' on or off
    Dim bDoubleQuote As Boolean     ' on or off
    Dim bSingleQuote As Boolean     ' on or off
    Dim CommentsBuffer As New infComments
    Dim Class As New infObject
    Dim FirstItem As Boolean
    Dim inc As infInclude

    On Error GoTo ErrorHandler

    '
    ' Set flags
    '
    FirstItem = True
    bEndItem = False
    bItem = False
    bComment = False
    bSquareBracket = False
    bDoubleQuote = False
    bSingleQuote = False
    lCurrentItem = 1

    pbLoad.Min = 1
    pbLoad.Max = lFileLen
    pbLoad.Value = 1

    '
    ' Begin parsing
    '
    For lCursor = 1 To lFileLen
        If Int(lCursor / 100) * 100 = lCursor Then
            pbLoad.Value = lCursor
            DoEvents
        End If
        '
        ' Get a character from the buffer
        '
        sChar = LCase(Mid(sFileAll, lCursor, 1))
        '
        ' Go!
        '
        Select Case bItem
            Case False
                '
                ' Identify new items
                '
                If InStr(1, " " & vbTab & vbCrLf, sChar) = 0 Then
                    '
                    ' Skip white space
                    '
                    If InStr(1, "!ltseydb[", sChar) > 0 Then
                        '
                        ' Only parse through here if _something_ will happen
                        '
                        Select Case True
                            Case sChar = "!" ' always goes into current item, even before the
                                             ' current item has been identified
                                             ' CommentsBuffer is used until item is identified
                                             ' and then added to that item in the tree
                                lItemCursor = lCursor
                                lCursor = InStr(lCursor, sFileAll, vbCrLf)
                                If FirstItem Then
                                    mModules(sCurrentModuleName).HeaderComments.Add Mid(sFileAll, lItemCursor, lCursor - lItemCursor)
                                Else
                                    CommentsBuffer.Add Mid(sFileAll, lItemCursor, lCursor - lItemCursor)
                                End If
                                lCursor = lCursor + 1 ' skip past vbcrlf (next adds 1)
                            Case sChar = "l"
                                If RMid(lCursor, 6) = "serial" Then
                                    '
                                    ' Found a Serial constant
                                    '
                                    ' Get the whole thing, send it to the parse subroutine
                                    ' with the comments buffer, increment the cursor
                                    ' past the item and clear the comments buffer
                                    '
                                    lItemType = itSERIAL
                                    lItemCursor = lCursor - 5
                                    lCursor = InStr(lCursor, sFileAll, ";")
                                    ParseSerial lItemCursor, lCursor, CommentsBuffer
                                    lCursor = lCursor + 1
                                    CommentsBuffer.Clear
                                ElseIf RMid(lCursor, 6) = "global" Then
                                    '
                                    ' Found a global statement
                                    '
                                    bItem = True
                                    lItemType = itGLOBAL
                                    lItemCursor = lCursor - 5
                                End If
                                FirstItem = False
                            Case sChar = "t"
                                If RMid(lCursor, 8) = "constant" Then
                                    '
                                    ' Found a constant statement
                                    '
                                    bItem = True
                                    lItemType = itCONSTANT
                                    lItemCursor = lCursor - 7
                                ElseIf RMid(lCursor, 6) = "object" Then
                                    bItem = True
                                    lItemType = itOBJECT
                                    lItemCursor = lCursor - 5
                                End If
                                FirstItem = False
                            Case sChar = "s"
                                If RMid(lCursor, 5) = "class" Then
                                    bItem = True
                                    lItemType = itCLASS
                                    lItemCursor = lCursor - 4
                                End If
                                FirstItem = False
                            Case sChar = "e"
                                If RMid(lCursor, 9) = "attribute" Then
                                    lItemType = itATTRIBUTE
                                    lItemCursor = lCursor - 8
                                    lCursor = InStr(lCursor, sFileAll, ";")
                                    lCursor = lCursor + 1
                                    ParseAttributeDef lItemCursor, lCursor, CommentsBuffer
                                    CommentsBuffer.Clear
                                ElseIf RMid(lCursor, 7) = "release" Then
                                    lItemType = itRELEASE
                                    lItemCursor = lCursor - 6
                                    lCursor = InStr(lCursor, sFileAll, ";")
                                    lCursor = lCursor + 1
                                    ParseRelease lItemCursor, lCursor, CommentsBuffer
                                    CommentsBuffer.Clear
                                ElseIf RMid(lCursor, 7) = "include" Then
                                    lItemType = itINCLUDE
                                    lItemCursor = lCursor - 6
                                    lCursor = InStr(lCursor, sFileAll, ";")
                                    lCursor = lCursor + 1
                                    ParseInclude lItemCursor, lCursor, CommentsBuffer
                                    For Each inc In mModules(sCurrentModuleName).Includes
                                        If InStr(1, "parser.h verblib.h grammar.h", LCase(inc.Filename)) = 0 Then
                                            '
                                            ' Unsupported as of now
                                            '
                                            Err.Raise 15000, "Inform.LoadFile", "Visual Inform does not currently support the use of external library files."
                                        End If
                                    Next
                                    CommentsBuffer.Clear
                                ElseIf RMid(lCursor, 7) = "replace" Then
                                    lItemType = itREPLACE
                                    lItemCursor = lCursor - 6
                                    lCursor = InStr(lCursor, sFileAll, ";")
                                    lCursor = lCursor + 1
                                    ParseReplace lItemCursor, lCursor, CommentsBuffer
                                    CommentsBuffer.Clear
                                End If
                                FirstItem = False
                            Case sChar = "y"
                                If RMid(lCursor, 8) = "property" Then
                                    lItemType = itPROPERTY
                                    lItemCursor = lCursor - 7
                                    lCursor = InStr(lCursor, sFileAll, ";")
                                    lCursor = lCursor + 1
                                    ParsePropertyDef lItemCursor, lCursor, CommentsBuffer
                                    CommentsBuffer.Clear
                                ElseIf RMid(lCursor, 5) = "array" Then
                                    bItem = True
                                    lItemType = itARRAY
                                    lItemCursor = lCursor - 4
                                ElseIf RMid(lCursor, 6) = "nearby" Then
                                    bItem = True
                                    lItemType = itOBJECT
                                    lItemCursor = lCursor - 5
                                End If
                                FirstItem = False
                            Case sChar = "d"
                                If RMid(lCursor, 6) = "extend" Then
                                    bItem = True
                                    lItemType = itGRAMMAR
                                    lItemCursor = lCursor - 5
                                    lCursor = InStr(lCursor, sFileAll, ";") - 1
                                ElseIf RMid(lCursor, 3) = "end" Then
                                    If InStr(1, cnwhitepsace, Left(RMid(lCursor, 4), 1)) > 0 Then
                                        bItem = True
                                        lItemType = itEND
                                        lItemCursor = lCursor - 2
                                        lCursor = InStr(lCursor, sFileAll, ";") - 1
                                    End If
                                End If
                                FirstItem = False
                            Case sChar = "b"
                                If RMid(lCursor, 4) = "verb" Then
                                    bItem = True
                                    lItemType = itGRAMMAR
                                    lItemCursor = lCursor - 3
                                    lCursor = InStr(lCursor, sFileAll, ";") - 1
                                End If
                                FirstItem = False
                            Case sChar = "["
                                lItemType = itPROCEDURE
                                lItemCursor = lCursor
                                lCursor = JumpToEndOfFunction(lCursor) + 2
                                ParseProcedure lItemCursor, lCursor, CommentsBuffer
                                lCursor = lCursor + 1
                                CommentsBuffer.Clear
                                FirstItem = False
                        End Select
                    End If
                    '
                    ' Check classes
                    '
                    If mModules(sCurrentModuleName).Classes.Count > 0 Then
                        For Each Class In mModules(sCurrentModuleName).Classes
                            If sChar = Right(Class.Name, 1) Then
                                If RMid(lCursor, Len(Class.Name)) = LCase(Class.Name) Then
                                    If InStr(1, cnWHITESPACE, Mid(sFileAll, lCursor - Len(Class.Name), 1)) > 0 Then
                                        '
                                        ' Found an object defined with a class
                                        '
                                        bItem = True
                                        lItemType = itOBJECT
                                        lItemCursor = lCursor - Len(Class.Name) + 1
                                        FirstItem = False
                                        Exit For
                                    End If
                                End If
                            End If
                        Next
                    End If
                End If
            Case True
                Select Case True
                    Case sChar = "!"
                        lCursor = InStr(lCursor, sFileAll, vbCrLf) + 1
                    Case sChar = "'" And bDoubleQuote = False
                        '
                        ' Jump right past single quote areas
                        '
                        lCursor = InStr(lCursor + 1, sFileAll, "'")
                    Case sChar = Chr(34)
                        '
                        ' Jump right past double quote areas
                        '
                        lCursor = InStr(lCursor + 1, sFileAll, Chr(34))
                    Case sChar = "[" And bDoubleQuote = False
                        lCursor = JumpToEndOfFunction(lCursor)
                    Case sChar = ";"
                        '
                        ' End of Item
                        '

                        '
                        ' Classify items (which adds them to the object model)
                        ' and increment cursor
                        '
                        Select Case lItemType
                            Case itOBJECT, itCLASS
                                '
                                ' Objects and classes use the same infObject type
                                '
                                lCursor = lCursor + 1
                                ParseObjectClass lItemCursor, lCursor, CommentsBuffer
                                CommentsBuffer.Clear
                            Case itCONSTANT
                                lCursor = lCursor + 1
                                ParseConstant lItemCursor, lCursor, CommentsBuffer
                                CommentsBuffer.Clear
                            Case itGLOBAL
                                lCursor = lCursor + 1
                                ParseGlobal lItemCursor, lCursor, CommentsBuffer
                                CommentsBuffer.Clear
                            Case itARRAY
                                lCursor = lCursor + 1
                                ParseArray lItemCursor, lCursor, CommentsBuffer
                                CommentsBuffer.Clear
                            Case itGRAMMAR
                                lCursor = lCursor + 1
                                ParseGrammar lItemCursor, lCursor, CommentsBuffer
                                CommentsBuffer.Clear
                            Case itEND
                                '
                                ' Nothing is parsed after END; statement
                                '
                                GoTo DoParents
                        End Select
                        
                        '
                        ' For popup stats window
                        '
                        frmInfo.Caption = mModules(sCurrentModuleName).Name
                        frmInfo.Serial = FormatDateTime(mModules(sCurrentModuleName).Serial, vbShortDate)
                        frmInfo.Release = mModules(sCurrentModuleName).Release
                        frmInfo.Constants = mModules(sCurrentModuleName).Constants.Count
                        frmInfo.Globals = mModules(sCurrentModuleName).Globals.Count
                        frmInfo.PropertyDefs = mModules(sCurrentModuleName).PropertyDefs.Count
                        frmInfo.AttributeDefs = mModules(sCurrentModuleName).AttributeDefs.Count
                        frmInfo.Classes = mModules(sCurrentModuleName).Classes.Count
                        frmInfo.Objects = mModules(sCurrentModuleName).Objects.Count
                        frmInfo.Arrays = mModules(sCurrentModuleName).Arrays.Count
                        frmInfo.Procedures = mModules(sCurrentModuleName).Procedures.Count
                        frmInfo.GrammarDefs = mModules(sCurrentModuleName).Grammar.Count
                        frmInfo.Includes = mModules(sCurrentModuleName).Includes.Count
                        frmInfo.LoadTime = FormatNumber(Timer - lTimer, 2)
                        DoEvents
                        '
                        ' Reset item flag
                        '
                        bItem = False
                End Select
        End Select
    Next

DoParents:
    '
    ' Set parent names for 'depth' objects
    '
    For pIndex = mModules(sCurrentModuleName).Objects.Count To 1 Step -1
        If mModules(sCurrentModuleName).Objects(pIndex).Depth > 0 Then
            For dIndex = pIndex - 1 To 1 Step -1
                If mModules(sCurrentModuleName).Objects(dIndex).Depth = mModules(sCurrentModuleName).Objects(pIndex).Depth - 1 Then
                    mModules(sCurrentModuleName).Objects(pIndex).ParentName = mModules(sCurrentModuleName).Objects(dIndex).Name
                    Exit For
                End If
            Next dIndex
        End If
    Next pIndex

DoReplaces:
    Dim rp As infNameDef

    For Each rp In mModules(sCurrentModuleName).Replaces
        mModules(sCurrentModuleName).Procedures(rp.Name).Replace = True
    Next

    mModules(sCurrentModuleName).ParseSuccessful = True
LoadFileExit:
    Exit Sub

ErrorHandler:
    mModules(sCurrentModuleName).ParseErrors.Add Err.Number & " - " & Err.Source & " - " & Err.Description
    mModules(sCurrentModuleName).ParseSuccessful = False
    Resume LoadFileExit
End Sub

Private Function RMid(lCursor, lLength)
    '
    ' Reverse Mid always returns lowercase
    '
    If lLength > lCursor Then
        RMid = LCase(Left(sFileAll, lCursor))
        Exit Function
    Else
        RMid = LCase(Mid(sFileAll, lCursor - lLength + 1, lLength))
    End If
End Function

Private Sub ParseConstant(lStart As Long, lEnd As Long, oComments As infComments)
    '
    ' Parse Constant<ws>name<ws>;
    '       Constant<ws>name<ws>value;
    '
    ' Add it to CurrentModule, set the comments
    '
    Dim s As Long
    Dim e As Long
    Dim n1 As Long
    Dim n2 As Long
    Dim cName As String
    Dim isString As Boolean

    On Error GoTo ErrorHandler
    
    n1 = JumpToNonSpace(JumpToSpace(lStart))
    n2 = JumpToEndOfName(n1)
    cName = Mid(sFileAll, n1, n2 - n1)

    s = JumpToNonSpace(n2)

    isString = False
    If Mid(sFileAll, s, 1) = Chr(34) Then
        e = InStr(s + 1, sFileAll, Chr(34)) + 1
        isString = True
    Else
        e = JumpToSpace(s)
        If e > lEnd Then e = lEnd
    End If
        
    If isString Then
        mModules(sCurrentModuleName).Constants.Add cName, IStringToVString(Mid(sFileAll, s, e - s))
    Else
        mModules(sCurrentModuleName).Constants.Add cName, Mid(sFileAll, s, e - s - 1)
    End If
    Set mModules(sCurrentModuleName).Constants(cName).Comments = oComments

    Exit Sub

ErrorHandler:
    Err.Raise Err.Number, "ParseObjectClass", Err.Description
End Sub

Private Sub ParseGlobal(lStart As Long, lEnd As Long, oComments As infComments)
    '
    ' Parse Global<ws>name<ws>;
    '       Global<ws>name<ws>=<ws>value;
    '
    ' Add it to CurrentModule, set the comments
    '
    Dim eq As Long
    Dim q1 As Long
    Dim q2 As Long
    Dim n1 As Long
    Dim n2 As Long
    Dim GName As String

    On Error GoTo ErrorHandler
    
    n1 = JumpToNonSpace(JumpToSpace(lStart))
    n2 = JumpToEndOfName(n1)
    GName = Mid(sFileAll, n1, n2 - n1)

    eq = InStr(lStart, sFileAll, "=")
    If eq > 0 And eq < lEnd Then
        q1 = JumpToNonSpace(eq + 1)
        If Mid(sFileAll, q1, 1) = Chr(34) Then
            q2 = InStr(q1 + 1, sFileAll, Chr(34)) + 1
        Else
            q2 = JumpToSpace(q1)
            If q2 > lEnd Then q2 = lEnd
        End If
        mModules(sCurrentModuleName).Globals.Add GName, Mid(sFileAll, q1, q2 - q1 - 1)
    Else
        mModules(sCurrentModuleName).Globals.Add GName, ""
    End If

    Set mModules(sCurrentModuleName).Globals(GName).Comments = oComments

    Exit Sub

ErrorHandler:
    Err.Raise Err.Number, "ParseObjectClass", Err.Description
End Sub

Private Sub ParseGrammar(lStart As Long, lEnd As Long, oComments As infComments)
    '
    ' Parse Extend<ws><word list><ws>
    '
    '   then from 1 to n
    '
    '   <asterisk><ws><phrase><ws>[->]<ws>ProcedureName;
    '
    ' Add it to CurrentModule, set the comments
    '
    Dim wl As Long
    Dim w2 As Long
    Dim np As Long
    Dim sp As Long
    Dim arrow As Long
    Dim GAllWords As String
    Dim GName As String
    Dim GType As GrammarTypes
    Dim GKey As String
    Dim GMeta As Boolean
    Dim GKeyword As GrammarKeywords
    Dim GOnly As Boolean
    Dim WordList As New infGrammarWords
    Dim st As Long
    Dim ew As Long
    Dim sDefinition As String
    Dim eq As Long
    Dim sDef As String
    
    On Error GoTo ErrorHandler
    
    sDefinition = Mid(sFileAll, lStart, lEnd - lStart)
    sDefinition = Replace(sDefinition, Chr(0), "")
    sDefinition = Replace(sDefinition, Chr(10), "")
    sDefinition = Replace(sDefinition, Chr(13), "")
    sDefinition = Replace(sDefinition, Chr(9), " ")
    '
    ' and reduce space
    '
    Do While InStr(1, sDefinition, "  ") > 0
        sDefinition = Replace(sDefinition, "  ", " ")
    Loop

    GMeta = False
    If LCase(Mid(sFileAll, lStart, 4)) = "verb" Then
        GType = gtVERB
        w1 = JumpToNonSpace(lStart + 5)
    End If
    If LCase(Mid(sFileAll, lStart, 6)) = "extend" Then
        GType = gtEXTEND
        w1 = JumpToNonSpace(lStart + 7)
    End If
    
    If LCase(Mid(sFileAll, w1, 4)) = "meta" Then
        w1 = JumpToNonSpace(w1 + 4)
        GMeta = True
    ElseIf LCase(Mid(sFileAll, w1, 4)) = "only" Then
        w1 = JumpToNonSpace(w1 + 4)
        GOnly = True
    End If

    eq = InStr(w1, sFileAll, "=")
    w2 = InStr(w1, sFileAll, "*")

    If eq < w2 And eq > 0 Then
        GAllWords = RemoveTrailingSpaces(Mid(sFileAll, w1, eq - w1))
        w2 = eq
        GType = gtSYNONYM
    Else
        GAllWords = RemoveTrailingSpaces(Mid(sFileAll, w1, w2 - w1))
    End If

    If LCase(Right(GAllWords, 7)) = "replace" Then
        GAllWords = Left(GAllWords, Len(GAllWords) - 8)
        GKeyword = gkREPLACE
    ElseIf LCase(Right(GAllWords, 5)) = "first" Then
        GAllWords = Left(GAllWords, Len(GAllWords) - 5)
        GKeyword = gkFIRST
    ElseIf LCase(Right(GAllWords, 4)) = "last" Then
        GAllWords = Left(GAllWords, Len(GAllWords) - 4)
        GKeyword = gkLAST
    Else
        GKeyword = gkLAST
    End If
    
    '
    ' Get rid of tabs
    '
    GAllWords = Replace(GAllWords, Chr(9), " ")
    '
    ' and comments
    '
    GAllWords = RemoveComments(GAllWords)
    '
    ' and quotes
    '
    GAllWords = Replace(GAllWords, Chr(34), "")
    GAllWords = Replace(GAllWords, "'", "")
    '
    ' and trailing spaces
    '
    GAllWords = RemoveTrailingSpaces(GAllWords)
    '
    ' and vbcrlf
    '
    GAllWords = Replace(GAllWords, Chr(10), "")
    GAllWords = Replace(GAllWords, Chr(13), "")
    '
    ' and reduce space
    '
    Do While InStr(1, GAllWords, "  ") > 0
        GAllWords = Replace(GAllWords, "  ", " ")
    Loop

    '
    ' we should now have word1 space(s) word2 etc... no leading or trailing spaces
    ' add each word to list class
    '
    st = 1
    ew = InStr(1, GAllWords, " ")
    Do Until ew = 0
        WordList.Add Mid(GAllWords, st, ew - st)
        st = ew
        Do Until Mid(GAllWords, st, 1) <> " "
            st = st + 1
        Loop
        ew = InStr(st, GAllWords, " ")
    Loop
    '
    ' one word or last in list
    '
    WordList.Add Mid(GAllWords, st, Len(GAllWords) - st + 1)

    '
    ' No obvious key so we get an autonumber from the Grammar object
    '
    GKey = mModules(sCurrentModuleName).Grammar.Add(GType, GMeta, GOnly, GAllWords, GKeyword, sDefinition)
    Set mModules(sCurrentModuleName).Grammar(GKey).Words = WordList

    sp = JumpToNonSpace(w2 + 1)
    np = NextPhrase(sp)

    If GType = gtSYNONYM Then
        sDef = Mid(sFileAll, sp, np - sp)
        sDef = Replace(sDef, Chr(34), "")
        sDef = Replace(sDef, "'", "")
        mModules(sCurrentModuleName).Grammar(GKey).Definition = sDef
    Else
        Do Until np = 0
            arrow = InStr(sp, sFileAll, "->")
            
            mModules(sCurrentModuleName).Grammar(GKey).Phrases.Add RemoveTrailingSpaces(Trim(Mid(sFileAll, sp, arrow - sp))), _
                                                        RemoveSpaces(Trim(Mid(sFileAll, arrow + 2, np - arrow - 2)))
            If Mid(sFileAll, np, 1) = ";" Then Exit Do
            sp = JumpToNonSpace(np + 1)
            np = NextPhrase(sp)
        Loop
    End If
    
    Set mModules(sCurrentModuleName).Grammar(GKey).Comments = oComments

    Exit Sub

ErrorHandler:
    Err.Raise Err.Number, "ParseObjectClass", Err.Description
End Sub

Private Sub ParseArray(lStart As Long, lEnd As Long, oComments As infComments)
    '
    ' Parse Array<ws>name<ws>[->]<ws>values;
    '       Array<ws>name<ws>[-->]<ws>values;
    '       Array<ws>name<ws>[string]<ws>values;
    '       Array<ws>name<ws>[table]<ws>values;
    '
    ' Add it to CurrentModule, set the comments
    '
    Dim eq As Long
    Dim q1 As Long
    Dim q2 As Long
    Dim n1 As Long
    Dim n2 As Long
    Dim at As Long
    Dim AName As String
    Dim ATypeString As String
    Dim AType As ArrayTypes
    Dim sArrayDef As String
    Dim iChar As Integer

    On Error GoTo ErrorHandler

    n1 = JumpToNonSpace(JumpToSpace(lStart))
    n2 = JumpToEndOfName(n1)
    at = JumpToNonEndOfName(n2)
    AName = Mid(sFileAll, n1, n2 - n1)
    ATypeString = RemoveSpaces(Mid(sFileAll, n2, at - n2))

    Select Case True
        Case InStr(1, ATypeString, "-->") > 0
            AType = atWORD_ARRAY
        Case InStr(1, ATypeString, "->") > 0
            AType = atBYTE_ARRAY
        Case InStr(1, LCase(ATypeString), "table") > 0
            AType = atTABLE_ARRAY
        Case InStr(1, LCase(ATypeString), "string") > 0
            AType = atSTRING_ARRAY
    End Select

    sArrayDef = Trim(Mid(sFileAll, at, lEnd - at - 1))

    '
    ' Replace Inform 5 n$a syntax with a\\ (for any letter from a to z)
    '
    For iChar = 97 To 122
        If InStr(1, sArrayDef, "n$" & Chr(iChar)) > 0 Then
            sArrayDef = Replace(sArrayDef, "n$" & Chr(iChar), "'" & Chr(iChar) & "\\'")
            mModules(sCurrentModuleName).ParseErrors.Add "Syntax Correction: n$" & Chr(iChar) & " is not supported. The correct syntax is '" & Chr(iChar) & "\\' and has been automatically changed by the parser."
        End If
    Next iChar

    

    mModules(sCurrentModuleName).Arrays.Add AName, AType, sArrayDef
    Set mModules(sCurrentModuleName).Arrays(AName).Comments = oComments

    Exit Sub

ErrorHandler:
    Err.Raise Err.Number, "ParseObjectClass", Err.Description
End Sub

Private Sub ParseSerial(lStart As Long, lEnd As Long, oComments As infComments)
    '
    ' Parse Serial<whitespace><qt>yymmdd<qt><whitespace>;
    ' Add it to CurrentModule, set the comments
    '
    Dim q1 As Long
    Dim q2 As Long
    Dim dtv As String

    On Error GoTo ErrorHandler

    q1 = InStr(lStart, sFileAll, Chr(34))
    q2 = InStr(q1 + 1, sFileAll, Chr(34))
    dtv = Mid(sFileAll, q1 + 1, q2 - q1 - 1)
    dtv = Mid(dtv, 3, 2) & "/" & Right(dtv, 2) & "/" & Left(dtv, 2)

    mModules(sCurrentModuleName).Serial = DateValue(dtv)
    Set mModules(sCurrentModuleName).SerialComments = oComments

    Exit Sub

ErrorHandler:
    Err.Raise Err.Number, "ParseObjectClass", Err.Description
End Sub

Private Sub ParseRelease(lStart As Long, lEnd As Long, oComments As infComments)
    '
    ' Parse Release<whitespace><number><whitespace>;
    ' Add it to CurrentModule, set the comments
    '
    Dim s As Long
    Dim e As Long

    On Error GoTo ErrorHandler
    
    s = JumpToNonSpace(JumpToSpace(lStart))
    e = JumpToSpace(s)
    If e = 0 Then e = InStr(s, sFileAll, ";")

    mModules(sCurrentModuleName).Release = CLng(Mid(sFileAll, s, e - s - 1))
    Set mModules(sCurrentModuleName).ReleaseComments = oComments

    Exit Sub

ErrorHandler:
    Err.Raise Err.Number, "ParseObjectClass", Err.Description
End Sub

Private Sub ParseInclude(lStart As Long, lEnd As Long, oComments As infComments)
    '
    ' Parse Include<whitespace><qt>yymmdd<qt><whitespace>;
    ' Add it to CurrentModule, set the comments
    '
    Dim q1 As Long
    Dim q2 As Long
    Dim p As Long
    Dim IName As String

    On Error GoTo ErrorHandler

    q1 = InStr(lStart, sFileAll, Chr(34))
    p = InStr(q1, sFileAll, ".")
    q2 = InStr(q1 + 1, sFileAll, Chr(34))
    If p > q2 Or p = 0 Then
        IName = Mid(sFileAll, q1 + 1, q2 - q1 - 1)
    Else
        IName = Mid(sFileAll, q1 + 1, p - q1 - 1)
    End If

    mModules(sCurrentModuleName).Includes.Add IName
    Set mModules(sCurrentModuleName).Includes(IName).Comments = oComments

    Exit Sub

ErrorHandler:
    Err.Raise Err.Number, "ParseObjectClass", Err.Description
End Sub

Private Sub ParseAttributeDef(lStart As Long, lEnd As Long, oComments As infComments)
    '
    ' Parse Attribute<whitespace>name<whitespace>;
    ' Add it to CurrentModule, set the comments
    '
    Dim s As Long
    Dim e As Long
    Dim AName As String

    On Error GoTo ErrorHandler

    s = JumpToNonSpace(JumpToSpace(lStart))
    e = JumpToSpace(s)
    If e = 0 Then e = InStr(s, sFileAll, ";")
    AName = Mid(sFileAll, s, e - s - 1)

    mModules(sCurrentModuleName).AttributeDefs.Add AName
    Set mModules(sCurrentModuleName).AttributeDefs(AName).Comments = oComments
    
    Exit Sub

ErrorHandler:
    Err.Raise Err.Number, "ParseObjectClass", Err.Description
End Sub

Private Sub ParsePropertyDef(lStart As Long, lEnd As Long, oComments As infComments)
    '
    ' Parse Property<whitespace>[additive]<ws>name<whitespace>;
    ' Add it to CurrentModule, set the comments
    '
    Dim s As Long
    Dim e As Long
    Dim PName As String
    Dim bAdditive As Boolean

    On Error GoTo ErrorHandler

    bAdditive = False
    s = JumpToNonSpace(JumpToSpace(lStart))
    If LCase(Mid(sFileAll, s, 8)) = "additive" Then
        s = JumpToNonSpace(s + 8)
        bAdditive = True
    End If
    e = JumpToSpace(s)
    If e = 0 Then e = InStr(s, sFileAll, ";")
    PName = Mid(sFileAll, s, e - s - 1)

    mModules(sCurrentModuleName).PropertyDefs.Add PName, bAdditive
    Set mModules(sCurrentModuleName).PropertyDefs(PName).Comments = oComments
    
    Exit Sub

ErrorHandler:
    Err.Raise Err.Number, "ParseObjectClass", Err.Description
End Sub

Private Sub ParseReplace(lStart As Long, lEnd As Long, oComments As infComments)
    '
    ' Parse Replace<whitespace>name<whitespace>;
    ' Add it to CurrentModule, set the comments
    '
    Dim s As Long
    Dim e As Long
    Dim RName As String

    On Error GoTo ErrorHandler

    s = JumpToNonSpace(JumpToSpace(lStart))
    e = JumpToSpace(s)
    If e = 0 Then e = InStr(s, sFileAll, ";")
    RName = Mid(sFileAll, s, e - s - 1)

    mModules(sCurrentModuleName).Replaces.Add RName
    If oComments.Count > 0 Then Set mModules(sCurrentModuleName).Replaces(RName).Comments = oComments
    
    Exit Sub

ErrorHandler:
    Err.Raise Err.Number, "ParseObjectClass", Err.Description
End Sub

Private Sub ParseProcedure(lStart As Long, lEnd As Long, oComments As infComments)
    '
    ' Parse [<ws>name<ws>[arg]<ws>[arg]<ws>;code];
    ' Add it to CurrentModule, set the comments
    '
    Dim s As Long   ' start
    Dim sc As Long  ' semi-colon
    Dim e As Long   ' end
    Dim cs As Long  ' code start
    Dim PName As String
    Dim PArgs As String

    On Error GoTo ErrorHandler

    '
    ' Get the proc name
    '
    s = JumpToNonSpace(lStart + 1)
    sc = InStr(s, sFileAll, ";")
    e = JumpToSpace(s)

    If sc < e Then
        PName = Mid(sFileAll, s, sc - s)
        PArgs = ""
        cs = sc + 1
    Else
        PName = Mid(sFileAll, s, e - s)
        s = JumpToNonSpace(e)
        PArgs = Mid(sFileAll, s, sc - s)
        cs = sc + 1
    End If

    mModules(sCurrentModuleName).Procedures.Add PName, Trim(Mid(sFileAll, cs, lEnd - cs - 2))
    mModules(sCurrentModuleName).Procedures(PName).Arguments = PArgs
    Set mModules(sCurrentModuleName).Procedures(PName).Comments = oComments
    
    Exit Sub

ErrorHandler:
    Err.Raise Err.Number, "ParseObjectClass", Err.Description
End Sub

Private Sub ParseObjectClass(lStart As Long, lEnd As Long, oComments As infComments)
    Dim newAttrib As String
    Dim sChar As String
    Dim lCursor As Long
    Dim lMark As Long
    Dim lColon As Long
    Dim bHeader As Long
    Dim bBody As Integer
    Dim lProperty As Long
    Dim lAttribute As Long
    Dim GCDepth As Long
    Dim sShortName As String
    Dim sParentName As String
    Dim sClassName As String
    Dim sName As String
    Dim PName As String
    Dim PArgs As String
    Dim pType As infPROPERTY_TYPE
    Dim tmpName As String
    Dim foundClassName As Boolean
    Dim Class As New infObject
    Dim bPrivate As Boolean
    Dim bPropFound As Boolean
    Dim bAttribFound As Boolean

    On Error GoTo ErrorHandler
    '
    ' xxxxx [->[->][->]] yyyyy [class ccccc] [parent ppppp] [sssss]
    ' {space}
    '
    ' xxxxx  = 'Class', 'Object', or {ClassName}
    ' ->..n  = Current depth in object tree. Resolve this after all objects
    '          have been parsed.
    ' yyyyy  = ClassName or ObjectName
    ' ccccc  = ClassName (check on redundancy issues)
    ' ppppp  = ParentObjectName
    ' sssss  = Short_Name property
    '
    GCDepth = 0
    Select Case True
        Case LCase(Mid(sFileAll, lStart, 6)) = "object"
            lCursor = lStart + 7
            lType = itOBJECT
            sClassName = ""
        Case LCase(Mid(sFileAll, lStart, 6)) = "nearby"
            lCursor = lStart + 7
            lType = itOBJECT
            sClassName = ""
            GCDepth = 1
        Case LCase(Mid(sFileAll, lStart, 5)) = "class"
            lCursor = lStart + 6
            lType = itCLASS
            sClassName = ""
        Case Else
            lCursor = JumpToSpace(lStart)
            lType = itOBJECT
            sClassName = Mid(sFileAll, lStart, lCursor - lStart)
    End Select
    
    lMark = JumpToNonSpace(lCursor)
    lCursor = JumpToSpace(lMark)
    
    If Mid(sFileAll, lMark, 1) = "-" Then
        '
        ' Found arrow - get all of them and set depth
        '
        lCursor = JumpToNonSpaceNonArrow(lMark)
        GCDepth = CalculateDepth(lMark, lCursor - 1)
        lMark = JumpToNonSpace(lCursor)
        lCursor = JumpToSpace(lMark)
    End If

    sShortName = ""
    sParentName = ""
    '
    ' This has to be the name (well, if it isn't give it a noname name)
    '
    lColon = JumpToColon(lMark)
    If Mid(sFileAll, lMark, 1) = Chr(34) Then
        lNoName = lNoName + 1
        sName = "NoName" & lNoName
        lCursor = lMark - 1
    ElseIf LCase(Mid(sFileAll, lMark, 7)) = "private" And InStr(1, cnWHITESPACE, Mid(sFileAll, lMark + 7, 1)) > 0 Then
        bBody = itPROPERTY
        lMark = JumpToNonSpace(lCursor)
        lCursor = JumpToSpace(lMark)
        lNoName = lNoName + 1
        sName = "NoName" & lNoName
        bPrivate = True
        GoTo DoBody
    ElseIf LCase(Mid(sFileAll, lMark, 4)) = "with" And InStr(1, cnWHITESPACE, Mid(sFileAll, lMark + 4, 1)) > 0 Then
        bBody = itPROPERTY
        'lMark = JumpToNonSpace(lCursor)
        'lCursor = JumpToSpace(lMark)
        lNoName = lNoName + 1
        sName = "NoName" & lNoName
        bPrivate = False
        GoTo DoBody
    ElseIf LCase(Mid(sFileAll, lMark, 3)) = "has" And InStr(1, cnWHITESPACE, Mid(sFileAll, lMark + 3, 1)) > 0 Then
        bBody = itATTRIBUTE
        lMark = JumpToNonSpace(lCursor)
        lCursor = JumpToSpace(lMark)
        lNoName = lNoName + 1
        sName = "NoName" & lNoName
        GoTo DoBody
    ElseIf lColon < lCursor Then
        sName = Mid(sFileAll, lMark, lColon - lMark)
        If sName = "" Then
            lNoName = lNoName + 1
            sName = "NoName" & lNoName
        End If
        If lType = itOBJECT Then
            mModules(sCurrentModuleName).Objects.Add sName, sClassName, sShortName, sParentName, GCDepth
            Set mModules(sCurrentModuleName).Objects(sName).Comments = oComments
        Else
            mModules(sCurrentModuleName).Classes.Add sName, sClassName, sShortName, sParentName, GCDepth
            Set mModules(sCurrentModuleName).Classes(sName).Comments = oComments
        End If
        Exit Sub
    Else
        sName = Mid(sFileAll, lMark, lCursor - lMark)
    End If
    '
    ' Now we can run into several things including:
    '   - [a-z] for classname
    '   - '"' for short_name property
    '   - 'class' {classname}
    '   - 'parent' {parentname}
    '   - 'with' for start of properties
    '   - 'has' for begin of attribute list
    '   - ';' for end of object/class
    '
    ' Start continuous loop until we reach the end of the object
    '
    For lCursor = lCursor To lEnd
        sChar = Mid(sFileAll, lCursor, 1)
        If InStr(1, cnWHITESPACE, sChar) = 0 Then
            '
            ' Skip past comments
            '
            If sChar = "!" Then
                lCursor = InStr(lCursor, sFileAll, vbCrLf) + 1
            '
            ' if we hit 'with' or 'has' or ';' jump to non header elements
            '
            ElseIf LCase(Mid(sFileAll, lCursor, 7)) = "private" And InStr(1, cnWHITESPACE, Mid(sFileAll, lCursor + 7, 1)) > 0 Then
                bBody = itPROPERTY
                bPrivate = True
                lCursor = JumpToSpace(lCursor)
                Exit For
            ElseIf LCase(Mid(sFileAll, lCursor, 4)) = "with" And InStr(1, cnWHITESPACE, Mid(sFileAll, lCursor + 4, 1)) > 0 Then
                bBody = itPROPERTY
                bPrivate = False
                lCursor = JumpToSpace(lCursor)
                Exit For
            ElseIf LCase(Mid(sFileAll, lCursor, 3)) = "has" And InStr(1, cnWHITESPACE, Mid(sFileAll, lCursor + 3, 1)) > 0 Then
                bBody = itATTRIBUTE
                lCursor = JumpToSpace(lCursor)
                Exit For
            '
            ' *******************************
            '
            ' name, short_name, class, parent
            '
            ElseIf sChar = Chr(34) Then
                '
                ' got a short_name property in the header - save it and move on
                '
                lMark = lCursor
                lCursor = InStr(lMark + 1, sFileAll, Chr(34)) + 1
                sShortName = IStringToVString(Mid(sFileAll, lMark, lCursor - lMark))
            ElseIf LCase(Mid(sFileAll, lCursor, 5)) = "class" And InStr(1, cnWHITESPACE, Mid(sFileAll, lCursor + 5, 1)) > 0 Then
                '
                ' got a classname
                '
                lCursor = JumpToSpace(lCursor)
                lMark = JumpToNonSpace(lCursor)
                lCursor = JumpToNonAlpha(lMark)
                sClassName = Mid(sFileAll, lMark, lCursor - lMark)
'            ElseIf LCase(Mid(sFileAll, lCursor, 6)) = "parent" And InStr(1, cnWHITESPACE, Mid(sFileAll, lCursor + 6, 1)) > 0 Then
'                '
'                ' got a parentname
'                '
'                lMark = JumpToNonSpace(lCursor)
'                lCursor = JumpToNonAlpha(lMark)
'                sParentName = Mid(sFileAll, lMark, lCursor - lMark)
            ElseIf LCase(Mid(sFileAll, lCursor, 1)) Like "[a-z]" Then
                '
                ' it's a parentname
                '
                lMark = lCursor
                lCursor = JumpToNonAlpha(lMark)
                sParentName = Mid(sFileAll, lMark, lCursor - lMark)
            End If
            If Mid(sFileAll, lCursor, 1) = ";" Then
                If lType = itOBJECT Then
                    mModules(sCurrentModuleName).Objects.Add sName, sClassName, sShortName, sParentName, GCDepth
                    Set mModules(sCurrentModuleName).Objects(sName).Comments = oComments
'PdV
                    mModules(sCurrentModuleName).Objects(sName).Code = Mid(sFileAll, lStart, lEnd - lStart)
'PdV
                Else
                    mModules(sCurrentModuleName).Classes.Add sName, sClassName, sShortName, sParentName, GCDepth
                    Set mModules(sCurrentModuleName).Classes(sName).Comments = oComments
'PdV
                    mModules(sCurrentModuleName).Classes(sName).Code = Mid(sFileAll, lStart, lEnd - lStart)
'PdV
                End If
                Exit Sub
            End If
        End If
    Next
    '
    ' Body
    '
DoBody:
    If lType = itOBJECT Then
        mModules(sCurrentModuleName).Objects.Add sName, sClassName, sShortName, sParentName, GCDepth
        Set mModules(sCurrentModuleName).Objects(sName).Comments = oComments
'PdV
        mModules(sCurrentModuleName).Objects(sName).Code = Mid(sFileAll, lStart, lEnd - lStart)
'PdV
    Else
        mModules(sCurrentModuleName).Classes.Add sName, sClassName, sShortName, sParentName, GCDepth
        Set mModules(sCurrentModuleName).Classes(sName).Comments = oComments
'PdV
        mModules(sCurrentModuleName).Classes(sName).Code = Mid(sFileAll, lStart, lEnd - lStart)
'PdV
    End If
    Do
        '
        ' When we start out - we're at the space after 'with' or 'has'
        '
        '
        ' properties, attribues only
        '
        Select Case bBody
            Case itPROPERTY
                '
                ' We're at whitespace or a comma - find next alpha character
                '
                lMark = JumpToAlpha(lCursor)
                lCursor = JumpToNonAlpha(lMark)

                '
                ' We're outta here...
                '
                If lMark >= lEnd Then Exit Sub

                '
                ' Jump to Attributes
                '
                If LCase(Mid(sFileAll, lMark, 3)) = "has" And InStr(1, cnWHITESPACE, Mid(sFileAll, lMark + 3, 1)) > 0 Then
                    bBody = itATTRIBUTE
                Else
                    '
                    ' Got a property - classify it and add to property holder
                    '
                    bPropFound = False
                    PName = Mid(sFileAll, lMark, lCursor - lMark)
                    lMark = JumpToNonSpace(lCursor)
                    If Mid(sFileAll, lMark, 1) = "!" Then
                        '
                        ' Skip internal object/class comments (sorry!)
                        '
                        Do While sChar = "!"
                            lCursor = InStr(lCursor, sFileAll, vbCrLf) + 2
                        Loop
                    ElseIf Mid(sFileAll, lMark, 1) = "[" Then
                        '
                        ' Property is a function block
                        '
                        lCursor = JumpToEndOfFunction(lMark) + 2
                        lColon = JumpToColon(lMark)
                        PArgs = Mid(sFileAll, lMark + 1, lColon - lMark - 1)
                        lMark = lColon + 1
                        If lType = itOBJECT Then
                            If mModules(sCurrentModuleName).Objects(sName).Properties.Find(PName) = 0 Then
                                mModules(sCurrentModuleName).Objects(sName).Properties.Add PName, infptPROCEDURE, PArgs, Space(Len(PName) + 1) & Space(Len(PArgs) + 2) & Mid(sFileAll, lMark, lCursor - lMark - 2), bPrivate
                            Else
                                bPropFound = True
                            End If
                        Else
                            If mModules(sCurrentModuleName).Classes(sName).Properties.Find(PName) = 0 Then
                                mModules(sCurrentModuleName).Classes(sName).Properties.Add PName, infptPROCEDURE, PArgs, Space(Len(PName) + 1) & Space(Len(PArgs) + 2) & Mid(sFileAll, lMark, lCursor - lMark - 2), bPrivate
                            Else
                                bPropFound = True
                            End If
                        End If
                        bPrivate = False
                    ElseIf Mid(sFileAll, lMark, 1) = Chr(34) Then
                        '
                        ' Property is a string or string array
                        '
                        lCursor = JumpToSeparator(lMark)
                        If CountChar(lMark, lCursor, Chr(34)) > 2 Then
                            pType = infptSTRING_ARRAY
                            If lType = itOBJECT Then
                                If mModules(sCurrentModuleName).Objects(sName).Properties.Find(PName) = 0 Then
                                    mModules(sCurrentModuleName).Objects(sName).Properties.Add PName, pType, "", Mid(sFileAll, lMark, lCursor - lMark), bPrivate
                                Else
                                    bPropFound = True
                                End If
                            Else
                                If mModules(sCurrentModuleName).Classes(sName).Properties.Find(PName) = 0 Then
                                    mModules(sCurrentModuleName).Classes(sName).Properties.Add PName, pType, "", Mid(sFileAll, lMark, lCursor - lMark), bPrivate
                                Else
                                    bPropFound = True
                                End If
                            End If
                        Else
                            pType = infptSTRING
                            If lType = itOBJECT Then
                                If mModules(sCurrentModuleName).Objects(sName).Properties.Find(PName) = 0 Then
                                    mModules(sCurrentModuleName).Objects(sName).Properties.Add PName, pType, "", IStringToVString(Mid(sFileAll, lMark, lCursor - lMark)), bPrivate
                                Else
                                    bPropFound = True
                                End If
                            Else
                                If mModules(sCurrentModuleName).Classes(sName).Properties.Find(PName) = 0 Then
                                    mModules(sCurrentModuleName).Classes(sName).Properties.Add PName, pType, "", IStringToVString(Mid(sFileAll, lMark, lCursor - lMark)), bPrivate
                                Else
                                    bPropFound = True
                                End If
                            End If
                        End If
                        bPrivate = False
                    ElseIf Mid(sFileAll, lMark, 1) = "'" Then
                        '
                        ' Property is a string or string array
                        '
                        lCursor = JumpToSeparator(lMark)
                        If CountChar(lMark, lCursor, "'") > 2 Then
                            pType = infptSTRING_ARRAY
                        Else
                            pType = infptSTRING
                        End If
                        If lType = itOBJECT Then
                            If mModules(sCurrentModuleName).Objects(sName).Properties.Find(PName) = 0 Then
                                mModules(sCurrentModuleName).Objects(sName).Properties.Add PName, pType, "", Mid(sFileAll, lMark, lCursor - lMark), bPrivate
                            Else
                                bPropFound = True
                            End If
                        Else
                            If mModules(sCurrentModuleName).Classes(sName).Properties.Find(PName) = 0 Then
                                mModules(sCurrentModuleName).Classes(sName).Properties.Add PName, pType, "", Mid(sFileAll, lMark, lCursor - lMark), bPrivate
                            Else
                                bPropFound = True
                            End If
                        End If
                        bPrivate = False
                    ElseIf Mid(sFileAll, lMark, 1) Like "[0-9$]" Or Mid(sFileAll, lMark, 1) = "-" Then
                        '
                        ' Property is numeric or a numeric array
                        '
                        lCursor = JumpToSeparator(lMark)
                        If CountItems(lMark, lCursor - 1) > 1 Then
                            pType = infptNUMERIC_ARRAY
                        Else
                            pType = infptNUMERIC
                        End If
                        If lType = itOBJECT Then
                            If mModules(sCurrentModuleName).Objects(sName).Properties.Find(PName) = 0 Then
                                mModules(sCurrentModuleName).Objects(sName).Properties.Add PName, pType, "", Mid(sFileAll, lMark, lCursor - lMark), bPrivate
                            Else
                                bPropFound = True
                            End If
                        Else
                            If mModules(sCurrentModuleName).Classes(sName).Properties.Find(PName) = 0 Then
                                mModules(sCurrentModuleName).Classes(sName).Properties.Add PName, pType, "", Mid(sFileAll, lMark, lCursor - lMark), bPrivate
                            Else
                                bPropFound = True
                            End If
                        End If
                        bPrivate = False
                    ElseIf LCase(Mid(sFileAll, lMark, 1)) Like "[a-z]" Then
                        '
                        ' Property is an object or procedure name or an array of objects or procedure
                        '
                        lCursor = JumpToSeparator(lMark)
                        If CountItems(lMark, lCursor - 1) > 1 Then
                            pType = infptIDENTIFIER_ARRAY
                        Else
                            pType = infptIDENTIFIER
                        End If
                        If lType = itOBJECT Then
                            If mModules(sCurrentModuleName).Objects(sName).Properties.Find(PName) = 0 Then
                                mModules(sCurrentModuleName).Objects(sName).Properties.Add PName, pType, "", Mid(sFileAll, lMark, lCursor - lMark), bPrivate
                            Else
                                bPropFound = True
                            End If
                        Else
                            If mModules(sCurrentModuleName).Classes(sName).Properties.Find(PName) = 0 Then
                                mModules(sCurrentModuleName).Classes(sName).Properties.Add PName, pType, "", Mid(sFileAll, lMark, lCursor - lMark), bPrivate
                            Else
                                bPropFound = True
                            End If
                        End If
                        bPrivate = False
                    End If
                End If
                If bPropFound Then
                    mModules(sCurrentModuleName).ParseErrors.Add "Property Exists in Object/Class '" & sName & "': " & PName & " Type: " & pType & " Definition: " & Mid(sFileAll, lMark, lCursor - lMark)
                End If
            Case itATTRIBUTE
                '
                ' We're at whitespace or a comma - find next alpha character
                '
                lMark = JumpToAlpha(lCursor)
                lCursor = JumpToNonAlpha(lMark)

                '
                ' We're outta here...
                '
                If lMark >= lEnd Then Exit Sub
                '
                ' Jump to properties
                '
                If LCase(Mid(sFileAll, lMark, 4)) = "with" And InStr(1, cnWHITESPACE, Mid(sFileAll, lMark + 4, 1)) > 0 Then
                    bBody = itPROPERTY
                Else
                    bAttribFound = False
                    If lType = itOBJECT Then
                        If mModules(sCurrentModuleName).Objects(sName).Attributes.Find(Mid(sFileAll, lMark, lCursor - lMark)) = 0 Then
                            mModules(sCurrentModuleName).Objects(sName).Attributes.Add Mid(sFileAll, lMark, lCursor - lMark), True
                        Else
                            bAttribFound = True
                        End If
                    Else
                        If mModules(sCurrentModuleName).Classes(sName).Attributes.Find(Mid(sFileAll, lMark, lCursor - lMark)) = 0 Then
                            mModules(sCurrentModuleName).Classes(sName).Attributes.Add Mid(sFileAll, lMark, lCursor - lMark), True
                        Else
                            bAttribFound = True
                        End If
                    End If
                    If bAttribFound Then
                        mModules(sCurrentModuleName).ParseErrors.Add "Attribute Redefined in Object/Class '" & sName & "' Attribute: " & Mid(sFileAll, lMark, lCursor - lMark)
                    End If
                End If
        End Select
    Loop
    
    Exit Sub

ErrorHandler:
    Err.Raise Err.Number, "ParseObjectClass", Err.Description
End Sub

Private Function JumpToNonAlpha(lCursor As Long) As Long
    Dim lSearch As Long
    For lSearch = lCursor To Len(sFileAll)
        sSearch = Mid(sFileAll, lSearch, 1)
        Do Until sSearch <> "!"
            lSearch = InStr(lSearch, sFileAll, vbCrLf) + 2
            sSearch = Mid(sFileAll, lSearch, 1)
        Loop
        If Not (sSearch Like "[_0-9a-zA-Z]") Then
            Exit For
        End If
    Next lSearch
    JumpToNonAlpha = lSearch
End Function

Private Function JumpToAlpha(lCursor As Long) As Long
    Dim lSearch As Long
    Dim sSearch As String
    For lSearch = lCursor To Len(sFileAll)
        sSearch = Mid(sFileAll, lSearch, 1)
        Do Until sSearch <> "!"
            lSearch = InStr(lSearch, sFileAll, vbCrLf) + 2
            sSearch = Mid(sFileAll, lSearch, 1)
        Loop
        If sSearch Like "[_0-9a-zA-Z]" Then
            Exit For
        End If
    Next lSearch
    JumpToAlpha = lSearch
End Function

Private Function JumpToEndOfFunction(lCursor As Long) As Long
    Dim lSearch As Long
    lSearch = lCursor
    lJumpDQ = InStr(lSearch + 1, sFileAll, Chr(34))
    lJumpSQ = InStr(lSearch + 1, sFileAll, "'")
    lJumpSB = InStr(lSearch + 1, sFileAll, "]")
    lJumpCM = InStr(lSearch + 1, sFileAll, "!")
    Do
        If lJumpSB < lJumpDQ Or lJumpDQ = 0 Then
            If lJumpSB < lJumpSQ Or lJumpSQ = 0 Then
                If lJumpSB < lJumpCM Or lJumpCM = 0 Then
                    JumpToEndOfFunction = lJumpSB
                    Exit Do
                Else
                    lSearch = InStr(lJumpCM, sFileAll, vbCrLf) + 1
                End If
            Else
                If lJumpCM < lJumpSQ And lJumpCM > 0 Then
                    lSearch = InStr(lJumpCM, sFileAll, vbCrLf) + 1
                Else
                    lSearch = InStr(lJumpSQ + 1, sFileAll, "'")
                End If
            End If
        Else
            If lJumpSQ < lJumpDQ And lJumpSQ > 0 Then
                If lJumpCM < lJumpSQ And lJumpCM > 0 Then
                    lSearch = InStr(lJumpCM, sFileAll, vbCrLf) + 1
                Else
                    lSearch = InStr(lJumpSQ + 1, sFileAll, "'")
                End If
            Else
                If lJumpCM < lJumpDQ And lJumpCM > 0 Then
                    lSearch = InStr(lJumpCM, sFileAll, vbCrLf) + 1
                Else
                    lSearch = InStr(lJumpDQ + 1, sFileAll, Chr(34))
                End If
            End If
        End If
        lJumpDQ = InStr(lSearch + 1, sFileAll, Chr(34))
        lJumpSQ = InStr(lSearch + 1, sFileAll, "'")
        lJumpSB = InStr(lSearch + 1, sFileAll, "]")
        lJumpCM = InStr(lSearch + 1, sFileAll, "!")
    Loop

End Function

Private Function JumpToEndOfName(lCursor As Long) As Long
    Dim lSearch As Long
    Dim sSearch As String
    For lSearch = lCursor To Len(sFileAll)
        sSearch = Mid(sFileAll, lSearch, 1)
        If sSearch = "!" Then
            '
            ' Skip embedded comments (these will not be saved)
            '
            lSearch = InStr(lSearch, sFileAll, vbCrLf) + 2
            '
            ' Reload search character
            '
            sSearch = Mid(sFileAll, lSearch, 1)
        End If
        If InStr(1, cnWHITESPACE & "=;->", sSearch) > 0 Then
            Exit For
        End If
    Next lSearch
    JumpToEndOfName = lSearch
End Function

Private Function JumpToNonEndOfName(lCursor As Long) As Long
    Dim lSearch As Long
    Dim sSearch As String
    For lSearch = lCursor To Len(sFileAll)
        sSearch = Mid(sFileAll, lSearch, 1)
        If sSearch = "!" Then
            '
            ' Skip embedded comments (these will not be saved)
            '
            lSearch = InStr(lSearch, sFileAll, vbCrLf) + 2
            '
            ' Reload search character
            '
            sSearch = Mid(sFileAll, lSearch, 1)
        End If
        If InStr(1, cnWHITESPACE & ";->", sSearch) = 0 Then
            If sSearch = "t" Then
                If Mid(sFileAll, lSearch, 5) = "table" Then
                    lSearch = lSearch + 4
                End If
            ElseIf sSearch = "s" Then
                If Mid(sFileAll, lSearch, 6) = "string" Then
                    lSearch = lSearch + 5
                End If
            Else
                Exit For
            End If
        End If
    Next lSearch
    JumpToNonEndOfName = lSearch
End Function

Private Function NextPhrase(lCursor As Long) As Long
    Dim lSearch As Long
    Dim sSearch As String
    For lSearch = lCursor To Len(sFileAll)
        sSearch = Mid(sFileAll, lSearch, 1)
        
        If sSearch = "!" Then
            '
            ' Skip embedded comments (these will not be saved)
            '
            lSearch = InStr(lSearch, sFileAll, vbCrLf) + 2
            '
            ' Reload search character
            '
            sSearch = Mid(sFileAll, lSearch, 1)
        End If
        If InStr(1, "*;", sSearch) > 0 Then
            Exit For
        End If
    Next lSearch
    NextPhrase = lSearch
End Function

Private Function JumpToSpace(lCursor As Long) As Long
    Dim lSearch As Long
    Dim sSearch As String
    For lSearch = lCursor To Len(sFileAll)
        sSearch = Mid(sFileAll, lSearch, 1)
        If sSearch = "!" Then
            '
            ' Skip embedded comments (these will not be saved)
            '
            lSearch = InStr(lSearch, sFileAll, vbCrLf) + 2
            '
            ' Reload search character
            '
            sSearch = Mid(sFileAll, lSearch, 1)
        End If
        If InStr(1, cnWHITESPACE, sSearch) > 0 Then
            Exit For
        End If
    Next lSearch
    JumpToSpace = lSearch
End Function

Private Function JumpToNonSpace(lCursor As Long) As Long
    Dim lSearch As Long
    Dim sSearch As String
    For lSearch = lCursor To Len(sFileAll)
        sSearch = Mid(sFileAll, lSearch, 1)
        If sSearch = "!" Then
            lSearch = InStr(lSearch, sFileAll, vbCrLf) + 2
            sSearch = Mid(sFileAll, lSearch, 1)
        End If
        If InStr(1, cnWHITESPACE, sSearch) = 0 Then
            Exit For
        End If
    Next lSearch
    JumpToNonSpace = lSearch
End Function

Private Function JumpToSeparator(lCursor As Long) As Long
    Dim lSearch As Long
    Dim sSearch As String
    For lSearch = lCursor To Len(sFileAll)
        sSearch = Mid(sFileAll, lSearch, 1)
        If sSearch = "!" Then
            lSearch = InStr(lSearch, sFileAll, vbCrLf) + 2
            sSearch = Mid(sFileAll, lSearch, 1)
        End If
        If sSearch = Chr(34) Then
            lSearch = InStr(lSearch + 1, sFileAll, Chr(34)) + 1
            sSearch = Mid(sFileAll, lSearch, 1)
        End If
        If sSearch = "'" Then
            lSearch = InStr(lSearch + 1, sFileAll, "'") + 1
            sSearch = Mid(sFileAll, lSearch, 1)
        End If
        If sSearch = "[" Then
            lSearch = JumpToEndOfFunction(lSearch)
            sSearch = Mid(sFileAll, lSearch, 1)
        End If
        If sSearch = "h" And Mid(sFileAll, lSearch, 3) = "has" And InStr(1, cnWHITESPACE, Mid(sFileAll, lSearch + 3, 1)) > 0 Then
            JumpToSeparator = lSearch - 1
            Exit Function
        End If
        If InStr(1, cnSEPARATOR, sSearch) > 0 And _
                bSingleQuote = False And bDoubleQuote = False Then
            Exit For
        End If
    Next lSearch
    JumpToSeparator = lSearch
End Function

Private Function JumpToNonSeparator(lCursor As Long) As Long
    Dim lSearch As Long
    Dim sSearch As String
    For lSearch = lCursor To Len(sFileAll)
        sSearch = Mid(sFileAll, lSearch, 1)
        Do Until sSearch <> "!"
            lSearch = InStr(lSearch, sFileAll, vbCrLf) + 2
            sSearch = Mid(sFileAll, lSearch, 1)
        Loop
        If InStr(1, cnSEPARATOR, sSearch) = 0 Then
            Exit For
        End If
    Next lSearch
    JumpToNonSeparator = JumpToNonSpace(lSearch)
End Function

Private Function JumpToNonSpaceNonArrow(lCursor As Long) As Long
    Dim lSearch As Long
    Dim sSearch As String
    For lSearch = lCursor To Len(sFileAll)
        sSearch = Mid(sFileAll, lSearch, 1)
        If sSearch = "!" Then
            lSearch = InStr(lSearch, sFileAll, vbCrLf) + 2
            sSearch = Mid(sFileAll, lSearch, 1)
        End If
        If InStr(1, cnNONSPACEARROW, sSearch) = 0 Then
            Exit For
        End If
    Next lSearch
    JumpToNonSpaceNonArrow = lSearch
End Function

Private Function JumpToColon(lCursor As Long) As Long
    JumpToColon = InStr(lCursor, sFileAll, ";")
End Function

Private Function CalculateDepth(lStart As Long, lEnd As Long)
    Dim lCursor As Long

    CalculateDepth = 0
    For lCursor = lStart To lEnd - 1
        If Mid(sFileAll, lCursor, 2) = "->" Then
            CalculateDepth = CalculateDepth + 1
        End If
    Next lCursor
End Function

Private Function CountChar(lStart As Long, lEnd As Long, sChar As String) As Long
    Dim lCursor As Long
    CountChar = 0
    For lCursor = lStart To lEnd
        If Mid(sFileAll, lCursor, 1) = sChar Then
            CountChar = CountChar + 1
        End If
    Next lCursor
End Function

Private Function CountItems(lStart As Long, lEnd As Long) As Long
    Dim lMark As Long
    Dim lCursor As Long
    Dim bItemOn As Boolean
    Dim lItemCount As Long
    lMark = lStart
    lCursor = JumpToSpace(lMark)
    Do Until lCursor >= lEnd Or lCursor = 0
        lItemCount = lItemCount + 1
        lMark = JumpToNonSpace(lCursor)
        lCursor = JumpToSpace(lMark)
    Loop
    CountItems = lItemCount + 1
End Function

Private Function RemoveSpaces(sText As String) As String
    Dim x As Long
    RemovesSpaces = ""
    For x = 1 To Len(sText)
        If InStr(1, cnWHITESPACE, Mid(sText, x, 1)) = 0 Then
            RemoveSpaces = RemoveSpaces & Mid(sText, x, 1)
        End If
    Next x
End Function

Private Function RemoveTrailingSpaces(sText As String) As String
    Dim l As Long
    For l = Len(sText) To 1 Step -1
        If InStr(1, cnWHITESPACE, Mid(sText, l, 1)) = 0 Then
            Exit For
        End If
    Next
    RemoveTrailingSpaces = Left(sText, l)
End Function
Private Sub Class_Terminate()
    Unload frmInfo
End Sub
Private Function IStringToVString(sText As String) As String
    '
    ' Convert basic inform strings to plain text
    '
    ' - remove leading and trailing quotes
    ' - remove leading and trailing spaces for each 'line'
    ' - replace VbCrLf's with a space
    ' - replace VbTab's with a space
    ' - change ~ to double quotes
    ' - change ^ to VbCrLf
    '
    Dim sReturn As String
    Dim lCursor As Long
    Dim lCr As Long
    Dim fw As Long
    Dim bw As Long

    sReturn = Left(sText, Len(sText) - 1)
    sReturn = Right(sReturn, Len(sReturn) - 1)

    '
    ' Go backwords
    '
    lCr = InStr(1, sReturn, vbCrLf)
    Do Until lCr = 0
        For bw = lCr - 1 To 1 Step -1
            If InStr(1, cnWHITESPACE, Mid(sReturn, bw, 1)) > 0 Then
                lCr = lCr - 1
                sReturn = Left(sReturn, bw - 1) & Right(sReturn, Len(sReturn) - bw)
            Else
                Exit For
            End If
        Next bw
        For fw = lCr + 2 To Len(sReturn)
            If fw > Len(sReturn) Then Exit For
            If InStr(1, cnWHITESPACE, Mid(sReturn, fw, 1)) > 0 Then
                sReturn = Left(sReturn, fw - 1) & Right(sReturn, Len(sReturn) - fw)
                fw = fw - 1
            Else
                Exit For
            End If
        Next fw
        lCr = InStr(lCr + 1, sReturn, vbCrLf)
    Loop

    sReturn = Replace(sReturn, "^" & vbCrLf, "^")
    sReturn = Replace(sReturn, vbCrLf, " ")
    
    sReturn = Replace(sReturn, vbTab, " ")

    sReturn = Replace(sReturn, "~", Chr(34))
    sReturn = Replace(sReturn, "^", vbCrLf)
    
    sReturn = Trim(sReturn)

    IStringToVString = sReturn
End Function

Private Function VStringToIString(sText As String, bIndent As Boolean) As String
    '
    ' Convert plain text to inform string
    '
    ' - change double quotes to ~
    ' - change VbCrLf to ^
    ' - add leading and trailing quotes
    ' - modify string to start at column 10 (first line)
    '   and wrap at column 70 with second through n lines
    '   starting in column 11.
    '
    Dim sReturn As String
    Dim lCursor As Long
    Dim sFinal As String
    Dim lIndent As Long
    Dim lWhitespace As Long

    sReturn = Replace(sText, Chr(34), "~")
    sReturn = Replace(sReturn, vbCrLf, "^")

    sReturn = Chr(34) & sReturn & Chr(34)
    If bIndent Then lIndent = 11 Else lIndent = 0

    If Len(sReturn) + lIndent < mColumns Then
        VStringToIString = Space(lIndent) & sReturn
        Exit Function
    Else
        lWhitespace = RInstr(mColumns, Left(sReturn, mColumns), " ")
        sSection = Left(sReturn, lWhitespace - 1)
        sReturn = Right(sReturn, Len(sReturn) - lWhitespace)
    End If
    Do Until Len(sReturn) = 0
        sFinal = sFinal & Space(lIndent) & sSection & vbCrLf
        lIndent = 12
        If Len(sReturn) + lIndent < mColumns Then
            sSection = sReturn
            VStringToIString = sFinal & Space(lIndent) & sSection
            Exit Function
        Else
            lWhitespace = RInstr(mColumns, Left(sReturn, mColumns), " ")
            sSection = Left(sReturn, lWhitespace - 1)
            sReturn = Right(sReturn, Len(sReturn) - lWhitespace)
        End If
    Loop
    
    VStringToIString = sFinal & Space(lIndent) & sSection
End Function

Private Function RemoveComments(sText As String) As String
    Dim nc As Long
    Dim sReturn As String
    Dim eol As Long

    nc = InStr(1, sText, "!")
    sReturn = sText

    Do While nc > 0
        eol = InStr(nc, sReturn, vbCrLf)
        sReturn = Left(sReturn, nc - 1) & Right(sReturn, Len(sReturn) - eol - 1)
        nc = InStr(1, sSearch, "!")
    Loop

    RemoveComments = sReturn
End Function

Public Function RInstr(intStart, strSearch, strFind) As Integer
    Dim r As Integer
    For r = intStart To 1 Step -1
        If Mid(strSearch, r, 1) = strFind Then
            RInstr = r
            Exit Function
        End If
    Next r
    RInstr = 0
End Function

