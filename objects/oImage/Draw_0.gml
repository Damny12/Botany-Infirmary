if (buttonVisible){
    draw_self() 
}

draw_set_font(fParchment)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

//text
draw_set_colour(textColour)

draw_text_transformed(x,y,Text,textXScale,textYScale,0)