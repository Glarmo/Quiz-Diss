extends Area2D
onready var question = get_node("../../../Question"+get_parent().get_name())
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		get_tree().change_scene_to(Player_param.current_scene)
		Player_param.state = "default"
		print(Player_param.inv)
