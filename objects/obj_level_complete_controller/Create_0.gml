/// obj_level_complete_controller Create Event

// Save progress
show_debug_message("Before save - Highest level: " + string(global.highest_level));
show_debug_message("Current level: " + string(global.current_level));

global.highest_level = max(global.highest_level, global.current_level + 1);
show_debug_message("After update - Highest level: " + string(global.highest_level));


with(obj_game_controller)
{
	save_game();
}

// Set text based on which level was completed
switch(global.current_level) 
{
	case 0: // Tutorial
        completed_text = "You've passed Tutorial";
        next_text = " is now unlocked!";
        next_logo = spr_fundamental_btn;
        break;
    case 1: // First
        completed_text = "You've mastered Fundamentals";
        next_text = " is now unlocked!";
        next_logo = spr_control_btn;
        break;
    case 2: // Second
        completed_text = "You've mastered Control Flows";
        next_text = " is now unlocked!";
        next_logo = spr_data_btn;
        break;
    case 3: // Third
        completed_text = "You've mastered Data Structures";
        next_text = " is now unlocked!";
        next_logo = spr_complex_btn;
        break;
    case 4: // Fourth
        completed_text = "You've mastered Java!";
        next_text = "Congratulations on completing all levels!";
        next_logo = noone;
		global.game_complete = true;
		with(obj_game_controller)
		{
			save_game();
		}
        break;
}

// Create back button
goBackButton = instance_create_layer(room_width/2, 625, "UILayer", obj_start_button);
goBackButton.image_xscale = 1.152381;
goBackButton.image_yscale = 1.316832;
goBackButton.text = "Go Back";
goBackButton.button_type = "select_level";