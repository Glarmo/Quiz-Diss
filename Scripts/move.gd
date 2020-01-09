extends Area2D

var clicked = false
var slot
var ogPos
var width

func _ready():
	ogPos = position
	width = get_node("Sprite").get_texture().get_width()

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		print(self.name +" - Clicked") #FOR TESTING PURPOSES
		self.on_click()

func _process(delta):
	var areas = get_overlapping_areas()
	if clicked:
		follow_mouse()
	elif !clicked:
		for area in areas:
			if (areas.size() > 1): #This stops one block moving into 2 slots, preventing a bug
				position = ogPos
			elif area.is_in_group("Slot") and !area.is_occupied():
				place(area)
		if (slot == null):
			position = ogPos

func place(area):
	area.filled()
	slot = area
	position.y = area.position.y
	position.x = area.position.x + (width/2 - 50*(area.get_scale().x))  #This puts the part at the left most of the slot
	
func follow_mouse():
	position.y = get_global_mouse_position().y
	position.x = get_global_mouse_position().x #- get_parent().get_parent().get_parent().position.x
	if (slot != null):
		slot.unfilled()
		slot = null

func on_click():
    clicked = !clicked

