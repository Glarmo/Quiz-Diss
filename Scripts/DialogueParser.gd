extends Node2D

var panalNode
var currTarget
var camera
var entry

func _ready():
	set_process_input(true)
	
	camera = get_node("../Player/KinematicBody2D/Camera2D")
	panalNode = get_node("../CanvasLayer/Dialogue Box")
	var button = panalNode.get_node("Button")
	button.connect("pressed", self, "button_pressed")
	
	
	if (panalNode.is_visible()):
		panalNode.hide()

func button_pressed():
	#Move to next page using index
	currTarget.page = currTarget.dialogue[currTarget.page][1]
	
	#End of dialogue
	if (currTarget.page >= currTarget.dialogue.size()):
		end_dialogue()
	
	entry = currTarget.dialogue[currTarget.page][0]
	if (entry is String):
		#Display new text
		panalNode.get_node("Text").set_text(currTarget.dialogue[currTarget.page][0])
	elif (entry is int):
		#Create buttons
		for i in range(0, currTarget.choices[entry].size()):
			create_button(entry,i)
			panalNode.get_node("Text").hide()
			panalNode.get_node("Button").hide()

		pass
	elif (entry is Sprite):
		#Display image
		pass

func start_dialogue(target):
	panalNode.get_node("Text").set_text(target.dialogue[0][0])
	currTarget = target
	panalNode.show()

func end_dialogue():
	Player_param.state = "default"
	panalNode.hide()
	currTarget.page = 0
	
func create_button(entry, i):
	var choiceButton = Button.new()
	choiceButton.set_name("ChoiceButton"+str(i))
	panalNode.add_child(choiceButton)
	choiceButton.set_position(Vector2(10, 10 + 75*i))
	choiceButton.set_size(Vector2(500,50))
	choiceButton.connect("pressed", self,"branch_taken", [i])
	
	var choiceLabel = Label.new()
	choiceLabel.set_name("ChoiceLabel")
	panalNode.get_node("ChoiceButton" +str(i)).add_child(choiceLabel)
	choiceLabel.set_position(Vector2(10, 10))
	choiceLabel.set_size(Vector2(500,50))
	choiceLabel.set_autowrap(true)
	choiceLabel.set_text(currTarget.choices[entry][i][0])

func branch_taken(index):
	clear_buttons()
	panalNode.get_node("Button").show()
	currTarget.page = currTarget.choices[entry][index][1]
	panalNode.get_node("Text").set_text(currTarget.dialogue[currTarget.page][0])
	panalNode.get_node("Text").show()
	pass
func clear_buttons():
	for i in range(0,currTarget.choices[entry].size()):
		var button = panalNode.get_node("ChoiceButton"+str(i))
		if (button != null):
			button.queue_free()
		else:
			break

