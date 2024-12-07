if (hovering && clicked)
{
	clicked = false;
	
	if (unlocked)
	{
		// Deselect all other buttons first
		with (obj_level_button) 
		{
			selected = false;
		}
    
		// Select this button
		selected = true;
	}

}
else
{
	clicked = false;
}