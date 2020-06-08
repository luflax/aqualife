if(room != firstRoom){
	totalInstances = GetAllTasksByRoom(room)
	firstRoom = room
	switch(room){
		case fase2:
			tasksText = "Maquinas para destruir:"
			break
		case fase3:
			tasksText = "Seres vivos para destruir:"
			break
		case fase4:
			tasksText = "Animais para comer:"
			break
	}
}

if(global.remaining_hearts <= 0){
	with(obj_dialog_died){
		shouldDisplay = true
	}
}