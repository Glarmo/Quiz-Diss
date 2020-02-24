extends "res://Scripts/Object.gd"

func _ready():
	var foldr = preload("res://Images/Terminal/foldr.png")
	var foldrUse = preload("res://Images/Terminal/foldrUse.png")
	
	var harry = preload("res://Images/Gifts/popeHarry.jpg")
	
	title = "Fran Fold"
	dialogue = [["The end is in sight, I speak for both of us. There is one final function we're going to go over before facing the final gauntlet of puzzles. We need a higher order function which can perform actions like sum and product. The foldr function allows us to perform these kinds of operations on a list. Let's take a look at the definition",1],
	[foldr,2],["The type signature tells us that it takes a function as an input, though unlike filter and map, this function takes two inputs. This could be a function like '+' or '*'. It then takes a single input and a list. The single input, identified as 'v' by the formal parameter, is the identity of the function. Let's take a look at how product could be replicated using foldr",3],
	[foldrUse,4],["As you can see we can achieve the same functionality as the product function",5],
	["Now finally you will face a gauntlet of puzzles which will test everything you've learnt so far. Do not fear. Fear is the mindkiller. Good luck and God speed! I hope you've enjoyed this odd creation and thank you for reaching this far. After completing the remaining problems make your way back here for a final gift",6]]
	
	secondDialogue = [["Fantastic work and many thanks for getting this far. While this project was underway I faced many difficult decisions but perhaps none as difficult as this",1],
	[harry,2],["I hope you've enjoyed, whatever this was. Please remember to fill out the form that was attached with the game. Thank you :)",3]]

func action(inv):
	if(search(Player_param.problems_completed, "24")):
		dialogue = secondDialogue