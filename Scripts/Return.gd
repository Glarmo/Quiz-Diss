extends "res://Scripts/Question.gd"

func _ready():
	load_menu()
	title = "End of Level"
	dialogue = [["You've reached the end of the level do you wish to return to the menu?",1],
	[0,0],[question,2],["Okay",4]]
	
	choices = [[["Yes, I've learnt all I can",2],["No, there are a few things I want to go over again",3]]]

func action(inv):
	Player_param.player_pos = Vector2(170,60)