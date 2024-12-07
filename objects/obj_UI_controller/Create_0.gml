// Create Event of obj_button_controller
//globalvar can_move;
global.can_move = false;


// Create question panel first (using your existing question panel object)
question = instance_create_layer(640, 75, "UILayer", obj_question_panel);

// Create three buttons using your existing button object
button1 = instance_create_layer(185, 306, "UILayer", obj_answer_button);
button1.image_xscale = 1.152381;
button1.image_yscale = 1.316832;

button2 = instance_create_layer(640, 306, "UILayer", obj_answer_button);
button2.image_xscale = 1.152381;
button2.image_yscale = 1.316832;

button3 = instance_create_layer(1095, 306, "UILayer", obj_answer_button);
button3.image_xscale = 1.152381;
button3.image_yscale = 1.316832;



// Define answers array
//answers = array_create(1);  // Create array for first level
//answers[0] = array_create(2);  // Create array for encounters

// Arrays to store all answers
answers[0, 1] = // Tutorial Level, First encounter
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

answers[0, 2] = // Tutorial Level, Second encounter
[ 
    [ // First variant answers
        ["2. int x = 10;", true],
        ["2. Int x = 10;", false],
        ["2. INT x = 10;", false]
    ],
    [ // Second variant answers
        ["2. char y = b;", false],
        ["2. char y = 'b';", true],
        ["2. char b = 'y';", false]
    ]
];

answers[0, 3] = // Tutorial Level, Third encounter
[ 
    [ // First variant answers
        ["3. int x = 10;", true],
        ["3. Int x = 10;", false],
        ["3. INT x = 10;", false]
    ],
    [ // Second variant answers
        ["3. char y = b;", false],
        ["3. char y = 'b';", true],
        ["3. char b = 'y';", false]
    ]
];

// Set properties based on question number
/*if (question.question_number == 1) {
    button1.text = "int x = 10;";
    button2.text = "Int x = 10;";
    button3.text = "INT x = 10;";
    button1.is_correct = true;
    button2.is_correct = false;
    button3.is_correct = false;
}
else 
{  // question_number == 2
    button1.text = "char y = b;";
    button2.text = "char y = 'b';";
    button3.text = "char b = 'y';";
    button1.is_correct = false;
    button2.is_correct = true;
    button3.is_correct = false;
}*/
var current_answers = answers[global.current_level, global.current_encounter][question.question_number - 1];

button1.text = current_answers[0][0];
button1.is_correct = current_answers[0][1];

button2.text = current_answers[1][0];
button2.is_correct = current_answers[1][1];

button3.text = current_answers[2][0];
button3.is_correct = current_answers[2][1];