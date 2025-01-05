if (global.can_move) 
{
	// Get movement input
	var move = keyboard_check(vk_right) - keyboard_check(vk_left);
	hspeed = move * move_speed;

	// Gravity and jumping
	vspeed += grav;

	// Horizontal boundary checking
	var sprite_half_width = abs(sprite_width/2); // Use absolute value to handle flipping
	
	if (x + hspeed < sprite_half_width)
	{
		x = sprite_half_width;
		hspeed = 0;
	}
	
	if(room == rm_tutorial_learn && global.tutorial_lock = true)
	{
		 if (x + hspeed > room_width - sprite_half_width)
         {
             x = room_width - sprite_half_width;
             hspeed = 0;
         }
	}
	
	// Right boundary (only enforce in encounter room if enemy exists)
    if (room == rm_tutorial_encounter || room == rm_first_encounter || room == rm_second_encounter || room == rm_third_encounter || room == rm_fourth_encounter)
    {
        if (instance_exists(obj_enemy_parent))
        {
            if (x + hspeed > room_width - sprite_half_width)
            {
                x = room_width - sprite_half_width;
                hspeed = 0;
            }
        }
    }
	

	// Ground collision check for jumping
	var on_ground = place_meeting(x, y + 1, obj_ground_parent);

	// Jump when space is pressed and on ground
	if (keyboard_check_pressed(vk_space) && on_ground)
	{
		vspeed = jump_speed;
	}

	// Vertical collisions
	if (place_meeting(x, y + vspeed, obj_ground_parent))
	{
		while (!place_meeting(x, y + sign(vspeed), obj_ground_parent))
		{
			y += sign(vspeed);
		}
    
		vspeed = 0;
	}

	// Horizontal collisions
	if (place_meeting(x + hspeed, y, obj_ground_parent))
	{
		while (!place_meeting(x + sign(hspeed), y, obj_ground_parent))
		{
			x += sign(hspeed);
		}
	
		hspeed = 0;
	}
	
	if(!invincible)
	{
		var enemy = instance_place(x, y, obj_enemy_parent);
	
		if (enemy != noone)
		{
			// If hit from side
	        if (y >= enemy.y - enemy.sprite_height/2)
			{
	            // Reduce heart
	            with(obj_heart_controller) 
				{
	                current_hearts -= 1;
	                flash_hearts = true;
					flash_timer = 0;
				
					if(current_hearts <= 0) 
					{
					   global.current_encounter = 1;
	                   current_hearts = max_hearts;  // Reset hearts
					   room_goto(rm_game_over);
	                }
	            }
            
	            // Push Alan away from enemy
	            x = x + (200 * sign(x - enemy.x));  // Push in opposite direction of enemy
			
			
	            invincible = true;
	            invincible_timer = invincible_time;

			}
		}
	}
	
	// Handle invincibility timer
    if (invincible) 
	{
        invincible_timer--;
        
		flash = !flash;  // Toggle flash every frame
        
		if (invincible_timer <= 0) 
		{
            invincible = false;
            flash = false;
        }
    }

	// Apply movement
	x += hspeed;
	y += vspeed;

	// Handle facing direction and animation
	if (move != 0)
	{
		image_xscale = sign(move);
		sprite_index = sprite_run;
		image_speed = 1;
	}
	else
	{
		sprite_index = sprite_idle;
		image_speed = 0;
		image_index = 0;
	}

	// Ensure pixel-perfect positioning
	x = floor(x);
	y = floor(y);
	
	
	//Handle Room Moving
	if (x > room_width)
	{
		switch(room) 
		{
			// Tutorial Level Transitioning	
			case rm_tutorial_learn: 
				room_goto(rm_tutorial_encounter);
				break;
            
	        case rm_tutorial_encounter: 
				//global.current_section = 0;
				//global.question_in_section = 0;
				//global.number_of_questions = 0;
				with(obj_heart_controller)
				{
					current_hearts = max_hearts;
				}
				room_goto(rm_level_complete);
	            break;
			
			// First Level Transitioning	
			case rm_first_learn: 
				room_goto(rm_first_encounter);
				break;
            
	        case rm_first_encounter: 
	            if ((global.question_in_section + 1) < global.number_of_questions) 
				{
	                global.question_in_section++;
					show_debug_message("Incrementing question to " + string(global.question_in_section + 1));
	                room_goto(rm_first_encounter);
	            } 
				else 
				{
	                // Section complete
					
					if(global.current_section < 2) // If level is not complete
					{
						global.current_section++;  // Increment Section
						global.question_in_section = 0;
						//global.number_of_questions = 0;
						show_debug_message("Incrementing section to " + string(global.current_section));
						room_goto(rm_first_learn); // Go to next learn page
					}
					else // Go to next level
					{
						global.current_section = 0;
						global.question_in_section = 0;
						global.number_of_questions = 0;
						with(obj_heart_controller) 
						{
							current_hearts = max_hearts;
						}
						room_goto(rm_level_complete);
					}
	            }
	            break;
				
				
			//Second Level Transitioning	
			case rm_second_learn: 
				room_goto(rm_second_encounter);
				break;
            
	        case rm_second_encounter: 
	           if ((global.question_in_section + 1) < global.number_of_questions) 
				{
	                global.question_in_section++;
					show_debug_message("Incrementing question to " + string(global.question_in_section + 1));
	                room_goto(rm_second_encounter);
	            } 
				else 
				{
	                // Section complete
					
					if(global.current_section < 2) // If level is not complete
					{
						global.current_section++;  // Increment Section
						global.question_in_section = 0;
						//global.number_of_questions = 0;
						show_debug_message("Incrementing section to " + string(global.current_section));
						room_goto(rm_second_learn); // Go to next learn page
					}
					else // Go to next level
					{
						global.current_section = 0;
						global.question_in_section = 0;
						global.number_of_questions = 0;
						with(obj_heart_controller) 
						{
							current_hearts = max_hearts;
						}
						room_goto(rm_level_complete);
					}
	            }
	            break;
				
				
			// Third Level Transitioning	
			case rm_third_learn:
				room_goto(rm_third_encounter);
				break;
            
	        case rm_third_encounter:
	           if ((global.question_in_section + 1) < global.number_of_questions) 
				{
	                global.question_in_section++;
					show_debug_message("Incrementing question to " + string(global.question_in_section + 1));
	                room_goto(rm_third_encounter);
	            } 
				else 
				{
	                // Section complete
					
					if(global.current_section < 2) // If level is not complete
					{
						global.current_section++;  // Increment Section
						global.question_in_section = 0;
						//global.number_of_questions = 0;
						show_debug_message("Incrementing section to " + string(global.current_section));
						room_goto(rm_third_learn); // Go to next learn page
					}
					else // Go to next level
					{
						global.current_section = 0;
						global.question_in_section = 0;
						global.number_of_questions = 0;
						with(obj_heart_controller) 
						{
							current_hearts = max_hearts;
						}
						room_goto(rm_level_complete);
					}
	            }
	            break;
			
				
			//Fourth Level Transitioning	
			case rm_fourth_learn: 
				room_goto(rm_fourth_encounter);
				break;
            
	        case rm_fourth_encounter: 
	            if ((global.question_in_section + 1) < global.number_of_questions) 
				{
	                global.question_in_section++;
					show_debug_message("Incrementing question to " + string(global.question_in_section + 1));
	                room_goto(rm_fourth_encounter);
	            } 
				else 
				{
	                // Section complete
					
					if(global.current_section < 2) // If level is not complete
					{
						global.current_section++;  // Increment Section
						global.question_in_section = 0;
						//global.number_of_questions = 0;
						show_debug_message("Incrementing section to " + string(global.current_section));
						room_goto(rm_fourth_learn); // Go to next learn page
					}
					else // Go to next level
					{
						global.current_section = 0;
						global.question_in_section = 0;
						global.number_of_questions = 0;
						with(obj_heart_controller) 
						{
							current_hearts = max_hearts;
						}
						room_goto(rm_level_complete);
					}
	            }
	            break;
		}
	}

}
else 
{
    // Stop all movement
    hspeed = 0;
    vspeed = 0;
}

