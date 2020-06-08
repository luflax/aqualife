actualText = 0;
shouldDisplay = false
playedSound = false

if(room == fase2){
	dialogs[0] = "O mutante foi derrotado sem causar nenhum dano a humanidade, avance para tentar mais uma vez!";
}else{
	dialogs[0] = "O mutante foi derrotado antes de cumprir sua tarefa, avance para descobrir os danos que ele irá causar a cidade!";
}

width = view_wport[0] div 3;
height = view_hport[0] div 3;
posX = view_wport[0] / 2 - (width / 2);
posY = view_hport[0] * 0.25;

draw_set_font(font0)