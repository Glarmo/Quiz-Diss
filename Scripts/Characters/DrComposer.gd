extends "res://Scripts/Object.gd"

func _ready():
	var termExample = preload("res://Images/Terminal/Terminal Example.png")
	var funcComp = preload("res://Images/Terminal/FunctionComp.png")
	var fiveFunctions = preload("res://Images/Terminal/composition.png")
	var beside1 = preload("res://Images/Terminal/beside1.png")
	var beside2 = preload("res://Images/Terminal/beside2.png")
	
	title = "Dr Composer"
	dialogue = [["You're finally here wonderful!",1],["I'm going to teach you about calling and composing functions. How you call a function depends if it is prefix or infix. The normal mathematical operators + - *  are all infix functions. This means that they can be placed between the inputs (Infix means to insert into). For example 3 + 5 or 7 - 2",2],
	[termExample,3],["Some examples of Haskell function calls, simple stuff. Div can be placed inbetween the function aswell (6 `div` 2). Most functions you work with will be prefix ones.",4],
	["How you call a function depends on what the parameters of the function, for instance I wouldn't pass an image to a function that doubles a number!",5],
	["If I did that it would return a type error",6],
	["Head on over to Ali by the computer for a test! Then make your way back to me when you're done!",7]]
	
	secondDialogue = [["I'm delighted to see you've progressed. I'm going to tell you a bit more about function composition by taking a look a 5 functions",1],
	["Similar to Mathematics we can compose functions. Function composition simply means we can apply one function to the results of another. If we have a function f, which takes a number and doubles it, and function g, which takes a letter and returns its numeric value, we can arrange the functions into one call such as (f.g)x = f(g(x))",2],
	[funcComp,3],["Using Function composition we can simplify a series of function calls into one function call, we'll see this again when we get to function definitions",4],
	[fiveFunctions,5],["Do you understand what these type definitions are?", 6],[0,0],
	["That's not worry. This is a form of explicit type declaration, on the left is the name of the function. To the right of '::' are the parameters and output of the function. So invert has type picture and outputs of type picture also. This is the same as flipV and flipH. 'beside' takes two pictures and outputs one. 'scale' takes an int and a picture and outputs a picture, we can also see the that plane simply has type picture",7],
	["Depending on the order we arrange these functions we will get different outputs, for example 'beside (invert plane)(flipH plane)' Make sure you understand why the diagram appears opposite to the expression!",8],
	[beside1,9],["Or we could arrange it 'flipH(invert(beside plane plane))' which has this output",10],
	[beside2,11],["How we arranged it would depend on what outcome we needed. If we needed to do this particular action many times we could define a new function called 'doubleFlip' (Or anything we wanted) that performed these functions on a given picture input",12],
	["Head on over the the next island after the computer for some work on defining functions",13]]
	
	choices = [[["Yes, Ali explained them!",8],["No, Ali tried to explain but I don't think I understood",7]]] 
	
func action(inv):
	if (search(Player_param.problems_completed, "1")):
		dialogue = secondDialogue

