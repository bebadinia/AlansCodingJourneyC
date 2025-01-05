draw_self();
draw_set_font(fnt_question);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);

var _len = string_length(text[text_current]);

if (char_current < _len)
{
    char_current += char_speed;
}

var _str = string_copy(text[text_current], 1, char_current);

// Clicking Events
if (tutorial_stage == 0 || tutorial_stage == 2 || tutorial_stage == 5)
{
	if (hovering == true)
	{
		draw_set_color(c_yellow);
		draw_text(room_width/2, y,  _str);
	}
	else
	{
		draw_set_color(c_white);
	}	
}

if(tutorial_stage == 5 && text_current < 9)
{
	text_current = 9;
}

function unlock_room()
{
	var _len = string_length(text[text_current]);
	
	if (char_current < _len)
	{
		char_current = _len;
	}
	else
	{
		text[text_current] = string_wrap(text[text_current], text_width);
		char_current = 0;	
	}
	
	global.tutorial_lock = false;
}


draw_text(room_width/2, y,  _str);