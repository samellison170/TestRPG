speed_ = 2;
image_speed = 0;
direction_facing_ = dir.right;

global.player_health = 4;

enum player {
	move
}

enum dir {
	right,
	up,
	left,
	down
}

//sprite move lookup table
sprite_[player.move, dir.right] = sPlayerRunRight;
sprite_[player.move, dir.left] = sPlayerRunRight;
sprite_[player.move, dir.up] = sPlayerRunUp;
sprite_[player.move, dir.down] = sPlayerRunDown;
