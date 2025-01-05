if(!instance_exists(panel) && tutorial_question)
{
	encounter = instance_create_layer(640, 75, "UILayer", obj_encounter_controller);
	tutorial_question = false;
}