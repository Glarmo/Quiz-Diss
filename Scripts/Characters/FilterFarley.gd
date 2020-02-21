extends "res://Scripts/Object.gd"

func _ready():
	var filter = preload("res://Images/Terminal/filter.png")
	var filterUse = preload ("res://Images/Terminal/filterUse.png")
	title = "Filter Farley"
	dialogue = [["So we have a function that can apply a function to a list, what about a function that can apply a condition over a list? We looked at functions like oddList and evenList before, is there a way we could abstract these to apply a condtion over a whole list?",1],
	["With the filter function we can take a condition and apply it over a list, let's take a look",2],
	[filter,3],["In the type signature instead of any function, we take a predicate, a function which returns a boolean. As you can see the definition is very similar to map but instead the function we pass it is over to the right where we use it as condition. Overall we can get the same output as the functions we defined earlier!",4],
	[filterUse,5],["In the next puzzle you'll be required to determine the output of an expression using the filter function, good luck!",6]]