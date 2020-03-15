extends "res://Scripts/Question.gd"

func _ready():
	load_question()
	title = "Question 24"
	dialogue = [["In this question you will define the reverse function. This function takes a list and reverses the order of the elements so that the last element becomes the first. Recall how append and concatenate work! If you're having trouble go back to Link Liz or check your notes",1],
	[question,2],["Awful ending, none of this makes sense. Who even am I. Who is this speaking? Talking to a bloody monkey! Anyway that's it! Thanks for getting this far!",3]]