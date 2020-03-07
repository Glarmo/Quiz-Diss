extends "res://Scripts/Question.gd"

func _ready():
	load_question()
	title = "Question 4"
	dialogue = [["In this question you will be required to finish the definition of fourMax. This function takes 4 int inputs and outputs the biggest of them all. Recall the max function",1],
	[question,2],["Nice one! Try the next question further down",3]]
