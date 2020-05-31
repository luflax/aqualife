//draw_circle(x + lengthdir_x(20, dir), y + lengthdir_y(20, dir), 3, true)
if(last_hit + 200 > current_time)
{
	shader_set(shd_full_white);
	draw_self();
	shader_reset();
}else{
	draw_self();
}            

if(healthPoints < 1){

	effect_create_below(ef_flare, x, y, 1, make_color_rgb(252, 250, 237));
	markedToDie = true
}