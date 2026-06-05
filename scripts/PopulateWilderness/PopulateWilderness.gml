function PopulateWilderness(amount,fraction){
    for (var i=0;y>=700;i++){
        x+=32
        var _grass=layer_tilemap_get_id("Grass")
        if (position_meeting(x,y,_grass) and irandom_range(1,fraction)==1){
            instance_create_layer(x,y,"",oWildPlant)
        }
    }
}