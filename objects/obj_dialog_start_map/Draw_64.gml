
if(actualText < array_length_1d(dialogs)){
	DrawDialogBox(sprite_index, posX, posY, view_wport[0] / 2 + (width / 2), posY + height);
	
	if(space_key_frame <= space_number_frame){
		if(current_time > space_time_frame + 200){
			space_key_frame++;
			space_time_frame = current_time
		}
	}else{
		space_key_frame = 1;
	}
	
	draw_sprite(spr_space_key, space_key_frame, posX + 10, posY + height - 30)
	draw_set_halign(fa_left);
	draw_text_colour(posX + 60, posY + height - 30, "Próximo", c_red,c_red,c_red,c_red,255)
	
	draw_set_halign(fa_center);
	draw_text_ext_colour(posX + width / 2, posY + 25, dialogs[actualText] + "\n", 20, width - 25, c_white,c_white,c_white,c_white,255)
}
else{
	global.movementBlock = false;
}
if(keyboard_check_pressed(vk_space)){
	actualText++
}
