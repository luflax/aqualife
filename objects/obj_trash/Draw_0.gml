draw_self()

if(markedToDie){
	effect_create_below(ef_explosion, x, y, 0, c_yellow);
	instance_destroy()
}