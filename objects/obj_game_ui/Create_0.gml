global.remaining_hearts = 3
global.max_hearts = 3
global.last_hit = 0
global.isHardCore = false

totalInstances = GetAllTasksByRoom(room)
tasksText = ""
switch(room){
	case fase2:
		tasksText = "Maquinas para destruir"
		break
	case fase3:
		tasksText = "Seres vivos para destruir"
		break
}
firstRoom = room

audio_play_sound(underwater, 15, true);