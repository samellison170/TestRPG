/// @description Hit Logic
if hurtbox_entity_can_be_hit_by(other){
	invinsible_ = true;
	alarm[0] = global.one_second * 0.75;
	global.player_health -= other.damage_;
	var _direction = point_direction(other.x, other.y, x, y);
	set_movement(_direction, other.knockback_);
	state_ = player.hit;
	//event_user(state_);
	audio_play_sound(aHit, 9, false);
}