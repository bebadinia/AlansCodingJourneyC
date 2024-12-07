// obj_game_over_controller Create Event

// Create back button
goBack_button = instance_create_layer(room_width/2, 625, "UILayer", obj_start_button);
goBack_button.text = "Go Back";
goBack_button.button_type = "select_level";