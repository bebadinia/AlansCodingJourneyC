// obj_level_select_controller Create Event

// Create back button
backButton = instance_create_layer(64, 64, "UILayer", obj_back_button);
backButton.backButton_type = "level";


//Create Top Left button
tutorialButton = instance_create_layer(260, 250, "UILayer", obj_level_button);
tutorialButton.level_type = 0;
tutorialButton.sprite_index = spr_tutorial_btn;
tutorialButton.unlocked = (global.highest_level - 1) >= 0;

//Create Bottom Left button
thirdLevelButton = instance_create_layer(260, 550, "UILayer", obj_level_button);
thirdLevelButton.level_type = 3;
thirdLevelButton.sprite_index = spr_data_btn;
thirdLevelButton.unlocked = (global.highest_level >= 3);



//Create Top Middle Level button
secondLevelButton = instance_create_layer(640, 250, "UILayer", obj_level_button);
secondLevelButton.level_type = 2;
secondLevelButton.sprite_index = spr_control_btn;
secondLevelButton.unlocked = ((global.highest_level - 1) >= 2);

//Create Bottom Middle Level button
secondLevelButton = instance_create_layer(640, 550, "UILayer", obj_level_button);
secondLevelButton.level_type = 2;
secondLevelButton.sprite_index = spr_control_btn;
secondLevelButton.unlocked = (global.highest_level >= 2);





//Create Top Right Level button
fourthLevelButton = instance_create_layer(1020, 250, "UILayer", obj_level_button);
fourthLevelButton.level_type = 4;
fourthLevelButton.sprite_index = spr_complex_btn;
fourthLevelButton.unlocked = (global.highest_level >= 4);

//Create Bottom Right Level button
fourthLevelButton = instance_create_layer(1020, 550, "UILayer", obj_level_button);
fourthLevelButton.level_type = 4;
fourthLevelButton.sprite_index = spr_complex_btn;
fourthLevelButton.unlocked = (global.highest_level >= 4);








