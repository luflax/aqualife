if(!downed && path_position == 1 && (win_level == 1 || win_level == 2)){
	path_start(p_down, 2, path_action_stop, false)
	downed = true
}

if(path_index == low && path_position > 0.9){
	with(obj_mar){
		sprite_index = spr_mar_destruida
	}
}

if(path_index == medium){
	if(path_position > 0.5){
		with(obj_mar){
			sprite_index = spr_mar_destruida
		}
	}
	if(path_position > 0.9){
		with(obj_praia){
			sprite_index = spr_praia_destruida
		}
	}
}

if(path_index == high){
	if(path_position > 0.3){
		with(obj_mar){
			sprite_index = spr_mar_destruida
		}
	}
	if(path_position > 0.6){
		with(obj_praia){
			sprite_index = spr_praia_destruida
		}
	}
	if(path_position > 0.98){
		with(obj_cidade){
			sprite_index = spr_cidade_destruida
		}
	}
}
if(path_index == p_down || win_level == 3){
	if(path_position == 1){
		finished = true
		with(obj_dialog_end_game){
			shouldDisplay = true
		}
	}
}

if(!finished){
	if(current_time > lastSound + 1000){
		audio_play_sound(explosion, 10, false)
		lastSound = current_time
	}

	if(current_time > lastExplosion + 100){
		lastExplosion = current_time
		effect_create_below(ef_explosion, x + random_range(-120, 120), y + random_range(-120, 120), 0, c_green);
	}
}


