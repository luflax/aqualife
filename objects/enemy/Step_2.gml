if(!global.movementBlock){
	x += lengthdir_x(spd, dir)
	y += lengthdir_y(spd, dir)

	if(dir != 0){
	image_xscale = dir > 90 && dir < 270 ? 1 : -1;
	}
	
	
	if(markedToDie)
		instance_destroy()
}