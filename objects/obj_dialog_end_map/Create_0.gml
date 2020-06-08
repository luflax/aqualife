actualText = 0;
shouldDisplay = false
playedSound = false

switch(room){
	case fase2:
		dialogs[0] = "PARABENS, voce destruiu todas as maquinas, agora a poluicao marinha continuara a crescer e em breve a humanidade ira sofrer por isso, avance para encontrar sua proxima tarefa!";
	break
	case fase3:
		dialogs[0] = "PARABENS, voce destruiu todos os seres vivos, agora esses seres vivos não conseguiram se reproduzir e desaparecerão, avance para encontrar sua proxima tarefa!";
	break
	case fase4:
		dialogs[0] = "PARABENS, voce comeu todos os animais, o ecossistema foi desbalanceado e os animais não voltarão a nascer, causando sua extinção, a humanidade esta proxima de seu fim, avance para descobrir os danos que o mutante irá causar a cidade!";
	break
}
width = view_wport[0] div 3;
height = view_hport[0] div 3;
posX = view_wport[0] / 2 - (width / 2);
posY = view_hport[0] * 0.25;

draw_set_font(font0)