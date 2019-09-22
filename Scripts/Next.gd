extends Area2D

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		var n = int(get_parent().name) + 1
		get_tree().change_scene("res://Scenes/"+str(n) +".tscn")
