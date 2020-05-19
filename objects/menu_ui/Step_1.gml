if(keyboard_check_pressed(vk_down)){
	audio_play_sound(click, 2, false);
	if(selectedItem >= array_length_1d(items) - 1){
		selectedItem = 0
	}else{
		selectedItem++
	}
}

if(keyboard_check_pressed(vk_up)){
	audio_play_sound(click, 2, false);
	if(selectedItem <= 0){
		selectedItem = array_length_1d(items) - 1
	}else{
		selectedItem--
	}
}

if(keyboard_check_pressed(vk_space)){
	audio_play_sound(click, 2, false);
	if(selectedItem == 0)
		room_goto(fase2)
		
	if(selectedItem == 1)
		game_end()
}