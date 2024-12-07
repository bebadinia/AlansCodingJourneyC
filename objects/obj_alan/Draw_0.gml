// Draw Event of obj_alan
if (invincible && flash) 
{
    // Draw semi-transparent when invincible and flashing
    draw_sprite_ext(sprite_index, image_index, x, y, 
        image_xscale, image_yscale, image_angle, c_white, 0.5);
}
else 
{
    // Normal draw
    draw_self();
}