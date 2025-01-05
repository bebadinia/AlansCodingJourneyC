sprite_index = sprite_hover;

if (hovering && clicked)
{
	clicked = false;
	
	if (is_correct)
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
    
		show_message("Correct! Squish that bug!");
			
		with(obj_heart_controller) 
		{
			if(current_hearts < 5) 
			{
				current_hearts += 1;
			}
				
			flash_hearts = true;
			flash_timer = 0;
		}
		
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
				room_goto(rm_game_over);
				global.current_encounter = 1;
				current_hearts = max_hearts;  // Reset hearts
			}
		}
		
	}
}	
else
{
	clicked = false;
}