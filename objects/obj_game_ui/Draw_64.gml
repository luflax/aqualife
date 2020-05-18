for(var i = 1; i <= global.max_hearts; i++){
	if(global.remaining_hearts >= i)
		draw_sprite(spr_heart_full, 0, (i * 30), 10)
	else
		draw_sprite(spr_heart_empty, 0, (i * 30), 10)
}

draw_set_halign(fa_left);
draw_text_colour(20, 60, "Seres vivos para destruir", c_black,c_black,c_black,c_black,255)

var actualInstances = GetAllTasksByRoom(room)

draw_text_colour(20, 70, string(actualInstances) + "/" + string(totalInstances), c_black,c_black,c_black,c_black,255)