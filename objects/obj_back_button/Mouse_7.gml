image_alpha = 0.5;

if (hovering && clicked)
{
	clicked = false;
	
	switch(backButton_type)
	{
		case "start":
			room_goto(rm_start);
			break;
		case "close_detail":
			instance_destroy(obj_dark_overlay);
			instance_destroy(obj_detail_panel);
			instance_destroy();
		    break;
		case "close_tutorial":
			instance_destroy(obj_dark_overlay);
			instance_destroy(obj_detail_tutorial);
			instance_destroy();
		    break;
		case "level":
			room_goto(rm_level_select);
			break;
	}
}
else
{
	clicked = false;
}
