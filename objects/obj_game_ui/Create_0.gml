global.remaining_hearts = 3
global.max_hearts = 3
global.last_hit = 0
global.isHardCore = false

totalInstances = GetAllTasksByRoom(room)
tasksText = ""
firstRoom = 0

underwatersound = audio_play_sound(underwater, 15, true);

isCutscene = false
win_level = 0