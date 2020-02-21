extends "res://Scripts/Object.gd"

func _ready():
	var lists = preload("res://Images/Terminal/Lists.png")
	var listFunctions = preload("res://Images/Terminal/listFunctions.png")
	var squareList = preload("res://Images/Terminal/SquareList.png")
	var toLowerList = preload("res://Images/Terminal/toLowerList.png")
	var labeled = preload("res://Images/Terminal/toLowerLabeled.png")
	title = "Leyla Lists"
	dialogue = [["Finally we get some real work done! What is a list you ask? A list is a simple data structure of a single type, take a look at these lists:",1],
	[lists,2],["These are lists of different types. A list is a collection of elements all of the same type. The first is a list of ints, the second a list of characters and the third a list of booleans. If you've programmed before a list is essentially an array. Many functions you will come to see will output lists or operate on lists. The syntax of the list is simple. The whole list is contained by square brackets and individual elements are seperated by commas",3],
	["See simple! Now let's look at some functions that operate on lists",4],[listFunctions,5],
	["These are the squareList and toLowerList functions. The squareList function takes a list of ints and outputs a list of all elements squared. The toLowerList takes a list of characters and applies the toLower function on them, converting them to lowercase. Pull out your microscope as we are going to take a closer look at each of these functions!",6],
	[squareList,7],["Don't worry, there are a few new things but we'll tackle them one at a time. The type signature has changed slightly from what we've seen before. Recall that we denote lists with square brackets and such this new type signature simply tells us that the function takes a list of ints as input and outputs the same.",8],
	["On the second line we have the formal parameter 'xs' representing the *whole* list, but we need to square the individual elements. How do we do this? Well there are two parts to the square brackets to the right. There is the expression, on the left, and the generator, on the right",9],
	["The generator is how we break up the list. Inside the generator is '<-' this can read as 'drawn from' so we can read the whole line as 'for each x drawn from xs return x*x'. The generator and the expression are seperated by this vertical bar '|'",10],
	["Now let's take a look at the toLowerList function",11],[toLowerList,12],
	["The type signature is almost identical to the last, the only difference being that we are operating with a list of characters rather than ints. Remember that a list of characters is simply a string like \"Hello\". On the second line, again it is very similar to the last. The formal parameter has changed from 'xs' to 'cs', these are functionally identical simply a change of name",13],
	["The generator equally has only changed name, 'x' to 'c' and 'xs' to 'cs'. The expression, to the left of the bar, calls the toLower function on the char 'c'. Remember that we can call other functions inside a function. The inbuilt toLower function simply takes a character and outputs the lowercase character",14],
	[labeled,15],["This is called list comprehension, it is one way to program functions operating on lists, it allows us to break down lists and extract the information we need. Something of note, This style of programming operates on all elements at once rather than an element at a time, very impressive!",16],
	["Okay that's all from me, I hope you understand basic lists. There is a computer just across, complete the puzzle and come back for a gift!",17]]
	
	secondDialogue = [[]] 