extends "res://Scripts/Object.gd"

var question

func get_level(): #This gives the players current level
	return ("res://Levels/"+get_tree().get_current_scene().get_name()+".tscn") 

func action(inv):
	Player_param.current_scene = load(get_level())

func load_question():
	question = load("res://Questions/"+self.name.right(8)+".tscn") #This gives us the question number which is then used to instance the correct scene

func load_menu():
	question = load("res://Levels/Menu.tscn")
