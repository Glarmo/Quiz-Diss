extends Node2D

var panalNode
var currTarget
var camera
var entry
var imageHolder
var button
var choice_buttons = []

func _ready():
	#set_process_input(true)
	camera = get_node("../Player/KinematicBody2D/Camera2D")
	panalNode = get_node("../CanvasLayer/Dialogue Box")
	imageHolder = get_node("../CanvasLayer/Texture")
	button = panalNode.get_node("Button")
	button.connect("pressed", self, "button_pressed")
	
	if (panalNode.is_visible()):
		panalNode.hide()

func button_pressed():
	#Move to next page using index
	currTarget.page = currTarget.dialogue[currTarget.page][1]
	
	if end_of_text():
		end_dialogue()
	
	entry = currTarget.dialogue[currTarget.page][0]
	display_entry(entry)

func start_dialogue(target):
	currTarget = target
	display_entry(target.dialogue[target.page][0])
	panalNode.show()

func end_dialogue():
	Player_param.state = "default"
	panalNode.hide()
	imageHolder.set_texture(null)
	currTarget.page = 0

func create_button(entry, i):
	var choiceButton = Button.new()
	var choiceLabel = Label.new()
	choiceButton.set_name("ChoiceButton"+str(i))
	choiceLabel.set_name("ChoiceLabel")
	panalNode.add_child(choiceButton)
	choiceButton.add_child(choiceLabel)
	choiceButton.connect("pressed", self,"branch_taken", [i])
	choiceLabel.set_text(currTarget.choices[entry][i][0])
	choice_buttons.append(choiceButton)
	
	#Resizes button and label correctly
	choiceButton.set_position(Vector2(140, 20 + 60*i))
	choiceButton.set_size(Vector2(400,50))
	choiceLabel.set_position(Vector2(10, 10))
	choiceLabel.set_size(Vector2(400,50))
	choiceLabel.set_autowrap(true)

func branch_taken(choice):
	currTarget.page = currTarget.choices[entry][choice][1]
	display_entry(currTarget.dialogue[currTarget.page][0])
	panalNode.get_node("Text").show()
	panalNode.get_node("Button").show()
	clear_buttons()

func clear_buttons():
	for button in choice_buttons:
		button.queue_free()
	choice_buttons.clear()
	print("cleared")

func display_entry(entry):
	if (entry is String): #Display Text
		panalNode.get_node("Text").set_text(entry)
		add_to_journal([currTarget.title, entry])
	elif (entry is int): #Create buttons and hide UI
		panalNode.get_node("Text").hide()
		panalNode.get_node("Button").hide()
		for i in range(0, currTarget.choices[entry].size()):
			create_button(entry,i)
	elif (entry is Texture): #Display Image
		imageHolder.set_texture(entry)
	elif (entry is Resource):
		get_tree().change_scene_to(entry)

func end_of_text():
	if currTarget.page >= currTarget.dialogue.size():
		return true
	else:
		return false

func add_to_journal(entry):
	if !Player_param.dialogue.has(entry):
		Player_param.dialogue.append(entry)

func _input(event):
	if event.is_action_pressed("ui_accept") and panalNode.get_node("Text").is_visible() and currTarget != null:
		button_pressed() #This allows the user to press the 'Enter' Key to move dialogue

