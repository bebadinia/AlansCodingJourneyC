// Draw Event of obj_dark_overlay
draw_set_color(c_black);
draw_set_alpha(image_alpha);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);  // Reset alpha