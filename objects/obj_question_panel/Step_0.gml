if (fading)
{
    image_alpha -= 0.05;  // Adjust speed as needed
    if (image_alpha <= 0) 
	{
        instance_destroy();
    }
}