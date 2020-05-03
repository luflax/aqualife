for(var i = 1; i <= global.max_hearts; i++){
	if(global.remaining_hearts >= i)
		draw_sprite(spr_heart_full, 0, (i * 30), 10)
	else
		draw_sprite(spr_heart_empty, 0, (i * 30), 10)
}