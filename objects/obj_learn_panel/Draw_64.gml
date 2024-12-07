draw_self();

draw_set_font(fnt_question);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


if (hovering == true)
{
	draw_set_color(c_yellow);
	draw_text(room_width/2, y, board_text);
}
else
{
	draw_set_color(c_white);
}

draw_text(room_width/2, y, board_text);
//draw_text_ext(room_width/2, y, board_text, 40, 600);  // Line height 20, max width 360 */

