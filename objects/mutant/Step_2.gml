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
	
	if(current_time > lastAttack + 500 && keyboard_check_pressed(vk_space)){
		renderAttack = true
		lastAttack = current_time
		var playerAngle = image_xscale
		
		if(room == fase2){
			var playerX = x
			var playerY = y
			
			var trashInstance = instance_create_depth(x, y, 0, obj_trash)
			with (trashInstance)
		    {
			    spd = 4
			    dir = playerAngle == 1 ? 360 : 180
		    }
		}
		if(room == fase3){
			var playerX = x
			var playerY = y
			with(enemy){
				if(point_in_circle(x, y, playerX, playerY, 60)){
					healthPoints--
					last_hit = current_time
					audio_play_sound(enemy_hitted, 5, false);
				}	
			}
		
			audio_play_sound(gas_attack, 2, false);
			
			with(obj_coral){
				if(point_in_circle(x, y, playerX, playerY, 60)){
					instance_destroy()
				}	
			}
			with(obj_alga){
				if(point_in_circle(x, y, playerX, playerY, 60)){
					instance_destroy()
				}	
			}
		}
	}
}
