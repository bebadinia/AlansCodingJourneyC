// Step Event of obj_enemy
if (global.can_move) 
{
	image_speed = 1;
    // Set movement direction
    hspeed = moving_right ? move_speed : -move_speed;
    
    // Boundary checking
    if (x + hspeed < sprite_half_width)
    {
        x = sprite_half_width;
        moving_right = true;
    }
    if (x + hspeed > room_width - sprite_half_width)
    {
        x = room_width - sprite_half_width;
        moving_right = false;
    }
    
    // Apply movement
    x += hspeed;
    
    // Check collision with Alan
    var collision = instance_place(x, y, obj_alan);
    if (collision != noone && !collision.invincible)
	{
        // If Alan is above the enemy (jumping on head)
        if (collision.y < y - sprite_height/2) 
		{
            // Destroy enemy
            instance_destroy();
        } 
		
    }
}

else 
{
	image_speed = 0;
    // Stop all movement
    //move_speed = 0;
}
