if (room != rm_start && room != rm_level_select && room != rm_game_over && room != rm_level_complete && room != rm_tutorial_learn && room != rm_achievements) // Add any other rooms where hearts shouldn't show
{  
	for(var i = 0; i < max_hearts; i++) 
	{
	    if(i < current_hearts) 
		{
	        if(flash_hearts && flash_timer mod 6 < 3) 
			{
	            draw_sprite_ext(spr_heart, 0, start_x + (i * heart_spacing), start_y, 1, 1, 0, c_red, 1);
	        }
	        else 
			{
	            draw_sprite(spr_heart, 0, start_x + (i * heart_spacing), start_y);
	        }
	    }
	    else 
		{
	        draw_sprite(spr_heart, 1, start_x + (i * heart_spacing), start_y);
		}
	}
}
