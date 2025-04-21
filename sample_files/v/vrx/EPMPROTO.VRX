/*:VRX         Main
*/
Main:
/*  EPMProto.ERX

    Invoke the VX-REXX code generation dialogs from within the
    Enhanced Editor (EPM).

    To use this macro you must set the VXREXX environment variable
    to the VX-REXX root directory (e.g. C:\VXREXX).
*/
/*  Uncomment to debug
    call VRRedirectStdio
    trace r
*/
    VRXPath = value( "VXREXX",,"OS2ENVIRONMENT" )
    if VRXPath \= "" then do        
        file = VRXPath || "\VRXEDIT.EXE" 
        file = stream( file, 'c', 'query exists' )
        if file = "" then do
            VRXPath = ""
        end
    end
    if VRXPath = "" then do
        text.1 = "The VXREXX environment variable is not set."
        text.2 = ""
        text.3 = "The VXREXX environment variable must be set"
        text.4 = "to the VX-REXX directory (e.g. C:\VXREXX)."
        text.0 = 4
        call VRMessageStem "", "text.", "Error"
        return
    end

    call VRMethod "Application", "PutClipboard", ""
    dispatch = '"' || VRXPath || '\VREDisp.VRM"( "", "", "CLIPBOARD")'
    interpret 'codeString =' dispatch
    if codeString = "" then return

    parse VAR codeString . "0d0a"x rest
    if rest = "" then do
        "PASTE C"
    end
    else do
        "PASTE B"
    end
    return

