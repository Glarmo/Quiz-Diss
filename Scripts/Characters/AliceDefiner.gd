extends "res://Scripts/Object.gd"

func _ready():
	var squareDef = preload("res://Images/Terminal/squareDef.png")
	var squareDefLabeled = preload("res://Images/Terminal/squareDefLabeled.png")
	var multiply = preload("res://Images/Terminal/multiDef.png")
	var noFish1 = preload("res://Images/Gifts/NoFish1.jpg")
	var noFish2 = preload("res://Images/Gifts/NoFish.jpg")
	title = "Alice the Definer"
	dialogue = [["It's about time you learned the real stuff, the bread and butter. We're gonna talk about defining functions and then you're going to do a puzzle for me. So let's start",1],
	["Take a look at this function definition:",2],[squareDef,3],["It should be quite clear what the function does at this point, the first line is the type signature. It can be read as 'square takes type integer and outputs type integer', you should have gone over type signatures with Ali and Dr Composer",4],
	["The second line is the 'function declaration, on the left is the function name and then a formal parameter n (This is a parameter that is replaced by the input when the function is called). To the right of the '=' is what is called the 'function body'. This is what the function does",5],
	[squareDefLabeled,6],["In this example, we take the parameter n and square it. Underneath the definition is an expression using the function. In this case the '5' is the actual parameter, when square 5 is called the formal parameter 'n' is replaced with the actual parameter '5' and so the output would be 25",7],
	["Go to the computer under the tree and complete the puzzle, you'll be required to finish the function body of the triple function. Come back when you've finished it!",8]]
	
	secondDialogue = [["Fantastic job! You're already surpassed the last shmuck who came through here",1],["Okay this time we're just going to look at functions with more than one input. Take a look at this definition:",2],
	[multiply,3],["This function takes two integer inputs and in the function declaration we use the labels 'x' and 'y' for the inputs. We could have chosen any old names for the formal parameter, 'bob' and 'toby' would have worked aswell. After this it works just like the other function",4],
	["One thing of note: The 'x' refers to the first input and 'y' the second. For example if we called 'multi 3 5' the x would refer to the 3 and the y would refer to the 5. It's important to recognise this as later we will begin to use functions operating on multiple types and you best get them in the right order!",5],
	["Jolly eggs, you should try the next question by the mushrooms and come back one last time for a gift!",6]]
	
	thirdDialogue = [["Another home run! Working with more than one input parameter isn't so bad. I need you to do two more problems for me and then you'll be finised with the level!",1],
	["These last problems should summerise all you've learned so far: Function calling, function composition and function definitions. Good luck!",2],[0,0],["ah! I completely forgot, your gift are these two pictures, I hope you enjoy them as much as I did!",4],
	[noFish1,5],[noFish2,6],["On your way then, goodbye!",7]]
	
	choices = [[["You mentioned a gift....?",3],["Okay thank you, you've been a great help!",6]]]

func action(inv):
	if (search(Player_param.problems_completed, "3")):
		dialogue = thirdDialogue
	elif (search(Player_param.problems_completed, "2")):
		dialogue = secondDialogue