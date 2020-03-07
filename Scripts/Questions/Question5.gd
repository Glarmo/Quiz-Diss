extends "res://Scripts/Question.gd"

func _ready():
	load_question()
	title = "Question 5"
	dialogue = [["This question requires you to finish the definition of the half function. Recall that div is an prefix function and that the half function simply halves a number",1],
	[question,2],["That's the last question in this level, good job!",3]]
