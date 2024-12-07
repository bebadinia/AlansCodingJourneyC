// Add content for each board


depth = -10000;


// Learn data structure

//Tutorial Level Detailed Content
//Tutorial Level Encounter 1
board_content[0, 1] = @" Tutorial Tips for Encounter 1";

//Tutorial Level Enconter 2
board_content[2, 2] = @" Tutorial Tips for Encounter 2";

//Tutorial Level Enconter 3
board_content[2, 3] = @" Tutorial Tips for Encounter 3";



//C Level Detailed Content
//C Level Encounter 1
board_content[1, 1] = 
@"Variables are containers for storing data values, like numbers and characters.

In C, there are different types of variables (defined with different keywords), for example:
        int - stores integers (whole numbers), without decimals, such as 123 or -123
        float - stores floating point numbers, with decimals, such as 19.99 or -19.99
        char - stores single characters, such as 'a' or 'B'. Characters are surrounded by single quotes

Declaring (Creating) Variables:
To create a variable, specify the type and assign it a value.

Syntax:
type variableName = value;

In the syntax above, 
        - type is one of C types (such as int), and variableName is the name of the variable (such as x or myName).
        - The equal sign is used to assign a value to the variable.

Example Question: Create a variable called myNum of type int and assign the value 15 to it.
Example Answer: int myNum = 15;";

//C Level Encounter 2
board_content[1, 2] = 
@"A String in C programming is a sequence of characters terminated with a null character '\0'. stored as an array of characters.
 
Declaring a string in C is as simple as declaring a one-dimensional array.

Syntax:
char string_name[size];
char string_name[size] = " + "\"String_literal\";\n\n" +

@"In the syntax above, 
        - string_name is any name given to the string variable and optionally, size, is used to define the length of the string.
        - String literals can be assigned without size by leaving the size empty and using an equal sign between the string_name and string literal.
        - String literals can be assigned with a predefined size, but we should always account for one extra space which will be assigned to the null character. 
        - Using \n within the string_literal will cause there to be a line break after it.

Example Question 1: Declare a string called  str without a predetermined size and assign the string literal 'hello' to it.
Example Answer 1: char str[] = "+ "\"hello\";\n\n" +

@"Example Question 2: Declare a string called myName with a predetermined size but do not assign a value to it.
Example Answer 2: char myName[10]";

//C Level Encounter 3
board_content[1, 3] = 
@"The printf() function is used to print formatted output to the standard output stdout (which is generally the console screen).  The printf function is a part of the C standard library <stdio.h> and it can allow formatting the output in numerous ways.

Syntax for printf():
printf ( " + "\"formatted_string\", arguments_list);\n\n" +

@"In the syntax above, 
       - formatted_string is a string that specifies the data to be printed. It may also contain a format specifier to print the value of any variable such as a character and an integer. 
       - arguments_list are the variable names corresponding to the format specifier.

Syntax for specifiers:
        - %d OR %i: for printing integers
        - %f: for printing floating-point numbers
        - %c: for printing characters
        - %s: for printing strings
        - %p: for printing memory addresses

Example Question 1: Create a variable called myNum of type int and assign the value 15. Then use printf() to print myNum.
Example Answer 1: int myNum = 15;
                  printf(" + "\"%d\", myNum);\n\n" +
@"Example Question 2: Use printf() to print the string literal " + "\"hello world\" without declaring it first.\n" +
@"Example Answer 2: printf(" + "\"hello world\");";



//C++ Level Detailed Content
//C++ Level Enconter 1
board_content[2, 1] = @" C++ Tips for Encounter 1";

//C++ Level Enconter 2
board_content[2, 2] = @" C++ Tips for Encounter 2";

//C++ Level Enconter 3
board_content[2, 3] = @" C++ Tips for Encounter 3";



//Python Level Detailed Content
//Python Level Enconter 1
board_content[3, 1] = @" Python Tips for Encounter 1";

//Python Level Enconter 2
board_content[3, 2] = @" Python Tips for Encounter 2";

//Python Level Enconter 3
board_content[3, 3] = @" Python Tips for Encounter 3";



//Java Level Detailed Content
//Java Level Enconter 1
board_content[4, 1] = @" Java Tips for Encounter 1";

//Java Level Enconter 2
board_content[4, 2] = @" Java Tips for Encounter 2";

//Java Level Enconter 3
board_content[4, 3] = @" Java Tips for Encounter 3";


board_content_text = board_content[global.current_level, global.current_encounter];

