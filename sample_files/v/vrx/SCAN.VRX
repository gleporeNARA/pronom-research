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

/*:VRX         Cancel_Click
*/
Cancel_Click:
    newLine = 0
    call Quit
return

/*:VRX         Fini
*/
Fini:
    window = VRWindow()
    call VRSet window, 'visible', 'false'
    drop window
    
    if newLine = 0 then do
        call etksetfilefield 'line', oldLine
    end
    else do
        'top'
        'locate /' || selectedLabel || ':/'
     end

return 0

/*:VRX         Halt
*/
Halt:
    signal _VREHalt
return

/*:VRX         Init
*/
Init:
    window = VRWindow()
    addr = address()
    if addr == "EPM" then do
        call VRMethod window, "CenterWindow"
        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
        call InitLabels
    end
    else do
        call VRMessage window,,
             "You must run this macro from EPM.",,
             "Error!"
        exit        
    end
    drop window
return

InitLabels: procedure expose oldLine newLine lastLine

/*  Uncomment to debug the macro.
    call VRRedirectStdio
*/
    "sayerror Locating labels"

    'extract /line'
    oldLine = line.1
    newLine = 0

    'extract /last'
    lastLine = last.1

    count = init_all_at_once() 
/*  count = init_one_at_a_time()  */

    'sayerror Found' count 'labels'
   
return

init_all_at_once: procedure
    'all /^[abcdefghijklmnopqrstuvwxyz0123456789_]+:/g c'
    if rc = 0 then return 0
 
    'sayerror Extracting labels'

    'extract /last'
    curLast = last.1
   
    'top'
    curLine = 1
    call VRSet 'listbox', 'painting', 0
    do forever
        'extract /getline'
        parse var getline.1 lineNumber label ':' .
        call vrmethod 'listbox', 'addstring', label
        if curLine = curLast then leave
        '+1'
        curLine = curLine + 1
    end /* do */
    call VRSet 'listbox', 'painting', 1

    'quit'

return curLast

init_one_at_a_time: procedure expose lastLine
    'top'
    curLine = 1
    count = 0
    call VRSet 'listbox', 'painting', 0
    do forever
         'sayerror Line' curLine 'of' lastLine
         'locate /^[abcdefghijklmnopqrstuvwxyz0123456789_]+:/g c'
         if rc \= 0 then leave
         count = count + 1
         'extract /getline'
         parse var getline.1 label ':' .
         call vrmethod 'listbox', 'addstring', label
         'extract /line'
         curLine = line.1
         '+1'
    end /* do */
    call VRSet 'listbox', 'painting', 1

return count

/*:VRX         ListBox_Click
*/
ListBox_Click:
    call VRMethod "ListBox", "GetSelectedStringList", "sel."
    if( sel.0 = 1 )then do
        newLine = 1
        selectedLabel = sel.1
    end
return

/*:VRX         ListBox_DoubleClick
*/
ListBox_DoubleClick:
    call OK_Click
return

/*:VRX         Ok_Click
*/
Ok_Click:
    call Quit
return

/*:VRX         Quit
*/
Quit: 
    window = VRWindow()
    call VRSet window, 'shutdown', 'true'
    drop window
return

/*:VRX         Window1_Close
*/
Window1_Close:
    call Quit
return

