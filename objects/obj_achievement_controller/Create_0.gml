// obj_level_achievement_controller Create Event

// Create back button
backButton = instance_create_layer(64, 64, "UILayer", obj_back_button);
backButton.backButton_type = "level";

//Create Top Left Trophy
firstTrophy = instance_create_layer(260, 250, "UILayer", obj_achievement_trophy);
firstTrophy.level_type = 0;
firstTrophy.sprite_index = spr_punch_card;
firstTrophy.unlocked = (global.highest_level - 1) >= 0;

//Create Top Middle Level Trophy
secondTrophy = instance_create_layer(640, 250, "UILayer", obj_achievement_trophy);
secondTrophy.level_type = 1;
secondTrophy.sprite_index = spr_tape_drive;
secondTrophy.unlocked = ((global.highest_level - 1) >= 1); //true;

//Create Top Right Level Trophy
thirdTrophy = instance_create_layer(1020, 250, "UILayer", obj_achievement_trophy);
thirdTrophy.level_type = 2;
thirdTrophy.sprite_index = spr_floppy_disk;
thirdTrophy.unlocked = ((global.highest_level - 1) >= 2); //true;

//Create Bottom Left Trophy
fourthTrophy = instance_create_layer(260, 550, "UILayer", obj_achievement_trophy);
fourthTrophy.level_type = 3;
fourthTrophy.sprite_index = spr_cd_disk;
fourthTrophy.unlocked = ((global.highest_level - 1) >= 3); //true;

//Create Bottom Middle Level Trophy
fifthTrophy = instance_create_layer(640, 550, "UILayer", obj_achievement_trophy);
fifthTrophy.level_type = 4;
fifthTrophy.sprite_index = spr_usb_drive;
fifthTrophy.unlocked = ((global.highest_level >= 4) && (global.game_complete == true)); //true;

//Create Bottom Right Level Trophy
sixthTrophy = instance_create_layer(1020, 550, "UILayer", obj_achievement_trophy);
sixthTrophy.level_type = 5;
sixthTrophy.sprite_index = spr_wizard;
sixthTrophy.unlocked = ((global.highest_level >= 4) && (global.game_complete == true)); //true;








