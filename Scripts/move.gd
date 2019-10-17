extends Area2D

var clicked = false
var inSlot = false
var ogPos
var width

func _ready():
	ogPos = position
	width = get_node("Sprite").get_texture().get_width()
	pass

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		self.on_click()

func on_click():
    clicked = !clicked

func _process(delta):
	var areas = get_overlapping_areas()
	if clicked:
		inSlot = false
		position = get_global_mouse_position()
	elif !clicked:
		#position = ogPos
		for area in areas:
			if    (area.name == "Slot1" || area.name == "Slot2" || area.name == "Slot3" 
				|| area.name == "Slot4" || area.name == "Slot5" || area.name == "Slot6" 
				|| area.name == "Slot7" || area.name == "Slot8" || area.name == "Slot9"
				|| area.name == "Slot10" || area.name == "Slot11" || area.name == "Slot12"
				):
				inSlot = true
				position.y = area.position.y
				position.x = area.position.x + (width/2 - 50*(area.get_scale().x)) #This puts the part at the left most of the slot
			elif inSlot and area.inSlot: #This keeps parts overlapping
				position= ogPos
		if !inSlot:
			position = ogPos
