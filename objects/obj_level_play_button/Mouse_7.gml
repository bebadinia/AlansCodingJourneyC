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
            room_goto(rm_c_learn);
			show_debug_message("Tutorial");
            break;
        case 1: // C
            room_goto(rm_c_learn);
			show_debug_message(selected_level);
            break;
        case 2: // C++
            room_goto(rm_cpp_learn);
			show_debug_message(selected_level);
            break;
		case 3: // Python
            room_goto(rm_python_learn);
			show_debug_message(selected_level);
            break;
		case 4: // Java
            room_goto(rm_java_learn);
			show_debug_message(selected_level);
            break;
    }
}
else
{
	clicked = false;
}