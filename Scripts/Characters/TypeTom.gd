extends "res://Scripts/Object.gd"

func _ready():
	var types = preload("res://Images/Terminal/Types.png")
	title = "Type Tom"
	dialogue = [["So far we've only been looking at one type of input the integer or int for short. As programmers will we need to tackle many different types of data so that's why I'm here to explain to you the most common data types you will encounter in the game. Recall that '::' is read as 'Has type'",1],
	[types,2],["So what would you like to know about?",3],[0,0],
	["In Haskell we can represent a few different forms of numbers. Integers are simply whole numbers like 4 or 105. They are numbers without fractional components. So far we've been using int and integer interchangeably but there is a small difference in Haskell! An integer is unbounded, it can be as large as needed. An int is bounded and can only be represented by 32 or 64 bits. This won't come up in the game but is worth knowing",5],
	["When we want to represent numbers with decimal parts like 4.5 or -70.9 we can use either a float or a double. These only differ in how precise they are. Rule of thumb: A double has double the precision of a float",2],
	["A boolean can only have two values: True and False. For example if I checked 4 > 5 this would return a boolean value of False or if 10 == 10 this would return a boolean value True. In Haskell booleans are labeled 'Bool' also their values are always capitalised. 'True' and 'False'. Remember case matters!",2],
	["A character is just that, a character. In Haskell they are identified as 'Char'. Any symbol between single quotes will be recognised as a character. A string in Haskell is simply a list of chars, denoted [Char]. The square brackets signify that it is a list. More on lists later. This allows us to hold values like \"Hello\". Strings are denoted using double quotes as can be seen",2],
	["A tuple is small data set. Think of it as a container for 2 or more types. The different elements are seperated by a comma and the whole tuple is contained between brackets. In the picture we have a tuple of a Char and Bool. Tuples can be of greater length but are fixed in size. This means that any functions that work on a tuple pair wouldn't work on a tuple triple. Similarly a function that works on an Int, Char tuple won't work on a Char, Int tuple or any other types!",2],
	["Before you go! Remember that all types are capitalised. Also Haskell has type inference and as such can infer the type of an expression. So we don't need to declare types all the time, Haskell can do it. However it is very important that we learn about it in order to better understand Haskell. Whenever we define functions we will give an explict type declaration as it is good practice and will help with your understanding",10],
	["That's enough from me go and try that computer to test your type knowledge!",11]]
	
	choices = [[["Numbers",4],["Booleans",6],["Characters",7],["Tuples",8],["Goodbye!",9]]]