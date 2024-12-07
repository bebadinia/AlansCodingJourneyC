// obj_level_select_controller Create Event

// Create back button
backButton = instance_create_layer(64, 64, "UILayer", obj_back_button);
backButton.backButton_type = "start";


//Create Tutorial button
tutorialButton = instance_create_layer(260, 310, "UILayer", obj_level_button);
tutorialButton.level_type = 0;
tutorialButton.sprite_index = spr_tutorial_btn;
tutorialButton.unlocked = true;
tutorialButton.selected = true;

//Create C button
cButton = instance_create_layer(450, 310, "UILayer", obj_level_button);
cButton.level_type = 1;
cButton.sprite_index = spr_c_btn;
cButton.unlocked = (global.highest_level >= 1);


//Create C++ button
cppButton = instance_create_layer(640, 310, "UILayer", obj_level_button);
cppButton.level_type = 2;
cppButton.sprite_index = spr_cpp_btn;
cppButton.unlocked = (global.highest_level >= 2);


//Create Python button
pythonButton = instance_create_layer(830, 310, "UILayer", obj_level_button);
pythonButton.level_type = 3;
pythonButton.sprite_index = spr_python_btn;
pythonButton.unlocked = (global.highest_level >= 3);


//Create Java button
javaButton = instance_create_layer(1020, 310, "UILayer", obj_level_button);
javaButton.level_type = 4;
javaButton.sprite_index = spr_java_btn;
javaButton.unlocked = (global.highest_level >= 4);


// Create play button
playButton = instance_create_layer(room_width/2, room_height - 100, "UILayer", obj_level_play_button);
playButton.image_xscale = 1.152381;
playButton.image_yscale = 1.316832;
playButton.text = "Play";








