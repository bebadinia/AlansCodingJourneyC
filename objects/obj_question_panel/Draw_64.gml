draw_self();

draw_set_font(fnt_question);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

//draw_text(x, y, board_question);
draw_text_ext(room_width/2, y, question_text, 40, 700);  // Line height 20, max width 360
