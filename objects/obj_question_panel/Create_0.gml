// Add alpha variable for fading
image_alpha = 1;
fading = false;


randomize();
variation = irandom_range(1, 3);  // Random number between 1 and 3


// Question data structure

//Level 1
// Level 1, Section 0: Introduction and Main
questions[0, 0] = 
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
questions[0, 1] = 
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
		"In order to read in and manipulate data, we need ___ to store values.", // First variant
		"Each statement in a C program should end with what?", // Second variant
		"Which statement is a complete assignment of an integer value to a variable called x?" // Third variant
	]
];

// Level 1, Section 2: Input and Operations
questions[0, 2] = 
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



question_text = questions[global.current_level, global.current_encounter][question_number - 1];

