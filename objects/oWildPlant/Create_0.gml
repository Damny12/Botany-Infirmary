Mutate("leafEfficiency",-0.003*mutationProbability,0.003*mutationProbability)
Mutate("maxEnergy",-1.0*mutationProbability,1.0*mutationProbability)
Mutate("mutationProbability",-0.1*mutationProbability,0.2*mutationProbability)
Mutate("energyIntake",-0.01*mutationProbability,0.01*mutationProbability)

energy = maxEnergy/3
tick=0
tickToProduce=20


for (var i=0;i<struct_names_count(global.species);i++){
    var _keys=variable_struct_get_names(global.species)
    var _currentValue=global.species[$ _keys[i]]
    
    if (array_equals(_currentValue,[leafEfficiency,maxEnergy,mutationProbability,energyIntake])){
        speciesName=_keys[i]
    }
}

if (speciesName==""){
    speciesName=$"NewSpecies{struct_names_count(global.species)}"
    global.species[$ $"NewSpecies{struct_names_count(global.species)}"]=[leafEfficiency,maxEnergy,mutationProbability,energyIntake]
}

show_debug_log(true)