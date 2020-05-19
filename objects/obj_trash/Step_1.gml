for(var i=0; i<instance_number(enemy); i++) 
{
	var inst = instance_find(enemy, i)
	
	if(point_in_circle(x, y, inst.x, inst.y, 30)){
		with(inst){
			healthPoints--
			last_hit = current_time
			isFollowing = true
			audio_play_sound(enemy_hitted, 5, false);
		}	
		markedToDie = true
	}
}

for(var i=0; i<instance_number(obj_collision); i++) 
{
	var inst = instance_find(obj_collision, i)
	
	if(point_in_circle(x, y, inst.x, inst.y, 30)){
		markedToDie = true
	}
}

for(var i=0; i<instance_number(maquinalimpeza); i++) 
{
	var inst = instance_find(maquinalimpeza, i)
	
	if(point_in_circle(x, y, inst.x, inst.y, 30)){
		with(inst){
			instance_destroy()
		}	
		markedToDie = true
	}	
}

if(life_start + 600 < current_time){
	markedToDie = true
}