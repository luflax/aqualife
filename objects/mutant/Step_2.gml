if(!global.movementBlock){
	if(hittingVertical && verticalVelocity != 0) verticalVelocity = 0;
	if(hittingHorizontal && horizontalVelocity != 0) horizontalVelocity = 0;

	x += horizontalVelocity;
	y += verticalVelocity;
	
	if(horizontalVelocity != 0 || verticalVelocity != 0)
		sprite_index = mutant_walking
	else
		sprite_index = mutant_idle


	if(horizontalVelocity != 0)
	image_xscale = horizontalVelocity < 0 ? -1 : 1;
}