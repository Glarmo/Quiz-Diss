extends Control

var lv1
var lv2
var lv3

func _ready():
	lv1 = get_node("Level 1")
	lv2 = get_node("Level 2")
	lv3 = get_node("Level 3")
	lv1.connect("pressed", self, "launch_level",[lv1.name])
	lv2.connect("pressed", self, "launch_level",[lv2.name])
	lv3.connect("pressed", self, "launch_level",[lv3.name])

func launch_level(name):
	Player_param.state = "default"
	get_tree().change_scene("Levels/"+name+".tscn")
