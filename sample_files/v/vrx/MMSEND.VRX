/*:VRX         Main
*/
/*
    Syntax:
        rc = MMSend( window, command );
*/
main:
    signal on novalue

    window = arg( 1 )
    command = arg( 2 )

    rc = 0

    call VRMethod "Application", "GetVar", "MMInitRC"
    if MMInitRC \= 1 then do
        call SendError window, "Not initialized"
        signal leave_send_string
    end

    rc = mciRxSendString( command, "returnString", 0, 0 )
    if rc \= 0 then do
        call SendErrorMci window
        signal leave_send_string
    end

    rc = 1

leave_send_string:
exit rc


/*:VRX         SendError
*/
SendError: procedure
    window = arg( 1 )
    msg = arg( 2 )
    call ErrMsg window, "Unable to send command: " msg     
return


/*:VRX         SendErrorMci
*/
SendErrorMci: procedure expose rc command returnString
    window = arg( 1 )
    
    call mciRxGetErrorString rc, "errorString"
    lines.0 = 7
    lines.1 = "Unable to execute a multimedia command."
    lines.2 = ""
    lines.3 = 'Command:     "' || command || '"'
    lines.4 = ""
    lines.5 = 'Return code: "' || rc || '"'
    lines.6 = 'Return text: "' || returnString || '"'
    lines.7 = 'Error text:  "' || errorString || '"'
/*
    button.0 = 1
    button.1 = "OK"
    call VRMessageStem window, "lines.", "Error!", "Error", "button."
*/
    call VRMessageStem window, "lines."
return

