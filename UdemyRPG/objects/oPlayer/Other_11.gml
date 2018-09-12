/// @description Sword State
image_speed = .8;

if animation_hit_frame(1) {
	var _angle = direction_facing_ * 90;
	var _life = 3;
	var _damage = 1;
	var _knokback = 8;
	var _hitbox = create_hitbox(sSwordHitbox, x, y, _angle, _life, [oEnemy, oGrass],_damage,_knokback);	
	audio_play_sound(aSwipe, 8, false);
	
	
	switch direction_facing_ {
		case dir.up: _hitbox.y -= 4; break;
		default: _hitbox.x -= 8; break;
	}

}

if animation_hit_frame(image_number - 1) {
	
	state_ = player.move;	
}
