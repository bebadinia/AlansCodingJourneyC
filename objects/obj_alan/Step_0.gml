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

	
	// Right boundary (only enforce in encounter room if enemy exists)
    if (room == rm_c_encounter || room == rm_cpp_encounter || room == rm_python_encounter || room == rm_java_encounter)
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
	/*else  // In learn room, always allow right movement
    {
        if (x > room_width)
        {
            switch(room) 
            {
                case rm_python_learn:
                    room_goto(rm_python_encounter);
                    break;
                
                case rm_python_encounter:
                    if (current_encounter < 3) 
                    {
                        current_encounter++;
                        room_goto(rm_python_learn);
                    } 
                    else 
                    {
                        // Level complete
                        current_encounter = 1;  // Reset for next time
						room_goto(rm_start);
                        //room_goto(rm_congratulations);
                    }
                    break;
            }
        }
	} */

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
	                   room_goto(rm_start);
	                   current_hearts = max_hearts;  // Reset hearts
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
			// C Transitioning	
			case rm_c_learn: 
				room_goto(rm_c_encounter);
				break;
            
	        case rm_c_encounter: 
	            if (global.current_encounter < 3) 
				{
	                global.current_encounter++;
					show_debug_message("Incrementing encounter to " + string(global.current_encounter));
	                room_goto(rm_c_learn);
					
	            } 
				else 
				{
	                // Level complete
	                global.current_encounter = 1;  // Reset for next time
					
					with(obj_heart_controller) 
					{
						current_hearts = max_hearts;
					}
	                room_goto(rm_start);
	            }
	            break;
				
			// Python Transitioning	
			case rm_python_learn:
				room_goto(rm_python_encounter);
				break;
            
	        case rm_python_encounter:
	            if (global.current_encounter < 3) 
				{
	                global.current_encounter++;
					show_debug_message("Incrementing encounter to " + string(global.current_encounter));
	                room_goto(rm_python_learn);
					
	            } 
				else 
				{
	                // Level complete
	                global.current_encounter = 1;  // Reset for next time
					
					with(obj_heart_controller) 
					{
						current_hearts = max_hearts;
					}
	                room_goto(rm_start);
	            }
	            break;
				
				
			//CPP Transitioning	
			case rm_cpp_learn: 
				room_goto(rm_cpp_encounter);
				break;
            
	        case rm_cpp_encounter: 
	            if (global.current_encounter < 3) 
				{
	                global.current_encounter++;
					show_debug_message("Incrementing encounter to " + string(global.current_encounter));
	                room_goto(rm_cpp_learn);
					
	            } 
				else 
				{
	                // Level complete
	                global.current_encounter = 1;  // Reset for next time
					
					with(obj_heart_controller) 
					{
						current_hearts = max_hearts;
					}
	                room_goto(rm_start);
	            }
	            break;
				
				
			//Java Transitioning	
			case rm_java_learn: 
				room_goto(rm_java_encounter);
				break;
            
	        case rm_java_encounter: 
	            if (global.current_encounter < 3) 
				{
	                global.current_encounter++;
					show_debug_message("Incrementing encounter to " + string(global.current_encounter));
	                room_goto(rm_java_learn);
					
	            } 
				else 
				{
	                // Level complete
	                global.current_encounter = 1;  // Reset for next time
					
					with(obj_heart_controller) 
					{
						current_hearts = max_hearts;
					}
	                room_goto(rm_start);
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

