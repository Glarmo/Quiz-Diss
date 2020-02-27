extends Area2D
onready var question = get_node("../../../Question"+get_parent().get_name())
onready var solved = get_node("../Solved")
onready var q_num = get_parent().get_name()
onready var time_start = OS.get_unix_time()

var time_now
var time_spent
var errors
var completed

func _process(delta):
	time_now = OS.get_unix_time()
	time_spent = time_now - time_start
	

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		get_tree().change_scene_to(Player_param.current_scene)
		errors = solved.errors
		completed = solved.completed
		Player_param.log_stats(q_num,time_spent,errors,completed)
		Player_param.state = "default"

