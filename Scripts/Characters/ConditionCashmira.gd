extends "res://Scripts/Object.gd"

func _ready():
	var garden = preload("res://Images/Terminal/garden.png")
	var condition = preload("res://Images/Terminal/condition.png")
	var squareOverTwo = preload("res://Images/Terminal/squareOverTwo.png")
	
	title = "Condition Cashmira"
	dialogue = [["Conditions, what are conditions? Sometimes when deciding to something we base our decision on certain conditions",1],
	[garden,2],["For example whether I go outside into my lovely garden is based on the condition of the weather, if it is raining I don't go outside. This is a very basic condition. When programming conditions are very helpful when performing more complicated operations. Let's take a look at another example",3],
	[condition,4],["In this example we take a single int as input and check if it is even, if the number is even we square it and output the result. We could do this operation on a list of ints, let's see a function with conditions looks like",5],
	[squareOverTwo,6],["You probably recognise this function! At least I hope you do.....",7],
	["This is the same squareList function from before but with a condition attached. The condition is attached to the generator and seperated by a comma. If we wanted additional conditions we could add more as long as they are sepertated by commas. Something you probably intuited was that in order for a condition to work it needs to return a boolean, a True or False value",8],
	["In this case 'x > 2' would return a True or False value depending on x. A condition must return a boolean in order to be a condition! We can read the generator as 'for each x drawn from xs, if x greater than 2 return x*x'. While this may look complicated hopefully this has demystifyed it a bit",9],
	["I need you to complete the puzzle just next to me and then come back for something, good luck!",10]]