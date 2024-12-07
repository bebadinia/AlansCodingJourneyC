hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering && mouse_check_button_pressed(mb_left)) 
{
	clicked = true;
} 

if (mouse_check_button_released(mb_left)) 
{
	
	clicked = false;

	if (hovering) 
	{	
		if (is_correct) //((question_number == 1) && (truth_value1 == 1)) || ((question_number == 2) && (truth_value2 == 1))
		{
			global.can_move = true;
			
			// Start fading all buttons and question panel
			with(obj_answer_button) 
			{
				fading = true;
			}
    
			with(obj_question_panel) 
			{
				fading = true;
			}
    
			show_message("Correct! Movement enabled");
		}
		else
		{
			global.can_move = false;
			show_message("Incorrect! Try again");
			
			with(obj_heart_controller) 
			{
				current_hearts -= 1;
				
				flash_hearts = true;
				flash_timer = 0;
				
				if(current_hearts <= 0) 
				{
					room_goto(rm_start);
					current_hearts = max_hearts;  // Reset hearts
				}
			}
		
		}
	}	
} 

if (clicked) 
{
	sprite_index = sprite_still;
} 
else if (hovering) 
{
	sprite_index = sprite_hover;
} 
else 
{
	sprite_index = sprite_still;
}

if (fading) 
{
    image_alpha -= 0.05;  // Adjust speed as needed
    if (image_alpha <= 0) {
        instance_destroy();
    }
}