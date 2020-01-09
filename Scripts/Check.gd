extends Area2D

onready var number = get_parent().get_name()
onready var slots = get_tree().get_nodes_in_group("Slot")

onready var correct = get_node("../Correct")
onready var incorrect = get_node("../Incorrect")
onready var next = get_node("../Next")
onready var leave = get_node("../Leave")

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
			add_to_completed(number)
			#leave.show()
		else:
			print("Incorrect!")
			incorrect.show()

func add_to_completed(num):
	if (Player_param.problems_completed.find(num) == -1):
		Player_param.problems_completed.append(num)
	pass

func check_all():
	for slot in slots:
		if !slot.check_solution():
			return false
	return true