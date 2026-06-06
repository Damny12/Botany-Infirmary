tick+=1
if (tick==tickToProduce){
    show_debug_message($"TICK!{tickToProduce}")
    energy-=energyIntake

    if (energy<=0){ 
        instance_destroy(self)
    }

    energy+=leafEfficiency

    if (energy>=maxEnergy){
        energy=maxEnergy
    }
    tick=0
}