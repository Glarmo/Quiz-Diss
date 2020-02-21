extends "res://Scripts/Question.gd"

func _ready():
	load_question()
	title = "Question 12"
	dialogue = [["In this question you must finish writing the expression which returns the squares of all the odd numbers in the list. To note: [1..10] is shorthand for a list of all the numbers between 1 and 10",1],
	[question,2]]