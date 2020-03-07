extends "res://Scripts/Object.gd"
func _ready():
	var squareRec = preload("res://Images/Terminal/squareRec.png")
	var productRec = preload("res://Images/Terminal/productRec.png")
	
	var sr1 = preload("res://Images/Terminal/squareRec1.png")
	var sr2 = preload("res://Images/Terminal/squareRec2.png")
	var sr3 = preload("res://Images/Terminal/squareRec3.png")
	var sr4 = preload("res://Images/Terminal/squareRec4.png")
	var sr5 = preload("res://Images/Terminal/squareRec5.png")
	var sr6 = preload("res://Images/Terminal/squareRec6.png")
	
	var pr1 = preload("res://Images/Terminal/productRec1.png")
	var pr2 = preload("res://Images/Terminal/productRec2.png")
	var pr3 = preload("res://Images/Terminal/productRec3.png")
	var pr4 = preload("res://Images/Terminal/productRec4.png")
	var pr5 = preload("res://Images/Terminal/productRec5.png")
	
	var hardCoded = preload("res://Images/Gifts/hardcoded.jpg")
	
	title = "Recursion Rox"
	dialogue = [["Hello! I'm going to teach you about recursion",1],["What is recursion?",2],["What is recursion?",3],["What is recursion?",4],["What is recursion?",5],
	["Just joking!",6],["In the programming world, recursion is when a function calls itself one or more times. This is best explained with an example. We're going to redefine our old square function using recursion",7],
	[squareRec,8],["There are a few new things here, we'll tackle them one at a time",9],
	["There is a whole new line! Hopefully this isn't too jarring. This is called pattern matching, we'll go into greater detail later. For now understand that we execute the line where the input matches the formal parameter. For example here if the input is the empty list, we would execute the first line and return an empty list. Let's take a look at how it would handle a certain input in detail",10],
	[sr1,11],["It takes the head of the list and squares it. Then we call squaresRec on the rest of the list",12],
	[sr2,13],["Obviously the list isn't empty and as such we execute the second line. We square the new head of the list which is 3 and once again call squaresRec on the list",14],
	[sr3,15],["We square the latest head of the list and call squaresRec on the now empty list",16],
	[sr4,17],["Recall that if we pass an empty list to squaresRec it returns an empty list",18],
	[sr5,19],["The numbers are squared and then we link them all together onto the empty list",20],
	[sr6,21],["And we get the final output. Hopefully it is clear now why we have the base case for the empty list. Without it the function would run into an error or keep running forever, either is a bad outcome",22],
	["We're going to run through another example before you attempt a test",23],
	[productRec,24],["Product is very similar to the square function. The main difference is rather than concatenating the new element to the list we're multiplying it all together. The base case has changed aswell, rather than being an empty list it's 1. Because we're multiplying everything together the last link in the chain must be 1 to preserve the rest. This will become clear when we run through it",25],
	[pr1,26],["The head of the list is taken out and will be multiplied with the rest of the list. The function is called again on what remains of the list",27],
	[pr2,28],["Because the list is still not empty we extract 2 from the list and add it the chain of multiplication. We call the function on the last element of the list",29],
	[pr3,30],["3 is added to the chain of the multiplication of the list and we call productRec with an empty list",31],
	[pr4,32],["Recall that when we pass productRec an empty list we return 1. It should be clear why! If it was anything but 1 it would ruin the expression we've created",33],
	[pr5,34],["And finally we get the output",35],
	["Recursion may seem complicated at first but it's a very simple idea. Complete the puzzle next to me and come back for a gift",36]]
	
	secondDialogue = [["Amazing work, if you've ever wanted a visual representation on what it means to be hard coded take a look at this",1],
	[hardCoded,2],["Head further along the path and you'll meet Pattern Pete, good luck!",3]]

func action(inv):
	if (search(Player_param.problems_completed, "Question16")):
		dialogue = secondDialogue