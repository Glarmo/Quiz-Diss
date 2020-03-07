extends "res://Scripts/Question.gd"

func _ready():
	load_question()
	title = "Question 6"
	dialogue = [["In this question you must provide the type signature for the thisKaptital function. The function lets one know if the first letter in a string is capital. The function body is provided",1],
	[question,2],["Lovely work! Head on over to the green man to the right!",3]]