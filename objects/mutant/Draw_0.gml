if(global.last_hit + 200 > current_time)
{
	shader_set(shd_full_white);
	draw_self();
	shader_reset();
}else{
draw_self();
}            

if(renderAttack){
	renderAttack = false
	effect_create_below(ef_explosion, x, y, 1, make_color_rgb(114, 247, 152));
}     