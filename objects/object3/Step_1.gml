var player = instance_find(object0, 0);
distance = distance_to_object(player);
if(distance < (isFollowing ? 400 : 200) && 
	collision_line(x,y,player.x, player.y, obj_collision,false,true) == noone){
	dir = point_direction(x, y, player.x, player.y);
	spd = 1;
	if(!isFollowing){
		isFollowing = true
		sprite_index = enemy_lured 
	}
	
	if(current_time > lastAttack + 1000){
		if(distance < 2 && collision_circle(x, y, 5, object0, true, false))
		{
			global.remaining_hearts--
			lastAttack = current_time
			sprite_index = enemy_attacking
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