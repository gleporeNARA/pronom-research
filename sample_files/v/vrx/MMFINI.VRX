/*:VRX         Main
*/
/*
    Syntax:
        rc = MMFini( <window> )
    Returns
        1       OK
        0       Error
*/      
main:
    signal on novalue

    window = arg( 1 )

    call VRMethod "Application", "GetVar", "MMInitRC"
    if MMInitRC \= 1 then do
        signal leave_fini
    end

    call mciRxExit

leave_fini:
exit

