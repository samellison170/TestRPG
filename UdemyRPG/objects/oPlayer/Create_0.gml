initialize_movement_entity(.5, 1, oSolid)

acceleration_ = 1;
max_speed_ = 3;
image_speed = 0;
direction_facing_ = dir.right;
global.player_health = 4;

enum player {
	move,
	sword
}

enum dir {
	right,
	up,
	left,
	down
}

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
