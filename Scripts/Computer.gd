extends "res://Scripts/Object.gd"

func _ready():
	var image = preload("res://Images/block.png")
	dialogue = [["Hello my name is Felipe,",1],["Let me just check your chart", 2],[image,3],["So why are you in hear today?",4], [0,5],["Let me take a look",6],["Your leg looks fine",8],["How are you listening to me then?",8],["Get outta here!",12]]
	title = "Doctor"
	choices = [[["My leg hurts",5], ["I can't hear anything",7]]]

func action(inv):
	#Launch question
	if (search(inv, "Key")):
		dialogue.append(["give me that key!",0])
		Player_param.inv.erase("Key")
		page = 9
	if (search(Player_param.problems_completed, "7")):
		dialogue.append(["ah I see you completed the problem, what do you need?", 3])
		page = dialogue.size() - 1
	if (!first_time):
		page = dialogue.size() - 1
