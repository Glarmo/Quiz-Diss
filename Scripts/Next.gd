extends Area2D
var levelOrder = [7,8,9,10,11,15,12,17,18,16,14,13]

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		var n = int(get_parent().name)
		var i = 0
		while i < levelOrder.size():
			if levelOrder[i] == n:
				get_tree().change_scene("res://Scenes/"+str(levelOrder[i+1]) +".tscn")
			i = i + 1

