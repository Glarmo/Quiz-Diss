extends "res://Scripts/Object.gd"

var level
var question

func _ready():
	level = load("res://Scenes/"+self.name.right(8)+".tscn") #This gives us the question number which is then used to instance the correct scene
	dialogue = [["This is a question about getting the maximum",1],[level,2]]
	title = "Question"

func get_level():
	return ("res://"+get_tree().get_current_scene().get_name()+".tscn")

func action(inv):
	Player_param.current_scene = load(get_level())

