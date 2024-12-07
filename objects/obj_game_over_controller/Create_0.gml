// obj_game_over_controller Create Event

// Create back button
goBackButton = instance_create_layer(room_width/2, 625, "UILayer", obj_start_button);
goBackButton.image_xscale = 1.152381;
goBackButton.image_yscale = 1.316832;
goBackButton.text = "Go Back";
goBackButton.button_type = "select_level";