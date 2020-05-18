var MAX_SPD = global.isHardCore ? 2.2 : 1

var player = instance_find(mutant, 0);
distance = distance_to_object(player);
if(distance < (isFollowing ? 400 : 200) && 
	collision_line(x,y,player.x, player.y + 1, obj_collision,false,true) == noone){
	dir = point_direction(x, y, player.x, player.y);
	spd = MAX_SPD;
	
	
	if(place_meeting(x + lengthdir_x(20, dir), y + lengthdir_y(20, dir), enemy)){
		dir = 0;
		spd = 0;
	}
	
	if(!isFollowing){
		isFollowing = true
		sprite_index = enemy_lured 
	}
	
	if(current_time > lastAttack + 1000){
		if(distance < 2 && collision_circle(x, y, 5, mutant, true, false))
		{
			global.remaining_hearts--
			global.last_hit = current_time
			lastAttack = current_time
			sprite_index = enemy_attacking
			audio_play_sound(enemy_hit, 10, false);
		}else{
			sprite_index = enemy_lured 
		}
	}
}else{
	dir = 0;
	spd = 0;
	if(isFollowing){
		isFollowing = false
		sprite_index = enemy_idle 
	}
}