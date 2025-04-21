/*:VRX         Main
*/
/*
    Syntax:  
        rc = MMInit( <window> )

    Returns:
        1       OK  
        0       Error      
*/
main:
    signal on novalue    

    window = arg( 1 )
    
    MMInitRC = 0
    rc = RXFUNCQUERY( 'mciRxInit' )
    if rc \= 0 then do
        rc = RXFUNCADD('mciRxInit','MCIAPI','mciRxInit')
        if rc \= 0 then do
            call ErrMsg window, "Unable to add the multimedia functions."
            signal leave_init
        end
        rc = mciRxInit()
        if rc \= 0 then do
            call ErrMsg window, "Unable to initialize the multimedia functions."
            signal leave_init
        end 
    end
/*
    else do
        call VRMessage window, "Multimedia functions already loaded.",,
                                   "Note", "Information"
    end
*/
    MMInitRC = 1

leave_init:
    call VRMethod "Application", "PutVar", "MMInitRC"

exit MMInitRC
