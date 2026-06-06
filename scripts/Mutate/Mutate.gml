function Mutate(variable,minVal,maxVal){
    variable_instance_set(self,variable,variable_instance_get(self,variable)+random_range(minVal,maxVal))
}