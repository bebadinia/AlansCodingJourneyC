hspeed = 0;
vspeed = 0;
grav = 0.5;
jump_speed = -12;
move_speed = 5;

// Animation and direction control
facing = 1;           // 1 for right, -1 for left
sprite_idle = spr_alan_idle;    // Your idle sprite
sprite_run = spr_alan_moving; // Your running animation sprite
image_speed = 0;      // Start with animation stopped

// Ensure proper placement
depth = -100; // Makes sure Alan appears in front

// Fix size consistency
image_xscale = 1; // Or whatever scale you want
image_yscale = 1; // Keep it the same as xscale


invincible = false;
invincible_time = 120;  // How long invincibility lasts (120 frames = 2 seconds)
invincible_timer = 0;
flash = false;  // For visual feedback when invincible