if instance_exists(global.player_start_position){
	if instance_exists(oPlayer){
		oPlayer.persistent = false;	
		oPlayer.x = global.player_start_position.x;
		oPlayer.y = global.player_start_position.y;
		oPlayer.layer = layer_get_id("Instances")
	}else{
		var _start_x = global.player_start_position.x;
		var _start_y = global.player_start_position.y;
		instance_create_layer(_start_x, _start_y, "Instances", oPlayer);	
	}
}