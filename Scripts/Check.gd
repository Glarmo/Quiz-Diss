extends Area2D

onready var slot1 = get_node("../Question").get_child(0).get_child(0)
onready var slot2 = get_node("../Question").get_child(0).get_child(1)
onready var slot3 = get_node("../Question").get_child(0).get_child(2)
onready var slot4 = get_node("../Question").get_child(0).get_child(3)
onready var slot5 = get_node("../Question").get_child(0).get_child(4)
onready var slot6 = get_node("../Question").get_child(0).get_child(5)

onready var correct = get_node("../Correct")
onready var incorrect = get_node("../Incorrect")
onready var next = get_node("../Next")

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		print ("Checking...")
		correct.hide()
		incorrect.hide()

		next.hide()
		if slot1.checkSol() and (slot2 == null or slot2.checkSol()) and (slot3 == null or slot3.checkSol()) and (slot4 == null or slot4.checkSol()) and (slot5 == null or slot5.checkSol()) and (slot6 == null or slot6.checkSol()):
			print("correct")
			correct.show()
			next.show()
		else:
			print("wrong")
			incorrect.show()
