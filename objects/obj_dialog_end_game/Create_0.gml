actualText = 0;
shouldDisplay = false
playedSound = false

var wnlevel = 0
with(obj_game_ui){
	wnlevel = win_level
}

if(wnlevel == 3){
	dialogs[0] = "Voce fez um grande trabalho, o mutante contaminou o mar, destrui a praia e a cidade, seus atos levaram ao fim da humanidade!!!! Avance para voltar ao menu.";
}else if(wnlevel == 2){
	dialogs[0] = "Voce fez um bom trabalho, o mutante contaminou o mar e destrui a praia, mas os humanos destruiram o mutante antes que ele acabasse com a cidade! Avance para voltar ao menu.";
}else if(wnlevel == 1){
	dialogs[0] = "Boa tentativa, o mutante contaminou o mar, mas os humanos destruiram o mutante antes que ele acabasse com a praia e a cidade! Avance para voltar ao menu.";
}

width = 960 div 3;
height = 540 div 3;
posX = 960 / 2 - (width / 2);
posY = 540 * 0.25;

draw_set_font(font0)