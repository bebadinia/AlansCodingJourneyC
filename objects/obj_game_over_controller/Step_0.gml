if (alan_death.animation_stage >= 2) 
{
    if (text_alpha < 1) 
	{
        text_alpha += 0.01;  // Adjust speed as needed
    }
}

// Start fading buttons after show_buttons is true
if (show_buttons)
{
    if (button_alpha < 1) 
	{
        button_alpha += 0.001;  // Adjust speed as needed
		goBackButton.image_alpha += button_alpha;
		if (!goBackButton.visible) goBackButton.visible = true;
    }
}