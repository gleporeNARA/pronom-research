/*:VRX         Main
*/
/*
    Syntax:
        rc = PlayOne( <window>, <list name> )
    Returns
        1   OK
        0   Error
*/
main:
    signal on novalue

    window = arg( 1 )
    listName = arg( 2 )
    
    rc = 0
    
    movie = VRFileDialog( window, "Select a movie", "O", "*.AVI" )
    if movie = "" then signal leave_play_one

    my_id = VRMethod( "Application", "GetThreadID" )
    title = "Thread" my_id || ":" movie     
    call VRMethod listName, "AddString", title
    call MMMovie window, movie, 8
    call VRMethod listName, "DeleteString", title

    rc = 1

leave_play_one: 
exit rc

