if (has_moved_right && !has_moved_left  && tutorial_stage == 1)
{
	text_current++;
			
	text[text_current] = string_wrap(text[text_current], text_width);
	char_current = 0;
			
	has_moved_left = true;
}