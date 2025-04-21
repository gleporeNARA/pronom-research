/*:VRX         Main
*/
/*  Main
*/
    signal on novalue
    signal Main
novalue:
    parse source . . source
    call VRMessage "", "Novalue error in" source "line" SIGL, "Error!"
    _VREReturnValue = 32000
    signal _VRELeaveMain

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

/*:VRX         AutoOrder_Click
*/
AutoOrder_Click:  procedure expose InitArgs. hndList.

/*
call VRredirectStdio
trace r
*/

/*  Set the TabIndex of all objects on the window based
    on position and grouping.
    
    The basic tab order is left to right, top to bottom
    except that one you enter a group you traverse all of
    its objects before you start the next group.
    
    Assume InitArgs.2 is the editWindow     
*/
    ok = VRMethod( "ObjectList", "Clear" )
    ok = VRSet( "ObjectList", "Painting", 0 )

    hndList.0 = 0
    call  AutoOrder InitArgs.2
    call FillList

    ok = VRSet( "ObjectList", "Painting", 1 )
return

AutoOrder: procedure expose hndList.

    arg object

/*  List all the immediate children of the current
    window/groupbox.  Order these according to their
    position, then add each to the hndList unless it
    is a groupbox in which case we recurse.
*/
    i = 0
    object = VRGet( object, "FirstChild" )
    do while( object \= "" )
        ok = IsTabObject( object )
        if ok = 0 then do
            class = VRGet( object, "ClassName" ) 
            if class = "GroupBox" then do
                ok = 2
            end
        end
        if ok > 0 then do
            i = i + 1
            sibling.i = object
            sibling.i.!type = ok                
        end
        object = VRGet( object, "Sibling" )
    end
    sibling.0 = i

    do i = 1 to sibling.0
        object = sibling.i
	top = VRGet(object, "Top")
        top = Format( top, 8, 0 )                   
	left = VRGet(object, "Left")
        left = Format( left, 8, 0 )            
        sibling.i = top || left || '\' || sibling.i.!type || ';' || sibling.i
    end

    call VRSet "ObjectList", "Sort", "Ascending"
    ok = VRMethod( "ObjectList", "Clear" )
    ok = VRMethod( "ObjectList", "AddStringList", "sibling." )
    ok = VRMethod( "ObjectList", "GetStringList", "sibling." )
    call VRSet "ObjectList", "Sort", "None"

    do i = 1 to sibling.0
        parse VAR sibling.i . '\' type ';' .
        if type = 1 then do
            j = hndList.0 + 1
            hndList.0 = j
            hndList.j = sibling.i
        end                
        else do
            parse VAR sibling.i . ';' hnd
            call AutoOrder hnd
        end
    end

return


/*

 /* KNG:  To order the controls in order of top left to bottom right, */
 /*		we need to know the coordinates of this controls parent if */
 /* 		it's inside a group box. */

parent = VRGet(object, "Parent")
if VRGet(parent, "ClassName") = "GroupBox" Then Do
	parentTop = VRGet(parent, "Top")
	parentLeft = VRGet(parent, "Left")
End
else Do
	parentTop = 0
	parentLeft = 0
End

    if( VRSupportsProperty( object, "TabIndex" ) )then do

 /* KNG: I added the next line so we don't get things that */
 /* 	don't even have tabstops at all. */

		if VRSupportsProperty(object, "TabStop") Then do

 /* KNG:  I don't particularly want to see items in this list */
 /*		that have a TabStop property if that property is not set. */

			if VRGet(object, "TabStop") Then Do
		        count = tabList.0 + 1
		        tabList.0 = count

	/*	        tabIndex = VRGet( object, "TabIndex" ) */

	top = VRGet(object, "Top") + parentTop
	left = VRGet(object, "Left") + parentLeft

 /* KNG: We order the controls first by "topness" and then by "leftness" */

	tabIndex = Right("000000"||top, 6)||Right("000000"||left, 6)

	/*
		        if( Length( tabIndex ) > Digits() )then do
		            ok = VRMessage( VRWindow(), "TabIndex on '" ,
		                || VRGet( object, "Name" ) ,
		                || "' is too large for SetTabs macro" )
		        end; else do
		            tabIndex = Format( tabIndex, Digits(), 0 )
		        end
	*/

		        tabList.count = tabIndex || ";" || object
			end
		end
    end

return


*/

return


/*:VRX         Cancel_Click
*/
Cancel_Click:
    call Quit
return

/*:VRX         Down_Click
*/
Down_Click: procedure expose hndList.

    ok = VRMethod( "ObjectList", "GetSelectedList", "selected." )
    if( ok )then do
        last = selected.0
        if( selected.last < hndList.0 )then do
            do index = last by -1 to 1
                call Swap selected.index, selected.index + 1
                selected.index = selected.index + 1
            end
            ok = VRMethod( "ObjectList", "SetSelectedList", "selected." )
        end
    end

return

/*:VRX         FillList
*/
FillList: procedure expose hndList.

/*  Fill list with names of objects in hndList.
*/    
    do i = 1 to hndList.0
        parse VAR hndList.i . ';' hnd            
        nameList.i = Left( VRGet( hnd, "Name" ), 20 )
        text = ''
        ok = VRMethod( "Application", "SupportsProperty", hnd, "Caption" )
        if ok = 1 then do
            text = VRGet( hnd, "Caption" )
        end
        else do
            ok = VRMethod( "Application", "SupportsProperty", hnd, "Value" )
            if ok = 1 then do
                text = VRGet( hnd, "Value" )
            end
        end
        if text \= '' then do
            nameList.i = nameList.i || ' ' || text
        end
    end
    nameList.0 = hndList.0
    ok = VRMethod( "ObjectList", "Clear" )
    ok = VRMethod( "ObjectList", "AddStringList", "nameList." )
    call VRSet "ObjectList", "Selected", 1

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

Init: procedure expose InitArgs. hndList. 

/*  Assume invoked as a VRXEDIT macro so
        InitArgs.0 = 2
        InitArgs.1 = <object>
        InitArgs.2 = <editWindow>
*/
    window = VRWindow()
    call VRMethod window, "CenterWindow"

    ok = VRMethod( InitArgs.2, "ListChildren", "hndList." )
    j = 0
    do i = 1 to hndList.0
        ok = IsTabObject( hndList.i )
        if ok = 1 then do
            j = j + 1
            tabIndex = VRGet( hndList.i, "TabIndex" )
            tabIndex = Format( tabIndex, 8, 0 )
            hndList.j = tabIndex || ';' || hndList.i
        end  
    end    
    hndList.0 = j
    if hndList.0 = 0 then do
        signal NoTabObjects
    end

/*  Sort by TabIndex
*/
    call VRSet "ObjectList", "Sort", "Ascending"
    ok = VRMethod( "ObjectList", "AddStringList", "hndList." )
    ok = VRMethod( "ObjectList", "GetStringList", "hndList." )
    call VRSet "ObjectList", "Sort", "None"

/*  Show the names in ObjectList
*/
    call FillList
    
    call VRSet window, "Visible", 1
    call VRMethod window, "Activate"
    signal Done

NoTabObjects:
    call VRMessage window, "No objects with the TabIndex property.", "Error!"
    call Quit
Done:
    return









    nameList.0 = 0
    nameList.0 = 0
    nameList.0 = j

   

    if( hndList.0 = 0 )then do
        call VRMessage window, "No objects with the TabIndex property.", "Error!"
        call Quit
        return
    end

    ok = VRMethod( "ObjectList", "AddStringList", "nameList." )
    ok = VRSet( "ObjectList", "Selected", 1 )

    call VRSet window, "Visible", 1
    call VRMethod window, "Activate"

return    



/*:VRX         IsTabObject
*/
IsTabObject: procedure

    arg object

    ok = VRMethod( "Application", "SupportsProperty", object, "TabIndex" )
    if ok = 1 then do
        class = VRGet( object, "ClassName" )
        if class = "DescriptiveText" then do
            caption = VRGet( object, "Caption" )
            position  = Pos( "~", caption )
            if position = 0 then do
                ok = 0
            end
        end
    end

return ok

/*:VRX         OK_Click
*/
OK_Click: procedure expose hndList.

    do index = 1 to hndList.0
        parse VAR hndList.index . ';' hnd            
        ok = VRSet( hnd, "TabIndex", index )
    end
    call Quit

return

/*:VRX         Quit
*/
Quit:
    window = VRWindow()
    call VRSet window, "Shutdown", 1
    drop window
return

/*:VRX         Swap
*/
Swap: procedure expose hndList.
    x = arg( 1 )
    y = arg( 2 )

/*  Assume x = y - 1 
*/
    hndTemp = hndList.x
    hndList.x = hndList.y
    hndList.y = hndTemp

    string = VRMethod( "ObjectList", "GetString", y )
    ok = VRMethod( "ObjectList", "Delete", y )
    position = VRMethod( "ObjectList", "AddString", string, x )

return

/*:VRX         Up_Click
*/
Up_Click: procedure expose hndList.

    ok = VRMethod( "ObjectList", "GetSelectedList", "selected." )
    if( ok )then do
        if( selected.1 > 1 )then do
            do index = 1 to selected.0
                call Swap selected.index - 1, selected.index
                selected.index = selected.index - 1
            end
            ok = VRMethod( "ObjectList", "SetSelectedList", "selected." ) 
        end
    end

return

/*:VRX         Window1_Close
*/
Window1_Close:
    call Quit
return

/*:VRX         Window1_Resize
*/
Window1_Resize:

    ok = VRSet( "Window1", "Painting", 0 )

    top = VRGet( "ObjectList", "Top" )
    left = VRGet( "ObjectList", "Left" )

    height = VRGet( "Window1", "InteriorHeight" ) ,
        - VRGet( "Up", "Height" )
    width = VRGet( "Window1", "InteriorWidth" )

    ok = VRSet( "Up", "Top", height - top )
    ok = VRSet( "Down", "Top", height - top )

    ok = VRSet( "ObjectList", ,
        "Height", height - 3 * top, ,
        "Width", width - 3 * left, ,
    )

    ok = VRSet( "Window1", "Painting", 1 )

return

