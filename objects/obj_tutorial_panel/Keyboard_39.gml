if(!has_moved_right && global.can_move  && tutorial_stage == 1)
{
	var _len = string_length(text[text_current]);
	
		if (char_current < _len)
	    {
			char_current = _len;
	    }
		else
	    {
			text_current++;
			
			text[text_current] = string_wrap(text[text_current], text_width);
			char_current = 0;
			
			has_moved_right = true;
	    }
}