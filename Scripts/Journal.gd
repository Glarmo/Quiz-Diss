extends Panel

onready var charV = get_node("Characters/VBoxContainer")
onready var diagV = get_node("Dialogue/VBoxContainer")
onready var base = get_node("Dialogue/VBoxContainer/BaseImage")

var button_size = Vector2(300,30)
var buttons = []

func _input(event):
	if Input.is_action_just_pressed("journal") and (Player_param.state == "default" or "journal"):
		if Player_param.state == "journal":
			self.hide()
			Player_param.state = "default"
			clear_entries()
		elif Player_param.state == "default":
			self.show()
			Player_param.state = "journal"
			setup()

func setup():
	var spoken = Player_param.tsearch()
	for title in spoken:
		if !(title in buttons):
			add_title_button(title)

func add_title_button(title):
	var title_button =  Button.new()
	var title_label = Label.new()
	charV.add_child(title_button)
	title_button.add_child(title_label)
	title_label.set_text(title)
	title_button.connect("pressed", self, "display_title_text", [title])
	title_button.set_size(button_size)
	title_label.set_size(button_size)
	buttons.append(title)

func display_title_text(title):
	clear_entries()
	var dialogue = Player_param.dsearch(title)
	for entry in dialogue:
		if (entry is String):
			add_label(entry)
		elif (entry is Texture):
			add_texture(entry)

func add_texture(texture):
	var image = base.duplicate(1)
	diagV.add_child(image)
	image.set_texture(texture)

func add_label(text):
	var dialogue_label = Label.new()
	diagV.add_child(dialogue_label)
	dialogue_label.set_text(text)
	dialogue_label.set_size(button_size)
	dialogue_label.set_autowrap(true)

func clear_entries():
	var entries = diagV.get_children()
	for entry in entries:
		if (entry.name != "BaseImage"):
			diagV.remove_child(entry)
			entry.queue_free()
		
