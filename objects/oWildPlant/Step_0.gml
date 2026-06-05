energy-=energyIntake

show_debug_message($"plant:{self}, energy:{energy}")
if (energy<=0){
    instance_destroy(self)
}

energy+=leafEfficiency

if (energy>=maxEnergy){
    energy=maxEnergy
}

show_debug_log(true)
show_debug_message(global.species)