//DrawDialogBox()
//arg0 Sprite
//arg1 x1
//arg2 y1
//arg3 x2
//arg4 y2

var _sizeX = sprite_get_width(argument0) / 3;
var _sizeY = sprite_get_height(argument0) / 3;
var _x1 = argument1;
var _y1 = argument2;
var _x2 = argument3;
var _y2 = argument4;
var _w = _x2 - _x1;
var _h = _y2 - _y1;
var _columns = _w div _sizeX;
var _rows = _h div _sizeY;

//Corners
//top
draw_sprite_part(argument0, 0, 0, 0, _sizeX, _sizeY, _x1, _y1);
draw_sprite_part(argument0, 0, _sizeX * 2, 0, _sizeX, _sizeY, _x1 + _columns * _sizeX, _y1);

//bottom
draw_sprite_part(argument0, 0, 0, _sizeY * 2, _sizeX, _sizeY, _x1, _y1 + _rows * _sizeY);
draw_sprite_part(argument0, 0, _sizeX * 2, _sizeY * 2, _sizeX, _sizeY, _x1 + _columns * _sizeX, _y1 + _rows * _sizeY);

//Sides
//top
for(var i = 1; i < _columns; i++){
	draw_sprite_part(argument0, 0, _sizeX, 0, _sizeX, _sizeY, _x1 + _sizeX * i, _y1);
}

//bottom
for(var i = 1; i < _columns; i++){
	draw_sprite_part(argument0, 0, _sizeX, _sizeY * 2, _sizeX, _sizeY, _x1 + _sizeX * i, _y1 + _rows * _sizeY);
}

//left
for(var i = 1; i < _rows; i++){
	draw_sprite_part(argument0, 0, 0, _sizeY, _sizeX, _sizeY, _x1, _y1 + _sizeY * i);
}

//right
for(var i = 1; i < _rows; i++){
	draw_sprite_part(argument0, 0, _sizeX * 2, _sizeY, _sizeX, _sizeY, _x1 + _columns * _sizeX, _y1 + _sizeY * i);
}

//center
for(var i = 1; i < _columns; i++){
	for(var j = 1; j < _rows; j++){
		draw_sprite_part(argument0, 0, _sizeX, _sizeY, _sizeX, _sizeY, _x1 + i * _sizeX, _y1 + _sizeY * j);
	}
}
