if (room==Startup){
    //initialise global variables
    global.precision=3
    
    //go to menu
    room_goto(Menu)
}

if (room==The_Wilderness){
    //initialise global variables
    PopulateWilderness(10,100)
}