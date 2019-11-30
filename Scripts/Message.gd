extends Node2D

func set_message(message):
	$Label.set_text(message)

func _physics_process(delta):
	if (Input.is_action_just_pressed("ui_select")):
		queue_free()
		Player_param.state = "default"

