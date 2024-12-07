// Create three buttons using your existing button object
newGameButton = instance_create_layer(room_width/2 - 200, 625, "UILayer", obj_start_button);
newGameButton.image_xscale = 1.152381;
newGameButton.image_yscale = 1.316832;
newGameButton.text = "New Game";
newGameButton.button_type = "new_game";

loadGameButton = instance_create_layer(room_width/2 + 200, 625, "UILayer", obj_start_button);
loadGameButton.image_xscale = 1.152381;
loadGameButton.image_yscale = 1.316832;
loadGameButton.text = "Load Game";
loadGameButton.button_type = "load_game";
// Only enable load button if save file exists
loadGameButton.enabled = file_exists("savedata.sav");