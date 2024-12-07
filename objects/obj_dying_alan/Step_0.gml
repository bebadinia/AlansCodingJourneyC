timer++;

switch(animation_stage) 
{
    case 0:  // Initial fall
        if (timer > 120) 
		{  
            animation_stage = 1;
            timer = 0;
        }
        y += 4;  // Slowly fall
        break;
        
    case 1:  // Flash
		image_xscale = 1.5;  // Scale if needed
		image_yscale = 1.5;
        if (timer mod 20 < 10) 
		{  // Flash every few frames
            sprite_index = spr_alan_idle;
        } 
		else 
		{
            sprite_index = spr_reverse_idle
        }
        
        if (timer > 120) 
		{  // After 2 second of flashing
			sprite_index = spr_reverse_idle
            animation_stage = 2;
            timer = 0;
        }
        break;
        
    case 2:  // Final Stay
        animation_stage = 3;
        break;
}