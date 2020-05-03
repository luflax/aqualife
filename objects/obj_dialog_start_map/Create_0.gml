actualText = 0;
global.movementBlock = true;

dialogs[0] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam interdum justo eu felis venenatis sollicitudin at ac nulla. Nunc nisl lacus, volutpat et nisi vel, sodales sollicitudin mi.";
dialogs[1] = "Nunc ut finibus neque. Aenean quis varius libero. Nullam non odio sit amet eros tempus pellentesque. Donec quis tortor aliquet";

width = view_wport[0] div 3;
height = view_hport[0] div 3;
posX = view_wport[0] / 2 - (width / 2);
posY = view_hport[0] * 0.25;

space_key_frame = -1;
space_number_frame = sprite_get_number(spr_space_key);
space_time_frame = 0

draw_set_font(font0)