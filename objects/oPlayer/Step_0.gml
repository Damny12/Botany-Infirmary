var _leftControl=keyboard_check(ord("A"))|keyboard_check(vk_left)
var _rightControl=keyboard_check(ord("D"))|keyboard_check(vk_right)
var _downControl=keyboard_check(ord("S"))|keyboard_check(vk_down)
var _upControl=keyboard_check(ord("W"))|keyboard_check(vk_up)

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