/*:VRX         Main
*/
/*
    Syntax:
        rc = MMMovie( <window>, <movie file>, <rep count> )
    
    Returns:    
        1   OK
        0   Error
*/
main:
    signal on novalue

    window = arg( 1 )
    movie = arg( 2 )
    count = arg( 3 )

    rc = 0

    call VRMethod "Application", "GetVar", "MMInitRC"
    if MMInitRC \= 1 then do
        call MovieError window, "Not initialized"
        signal leave_play_movie
    end

    if VRFileExists(movie) \= 1 then do
        call MovieError window, "File '" || movie || "' not found"
        signal leave_play_movie
    end

    id = VRMethod( "Application", "GetThreadID" )
    alias = "dv" || id

    command.0 = 4
    command.1 = "open digitalvideo alias" alias "shareable wait"
    command.2 = "load" alias movie "wait"
    command.3 = "set" alias "time format ms wait"
    command.4 = "setpositionadvise" alias "on every 500 wait"
    do i = 1 to command.0
        rc = MMSend( '', command.i )
        if rc \= 1 then signal leave_play_movie
    end

    command.0 = 2
    command.1 = "play" alias "wait"
    command.2 = "seek" alias "to 0 wait"
    do j = 1 to count
        do i = 1 to command.0
            rc = MMSend( '', command.i )
            if rc \= 1 then signal leave_play_movie
        end
    end

    command.0 = 1
    command.1 = "close" alias "wait"
    do i = 1 to command.0
        rc = MMSend( '', command.i )
        if rc \= 1 then signal leave_play_movie
    end
    rc = 1
    
leave_play_movie:
exit rc

/*:VRX         MovieError
*/
MovieError: procedure
    window = arg( 1 )
    msg = arg( 2 )
    call ErrMsg window, "Unable to play movie: " msg     
return

