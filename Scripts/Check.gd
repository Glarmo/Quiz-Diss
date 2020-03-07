extends Area2D

onready var number = get_parent().get_name()
onready var slots = get_tree().get_nodes_in_group("Slot")

onready var correct = get_node("../Correct")
onready var incorrect = get_node("../Incorrect")
onready var leave = get_node("../Leave")

onready var time_start = OS.get_unix_time()

var time_now
var time_spent
var errors = 0
var completed = false

func _process(delta):
	time_now = OS.get_unix_time()
	time_spent = time_now - time_start

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		print ("Checking...")
		correct.hide()
		incorrect.hide()
		if check_all():
			print("Correct!")
			correct.show()
			add_to_completed("Question"+number)
			completed = true
		else:
			print("Incorrect!")
			errors += 1
			incorrect.show()

func add_to_completed(question):
	if (!Player_param.problems_completed.has(question)):
		Player_param.problems_completed.append(question)

func log_stats():
	Player_param.log_stats(number, time_spent, errors, completed)

func check_all():
	for slot in slots:
		if !slot.check_solution():
			return false
	return true