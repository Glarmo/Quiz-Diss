extends "res://Scripts/Object.gd"

func _ready():
	var badZip = preload("res://Images/Terminal/badZip.png")
	var zip = preload("res://Images/Terminal/zip.png")
	title = "Zip Zulu"
	dialogue = [["Remember when we defined badZip in the last level, let's see why it was bad",1],
	[badZip,2],["As you can see it zips together an element with all elements in the other list. This is a rather unsatisfactory solution. The reason I got you to define it was to test if you understood how to draw from two lists! Let's take a look at the real zip function",3],
	[zip,4],["This function takes two lists and creates a list of tuple pairs as you can see from the output. It has two base cases, one for when either list runs out of elements. If this happens it stops the zipping process",5],
	["We take the heads of each list, pair them together before calling zip again with the tails of each list. What about if both lists where empty? '[ ] [ ]' In this case it would match to the first pattern",6],
	["You'll need to complete two puzzles before moving on to Maru. In the first puzzle you'll need to determine the output of a function that uses the zip function. The second question will ask you to finsh the definition of the drop function. Good luck!",7]]