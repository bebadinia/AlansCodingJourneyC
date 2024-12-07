// Create Event of obj_game_controller

// Initialize global variables    
// Load saved highest level if it exists
function load_game()//if (file_exists("savedata.sav")) 
{
    var _buffer = buffer_load("savedata.sav");
    var _string = buffer_read(_buffer, buffer_string);
    buffer_delete(_buffer);
        
    var _loadData = json_parse(_string);
    global.highest_level = _loadData[$ "highest_level"] ?? 1;  // 0 = tutorial only
} 

function new_game()
{
    // Set default if no save exists
    globalvar highest_level;
    global.highest_level = 1;  // Start with only tutorial unlocked
}
    
// Initialize other variables (not saved)
globalvar current_encounter, can_move, current_level;
global.current_encounter = 1;  // Always start at first encounter
global.current_level = 0;  // 0=tutorial, 1=C, 2=C++, 3=Python, 4=Java
can_move = true;  // Will be set to false in encounter rooms


// Create a save function
function save_game() 
{
    var _saveData = {highest_level: global.highest_level};
    
    var _string = json_stringify(_saveData);
    var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
    buffer_write(_buffer, buffer_string, _string);
    buffer_save(_buffer, "savedata.sav");
    buffer_delete(_buffer);
	
	show_debug_message("Saving game... Highest level: " + string(global.highest_level));
    show_debug_message("Save location: " + working_directory + "savedata.sav");
}