sprite_index = sprite_hover;

if (hovering && clicked)
{
	clicked = false;
	
	if (is_correct)
	{
		global.can_move = true;
		
		/*switch(global.current_section)
		{
			case 0: //First Section
				if(global.question_in_section < array_length(obj_question_panel.questions[global.current_level-1, global.current_section]))
				{
					global.question_in_section++;
				}
				else
				{global
					global.question_in_section = 0;
					global.current_section++;
				}
				break;
			case 1: //Second Section
				if(global.question_in_section < array_length(obj_question_panel.questions[global.current_level-1, global.current_section]))
				{
					global.question_in_section++;
				}
				else
				{
					global.question_in_section = 0;
					global.current_section++;
				}
				break;
			case 2: //Third Section
				break;
		}*/
			
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