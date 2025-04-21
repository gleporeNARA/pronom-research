/*:VRX         Main
*/
main:
    signal on novalue
/*
    button.0 = 1
    button.1 = 'OK'
    call VRMessage arg(1), arg(2) || ".",,
                   "Error!", "Error", "button." 
*/
    call VRMessage arg(1), arg(2) "."
exit

