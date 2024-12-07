// Create three buttons using your existing button object
button1 = instance_create_layer(room_width/2 - 200, 625, "UILayer", obj_start_button);
button1.image_xscale = 1.152381;
button1.image_yscale = 1.316832;
button1.text = "Start";
button1.button_type = "select_level";

button2 = instance_create_layer(room_width/2 + 200, 625, "UILayer", obj_start_button);
button2.image_xscale = 1.152381;
button2.image_yscale = 1.316832;
button2.text = "Settings";
button2.button_type = "settings";
