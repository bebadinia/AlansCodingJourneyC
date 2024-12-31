// Create Event of obj_button_controller
//globalvar can_move;
global.can_move = false;


// Create question panel first (using your existing question panel object)
question = instance_create_layer(640, 75, "UILayer", obj_question_panel);

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
// Tutorial Level
answers[0, 1] = //First encounter
[ 
    [ // First variant answers
        ["int x = 10;", true],
        ["Int x = 10;", false],
        ["INT x = 10;", false]
    ],
    [ // Second variant answers
        ["char y = b;", false],
        ["char y = 'b';", true],
        ["char b = 'y';", false]
    ]
];

answers[0, 2] = //Second encounter
[ 
    [ // First variant answers
        ["char welcome[] = Hello World", false],
        ["welcome[] = \"Hello World\";", false],
        ["char welcome[] = \"Hello World\";", true]
    ],
    [ // Second variant answers
        ["char name[] = \"Ben\";", true],
        ["char name = \"Ben\";", false],
        ["name = \"Ben\";", false]
    ]
];

answers[0, 3] = //Third encounter
[ 
    [ // First variant answers
        ["print(\"Hello World\");", false],
        ["printf(\"Hello World\");", true],
        ["printf(Hello World);", false]
    ],
    [ // Second variant answers
        ["printf(\"%c\", 5);", false],
        ["printf(5);", false],
        ["printf(\"%d\", 5);", true]
    ]
];



// C Level
answers[1, 1] = //First encounter
[ 
    [ // First variant answers
        ["int x = 10;", true],
        ["Int x = 10;", false],
        ["INT x = 10;", false]
    ],
    [ // Second variant answers
        ["char y = b;", false],
        ["char y = 'b';", true],
        ["char b = 'y';", false]
    ]
];

answers[1, 2] = //Second encounter
[ 
    [ // First variant answers
        ["char welcome[] = Hello World", false],
        ["welcome[] = \"Hello World\";", false],
        ["char welcome[] = \"Hello World\";", true]
    ],
    [ // Second variant answers
        ["char name[] = \"Ben\";", true],
        ["char name = \"Ben\";", false],
        ["name = \"Ben\";", false]
    ]
];

answers[1, 3] = //Third encounter
[ 
    [ // First variant answers
        ["print(\"Hello World\");", false],
        ["printf(\"Hello World\");", true],
        ["printf(Hello World);", false]
    ],
    [ // Second variant answers
        ["printf(\"%c\", 5);", false],
        ["printf(5);", false],
        ["printf(\"%d\", 5);", true]
    ]
];



// C++ Level
answers[2, 1] = //First encounter
[ 
    [ // First variant answers
        ["if (x > 1 && x < 10)", true],
        ["if (x > 1 AND x < 10)", false],
        ["if (1 < x < 10)", false]
    ],
    [ // Second variant answers
        ["if (age < 13 OR age > 19)", false],
        ["if (age < 13 || age > 19)", true],
        ["if (age != 13-19)", false]
    ]
];

answers[2, 2] = //Second encounter
[ 
    [ // First variant answers
        ["C++ E2V1 False", false],
        ["C++ E2V1 False", false],
        ["C++ E2V1 True", true]
    ],
    [ // Second variant answers
        ["C++ E2V2 True", true],
        ["C++ E2V2 False", false],
        ["C++ E2V2 False", false]
    ]
];

answers[2, 3] = //Third encounter
[ 
    [ // First variant answers
        ["C++ E3V1 False", false],
        ["C++ E3V1 True", true],
        ["C++ E3V1 False", false]
    ],
    [ // Second variant answers
        ["C++ E3V2 False", false],
        ["C++ E3V2 False", false],
        ["C++ E3V2 True", true]
    ]
];



// Python Level
answers[3, 1] = //First encounter
[ 
    [ // First variant answers
        ["for i in range(1, 6):", true],
        ["for i = 1 to 5:", false],
        ["for i in (1, 5):", false]
    ],
    [ // Second variant answers
        ["repeat(3):", false],
        ["for i in range(3):", true],
        ["for times in 3:", false]
    ]
];

answers[3, 2] = //Second encounter
[ 
    [ // First variant answers
        ["Python E2V1 False", false],
        ["Python E2V1 False", false],
        ["Python E2V1 True", true]
    ],
    [ // Second variant answers
        ["Python E2V2 True", true],
        ["Python E2V2 False", false],
        ["Python E2V2 False", false]
    ]
];

answers[3, 3] = //Third encounter
[ 
    [ // First variant answers
        ["Python E3V1 False", false],
        ["Python E3V1 True", true],
        ["Python E3V1 False", false]
    ],
    [ // Second variant answers
        ["Python E3V2 False", false],
        ["Python E3V2 False", false],
        ["Python E3V2 True", true]
    ]
];



// Java Level
answers[4, 1] = //First encounter
[ 
    [ // First variant answers
        ["public int add(int a, int b)\n{return a + b;}", true],
        ["function add(a, b)\n{return a + b;}", false],
        ["void add(int a, int b)\n{a + b;}", false]
    ],
    [ // Second variant answers
        ["String getMessage\n{return \"Hello\";}", false],
        ["public String getMessage()\n{return \"Hello\";}", true],
        ["void String getMessage()\n{\"Hello\";}", false]
    ]
];

answers[4, 2] = //Second encounter
[ 
    [ // First variant answers
        ["Java E2V1 False", false],
        ["Java E2V1 False", false],
        ["Java E2V1 True", true]
    ],
    [ // Second variant answers
        ["Java E2V2 True", true],
        ["Java E2V2 False", false],
        ["Java E2V2 False", false]
    ]
];

answers[4, 3] = //Third encounter
[ 
    [ // First variant answers
        ["Java E3V1 False", false],
        ["Java E3V1 True", true],
        ["Java E3V1 False", false]
    ],
    [ // Second variant answers
        ["Java E3V2 False", false],
        ["Java E3V2 False", false],
        ["Java E3V2 True", true]
    ]
];


// Set Up Quetions
var current_answers = answers[global.current_level, global.current_encounter][question.question_number - 1];

button1.text = current_answers[0][0];
button1.is_correct = current_answers[0][1];

button2.text = current_answers[1][0];
button2.is_correct = current_answers[1][1];

button3.text = current_answers[2][0];
button3.is_correct = current_answers[2][1];
