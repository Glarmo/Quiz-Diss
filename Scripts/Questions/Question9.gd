extends "res://Scripts/Question.gd"

func _ready():
	load_question()
	title = "Question 9"
	dialogue = [["In this question you will need to provide two conditions: A check if the number is even and another if it is greater than 3",1],
	[question,2]]