// Create Event
title_y = 100;  // Adjust this value for height position

// Draw GUI Event
draw_set_font(fnt_title);  // Create and use a large font for the title
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, title_y, "Alan's Coding Journey");
draw_set_halign(fa_left);  // Reset alignment
draw_set_valign(fa_top);