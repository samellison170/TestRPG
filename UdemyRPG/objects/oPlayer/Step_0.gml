depth = -y;
event_user(state_);
sprite_index = sprite_[state_, direction_facing_];


if global.player_health <= 0 and !invincible_{
	instance_destroy();	
}