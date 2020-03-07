extends "res://Scripts/Question.gd"

func _ready():
	load_question()
	dialogue = [["This is a question about function calling",1],
	[question,2],["Head back to Dr Composer to learn about function composition",3]]
	title = "Question 1" 
