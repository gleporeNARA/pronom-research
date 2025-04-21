/*:VRX         Main
*/
/*  Main
*/
Main:

/*  Assume called as a pop-up menu macro
*/
    parent = arg( 1 )
    object = arg( 2 )
    editWindow = arg( 3 )

    height = VRGet( object, "Height" )
    width = VRGet( object, "Width" )

    call VRMethod editWindow, "GetSelectedRoots", "selectedList." 
    do i = 1 to selectedList.0
        call VRSet selectedList.i, "Height", height,,
                                   "Width", width 
    end

return

