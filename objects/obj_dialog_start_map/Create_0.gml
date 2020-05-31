actualText = 0;
global.movementBlock = true;
dialogs[0] = "no text here"
switch(room){
	case fase2:
		dialogs[0] = "Uma mutação ocorre no fundo do oceano..";
		dialogs[1] = "Nasce um ser vivo capaz de acabar com a raca humana, sua primeira habilidade é o Poluição Marinha. Detritos marinhos são expelidos pelo mutante para a contaminação do ambiente aquatico e destruicao das maquina que coletam lixo.";
		dialogs[2] = "Essas maquinas são deixadas pelos seres humanos com a intenção de recolher todo o detrito marinho. Detritos que se não forem recolhidos provocam danos a toda a fauna e flora marinha.";
		dialogs[3] = "Utilize as SETAS DIRECIONAIS do teclado para mover o mutante e ESPACO para utilizar sua habilidade, destrua todas as maquinas recolhedoras e elimine os humanos que tentarão acabar com o mutante, apos isso vá para o final da fase.";
		break
	case fase3:
		dialogs[0] = "A acidificação dos oceanos é um problema que ocorre por conta do excesso de CO2 na água. Como consequencia, muitos seres vivos como os mariscos, algas, corais, entre outros, acabam morrendo com o alto PH da água.";
		dialogs[1] = "O Mutante adquiriu a habilidade Explosão de CO2, contamine a água próxima aos seres vivos espalhados pelo mapa para causar sua morte, após isso vá para o final da fase. Cuidado com os mergulhadores que querem acabar com o mutante!";
		break
}

width = view_wport[0] div 3;
height = view_hport[0] div 3;
posX = view_wport[0] / 2 - (width / 2);
posY = view_hport[0] * 0.25;

space_key_frame = -1;
space_number_frame = sprite_get_number(spr_space_key);
space_time_frame = 0

draw_set_font(font0)