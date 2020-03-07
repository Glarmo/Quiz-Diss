extends "res://Scripts/Question.gd"

func _ready():
	load_question()
	title = "Question 3"
	dialogue = [["This question will require you to finish the definition for the 'sum' function. The 'sum' function takes two integer inputs and outputs the sum of the inputs",1],
	[question,2],["Great job! Head on back to Alice for a gift or simply head over the bridge to the next question!",3]]
