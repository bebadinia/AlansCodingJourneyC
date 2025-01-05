sprite_index = sprite_hover;

if (hovering && clicked)
{
	clicked = false;
	
	var selected_level = 0;
	
	// Find selected level
	with(obj_level_button) 
	{
		if (selected && unlocked) 
		{
			selected_level = level_type;
			break;
		}
	}
	
	global.current_level = selected_level;
	
	switch(selected_level) 
	{
        case 0: // Tutorial
            room_goto(rm_tutorial_learn);
			show_debug_message("Tutorial");
            break;
        case 1: // First
            room_goto(rm_first_learn);
			show_debug_message(selected_level);
            break;
        case 2: // Second
            room_goto(rm_second_learn);
			show_debug_message(selected_level);
            break;
		case 3: // Third
            room_goto(rm_third_learn);
			show_debug_message(selected_level);
            break;
		case 4: // Fourth
            room_goto(rm_fourth_learn);
			show_debug_message(selected_level);
            break;
    }
}
else
{
	clicked = false;
}