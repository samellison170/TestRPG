global.one_second = game_get_speed(gamespeed_fps);
instance_create_layer(0, 0, "Instances", oInput);

global.player_max_health = 4;
global.player_health = global.player_max_health;
global.player_max_stamina = 2;
global.player_stamina = global.player_max_stamina;
global.player_gems = 0;
global.player_start_position = iGameStart;
//audio_play_sound(aMusic, 10, true);