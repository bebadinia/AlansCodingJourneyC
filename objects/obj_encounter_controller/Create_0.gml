// Create Event of obj_button_controller
//globalvar can_move;
global.can_move = false;


// Create question panel first (using your existing question panel object)
question = instance_create_layer(640, 75, "UILayer", obj_question_panel);
global.number_of_questions = array_length(obj_question_panel.questions[global.current_level-1, global.current_section]); //Set number of questions for each section
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

//Level 1
// Level 1, Section 0: Introduction and Main
answers[0, 0] = 
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
answers[0, 1] = 
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
			["x = ‘100’;", false], // Second Answer Choice
			["x = 100;", true] // Third Answer Choice
		]
	]
];

// Level 1, Section 2:  Input and Operations
answers[0, 2] = 
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


// Set Up Answers
var current_answers = answers[global.current_level - 1, global.current_section][global.question_in_section][question.variation - 1];

button1.text = current_answers[0][0];
button1.is_correct = current_answers[0][1];

button2.text = current_answers[1][0];
button2.is_correct = current_answers[1][1];

button3.text = current_answers[2][0];
button3.is_correct = current_answers[2][1];
