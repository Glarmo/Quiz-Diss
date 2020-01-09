extends "res://Scripts/Object.gd"

func _ready():
	dialogue = [["Please complete the question in the green block!",3],["Fantastic! Opening door...", 2],["*Creeeaaak*",3]]
	title = "Door"

func action(inv):
	if (search(Player_param.problems_completed, "7")):
		page = 1
		self.hide()
	pass