extends "res://Scripts/Question.gd"

func _ready():
	load_question()
	title = "Question 14"
	dialogue = [["In this question you must define the badZip function. This function takes two lists and pairs them together in a tuple list. It is called badZip because the output is rather messy and unsatisfactory. We'll see why it's bad in the next level!",1],
	[question,2],["That was the last question in this level, great job! Head on over to the big cross to return to the menu",3]]