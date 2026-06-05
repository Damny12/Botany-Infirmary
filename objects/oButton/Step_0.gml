var _hovering=position_meeting(mouse_x,mouse_y,self)
var _clicking=mouse_check_button(mb_left)

if (_clicking and _hovering){
    onClick()
}