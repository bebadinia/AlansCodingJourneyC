sprite_index = sprite_hover;

if (hovering && clicked)
{
	clicked = false;
	
	switch(button_type) 
	{
        case "select_level":
            room_goto(rm_level_select);
            break;
        case "settings":
            room_goto(rm_python_learn);
            break;
    }
}
else
{
	clicked = false;
}