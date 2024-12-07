// obj_level_button Create Event
level_type = -1;  // Will be set according to global.current_level values
show_debug_message("Button level: " + string(level_type));
show_debug_message("Highest level: " + string(global.highest_level));
unlocked = (level_type <= global.highest_level);
show_debug_message("Button unlocked: " + string(unlocked));
selected = false;

hovering = false;
clicked = false;