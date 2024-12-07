// obj_game_over_controller Create Event
alan_death = instance_create_layer(room_width/2, 0, "UILayer", obj_dying_alan);


text_alpha = 0;  // Start fully transparent
button_alpha = 0;

// Wait until animation is done to show button
show_buttons = false;
alarm[0] = 240;  // 6 seconds

// Create back button
goBackButton = instance_create_layer(room_width/2, 625, "UILayer", obj_start_button);
goBackButton.image_xscale = 1.152381;
goBackButton.image_yscale = 1.316832;
goBackButton.text = "Go Back";
goBackButton.button_type = "select_level";
goBackButton.image_alpha = 0;
goBackButton.visible = false;



