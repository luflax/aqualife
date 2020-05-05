actualText = 0;
global.movementBlock = true;

dialogs[0] = "A acidificação dos oceanos é um problema que ocorre por conta do excesso de CO2 na água. Como consequencia, muitos seres vivos como os mariscos, algas, corais, entre outros, acabam morrendo com o alto PH da água.";
dialogs[1] = "O Mutante adquiriu a habilidade Explosão de CO2, contamine a água próxima aos seres vivos espalhados pelo mapa para causar sua morte, após isso vá para o final da fase. Cuidado com os mergulhadores que querem acabar com voce!";

width = view_wport[0] div 3;
height = view_hport[0] div 3;
posX = view_wport[0] / 2 - (width / 2);
posY = view_hport[0] * 0.25;

space_key_frame = -1;
space_number_frame = sprite_get_number(spr_space_key);
space_time_frame = 0

draw_set_font(font0)