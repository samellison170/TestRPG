/// @description Move State
// You can write your code in this editor

image_speed = 0;
var _x_input = oInput.right_ - oInput.left_;
var _y_input = oInput.down_ - oInput.up_;
var _input_direction = point_direction(0,0,_x_input,_y_input)
var _attack_input = oInput.action_one_pressed_;
var _roll_input = oInput.action_two_pressed_;
roll_direction_ = direction_facing_*90;


if _x_input == 0 and _y_input == 0 {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
}
else{
	image_speed = .6;
	if(_x_input != 0){
		image_xscale = _x_input;
	}
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
	roll_direction_ = direction_facing_*90;
}

if _attack_input == true {
	image_index = 0;
	state_ = player.sword;
}

if _roll_input == true {
	image_index = 0;
	state_ = player.evade;
}
move_movement_entity(false);