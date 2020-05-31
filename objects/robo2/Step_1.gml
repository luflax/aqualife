var player = instance_find(mutant, 0);
distance = distance_to_object(player);
if(distance < (isFollowing ? 400 : 200) && 
	collision_line(x,y,player.x, player.y, obj_collision,false,true) == noone){
	dir = point_direction(x, y, player.x, player.y);
	spd = 1;
	
	//if(place_meeting(x + lengthdir_x(1, dir), y + lengthdir_y(1, dir), obj_collision)){
	//	dir = 0;
	//	spd = 0;
	//}
	
	if(!isFollowing){
		isFollowing = true
		sprite_index = robos
	}
	
	if(current_time > lastAttack + 1000){
		if(distance < 2 && collision_circle(x, y, 5, mutant, true, false))
		{
			global.remaining_hearts--
			lastAttack = current_time
			sprite_index = enemy_attacking
			audio_play_sound(enemy_hit, 10, false);
		}else{
			sprite_index = robos 
		}
	}
}else{
	dir = 0;
	spd = 0;
	if(isFollowing){
		isFollowing = false
		sprite_index = robos
	}
}