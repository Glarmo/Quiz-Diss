extends "res://Scripts/Object.gd"

func _ready():
	var cons = preload("res://Images/Terminal/concat.png")
	var append = preload("res://Images/Terminal/append.png")
	title = "Link Liz"
	dialogue = [["We're in the final stretch now, don't give up!",1],
	["Before we tackle the big stuff we need to take proper a look at how we can connect lists together",2],
	["It's important we draw a distinction between two methods, while functionally similar, they operate differently",3],
	[cons,4],["First let's look at concatenation or 'cons' for short. The cons function allows us to add a *single* element to the front of a list. As you can see in the example it is a infix function, being placed inbetween the inputs. Also note that we can't use cons to connect two lists together, this should be evident from the type signature. Now let's look at the other method!",5],
	[append,6],["We can use append to connect two lists together, end to end. Remember that a list is of a single type, meaning we can only append two lists of the same type. Similarly for cons we can only add an element of the same type. We can use append to add a single element as long as that single element is in a list as you can see from the examples",7], 
	["Note: We've used (x:xs) as a formal parameter of a list. The x refers to the first element of the list and xs the rest of the list. These are connected using the cons operator ':' which adds a single element to the front of a list!",8],
	["Now that you understand how to add items to a list and connect them together, there's a puzzle you must complete before continuing. Complete the puzzle and then find Rox futher along!",9]]