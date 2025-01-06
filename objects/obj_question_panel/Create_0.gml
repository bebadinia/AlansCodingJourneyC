// Add alpha variable for fading
image_alpha = 1;
fading = false;


randomize();
variation = irandom_range(1, 3);  // Random number between 1 and 3
//variation = 3; //Testing each variation

// Question data structure

// Tutorial Question
questions[0, 0] = "What is your name?\n (Hint: It is the name of the game!)";

//Level 1
// Level 1, Section 0: Introduction and Main
questions[1, 0] = 
[  
	[	// First Question
		"How many bytes are in a KB?", // First variant
		"How many bytes are in a MB?", // Second variant
		"How many bytes are in a GB?" // Third variant
	],
	[	// Second Question
		"What part of a computer manipulates and stores data?", // First variant
		"What part of a computer processes data?", // Second variant
		"What part of a computer receives input?" // Third variant
	],
	[	// Third Question
		"The third phase of software engineering that we are focusing on is _______.", // First variant
		"The physical parts of the computer are called _______.", // Second variant
		"What type of language is C?" // Third variant
	],
	[	// Fourth Question
		"How many bits are in a byte?", // First variant
		"When running, every C program has and starts executing at the _______.", // Second variant
		"What part of a computer presents output?" // Third variant
	]
];

// Level 1, Section 1: Variables and Expressions
questions[1, 1] = 
[  
	[	// First Question
		"In C, the syntax to declare an integer variable called x is", // First variant
		"In C, the syntax to declare a decimal variable called num is", // Second variant
		"In C, the syntax to declare a character variable called c is" // Third variant
	],
	[	// Second Question
		"Which header file should be included to get access to input and output functions?", // First variant
		"Which is the C command to show text on the screen/monitor?", // Second variant
		"What place holder in a format string will print out a double/decimal value?" // Third variant
	],
	[	// Third Question
		"In order to read in and manipulate data, we need _______ to store values.", // First variant
		"Each statement in a C program should end with what?", // Second variant
		"Which statement is a complete assignment of an integer value to a variable called x?" // Third variant
	]
];

// Level 1, Section 2: Input and Operations
questions[1, 2] = 
[  
	[	// First Question
		"In programming, what is the highest order of operations?", // First variant
		"In programming, what is the lowest order of operations?", // Second variant
		"What does this expression evaluate to? \n 4 * 3 / 6 - 5 % 3 + 1" // Third variant
	],
	[	// Second Question
		"Which line reads an integer into a variable?", // First variant
		"Fill in the blank to read a decimal number into a variable: scanf(\"&__\",&number);", // Second variant
		"The scanf command reads up to the _______." // Third variant
	],
	[	// Third Question
		"In programming, what side of an assignment is evaluated first?", // First variant
		"What is one acronym for programming order of operations?", // Second variant
		"In a C expression, what is %?" // Third variant
	]
];


//Level 2
// Level 2, Section 0: Conditionals
questions[2, 0] = 
[  
	[	// First Question
		"Which is the C symbol for logical 'and'?", // First variant
		"Which is the C symbol for logical 'not'?", // Second variant
		"Which is the C symbol for logical 'or'?" // Third variant
	],
	[	// Second Question
		"Which numerical value is considered 'true'?", // First variant
		"Which numerical value is considered 'false'?", // Second variant
		"Which is NOT a conditional statement?" // Third variant
	],
	[	// Third Question
		"A switch function can have _______ case values.", // First variant
		"The expression at the start of a switch statement must evaluate to an integer or a _______.", // Second variant
		"What are the multiple statements of code to be run in a conditional contained in?" // Third variant
	]
];

// Level 2, Section 1: Functions
questions[2, 1] = 
[  
	[	// First Question
		"How many values can be returned from a function?", // First variant
		"How many variables can a function take in?", // Second variant
		"A _______ is a set of lines of code that can be called to be executed from another location in a program and may have inputs and an output." // Third variant
	],
	[	// Second Question
		"Typically, in C, functions that you will write should be _______ unless you use prototypes.", // First variant
		"A function that starts out with \"int addition (int a, int b, int c)\" will take in how many values?", // Second variant
		"A function that starts with \"double squareRoot (double x, double y)\" is called a what type function?" // Third variant
	]
];

// Level 2, Section 2: Loops
questions[2, 2] = 
[  
	[	// First Question
		"When are loops used?", // First variant
		"Which is NOT a loop in the C language?", // Second variant
		"In a loop, the code will execute as long as the condition is _______." // Third variant
	],
	[	// Second Question
		"If code in a loop will be executed at least one time, then a _______ loop may be more appropriate.", // First variant
		"Which is the fundamental loop for most programming languages?", // Second variant
		"Which type of loop is often used to walk through each element of an array?" // Third variant
	],
	[	// Third Question
		"Assuming \"int n=1;\" is already declared, which loop will run exactly 10 times?", // First variant
		"When do loop (and if-else) statements need '{' and '}'?", // Second variant
		"What are the three things in the start of a for-loop?\n for (____; ____; ____)" // Third variant
	]
];


//Level 3
// Level 3, Section 0: Arrays
questions[3, 0] = 
[  
	[	// First Question
		"How many dimensions is this array?\n char multiDim[5][10][2][20];", // First variant
		"What is the index of the first position in an array?", // Second variant
		"How many characters can be stored in this array?\n char multiDim[5][10][2][20];" // Third variant
	],
	[	// Second Question
		"Which type of loop is usually used to walk through each element of an array?", // First variant
		"What symbols go in this array declaration?\n double anArray__30__;", // Second variant
		"Fill in the blank in the following line of code creating an array:\n int anArray [____] = {val1, val2, val3};" // Third variant
	],
	[	// Third Question
		"Fill in the blank in the following line of code creating an array:\n ____ arrayName [2] = {'F', 'T'};", // First variant
		"Which is the correct way to create an array of floating-point values of length 50?", // Second variant
		"What is the correct way to declare an integer array with 7 values?" // Third variant
	]
];

// Level 3, Section 1: Strings
questions[3, 1] = 
[  
	[	// First Question
		"Which symbol is used for the end of a string for printing, also called the null character?", // First variant
		"A character array in C can be treated as a _______ or set of words.", // Second variant
		"Which of the following is a string value in C?" // Third variant
	],
	[	// Second Question
		"A constant string value has _______ around it.", // First variant
		"What is the name of header file to give access to string functions?", // Second variant
		"Which command is used to compare strings?" // Third variant
	],
	[	// Third Question
		"Which command returns the length of a string?", // First variant
		"Which command is used to append two strings together?", // Second variant
		"Which command copies the value of one string to another string?" // Third variant
	],
	[	// Fourth Question
		"Which command copies a substring into another string?", // First variant
		"What value is returned by strlen for: \n char astring[30] = \"programming\";\n strlen (astring);", // Second variant
		"What value does strcmp return if the two string values are the same?" // Third variant
	]
];

// Level 3, Section 2: Addresses/Pointers
questions[3, 2] = 
[  
	[	// First Question
		"Fill in the blank for this pointer declaration:\n int ___ptrNum;", // First variant
		"Which symbol is used in front of a variable name to mean the address of the variable?", // Second variant
		"The left-hand side of any assignment statement in C must be a _______." // Third variant
	]
];


//Level 4
// Level 4, Section 0: Enumerate and Structures
questions[4, 0] = 
[  
	[	// First Question
		"Which declaration command can be used to create words as values?", // First variant
		"What operator is used to access fields in a structure?", // Second variant
		"What variable type allows multiple type values in it?" // Third variant
	],
	[	// Second Question
		"In an enum, the values behind the words are integers.", // First variant
		"Enum values cannot be used in case values in switch statements.", // Second variant
		"You can create arrays of structures." // Third variant
	]
];

// Level 4, Section 1: File Input and Output
questions[4, 1] = 
[  
	[	// First Question
		"Which command is used to open a file?", // First variant
		"For every fopen command in a program, there should be an _______ command?", // Second variant
		"Which command writes text to a file?" // Third variant
	],
	[	// Second Question
		"Which command reads lines of text from a file?", // First variant
		"Select the code that declares a pointer to a file?", // Second variant
		"To find a location of file with its path, in every place there is a \, we need to change it to ____." // Third variant
	]
];

// Level 4, Section 2: Object Oriented Programming
questions[4, 2] = 
[  
	[	// First Question
		"What are the 4 methods in OOP?", // First variant
		"What is an Object in OOP?", // Second variant
		"What is not an advantage of OOP?" // Third variant
	]
];


// Set up questions
if(current_level != 0)
{
	question_text = questions[global.current_level, global.current_section][global.question_in_section][variation - 1];
}
else
{
	question_text = questions[0, 0];
}