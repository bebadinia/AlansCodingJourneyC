// Draw GUI Event
draw_set_font(fnt_title);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw congratulations
draw_text(room_width/2, 100, "Congratulations!");


// Draw completion text
draw_set_font(fnt_smallTitle);
draw_text(room_width/2, 250, completed_text);

// Draw next level logo if there is one
if (next_logo != noone) 
{
    draw_sprite(next_logo, 0, room_width/2 - 250, room_height/2 + 48);
}
// Draw next level text in red
draw_set_color(c_red);
draw_text(room_width/2 + 50, room_height/2 + 50, next_text);

draw_set_font(fnt_title);
draw_set_color(c_white);
