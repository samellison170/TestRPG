image_speed = 0;
var _animation_speed = .6;
var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _y_input = keyboard_check(vk_down) - keyboard_check(vk_up);
var _input_direction = point_direction(0,0,_x_input,_y_input)

direction_facing_ = round(_input_direction/90);
if direction_facing_ == 4{
	direction_facing_ = 0;	
}


if _x_input != 0 and not place_meeting(x+speed_*_x_input, y, oSolid){
	x += speed_*_x_input;	
	image_speed = _animation_speed;
	image_xscale = _x_input;
}
if _y_input != 0 and not place_meeting(x, y+speed_*_y_input, oSolid){
	y += speed_*_y_input;	
	image_speed = _animation_speed;
}

sprite_index = sprite_[player.move, direction_facing_];