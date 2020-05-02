var player = instance_find(object0, 0);
var distance = distance_to_object(player);
if(distance < 200 && (floor(player.x) != floor(x) || floor(player.y) != floor(y)) && 
	collision_line(x,y,player.x, player.y, obj_collision,false,true) == noone){
	dir = point_direction(x, y, player.x, player.y);
	spd = 1;
}else{
	dir = 0;
	spd = 0;
}