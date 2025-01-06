hovering = false;
clicked = false;
expanded = false;

show_debug_message("Depth: " + string(depth));


tutorial_stage = 0;  // Track which message to show

has_moved_right = false;   // Track if player has moved right
has_moved_left = false;   // Track if player has moved left
has_jumped = false;  // Track if player has jumped


depth = -100;
// Tutorial Stage 0 (Click)
text[0] = "Welcome to the world of coding! \n(Click to continue)";
text[1] = "Your name is Alan.\n You have been created to save our world from destruction. \n(Click to continue)";
text[2] = "A dangerous bug invasion threatens to corrupt all programming knowledge.\n(Click to continue)";
text[3] = "To stop this, you must master the art of coding to defeat these bugs and save the digital world from collapse! \n(Click to continue)";

// Tutorial Stage 1 (Click)
text[4] = "Let's get you moving! \nUse the RIGHT ARROW KEY to move Alan to the right throughout this screen.\n";
text[5] = "Now, use the LEFT ARROW KEY to move Alan left.\n";
text[6] = "Now press the SPACE BAR to jump. This will be how to defeat the bugs later on!";

// Tutorial Stage 2 (Click)
text[7] = "Amazing! \nNow on to what you will need to know to defeat the bugs.\nClick me now.";

// Tutorial Stage 3 (Click)
text[8] = "Now lets clear some bugs! \nMove all the way to the right of the screen to go the next room.";

// Tutorial Stage 5 (Battle)
text[9] = "This is where you encounter the questions and the bugs.\n(Click to continue)";
text[10] = "There are 2 phases with each encounter that you will need to complete so that you can save the world. \n(Click to continue)";
text[11] = "In the first phase, you will be shown a question and have to select the best option from 3 answer choices. Each level will have multiple questions based on the section/chapter. \n(Click to continue)";
text[12] = "You can not continue until you answer each question correctly. \nHint: The questions change every time so read them carefully! \n(Click to continue)";
text[13] = "<----------- These are your hearts.\n Everytime that you answer a questions incorrectly, you will lose a heart.\n However, you can gain your heart back if you answer it correctly. \n(Click to continue)";
text[14] = "Once you answer correctly, you will you will be able to move.\nThe bug in the bottom right of the screen will also move. \n(Click to continue)";
text[15] = "Your mission is to stomp the bugs by jumping on them. However, the bug can take a heart away if it hits you. \nTip: You also get 2 seconds of invincibility once hit \n(Click to continue)";
text[16] = "At any time if you have 0 hearts, you will have be redirected to the level selection screen where you will have to redo the level. \n(Click to continue)";
text[17] = "If you answer the questions and defeat the enemy, move right to continue. Let's test this now by seeing if you were paying attention! \n(Click to continue)";


text_current = 0;
text_last = 1;
text_width = 900;


char_current = 1;
char_speed = 0.50;

//board_text = board[0, 0];

text[text_current] = string_wrap(text[text_current], text_width);



