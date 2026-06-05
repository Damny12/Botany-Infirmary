function PopulateWilderness(amount,fraction){
    x=32
    y=32
    var _target=amount
    while (y<700 and _target>0){
        if (x>1344){
            y+=32
            x=0
        }
        
        x+=32
        var _grass=layer_tilemap_get_id("Grass")
        if (position_meeting(x,y,_grass) and irandom_range(1,fraction)==1){
            instance_create_layer(x,y,"Plants",oWildPlant)
            _target-=1
        }
    }
}