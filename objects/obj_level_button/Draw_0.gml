// Draw Event
draw_self();

// Draw the border circle first
if (!unlocked) 
{
    draw_set_color(c_gray);
} 
else if (selected) 
{
    draw_set_color(c_red);
} 
else 
{
    draw_set_color(c_white);
}

// Draw filled circle slightly larger than the sprite
draw_circle(x - 1, y, sprite_width/2 + 7, false);

if (!unlocked) 
{
	draw_set_alpha(0.7);
	draw_set_color(c_gray);
    draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_gray, 1);
	
	draw_set_alpha(1);
    draw_text(x, y + 100 , "Locked");
	
	// Reset alpha and color after drawing this button
	draw_set_color(c_white);  
    
} 
else 
{
	draw_set_color(c_white); 
	
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
    
	
	switch(level_type)
	{
		case 0:
			draw_text(x, y + 100, "Tutorial");
			break;
		case 1:
			draw_text(x, y + 100, "C");
			break;
		case 2:
			draw_text(x, y + 100, "C++");
			break;
		case 3:
			draw_text(x, y + 100, "Python");
			break;
		case 4:
			draw_text(x, y + 100, "Java");
			break;
	}
	
	draw_set_color(c_white);
	
}