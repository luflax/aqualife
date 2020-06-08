if(shouldDisplay){
	if(!playedSound){
		audio_play_sound(end_map, 100, false);
		playedSound = true
	}
	global.movementBlock = true;
	if(actualText < array_length_1d(dialogs)){
		DrawDialogBox(sprite_index, posX, posY, 960 / 2 + (width / 2), posY + height);
		draw_text_ext_colour(posX + 25, posY + 25, dialogs[actualText] + "\n", 20, width - 25, c_white,c_white,c_white,c_white,255)
		draw_text_colour(posX + 25, posY + height - 50, "Aperte espaço para avançar...", c_red,c_red,c_red,c_red,255)
	}
	else{
		global.movementBlock = false;
		room_goto(menu);
		instance_destroy()
		audio_stop_all();
	}
	if((keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1))){
		actualText++
	}
}