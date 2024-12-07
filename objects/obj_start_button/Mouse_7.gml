sprite_index = sprite_hover;

if (hovering && clicked)
{
	clicked = false;
	
	switch(button_type) 
	{
        case "select_level":
            room_goto(rm_level_select);
            break;
        case "new_game":
			with(obj_game_controller) 
			{
                new_game();
            }
            room_goto(rm_level_select);
            break;
		case "load_game":
			if (file_exists("savedata.sav"))
			{
				with(obj_game_controller) 
				{
					load_game();
				}
			}
            room_goto(rm_level_select);
            break;
    }
}
else
{
	clicked = false;
}