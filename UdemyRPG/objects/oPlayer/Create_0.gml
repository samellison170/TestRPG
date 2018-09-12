initialize_movement_entity(.5, 1, oSolid)
initialize_hurtbox_entity()
acceleration_ = 1;
max_speed_ = 3;
image_speed = 0;
direction_facing_ = 0;

roll_direction_ = dir.right;
roll_speed_ = 2;



enum player {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit
}

enum dir {
	right,
	up,
	left,
	down
}

starting_state_ = player.move;

state_ = player.move;

//sprite move lookup table
sprite_[player.move, dir.right] = sPlayerRunRight;
sprite_[player.move, dir.left] = sPlayerRunRight;
sprite_[player.move, dir.up] = sPlayerRunUp;
sprite_[player.move, dir.down] = sPlayerRunDown;

sprite_[player.sword, dir.right] = sPlayerAttackRight;
sprite_[player.sword, dir.left] = sPlayerAttackRight;
sprite_[player.sword, dir.up] = sPlayerAttackUp;
sprite_[player.sword, dir.down] = sPlayerAttackDown;

sprite_[player.evade, dir.right] = sPlayerRollRight;
sprite_[player.evade, dir.left] = sPlayerRollRight;
sprite_[player.evade, dir.up] = sPlayerRollUp;
sprite_[player.evade, dir.down] = sPlayerRollDown;

sprite_[player.hit, dir.right] = sPlayerRunRight;
sprite_[player.hit, dir.left] = sPlayerRunRight;
sprite_[player.hit, dir.up] = sPlayerRunUp;
sprite_[player.hit, dir.down] = sPlayerRunDown;

