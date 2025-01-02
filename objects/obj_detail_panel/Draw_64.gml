draw_self();

draw_set_font(fnt_normal);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

//draw_text_ext(60, 70, board_content_text, 20, 1130);
draw_sprite(section_sprites[global.current_level, global.current_section], 0, 55, 65);