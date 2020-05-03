
if(actualText < array_length_1d(dialogs)){
	DrawDialogBox(sprite_index, posX, posY, display_get_gui_width() / 2 + (width / 2), posY + height);
	draw_text_ext_colour(posX + 25, posY + 25, dialogs[actualText] + "\n", 20, width - 25, c_white,c_white,c_white,c_white,255)
	draw_text_colour(posX + 25, posY + height - 50, "Aperte espaço para avançar...", c_red,c_red,c_red,c_red,255)
}
else{
	global.movementBlock = false;
}
if(keyboard_check_pressed(vk_space)){
	actualText++
}