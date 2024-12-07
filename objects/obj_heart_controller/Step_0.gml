// Step Event
if (current_hearts <= 0) 
{
    // Game Over
    room_goto(rm_start);
    current_hearts = max_hearts;  // Only reset hearts on game over
}

if(flash_hearts)
{
    flash_timer++;
    if(flash_timer > 30) 
	{  // Half second flash
        flash_hearts = false;
        flash_timer = 0;
    }
}