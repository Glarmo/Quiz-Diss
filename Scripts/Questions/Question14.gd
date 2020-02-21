extends "res://Scripts/Question.gd"

func _ready():
	load_question()
	title = "Question 14"
	dialogue = [["In this question you must define the badZip function. This function takes two lists and pairs them together in a tuple list. It is called badZip because the output is rather messy and unsatisfactory. To see why try writing the definition in GHCI and see what output you get!",1],
	[question,2]]