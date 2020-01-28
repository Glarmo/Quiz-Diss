extends "res://Scripts/Object.gd"

func _ready():
	var ff = preload("res://Images/Terminal/First Function.png")
	title = "Pricipio"
	dialogue = [["Ah I see you've decided to embark on this Haskell Quest, I am here to help you start your journey. I assume you know how to control your body and how to interact with objects is this the case?",1],
	[0,0],["It's about time somebody started this quest and you look like just the stultus we need. You must be wondering what this is all about so let me clear some things up.",3],
	["Firstly what is Haskell? Well as my grandmother used to say Haskell is a purely functional programming language. Meaning we will program using functions! Most Languages around today are imperative, focusing on how the program operates whereas Haskell, and any other functional language, looks at what the program does.",4],
	["The building blocks of haskell (And other functional programming languages) are functions and immutable data. First, functions are small sequences of instructions that take inputs and return an output. Functions are all around us, think of a recipe for baking a cake",5],
	["You take all the ingredients (Inputs), manipulate them (Method) and at the end you get your output a delicious cake! When we use functions with computers it is very similar, except there is no cake!. Brother John has been trying for years to correct this but to no avail",6],
	[ff,7],["Take for example this machine which takes as an input a whole number (integer) and outputs the result of multiplying it by 3. This is a very simple function but a function nonetheless. Go talk to brother John and he'll tell you about data immutability",8],
	["If you want another explanation of functions there is a book just over the bridge which might help! It should have some more function examples! Good luck!",9]]
	choices = [[["Yes",2],["No",0]]]
