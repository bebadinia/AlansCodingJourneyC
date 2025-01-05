// Draw Event
draw_self();

draw_set_color(c_white); 
draw_set_font(fnt_select);

switch(level_type)
{
	case 0:
		draw_text(x, y + (sprite_height/2) + 35, "Complete Tutorial");
		break;
	case 1:
		draw_text(x, y + (sprite_height/2) + 35, "Complete Fundamentals Level");
		break;
	case 2:
		draw_text(x, y + (sprite_height/2) + 35, "Complete Control Flows Level");
		break;
	case 3:
		draw_text(x, y + (sprite_height/2) + 35, "Complete Data Structures Level");
		break;
	case 4:
		draw_text(x, y + (sprite_height/2) + 35, "Complete Complex Concepts Level");
		break;
	case 5:
		draw_text(x, y + (sprite_height/2) + 35, "Complete All Levels");
		break;
}

if (!unlocked) 
{
	draw_set_alpha(1);
	draw_set_color(c_gray);
	image_speed = 0;
    draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_black, 1);
	
	draw_set_alpha(1);
    draw_text(x, y + (sprite_height/2) + 10 , "??????????");
	
	// Reset alpha and color after drawing this button
	draw_set_color(c_white);  
    
} 
else 
{
	draw_set_color(c_yellow); 
	draw_set_font(fnt_select);
	image_speed = 1;
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
    
	
	switch(level_type)
	{
		case 0:
			draw_text(x, y + (sprite_height/2) + 10, "Punch Card Pioneer");
			break;
		case 1:
			draw_text(x, y + (sprite_height/2) + 10, "Tape Master");
			break;
		case 2:
			draw_text(x, y + (sprite_height/2) + 10, "Floppy Expert");
			break;
		case 3:
			draw_text(x, y + (sprite_height/2) + 10, "CD Champion");
			break;
		case 4:
			draw_text(x, y + (sprite_height/2) + 10, "USB Virtuoso");
			break;
		case 5:
			draw_text(x, y + (sprite_height/2) + 10, "Storage Wizard");
			break;
	}
	
	draw_set_color(c_white);
	
}