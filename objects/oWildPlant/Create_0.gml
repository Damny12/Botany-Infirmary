Mutate("leafEfficiency",-0.01,0.01)
Mutate("maxEnergy",-1,1)
Mutate("mutationProbability",-0.1,0.2)
Mutate("energyIntake",-0.01,0.01)

energy = maxEnergy/3

if (!struct_exists(global.species,[leafEfficiency,maxEnergy,mutationProbability,energyIntake])){
    speciesName=$"NewSpecies{struct_names_count(global.species)}"
    global.species[$ [leafEfficiency,maxEnergy,mutationProbability,energyIntake]]=speciesName
}

speciesName=global.species[$ [leafEfficiency,maxEnergy,mutationProbability,energyIntake]]