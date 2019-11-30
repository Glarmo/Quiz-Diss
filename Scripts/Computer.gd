extends "res://Scripts/Object.gd"

func _ready():
	dialogue = [["I am a computer",1],["turning on....", 2],["what do you need?",3], [0,4],["Blowing up...",5],["Explosion complete...",7],["but the end is not here",7],["Goodbye :/",10]]
	title = "Computer"
	choices = [[["I need to blow up earth",4], ["I wish to see the end",6]]]

func action(inv):
	#Launch question
	if (inv.find("Key") != -1):
		dialogue.append(["hello",10])
	else:
		print("no key")
	pass
