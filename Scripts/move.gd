extends Area2D

var clicked = false
var ogPos

func _ready():
	ogPos = position
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
		position = get_global_mouse_position()
	elif !clicked:
		position = ogPos
		for area in areas:
			if area.name == "Slot1" || area.name == "Slot2" || area.name == "Slot3" || area.name == "Slot4" || area.name == "Slot5":
				position = area.position
