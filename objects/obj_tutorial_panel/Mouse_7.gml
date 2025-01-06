if(tutorial_stage == 0 || tutorial_stage == 2 || tutorial_stage == 5)
{
	if (hovering && clicked)
	{
		if(tutorial_stage == 0)
		{
			var _len = string_length(text[text_current]);
	
			if (char_current < _len)
		    {
				char_current = _len;
		    }
			else
		    {
				text_current++;
		
				if (text_current == 4)
		        {
					text[text_current] = string_wrap(text[text_current], text_width);
					char_current = 0;
					tutorial_stage++;
					global.can_move = true;
		        }
				else
		        {
					text[text_current] = string_wrap(text[text_current], text_width);
					char_current = 0;
		        }
		    }
		}
		if(tutorial_stage == 2)
		{
			if (!expanded)
			{
				clicked = false;
				// Create dark overlay first (so it's behind the detail panel)
				instance_create_layer(0, 0, "UILayer", obj_dark_overlay);
		
				extendedView = instance_create_layer(room_width/2, room_height/2, "UILayer", obj_detail_tutorial);
				extendedView.image_yscale = 4.5;
		
				backButton = instance_create_layer(1190, 80, "UILayer", obj_back_button);
				backButton.backButton_type = "close_tutorial";
		
				expanded = true;
		
				visible = false;
				global.can_move = false;
			}
			else
			{
				expanded = false;
				visible = true;
				global.can_move = true;
				text_current++;
				tutorial_stage++;	
				unlock_room();
			}
		}
		if(tutorial_stage == 5)
		{	
			depth = -100;
			show_debug_message("Object depth: " + string(obj_heart_controller.depth));
			var _len = string_length(text[text_current]);
	
			if (char_current < _len)
		    {
				char_current = _len;
		    }
			else
		    {
				text_current++;
		
				if (text_current == 18)
		        {
					draw_set_color(c_white)
					instance_destroy();
		        }
				else if (text_current == 13)
				{
					depth = 100;
				}
				else
		        {
					text[text_current] = string_wrap(text[text_current], 1200);
					char_current = 0;
		        } 
		    }
		}
	}
}
else
{
	clicked = false;
	
}