image_speed = 0;

if keyboard_check(vk_right) and not place_meeting(x+2, y, oSolid){
	x += 4;	
	sprite_index = sPlayerRunRight;
	image_speed = .6;
	image_xscale = 1;
}
if keyboard_check(vk_left)and not place_meeting(x-2, y, oSolid){
	x -= 4;	
	sprite_index = sPlayerRunRight;
	image_speed = .6;
	image_xscale = -1;
}
if keyboard_check(vk_up)and not place_meeting(x, y-2, oSolid){
	y -= 4;	
	sprite_index = sPlayerRunUp;
	image_speed = .6;
}
if keyboard_check(vk_down)and not place_meeting(y, y+2, oSolid){
	y += 4;	
	sprite_index = sPlayerRunDown;
	image_speed = .6;
}