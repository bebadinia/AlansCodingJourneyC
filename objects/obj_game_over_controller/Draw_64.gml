draw_set_font(fnt_title);
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw Game Over
draw_set_alpha(text_alpha);
draw_text(room_width/2, 100, "Game Over");

draw_set_color(c_white);

// Reset alpha for other drawing
draw_set_alpha(1);

