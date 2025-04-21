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

/*:VRX         DisplayValue
*/

DisplayValue: procedure
    prop = VRGet( "LB_1", "SelectedString" )
    objline = VRGet( "LB_2", "SelectedString" )
    parse VAR objline . ';' obj
    if obj \= "" & prop \= "" then do
        value = VRGet( obj, prop )
        length = Length( value )
        call VRSet "EF_1", "Value", value,,
                           "SelectedStart", 1,,
                           "SelectedEnd", length+1
        ok = VRMethod( "EF_1", "SetFocus" )
    end
return

/*:VRX         FillObjectList
*/
FillObjectList: procedure expose selectedList.
    do i = 1 to selectedList.0
        name = VRGet( selectedList.i, "Name" )
        nameList.i = Left( name, 25 ) || ';' || selectedList.i
    end
    nameList.0 = selectedList.0
    call VRMethod "LB_2", "AddStringList", "nameList."
    call VRSet "LB_2", "Selected", 1
return

/*:VRX         FillPropList
*/
FillPropList: 
    procedure expose AllOneClass LastClass LastSelectedProperty

/*  Nothing to do if all same class
*/
    if AllOneClass = 1 then return

/*  Nothing to do if same class as last selected
    entry
*/
    objline = VRGet( "LB_2", "SelectedString" )
    parse VAR objline . ';' obj
    class = VRGet( obj, "ClassName" )
    if class = LastClass then return
    LastClass = class

/*  Start with an empty list
*/
    call VRMethod "LB_1", "Clear"

/*  Only want properties that can be saved
*/
    call VRMethod obj, "ListProperties", "propList.", "Saveable" 
    call VRMethod "LB_1", "AddStringList", "propList."

/*  Remove events
*/
    call VRMethod obj, "ListProperties", "propList.", "Events" 
    do i = 1 to propList.0
        ok = VRMethod( "LB_1", "DeleteString", propList.i )
    end

/*  Remove read-only (only use VRSet, no cloning).
*/
    call VRMethod obj, "ListProperties", "propList.", "ReadOnly" 
    do i = 1 to propList.0
        ok = VRMethod( "LB_1", "DeleteString", propList.i )
    end

/*  Set the selected to the same this as last time.
    Leave LastSelectedProperty alone in case the user
    selects another object right away (browse mode).    
*/
    position = VRMethod( "LB_1", "FindString", LastSelectedProperty, 1, "Exact" )
    if position > 0 then do
        call VRSet "LB_1", "Selected", position    
    end
    
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

Init: procedure expose InitArgs.,
                       selectedList.,
                       AllOneClass LastClass LastSelectedProperty

/*  Assume invoked as a VRXEDIT macro so
        InitArgs.0 = 2
        InitArgs.1 = <object>
        InitArgs.2 = <editWindow>
*/
    window = VRWindow()
    call VRMethod window, "CenterWindow"

/*  Operate on the object under the pop-up, or on 
    all selected items if the pop-up was on a selected  
    item.
*/
    target = InitArgs.1
    call VRMethod InitArgs.2, "GetSelectedRoots", "selectedList."

    inList = 0
    do i = 1 to selectedList.0      
        if selectedList.i = target then do
            inList = 1 
            leave
        end            
    end
    if inList = 0 then do   
        selectedList.0 = 1
        selectedList.1 = target
    end

    call FillObjectList

/*  Fill the property list the first time
*/
    AllOneClass = 0
    LastClass = ''
    LastSelectedProperty = ''
    call FillPropList

/*  Enable the Set all button only if all objects
    are the same class.
*/
    AllOneClass = 1
    className = VRGet( selectedList.1, "ClassName" )
    do i = 2 to selectedList.0
        if VRGet( selectedList.i, "ClassName" ) \= className then do
            AllOneClass = 0
        end
    end

    if selectedList.0 > 1 & AllOneClass = 1 then do
        ok = VRSet( "PB_3", "Enabled", 1 )
    end

    call VRSet window, "Visible", 1
    call VRMethod window, "Activate"

    return

/*:VRX         LB_1_Click
*/
LB_1_Click:
    LastSelectedProperty = VRGet( "LB_1", "SelectedString" )
    call DisplayValue
return

/*:VRX         LB_2_Click
*/
LB_2_Click:
    call FillPropList
    call DisplayValue
return

/*:VRX         PB_1_Click
*/
PB_1_Click:
    prop = VRGet( "LB_1", "SelectedString" )
    objline = VRGet( "LB_2", "SelectedString" )
    parse VAR objline . ';' obj
    if obj \= "" & prop \= "" then do
        value = VRGet( "EF_1", "Value" )
        ok = VRSet(  obj, prop, value )
        if ok \= 1 then do
            call VRMessage VRWindow(), 'Unable to set' prop 'to "' || value || '"', "Error"
        end
        else do
            selected = VRGet( "LB_2", "Selected" )
            if selected < selectedList.0 then do
                selected = selected+1
            end
            else do
                selected = 1
            end
            ok = VRSet( "LB_2", "Selected", selected )
        end                
    end
return

/*:VRX         PB_2_Click
*/
PB_2_Click:
    value = VRGet( "EF_1", "Value" )
    call VRLoadSecondary "SW_1"
    call VRSet "MLE_1", "Value", value
return

/*:VRX         PB_3_Click
*/
PB_3_Click:
    prop = VRGet( "LB_1", "SelectedString" )
    if prop \= "" then do
        value = VRGet( "EF_1", "Value" )
        do i = 1 to selectedList.0
            ok = VRSet(  selectedList.i, prop, value )
            if ok \= 1 then do
                call VRMessage VRWindow(), 'Unable to set' prop 'to "' || value || '"', "Error"
                leave
            end
        end
    end
return


/*:VRX         PB_4_Click
*/
PB_4_Click:
    value = VRGet( "MLE_1", "Value" )
    call VRSet "EF_1", "Value", value
        
    call VRDestroy "SW_1"
return

/*:VRX         PB_5_Click
*/
PB_5_Click:
    call VRDestroy "SW_1"
return

/*:VRX         Quit
*/
Quit:
    window = VRWindow()
    call VRSet window, "Shutdown", 1
    drop window
return

/*:VRX         SW_1_Close
*/
SW_1_Close:
    window = VRInfo( "Object" )
    call VRDestroy window
    drop window
return
/*:VRX         Window1_Close
*/
Window1_Close:
    call Quit
return

