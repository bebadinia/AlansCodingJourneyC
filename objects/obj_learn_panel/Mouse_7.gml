if (hovering && clicked)
{
	if (!expanded)
	{
		clicked = false;
		// Create dark overlay first (so it's behind the detail panel)
		instance_create_layer(0, 0, "UILayer", obj_dark_overlay);
		
		extendedView = instance_create_layer(room_width/2, room_height/2, "UILayer", obj_detail_panel);
		extendedView.image_yscale = 4.5;
		
		backButton = instance_create_layer(1190, 80, "UILayer", obj_back_button);
		backButton.backButton_type = "close_detail";
		
		expanded = true;
		
		visible = false;
		global.can_move = false;
		
	}
	else
	{
		expanded = false;
		visible = true;
		global.can_move = true;
	}

}
else
{
	clicked = false;
	
}