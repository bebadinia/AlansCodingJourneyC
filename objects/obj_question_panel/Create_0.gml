// Add alpha variable for fading
image_alpha = 1;
fading = false;

//globalvar question_number;
randomize();
question_number = irandom_range(1, 2);  // Random number between 1 and 2


// Question data structure
// Tutorial Level
questions[0, 1] = // First encounter
[  
    "Which is the correct way to declare and initialize a variable called x with integer 10?",  // First variant
    "Which is the correct way to declare and initialize a variable called y with character 'b'?"  // Second variant
];
questions[0, 2] = // Second encounter
[  
    "Which is the correct way to declare and initialize a string called 'welcome' with the phrase \"Hello World\"?",  // First variant
    "Which is the correct way to declare and initialize a string called 'name' with the phrase \"Ben\"?"  // Second variant
];
questions[0, 3] = // Third encounter 
[  
    "Which is the correct way to print the message 'Hello World' to the screen?",  // First variant
    "Which is the correct way to print the number 5 to the screen?"  // Second variant
];


//C Level
questions[1, 1] = // First encounter
[  
    "Which is the correct way to declare and initialize a variable called x with integer 10?",  // First variant
    "Which is the correct way to declare and initialize a variable called y with character 'b'?"  // Second variant
];
questions[1, 2] = // Second encounter
[  
    "Which is the correct way to declare and initialize a string called 'welcome' with the phrase \"Hello World\"?",  // First variant
    "Which is the correct way to declare and initialize a string called 'name' with the phrase \"Ben\"?"  // Second variant
];
questions[1, 3] = // Third encounter 
[  
    "Which is the correct way to print the message 'Hello World' to the screen?",  // First variant
    "Which is the correct way to print the number '5' to the screen?"  // Second variant
];


//C++ Level
questions[2, 1] = // First encounter
[  
    "Which is the correct way to check if a number 'x' is between 1 and 10?",  // First variant
    "Which is the correct way to check if a number 'y' is less than 13 OR greater than 19?"  // Second variant
];
questions[2, 2] = // Second encounter
[  
    "C++ Encounter 2 Question 1",  // First variant
    "C++ Encounter 2 Question 2"  // Second variant
];
questions[2, 3] = // Third encounter 
[  
    "C++ Encounter 3 Question 1",  // First variant
    "C++ Encounter 3 Question 2" // Second variant
];


//Python Level
questions[3, 1] = // First encounter
[  
    "Which is the correct way to print numbers from 1 to 5 using a For-Loop in Python?",  // First variant
    "Which is the correct way to repeat an action 3 times using a For-Loop in Python?"  // Second variant
];
questions[3, 2] = // Second encounter
[  
    "Python Encounter 2 Question 1",  // First variant
    "Python Encounter 2 Question 2"  // Second variant
];
questions[3, 3] = // Third encounter 
[  
    "Python Encounter 3 Question 1",  // First variant
    "Python Encounter 3 Question 2" // Second variant
];


//Java Level
questions[4, 1] = // First encounter
[  
    "Which is the correct way to create a function that adds two numbers?",  // First variant
    "Which is the correct way to create a function that returns a String?"  // Second variant
];
questions[4, 2] = // Second encounter
[  
    "Java Encounter 2 Question 1",  // First variant
    "Java Encounter 2 Question 2"  // Second variant
];
questions[4, 3] = // Third encounter 
[  
    "Java Encounter 3 Question 1",  // First variant
    "Java Encounter 3 Question 2" // Second variant
];

question_text = questions[global.current_level, global.current_encounter][question_number - 1];

