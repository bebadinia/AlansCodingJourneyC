hovering = false;
clicked = false;
expanded = false;

// Question data structure
//Tutorial Level
board[0, 0] = "Click Here for Tutorial Tips 1"; // First section 
board[0, 1] = "Click Here for Tutorial Tips 2"; // Second section 
board[0, 2] = "Click Here for Tutorial Tips 3"; // Third section 

//First Level
board[1, 0] = "Click Here for C Tips: Introduction and Main"; // First section 
board[1, 1] = "Click Here for C Tips: Variables and Expressions"; // Second section 
board[1, 2] = "Click Here for C Tips: Input and Operations"; // Third section 

//Second Level
board[2, 0] = "Click Here for C Tips: Conditionals"; // First section 
board[2, 1] = "Click Here for C Tips: Functions"; // Second section 
board[2, 2] = "Click Here for C Tips: Loops"; // Third section

//Third Level
board[3, 0] = "Click Here for C Tips: Arrays"; // First section 
board[3, 1] = "Click Here for C Tips: Strings - Character Arrays"; // Second section 
board[3, 2] = "Click Here for C Tips: Addresses and Pointers"; // Third section 

//Fourth Level
board[4, 0] = "Click Here for C Tips: Enumerate and Structures"; // First section 
board[4, 1] = "Click Here for C Tips: File Input and Output"; // Second section 
board[4, 2] = "Click Here for C Tips: Object-Oriented Programming"; // Third section 

board_text = board[global.current_level, global.current_section];





