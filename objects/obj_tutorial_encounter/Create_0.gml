//Create Event for obj_tutorial_encounter
global.can_move = false;
tutorial_question = true;

panel = instance_create_layer(640, 75, "UILayer", obj_tutorial_panel);
panel.tutorial_stage = 5;
//panel.text_current = 9;