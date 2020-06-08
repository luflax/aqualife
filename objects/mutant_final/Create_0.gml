var wnlevel = 0
with(obj_game_ui){
	isCutscene = true
	wnlevel = win_level
}
win_level = wnlevel

downed = false

switch(win_level){
case 1:
	image_xscale = 3
	image_yscale = 3
	path_start(low, 0.5, path_action_stop, true)
	break
case 2:
	image_xscale = 6
	image_yscale = 6
	path_start(medium, 0.5, path_action_stop, true)
	break
case 3:
	image_xscale = 9
	image_yscale = 9
	path_start(high, 0.5, path_action_stop, true)
	break
}

lastExplosion = 0
lastSound = 0

audio_play_sound(snd_seagull, 15, true);

finished = false