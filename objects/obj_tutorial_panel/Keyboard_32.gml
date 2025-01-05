if (has_moved_right && has_moved_left && !has_jumped && tutorial_stage == 1)
{
	text_current++;
			
	text[text_current] = string_wrap(text[text_current], text_width);
	char_current = 0;
	tutorial_stage++;
	
	has_jumped = true;
}