// obj_level_select_controller Create Event

// Create back button
backButton = instance_create_layer(64, 64, "UILayer", obj_back_button);
backButton.backButton_type = "start";

// Create back button
trophyButton = instance_create_layer(1120, 32, "UILayer", obj_trophy_button);


//Create Tutorial button
tutorialButton = instance_create_layer(260, 310, "UILayer", obj_level_button);
tutorialButton.level_type = 0;
tutorialButton.sprite_index = spr_tutorial_btn;
tutorialButton.unlocked = true;
tutorialButton.selected = true;

//Create First Level button
firstLevelButton = instance_create_layer(450, 310, "UILayer", obj_level_button);
firstLevelButton.level_type = 1;
firstLevelButton.sprite_index = spr_fundamental_btn;
firstLevelButton.unlocked = (global.highest_level >= 1);
//firstLevelButton.selected = true;


//Create Second Level button
secondLevelButton = instance_create_layer(640, 310, "UILayer", obj_level_button);
secondLevelButton.level_type = 2;
secondLevelButton.sprite_index = spr_control_btn;
secondLevelButton.unlocked = (global.highest_level >= 2);


//Create Third Level button
thirdLevelButton = instance_create_layer(830, 310, "UILayer", obj_level_button);
thirdLevelButton.level_type = 3;
thirdLevelButton.sprite_index = spr_data_btn;
thirdLevelButton.unlocked = (global.highest_level >= 3);


//Create Fourth Level button
fourthLevelButton = instance_create_layer(1020, 310, "UILayer", obj_level_button);
fourthLevelButton.level_type = 4;
fourthLevelButton.sprite_index = spr_complex_btn;
fourthLevelButton.unlocked = (global.highest_level >= 4);


// Create play button
playButton = instance_create_layer(room_width/2, room_height - 100, "UILayer", obj_level_play_button);
playButton.image_xscale = 1.152381;
playButton.image_yscale = 1.316832;
playButton.text = "Play";