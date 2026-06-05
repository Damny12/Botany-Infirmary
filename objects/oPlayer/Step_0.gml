//controls
var _leftControl=keyboard_check(ord("A"))|keyboard_check(vk_left)
var _rightControl=keyboard_check(ord("D"))|keyboard_check(vk_right)
var _downControl=keyboard_check(ord("S"))|keyboard_check(vk_down)
var _upControl=keyboard_check(ord("W"))|keyboard_check(vk_up)

var _ground=layer_tilemap_get_id("Grass")

//movement
if (_upControl){
    yVel-=speedY
    sprite_index=sTempUp
}

if (_downControl){
    yVel+=speedY
    sprite_index=sTempDown
}

if (_rightControl){
    xVel+=speedX
    sprite_index=sTempRight
}

if (_leftControl){
    xVel-=speedX
    sprite_index=sTempLeft
}

//limit velocity
if (abs(yVel) >= yTermVel){
    if (yVel>0){
        yVel=yTermVel
    } else {
    	yVel=-yTermVel
    }
}

if (abs(xVel) >= xTermVel){
    if (xVel>0){
        xVel=xTermVel
    } else {
    	xVel=-xTermVel
    }
}

//stop at blank ground
var _subPixel=0.5/global.precision

if (!place_meeting(x+xVel,y,_ground)){
	var _pixelCheck= _subPixel*sign(xVel)
	
	while(!place_meeting(x+xVel,y,_ground)){
		x-=_pixelCheck
	}
	
	xVel=0
}

if (!place_meeting(x,y+yVel,_ground)){
	var _pixelCheck= _subPixel*sign(yVel)
	
	while(!place_meeting(x,yVel,_ground)){
		y-=_pixelCheck
	}
	
	yVel=0
}

//update movement
x+=xVel
y+=yVel


//friction
xVel/=Xfriction
yVel/=Yfriction

//diagonals
if (_downControl and _rightControl){
    sprite_index=sTempDownRight
}

if (_downControl and _leftControl){
    sprite_index=sTempDownLeft
}

if (_upControl and _rightControl){
    sprite_index=sTempUpRight
}

if (_upControl and _leftControl){
    sprite_index=sTempUpLeft
}