/*:VRX         Main
*/
/*  Main
*/
Main:
/*  Process the arguments.
    Get the parent window.
*/
    parse source . calledAs .
    parent = ""
    argCount = arg()
    argOff = 0
    if( calledAs \= "COMMAND" )then do
        if argCount >= 1 then do
            parent = arg(1)
            argCount = argCount - 1
            argOff = 1
        end
    end
    InitArgs.0 = argCount
    if( argCount > 0 )then do i = 1 to argCount
        InitArgs.i = arg( i + argOff )
    end
    drop calledAs argCount argOff

/*  Load the windows
*/
    call VRInit
    parse source . . spec
    _VREPrimaryWindowPath = ,
        VRParseFileName( spec, "dpn" ) || ".VRW"
    _VREPrimaryWindow = ,
        VRLoad( parent, _VREPrimaryWindowPath )
    drop parent spec
    if( _VREPrimaryWindow == "" )then do
        call VRMessage "", "Cannot load window:" VRError(), ,
            "Error!"
        _VREReturnValue = 32000
        signal _VRELeaveMain
    end

/*  Process events
*/
    call Init
    signal on halt
    do while( \ VRGet( _VREPrimaryWindow, "Shutdown" ) )
        _VREEvent = VREvent()
        interpret _VREEvent
    end
_VREHalt:
    _VREReturnValue = Fini()
    call VRDestroy _VREPrimaryWindow
_VRELeaveMain:
    call VRFini
exit _VREReturnValue

VRLoadSecondary: procedure
    name = arg( 1 )

    window = VRLoad( VRWindow(), VRWindowPath(), name )
    call VRMethod window, "CenterWindow"
    call VRSet window, "Visible", 1
    call VRMethod window, "Activate"
return window

/*:VRX         DisplayNotebooks
*/
DisplayNotebooks: procedure expose InitArgs.

/*
call vrredirectstdio
trace r
*/
    ok = VRMethod( "ObjectList", "GetSelectedStringList", "selectedList." )
    do i = 1 to selectedList.0
        parse VAR selectedList.i . ';' hnd                
        call VRMethod InitArgs.2, "NotebookOpen", hnd
    end
    call Quit

return

/*:VRX         Fini
*/
Fini:
    window = VRWindow()
    call VRSet window, "Visible", 0
    drop window
return 0

/*:VRX         Halt
*/
Halt:
    signal _VREHalt
return

/*:VRX         Init
*/

Init: procedure expose nameList. hndList. InitArgs.  

/*  Assume invoked as a VRXEDIT macro so
        InitArgs.0 = 2
        InitArgs.1 = <object>
        InitArgs.2 = <editWindow>
*/
    window = VRWindow()
    call VRMethod window, "CenterWindow"

/*  Fill list with names of objects in hndList.
*/ 
    call VRMethod InitArgs.2, "ListChildren", "hndList." 
    nameList.0 = hndList.0
    do i = 1 to hndList.0
        nameList.i = Left( VRGet(hndList.i, "Name"), 30 ) || ';' || hndList.i
    end

/* Display the List of Objects
*/
    ok = VRMethod( "ObjectList", "AddStringList", "nameList.", )
    ok = VRSet( "ObjectList", "Selected", 1 )

    objname = VRGet( InitArgs.2, "Name" )
    call VRSet window, "Caption", "Object list for" objname

    call VRSet window, "Visible", 1
    call VRMethod window, "Activate"

    return


/*:VRX         ObjectList_DoubleClick
*/
ObjectList_DoubleClick:
    call DisplayNotebooks
return

/*:VRX         OpenNotebook_Click
*/
OpenNotebook_Click:
    call DisplayNotebooks
return

/*:VRX         Quit
*/
Quit:
    window = VRWindow()
    call VRSet window, "Shutdown", 1
    drop window
return

/*:VRX         Window1_Close
*/
Window1_Close:
    call Quit
return

/*:VRX         Window1_Resize
*/
Window1_Resize:
/*
    ok = VRSet( "Window1", "Painting", 0 )

    top = VRGet( "ObjectList", "Top" )
    left = VRGet( "ObjectList", "Left" )


    height = VRGet( "Window1", "InteriorHeight" ) ,
        - VRGet( "OpenNotebook", "Height" )
    width = VRGet( "Window1", "InteriorWidth" )

    ok = VRSet( "OpenNotebook", ,
        "Top", height - top, ,
    )

    ok = VRSet( "ObjectList", ,
        "Height", height - 3 * top, ,
        "Width", width - 3 * left, ,
    )

    ok = VRSet( "Window1", "Painting", 1 )
*/
return

