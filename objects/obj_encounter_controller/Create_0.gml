// Create Event of obj_button_controller
//globalvar can_move;
global.can_move = false;


// Create question panel first (using your existing question panel object)
question = instance_create_layer(640, 75, "UILayer", obj_question_panel);

if(current_level != 0)
{
	global.number_of_questions = array_length(obj_question_panel.questions[global.current_level, global.current_section]); //Set number of questions for each section
}
else
{
	global.number_of_questions = 1;
}
show_debug_message("Number of questions: " + string(global.number_of_questions));

// Create three buttons using your existing button object
button1 = instance_create_layer(185, 306, "UILayer", obj_answer_button);
button1.image_xscale = 1.5; //1.152381
button1.image_yscale = 1.5; //1.316832

button2 = instance_create_layer(640, 306, "UILayer", obj_answer_button);
button2.image_xscale = 1.5;
button2.image_yscale = 1.5;

button3 = instance_create_layer(1095, 306, "UILayer", obj_answer_button);
button3.image_xscale = 1.5;
button3.image_yscale = 1.5;


// Arrays to store all answers

//Tutorial Question
answers[0, 0] = 
[ 
			["BEN", false], // First Answer Choice
			["ALAN", true], // Second Answer Choice
			["CAROL", false] // Third Answer Choice
];

//Level 1
// Level 1, Section 0: Introduction and Main
answers[1, 0] = 
[ 
	//First Question
	[
	    [	// Answers for First variant
			["1,000 bytes", true], // First Answer Choice
			["1,000,000 bytes", false], // Second Answer Choice
			["1,000,000,000 bytes", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["1,000 bytes", false], // First Answer Choice
			["1,000,000 bytes", true], // Second Answer Choice
			["1,000,000,000 bytes", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["1,000 bytes", false], // First Answer Choice
			["1,000,000 bytes", false], // Second Answer Choice
			["1,000,000,000 bytes", true] // Third Answer Choice
		]
	],
	//Second Question
	[
	    [	// Answers for First variant
			["Hard Drive", true], // First Answer Choice
			["CPU", false], // Second Answer Choice
			["Keyboard", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["Hard Drive", false], // First Answer Choice
			["CPU", true], // Second Answer Choice
			["Keyboard", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["Hard Drive", false], // First Answer Choice
			["CPU", false], // Second Answer Choice
			["Keyboard", true] // Third Answer Choice
		]
	],
	//Third Question
	[
	    [	// Answers for First variant
			["Coding", true], // First Answer Choice
			["Analyzing", false], // Second Answer Choice
			["Designing", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["Software", false], // First Answer Choice
			["Hardware", true], // Second Answer Choice
			["Computer Parts", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["Beginner ", false], // First Answer Choice
			["Case-Insensitive", false], // Second Answer Choice
			["Case-Sensitive", true] // Third Answer Choice
		]
	],
	//Fourth Question
	[
	    [	// Answers for First variant
			["8 bits", true], // First Answer Choice
			["2 bits", false], // Second Answer Choice
			["1 bit", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["First Include", false], // First Answer Choice
			["Main Function", true], // Second Answer Choice
			["First Comment", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["CPU", false], // First Answer Choice
			["Mouse", false], // Second Answer Choice
			["Monitor", true] // Third Answer Choice
		]
	]
];

// Level 1, Section 1:  Variables and Expressions
answers[1, 1] = 
[ 
	//First Question
	[
	    [	// Answers for First variant
			["int x;", true], // First Answer Choice
			["num x;", false], // Second Answer Choice
			["var x;", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["int num;", false], // First Answer Choice
			["double num;", true], // Second Answer Choice
			["decimal num;", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["letter c;", false], // First Answer Choice
			["character c;", false], // Second Answer Choice
			["char c;", true] // Third Answer Choice
		]
	],
	//Second Question
	[
	    [	// Answers for First variant
			["stdio.h", true], // First Answer Choice
			["math.h", false], // Second Answer Choice
			["memory.h", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["print", false], // First Answer Choice
			["printf", true], // Second Answer Choice
			["cout", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["%d", false], // First Answer Choice
			["%i", false], // Second Answer Choice
			["%lf", true] // Third Answer Choice
		]
	],
	//Third Question
	[
	    [	// Answers for First variant
			["variables", true], // First Answer Choice
			["numbers", false], // Second Answer Choice
			["words", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["Period (.)", false], // First Answer Choice
			["Semicolon (;)", true], // Second Answer Choice
			["Colon (:)", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["x = 100.1;", false], // First Answer Choice
			["x = \'100\';", false], // Second Answer Choice
			["x = 100;", true] // Third Answer Choice
		]
	]
];

// Level 1, Section 2:  Input and Operations
answers[1, 2] = 
[ 
	//First Question
	[
	    [	// Answers for First variant
			["Groupings", true], // First Answer Choice
			["Addition and Subtraction", false], // Second Answer Choice
			["Powers and Functions", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["Groupings", false], // First Answer Choice
			["Addition and Subtraction", true], // Second Answer Choice
			["Powers and Functions", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["5", false], // First Answer Choice
			["0", false], // Second Answer Choice
			["1", true] // Third Answer Choice
		]
	],
	//Second Question
	[
	    [	// Answers for First variant
			["scanf(\"%d\", &i);", true], // First Answer Choice
			["scanf(\"%lf\", &num);", false], // Second Answer Choice
			["scanf(\"%c\", &letter);", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["int", false], // First Answer Choice
			["lf", true], // Second Answer Choice
			["d", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["End of the Sentence", false], // First Answer Choice
			["First Semicolon", false], // Second Answer Choice
			["First White Space", true] // Third Answer Choice
		]
	],
	//Third Question
	[
	    [	// Answers for First variant
			["Right", true], // First Answer Choice
			["Left", false], // Second Answer Choice
			["Middle", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["MEGS", false], // First Answer Choice
			["GEMS", true], // Second Answer Choice
			["SDLC", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["Division", false], // First Answer Choice
			["Multiplication", false], // Second Answer Choice
			["Modulus", true] // Third Answer Choice
		]
	]
];


//Level 2
// Level 2, Section 0: Conditionals
answers[2, 0] = 
[ 
	//First Question
	[
	    [	// Answers for First variant
			["&&", true], // First Answer Choice
			["!", false], // Second Answer Choice
			["||", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["&&", false], // First Answer Choice
			["!", true], // Second Answer Choice
			["||", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["&&", false], // First Answer Choice
			["!", false], // Second Answer Choice
			["||", true] // Third Answer Choice
		]
	],
	//Second Question
	[
	    [	// Answers for First variant
			["1", true], // First Answer Choice
			["0", false], // Second Answer Choice
			["-1", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["1", false], // First Answer Choice
			["0", true], // Second Answer Choice
			["-1", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["if-else", false], // First Answer Choice
			["switch", false], // Second Answer Choice
			["printf", true] // Third Answer Choice
		]
	],
	//Third Question
	[
	    [	// Answers for First variant
			["Multiple", true], // First Answer Choice
			["One", false], // Second Answer Choice
			["None", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["double", false], // First Answer Choice
			["character", true], // Second Answer Choice
			["float", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["// (Double Slashes)", false], // First Answer Choice
			["() (Parenthesis)", false], // Second Answer Choice
			["{} (Curly Braces)", true] // Third Answer Choice
		]
	]
];

// Level 2, Section 1: Functions
answers[2, 1] = 
[ 
	//First Question
	[
	    [	// Answers for First variant
			["One", true], // First Answer Choice
			["Many", false], // Second Answer Choice
			["None", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["One", false], // First Answer Choice
			["Many", true], // Second Answer Choice
			["None", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["Conditional", false], // First Answer Choice
			["Variable", false], // Second Answer Choice
			["Function", true] // Third Answer Choice
		]
	],
	//Second Question
	[
	    [	// Answers for First variant
			["Above Main", true], // First Answer Choice
			["Beneath Main", false], // Second Answer Choice
			["Anywhere in Main", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["Four", false], // First Answer Choice
			["Three", true], // Second Answer Choice
			["One", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["Square", false], // First Answer Choice
			["Variable", false], // Second Answer Choice
			["Double", true] // Third Answer Choice
		]
	]
];

// Level 2, Section 2: Loops
answers[2, 2] = 
[ 
	//First Question
	[
	    [	// Answers for First variant
			["when some code will be run multiple times", true], // First Answer Choice
			["in the beginning of programs", false], // Second Answer Choice
			["at the end of programs", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["do-while", false], // First Answer Choice
			["do-until", true], // Second Answer Choice
			["while", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["Even", false], // First Answer Choice
			["False", false], // Second Answer Choice
			["True", true] // Third Answer Choice
		]
	],
	//Second Question
	[
	    [	// Answers for First variant
			["do-while", true], // First Answer Choice
			["while", false], // Second Answer Choice
			["for", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["do-while", false], // First Answer Choice
			["while", true], // Second Answer Choice
			["for", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["do-while", false], // First Answer Choice
			["while", false], // Second Answer Choice
			["for", true] // Third Answer Choice
		]
	],
	//Third Question
	[
	    [	// Answers for First variant
			["for (n=1; n<11; n++)\n   printf (\"hi\");", true], // First Answer Choice
			["while (n < 10)\n    n = n + 1;", false], // Second Answer Choice
			["for (n=0; n<=10; n++)\n   printf (\"bye\");", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["always needed", false], // First Answer Choice
			["to execute multiple commands", true], // Second Answer Choice
			["to run just once", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["verify; check; modify", false], // First Answer Choice
			["start; condition; end", false], // Second Answer Choice
			["initialize; condition; increment", true] // Third Answer Choice
		]
	]
];


//Level 3
// Level 3, Section 0: Arrays
answers[3, 0] = 
[ 
	//First Question
	[
	    [	// Answers for First variant
			["4", true], // First Answer Choice
			["37", false], // Second Answer Choice
			["2000", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["1", false], // First Answer Choice
			["0", true], // Second Answer Choice
			["-1", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["4", false], // First Answer Choice
			["37", false], // Second Answer Choice
			["2000", true] // Third Answer Choice
		]
	],
	//Second Question
	[
	    [	// Answers for First variant
			["for", true], // First Answer Choice
			["while", false], // Second Answer Choice
			["do-while", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["{} (Curly Braces)", false], // First Answer Choice
			["[] (Brackets)", true], // Second Answer Choice
			["() (Parenthesis)", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["val", false], // First Answer Choice
			["int", false], // Second Answer Choice
			["3", true] // Third Answer Choice
		]
	],
	//Third Question
	[
	    [	// Answers for First variant
			["char", true], // First Answer Choice
			["array", false], // Second Answer Choice
			["int", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["arrayName[50][double];", false], // First Answer Choice
			["double arrayName[50];", true], // Second Answer Choice
			["arrayName[50] = double;", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["number int[7];", false], // First Answer Choice
			["int[7] numbers;", false], // Second Answer Choice
			["int numbers[7];", true] // Third Answer Choice
		]
	]
];

// Level 3, Section 1: Strings
answers[3, 1] = 
[ 
	//First Question
	[
	    [	// Answers for First variant
			["\\0", true], // First Answer Choice
			["\\n", false], // Second Answer Choice
			["\"", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["char", false], // First Answer Choice
			["string", true], // Second Answer Choice
			["function", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["123", false], // First Answer Choice
			["'123'", false], // Second Answer Choice
			["\"123\"", true] // Third Answer Choice
		]
	],
	//Second Question
	[
	    [	// Answers for First variant
			["\"\" (Double Quotes)", true], // First Answer Choice
			["() (Parenthesis)", false], // Second Answer Choice
			["'' (Single Quotes)", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["stdio.h", false], // First Answer Choice
			["string.h", true], // Second Answer Choice
			["stdin.h", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["strlen", false], // First Answer Choice
			["strcat", false], // Second Answer Choice
			["strcmp", true] // Third Answer Choice
		]
	],
	//Third Question
	[
	    [	// Answers for First variant
			["strlen", true], // First Answer Choice
			["strcat", false], // Second Answer Choice
			["strcmp", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["strlen", false], // First Answer Choice
			["strcat", true], // Second Answer Choice
			["strcmp", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["strncpy", false], // First Answer Choice
			["strcmp", false], // Second Answer Choice
			["strcpy", true] // Third Answer Choice
		]
	],
	//Fourth Question
	[
	    [	// Answers for First variant
			["strncpy", true], // First Answer Choice
			["strcmp", false], // Second Answer Choice
			["strcpy", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["12", false], // First Answer Choice
			["11", true], // Second Answer Choice
			["10", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["1", false], // First Answer Choice
			["-1", false], // Second Answer Choice
			["0", true] // Third Answer Choice
		]
	]
];

// Level 3, Section 2: Addresses/Pointers
answers[3, 2] = 
[ 
	//First Question
	[
	    [	// Answers for First variant
			["* (Asterisk)", true], // First Answer Choice
			["& (Ampersand)", false], // Second Answer Choice
			["% (Modulus)", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["* (Asterisk)", false], // First Answer Choice
			["& (Ampersand)", true], // Second Answer Choice
			["% (Modulus)", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["File Path", false], // First Answer Choice
			["Location on Desktop", false], // Second Answer Choice
			["Location in RAM", true] // Third Answer Choice
		]
	]
];


//Level 4
// Level 4, Section 0: Enumerate and Structures
answers[4, 0] = 
[ 
	//First Question
	[
	    [	// Answers for First variant
			["enum", true], // First Answer Choice
			["struct", false], // Second Answer Choice
			["arr", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["* (Asterisk)", false], // First Answer Choice
			[". (Period)", true], // Second Answer Choice
			["& (Ampersand)", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["array (arr)", false], // First Answer Choice
			["integer (int)", false], // Second Answer Choice
			["structure (struct)", true] // Third Answer Choice
		]
	],
	//Second Question
	[
	    [	// Answers for First variant
			["True", true], // First Answer Choice
			["False", false], // Second Answer Choice
			["Maybe", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["True", false], // First Answer Choice
			["False", true], // Second Answer Choice
			["Maybe", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["True", true], // First Answer Choice
			["False", false], // Second Answer Choice
			["Maybe", false] // Third Answer Choice
		]
	]
];

// Level 4, Section 1: File Input and Output
answers[4, 1] = 
[ 
	//First Question
	[
	    [	// Answers for First variant
			["fopen", true], // First Answer Choice
			["fclose", false], // Second Answer Choice
			["fgets", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["fopen", false], // First Answer Choice
			["fclose", true], // Second Answer Choice
			["fgets", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["printf", false], // First Answer Choice
			["fprint", false], // Second Answer Choice
			["fprintf", true] // Third Answer Choice
		]
	],
	//Second Question
	[
	    [	// Answers for First variant
			["fgets", true], // First Answer Choice
			["fclose", false], // Second Answer Choice
			["fopen", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["*afile FILE;", false], // First Answer Choice
			["FILE *afile;", true], // Second Answer Choice
			["afile *file;", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["-", false], // First Answer Choice
			["/", false], // Second Answer Choice
			["\\\\", true] // Third Answer Choice
		]
	]
];

// Level 4, Section 2: Object Oriented Programming
answers[4, 2] = 
[ 
	//First Question
	[
	    [	// Answers for First variant
			["Inheritence; Abstraction; Encapsulation; Polymorphism", true], // First Answer Choice
			["Analyze; Design; Code; Test", false], // Second Answer Choice
			["Input; Output; Process; Storage", false] // Third Answer Choice
		],
		 [	// Answers for Second variant
			["A variable that stores a number.", false], // First Answer Choice
			["Anything that has attributes and can perform methods.", true], // Second Answer Choice
			["A string that states the name and location of a variable.", false] // Third Answer Choice
		],
		 [	// Answers for Third variant
			["Efficiency", false], // First Answer Choice
			["Reusability", false], // Second Answer Choice
			["Simpler", true] // Third Answer Choice
		]
	]
];

// Set Up Answers
if(current_level != 0)
{
	var current_answers = answers[global.current_level, global.current_section][global.question_in_section][question.variation - 1];
}
else
{
	var current_answers = answers[0, 0];
}

button1.text = current_answers[0][0];
button1.is_correct = current_answers[0][1];

button2.text = current_answers[1][0];
button2.is_correct = current_answers[1][1];

button3.text = current_answers[2][0];
button3.is_correct = current_answers[2][1];
