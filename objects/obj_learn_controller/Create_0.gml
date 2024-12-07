global.can_move = true;

// Create question panel first (using your existing question panel object)
panel = instance_create_layer(640, 75, "UILayer", obj_learn_panel);


/*switch(room_get_name(room)) 
{
    case "rm_python_learn":
        info_text = "Python - Encounter " + string(global.current_encounter) + "/3\n";
        // Add specific info for each encounter
        switch(global.current_encounter) 
		{
            case 1:
                info_text += "First encounter info...";
				show_debug_message(info_text);
                break;
            case 2:
                info_text += "Second encounter info...";
				show_debug_message(info_text);
                break;
            case 3:
                info_text += "Final encounter info...";
				show_debug_message(info_text);
                break;
        }
        break;
    // Add cases for other levels
	
	
}*/