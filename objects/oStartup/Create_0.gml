if (room==Startup){
    //initialise global variables
    global.precision=1
    global.inventory=[] //[leafEfficiency,maxEnergy,mutationProbability,energyIntake]
    global.species={"Evergreen Sapling":[1.011,10.0,1.0,1.01],
                    "Decrepit Shrub":[1.01,10.0,1.5,1.01]}
    
    //go to menu
    room_goto(Menu)
}

if (room==The_Wilderness){
    //initialise global variables
    PopulateWilderness(10,100,"Decrepit Shrub")
}