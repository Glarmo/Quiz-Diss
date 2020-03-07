extends Area2D

onready var solved = get_node("../Solved")

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		solved.log_stats()
		get_tree().change_scene_to(Player_param.current_scene)
		Player_param.state = "default"

