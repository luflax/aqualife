actualText = 999;
global.movementBlock = true;

dialogs[0] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam interdum justo eu felis venenatis sollicitudin at ac nulla. Nunc nisl lacus, volutpat et nisi vel, sodales sollicitudin mi.";
dialogs[1] = "Nunc ut finibus neque. Aenean quis varius libero. Nullam non odio sit amet eros tempus pellentesque. Donec quis tortor aliquet";

width = display_get_gui_width() div 3;
height = display_get_gui_height() div 4;
posX = display_get_gui_width() / 2 - (width / 2);
posY = display_get_gui_height() * 0.25;

draw_set_font(font0)