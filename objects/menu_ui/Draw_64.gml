for (var i=0; i<array_length_1d(items); i++) {
	draw_text_color(view_wport[0] / 2 - 64, view_hport[0] / 2 + (i * 30), items[i], c_red, c_red, c_red, c_red, 255)
}

draw_sprite(arrow_menu, 0,view_wport[0] / 2 - 80, view_hport[0] / 2 + (selectedItem * 30))