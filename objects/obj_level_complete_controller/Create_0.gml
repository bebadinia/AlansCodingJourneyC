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
        completed_text = "You've mastered Tutorial";
        next_text = " is now unlocked!";
        next_logo = spr_c_enemy;
        break;
    case 1: // C
        completed_text = "You've mastered C";
        next_text = " is now unlocked!";
        next_logo = spr_cpp_enemy;
        break;
    case 2: // C++
        completed_text = "You've mastered C++";
        next_text = " is now unlocked!";
        next_logo = spr_python_enemy;
        break;
    case 3: // Python
        completed_text = "You've mastered Python";
        next_text = " is now unlocked!";
        next_logo = spr_java_enemy;
        break;
    case 4: // Java
        completed_text = "You've mastered Java!";
        next_text = "Congratulations on completing all levels!";
        next_logo = noone;
        break;
}

// Create back button
goBack_button = instance_create_layer(room_width/2, 625, "UILayer", obj_start_button);
goBack_button.text = "Go Back";
goBack_button.button_type = "select_level";