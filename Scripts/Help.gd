extends Button

var problem
var help_array = ["",
#q1
"For this question you must call the max function with the correct parameters. You are being tested on whether you understood prefix notation and if you can identify the correct input type for max",
#q2
"For this question you need to define a function which triples a number. You are being tested on how to use formal parameters",
#q3
"You must finish the definition of the sum function. This function takes two numbers and sums them together. Be careful with your use of formal parameter",
#q4
"Define the fourMax function. The function takes four numbers and outputs the largest. Recall that the max function takes two numbers and outputs the largers. You are being tested on how to compose functions and if you can create the type signature",
#q5
"You must define the half function. This function takes a number and divides it by two. Since we haven't covered anything other than ints, don't worry about decimal points!",
#q6
"The function thisKapital returns a true or false value depending on if the first character in a string is capitalized. Note that the formal parameter is split into two parts we will cover this later but you may be able to intuit how it works",
#q7
"The sumTuple function takes a list of tuples and sums the values inside the tuple together. We haven't told you exactly what a tuple list looks like but put together what a tuple looks like and how we notate lists!",
#q8
"This function takes a string and outputs a list of all the upper case characters in the string. In this question you will need to place the bar seperating the expression and generator. Recall that after the comma you should put the condition!",
#q9
"This function takes a list of numbers and returns the list of all the even numbers greater than 3. You are being tested on using two conditions. Note that 3 < x is the same as x > 3 in the first instance 3 is the subject",
#q10
"This function takes two lists of numbers and calculates the difference between the elements in each list. Think how you calculate the difference between two numbers. You are being tested on drawing from two lists",
#q11
"The head function returns the first element in a list. Recall type variables and how we seperate elements in a list. If you are still struggling check your journal for what Type Tom said!",
#q12
"In this question you must fill in the expression which returns the square of all the odd numbers from 1 to 10. We can denote all the numbers from x to y as [x..y]",
#q13
"Recall how an expression like this is read, '<-' is read as 'drawn from'. Try writing out what numbers would be taken from each list. Remember to write the answer in the correct syntax, how would the answer be output? What is it contained in?",
#q14
"This is an odd question. You are being tested on your use of type variables and if you know how you construct a tuple given two elements. If you've forgetten what tuples look like check your journal!",
#q15
"This question is testing if you understood the difference between concatenate and append. Check your journal under Link Liz if you need a refresher",
#q16
"This sum function takes a list of numbers and sums them all together. You are being tested on your understanding of recursion and the basics of pattern matching",
#q17
"This function takes a list of ints and you must figure out what it does with the list. I recommend trying to work it out on a piece of paper by taking each element and working your way through the function. You are being tested on your understanding of guards, pattern matching and recursion",
#q18
"The zip function takes two lists and combines them together into a list of tuples. If the expression is 'zip ['a','b','c'] [1,2,3]' then the output is [('a',1),('b',2),('c',3)]. The notation [0..] is an infinite list which counts forever, obviously the function doesn't go forever so try to figure out what is drawn from the zip output. In other words what is (j,x)?",
#q19
"Recall that map takes a function and applies it to all elements in a list. What does a function look like in the type signature? What should the output be if given an empty list? What is the type signature of the function you are giving as input to map? You are also being tested on your use of append or concatenate",
#q20
"Remember what the filter function does, it applies a condition over a list and outputs all elements that return true for that condition",
#q21
"Work through this question slowly with a piece of paper. You are being tested on all of the higher order functions you learnt. These all take certain types of functions and apply them over a list. If you are still struggling consult your journal to recap what each of the functions does",
#q22
"What kind of function does filter take as input? What is output list different to the input list? You are being tested on recursion your use of guards and linking lists",
#q23
"This function takes a function and applies it twice to a given input. Given the formal parameter is the input a list or just a single element?",
#q24
"This function takes a list and reverse the order of elements so that the first element is how the last. This is a test on your function composition as well as your use of concatenate and append. Take a look at your journal entry for Link Liz if you need a recap",
]

func _ready():
	problem = int(get_parent().name)
	$Panel/Description.set_text(help_array[problem])

func _pressed():
	if(!$Panel.is_visible()):
		$Panel.show()
	else:
		$Panel.hide()