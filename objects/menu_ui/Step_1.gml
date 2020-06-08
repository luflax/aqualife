if(keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd)){
	audio_play_sound(click, 2, false);
	if(selectedItem >= array_length_1d(items) - 1){
		selectedItem = 0
	}else{
		selectedItem++
	}
}

if(keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu)){
	audio_play_sound(click, 2, false);
	if(selectedItem <= 0){
		selectedItem = array_length_1d(items) - 1
	}else{
		selectedItem--
	}
}

if(keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1)){
	audio_play_sound(click, 2, false);
	if(selectedItem == 0)
		room_goto(fase2)
		
	if(selectedItem == 1)
		game_end()
}