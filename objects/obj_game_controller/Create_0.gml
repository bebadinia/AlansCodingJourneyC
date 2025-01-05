// Create Event of obj_game_controller
// Level information - What sections are in each level
level_sections[0] = ["Introduction and Main", "Variables and Expressions", "Input and Operations"];
level_sections[1] = ["Conditionals", "Functions", "Loops"];
level_sections[2] = ["Arrays", "Strings - Character Arrays", "Addresses and Pointers"];
level_sections[3] = ["Enumerate and Structures", "File Input and Output", "Object Oriented Programming"];

// Initialize global variables    
// Load saved highest level if it exists
function load_game()//if (file_exists("savedata.sav")) 
{
    var _buffer = buffer_load("savedata.sav");
    var _string = buffer_read(_buffer, buffer_string);
    buffer_delete(_buffer);
        
    var _loadData = json_parse(_string);
    global.highest_level = _loadData[$ "highest_level"] ?? 0;  // 0 = tutorial only
	global.game_complete = _loadData[$ "game_complete"] ?? false;
	show_debug_message("Highest level: " + string(global.highest_level));
	show_debug_message("Game Complete: " + string(global.game_complete));
} 

function new_game()
{
    // Set default if no save exists
    globalvar highest_level;
	globalvar game_complete;
    global.highest_level = 0;  // Start with only tutorial unlocked
	global.game_complete = false;
	
	show_debug_message("Highest level: " + string(global.highest_level));
	show_debug_message("Game Complete: " + string(global.game_complete));
}
    
// Initialize other variables (not saved)
globalvar can_move, current_level; //current_encounter, 
//global.current_encounter = 1;  // Always start at first encounter
global.current_level = 0;  // 0=tutorial, 1=C, 2=C++, 3=Python, 4=Java
can_move = true;  // Will be set to false in encounter rooms

// Which section within level (0-2) and Which question we're on in current section
globalvar current_section, question_in_section;
global.current_section = 0;      // Start with first section
global.question_in_section = 0;  // Start with first question in section

//Store number of questions in section
globalvar number_of_questions;
global.number_of_questions = 0;

globalvar tutorial_lock;
global.tutorial_lock = true;

// Create a save function
function save_game() 
{
    var _saveData = {
		highest_level: global.highest_level,
		game_complete: global.game_complete
		};
    
    var _string = json_stringify(_saveData);
    var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
    buffer_write(_buffer, buffer_string, _string);
    buffer_save(_buffer, "savedata.sav");
    buffer_delete(_buffer);
	
	show_debug_message("Saving game... Highest level: " + string(global.highest_level));
	show_debug_message("Game Complete: " + string(global.game_complete));
    show_debug_message("Save location: " + working_directory + "savedata.sav");
}