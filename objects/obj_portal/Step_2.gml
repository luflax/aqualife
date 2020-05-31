var actualInstances = GetAllTasksByRoom(room)

if(collision_circle(x, y, 20, mutant, false, true) && actualInstances == 0){
	with(obj_dialog_end_map){
		shouldDisplay = true
	}
}
