if(room != firstRoom){
	totalInstances = GetAllTasksByRoom(room)
	firstRoom = room
	switch(room){
		case fase2:
			tasksText = "Maquinas para destruir"
			break
		case fase3:
			tasksText = "Seres vivos para destruir"
			break
	}
}