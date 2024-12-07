hovering = false;
clicked = false;
expanded = false;

// Question data structure
//Tutorial Level
board[0, 1] = "Click Here for Tutorial Tips 1"; // First encounter 
board[0, 2] = "Click Here for Tutorial Tips 2"; // Second encounter 
board[0, 3] = "Click Here for Tutorial Tips 3"; // Third encounter 

//C Level
board[1, 1] = "Click Here for C Tips 1"; // First encounter 
board[1, 2] = "Click Here for C Tips 2"; // Second encounter 
board[1, 3] = "Click Here for C Tips 3"; // Third encounter 

//CPP Level
board[2, 1] = "Click Here for C++ Tips 1"; // First encounter 
board[2, 2] = "Click Here for C++ Tips 2"; // Second encounter 
board[2, 3] = "Click Here for C++ Tips 3"; // Third encounter

//Python Level
board[3, 1] = "Click Here for Python Tips 1"; // First encounter 
board[3, 2] = "Click Here for Python Tips 2"; // Second encounter 
board[3, 3] = "Click Here for Python Tips 3"; // Third encounter 

//Java Level
board[4, 1] = "Click Here for Java Tips 1"; // First encounter 
board[4, 2] = "Click Here for Java Tips 2"; // Second encounter 
board[4, 3] = "Click Here for Java Tips 3"; // Third encounter 

board_text = board[global.current_level, global.current_encounter];





