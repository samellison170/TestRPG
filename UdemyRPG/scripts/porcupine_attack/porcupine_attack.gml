if not instance_exists(oPlayer) exit;

var _distance_to_player = point_distance(x, y, oPlayer.x, oPlayer.y); 
if _distance_to_player < 16 {
	state_ = porcupine.attack;
	image_index = 0;
	sprite_index = sPorcupineAttack;
}