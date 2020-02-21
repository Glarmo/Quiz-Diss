extends "res://Scripts/Object.gd"

func _ready():
	var map = preload("res://Images/Terminal/map.png")
	var mapUse = preload("res://Images/Terminal/mapUse.png")
	title = "Maru Map"
	dialogue = [["We now move through the final gate reach the event horizon, lastly we're going to tackle higher order functions",1],
	["When we talk about higher order functions we are talking about functions that work with, or output, functions. Some of the functions we've been looking at have been applying some operation on all the elements of the list (Square, double etc.)",2],
	["What if we could map this function onto the list? Well that's exactly what the map function does!",3],
	[map,4],["The type signature is a little odd, but we'll work through it. Firstly (a->b) refers to a function. A function which takes a single input and returns a single output. Recall that a and b are type variables, and that b needn't be a different type to a",5],
	["So the map function takes as input: A function and a list. It outputs a list of type b. In the expression we can see that we apply the function, denoted as f, to each of the elements as they are drawn from the list xs",6],
	[mapUse,7],["This is how we can form the expression. The square function we pass it simply squares the input it receives",8],
	["We could define this recursively but you'll have to do that as your next challenge! God speed",9]]