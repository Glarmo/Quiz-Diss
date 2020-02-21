extends "res://Scripts/Question.gd"

func _ready():
	load_question()
	title = "Question 20"
	dialogue = [["In this question you will be required to determine the output of an expression which uses the filter function. The isUpper function returns true if a given character is uppercase",1],
	[question,2]]