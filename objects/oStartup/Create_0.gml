if (room==Startup){
    //initialise global variables
    global.precision=3
    global.inventory=[]
    global.species={}
    
    global.species[$ [1.011,10.0,0.1,1.01]]="Evergreen Sapling"
    
    //go to menu
    room_goto(Menu)
}

if (room==The_Wilderness){
    //initialise global variables
    PopulateWilderness(10,100)
}