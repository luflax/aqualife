if(!global.movementBlock){
	if(hittingVertical && verticalVelocity != 0) verticalVelocity = 0;
	if(hittingHorizontal && horizontalVelocity != 0) horizontalVelocity = 0;

	x += horizontalVelocity;
	y += verticalVelocity;
	
	if(current_time < lastBite + 500){
		sprite_index = mutant_eating
		
		var playerX = x
		var playerY = y
		var facingRight = image_xscale == 1
		with(enemy){
			if(point_in_rectangle(x, y + 10, playerX - (facingRight ? 0 : 60), playerY - 30, playerX + (facingRight ? 60 : 0), playerY + 30)){
				healthPoints = healthPoints - 2
				last_hit = current_time
				audio_play_sound(enemy_hitted, 5, false);
			}	
		}
		
		with(obj_turtle){
			if(point_in_rectangle(x, y, playerX - (facingRight ? 0 : 60), playerY - 30, playerX + (facingRight ? 60 : 0), playerY + 30)){
				audio_play_sound(task_done, 5, false);
				instance_destroy()
			}	
		}
		with(obj_lula){
			if(point_in_rectangle(x, y, playerX - (facingRight ? 0 : 60), playerY - 30, playerX + (facingRight ? 60 : 0), playerY + 30)){
				audio_play_sound(task_done, 5, false);
				instance_destroy()
			}	
		}
		with(obj_baleia){
			if(point_in_rectangle(x, y, playerX - (facingRight ? 0 : 60), playerY - 30, playerX + (facingRight ? 60 : 0), playerY + 30)){
				audio_play_sound(task_done, 5, false);
				instance_destroy()
			}	
		}
		with(obj_star){
			if(point_in_rectangle(x, y, playerX - (facingRight ? 0 : 60), playerY - 30, playerX + (facingRight ? 60 : 0), playerY + 30)){
				audio_play_sound(task_done, 5, false);
				instance_destroy()
			}	
		}
		with(obj_peixe_sinistro){
			if(point_in_rectangle(x, y, playerX - (facingRight ? 0 : 60), playerY - 30, playerX + (facingRight ? 60 : 0), playerY + 30)){
				audio_play_sound(task_done, 5, false);
				instance_destroy()
			}	
		}
		
	}
	else if(horizontalVelocity != 0 || verticalVelocity != 0)
		sprite_index = mutant_walking
	else
		sprite_index = mutant_idle


	if(horizontalVelocity != 0)
	image_xscale = horizontalVelocity < 0 ? -1 : 1;
	
	if(current_time > lastAttack + 500 && (keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1))){
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
				if(point_in_circle(x, y, playerX, playerY, 80)){
					healthPoints--
					last_hit = current_time
					audio_play_sound(enemy_hitted, 5, false);
				}	
			}
		
			audio_play_sound(gas_attack, 2, false);
			
			with(obj_coral){
				if(point_in_circle(x, y, playerX, playerY, 60)){
					audio_play_sound(task_done, 5, false);
					instance_destroy()
				}	
			}
			with(obj_alga){
				if(point_in_circle(x, y, playerX, playerY, 60)){
					audio_play_sound(task_done, 5, false);
					instance_destroy()
				}	
			}
		}
		if(room == fase4){
			lastBite = current_time
			image_index = 0
		}
	}
}
