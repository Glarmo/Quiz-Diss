extends "res://Scripts/Object.gd"

func _ready():
	var oddsRec = preload("res://Images/Terminal/oddsRec.png")
	var squareRec = preload("res://Images/Terminal/squareRec.png")
	title = "Pattern Pete"
	dialogue = [["My name is Pattern Pete and we're taking a closer look at pattern matching and guards!",1],
	[squareRec,2],["Simply put with pattern matching we take the input of the function and run through all specified patterns until we get a match. In the sum, product and square functions the first pattern it would check is the empty list '[ ]'. If the input was '[ ]' then it would execute the code associated with that pattern. The other pattern was (x:xs), in these examples anything other than an empty list would match to this",3],
	["We'll talk a little bit more about pattern matching soon",4],
	["Guards! Guards!",5],["No we're not heading to Ankh Morpork, guards are what we use to add conditions to recursive definitions. Take a look at this function",6],
	[oddsRec,7],["We have the base case for an empty list which stops the recursion going on forever. The main body of the function is under the pattern for (x:xs). We denote different conditions using '|'",8],
	["The first condition checks if x is odd. If this evaluates to true it will return 'x:oddsRec xs' attaching x to the list and calling the function again with the tail. If x is not odd then we don't attach it and simply go call the function again with the tail. Similar to pattern matching we run down the guards and when one evaluates to true we execute that line, 'Otherwise' will always evaluate to true, intuitively this means it should go last",9],
	["Go and complete the next puzzle where you will be required to determine the output of a function",10]]
