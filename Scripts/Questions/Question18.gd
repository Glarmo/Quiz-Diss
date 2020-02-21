extends "res://Scripts/Question.gd"

func _ready():
	load_question()
	title = "Question 18"
	dialogue = [["In this question your you will have to determine the output of a function. Note: The list [0..] is an infinite list going starting at 0 and moving up in increments of 1. When using zip recall that if one list runs out the operation stops",1],
	[question,2]]