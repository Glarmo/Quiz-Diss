extends KinematicBody2D

var movedir = Vector2()
var interactable
var target
var camera2
var facing = "Down"

func _ready():
	camera2 = get_node("Camera2D")
	position = Player_param.player_pos

func _physics_process(delta):
	#State Machine
	match Player_param.state:
		"default":
			default_state()
		"message":
			message_state()
		"journal":
			message_state()

func default_state():
	#Allows player to move and interact
	controls_movement_loop()
	interact_loop()

func message_state():
	#Stops the player from moving until finished with dialogue
	pass

func controls_movement_loop():
	#camera2.current = true
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")
	var down = Input.is_action_pressed("ui_down")
	var up = Input.is_action_pressed("ui_up")
	
	movedir.x = -int(left) + int(right)
	movedir.y = -int(up) + int(down)
	movedir = movedir.normalized() * Player_param.speed
	move_and_slide(movedir)
	Player_param.player_pos = position
	facing_direction()
	
func interact_loop():
	if (interactable and Input.is_action_just_pressed("ui_select")):
		print ("interacting with: "+ target.get_name())
		
		#Passes the inventory to the object for any checks
		target.action(Player_param.inv)
		#Changes the player state
		Player_param.state = "message"
		get_node("../../Parser").start_dialogue(target)
		
		#Adds an item to the inventory
		if (target.is_in_group("Item") and Player_param.inv.find(target.get_name()) < 0):
			Player_param.inv.append(target.get_name())
			print(Player_param.inv)
	if (!interactable and Input.is_action_just_pressed("ui_select")):
		print("Nothing here")

func interactable_body_enter(body, obj):
	#Called when we enter the interactable space of an object
	if (body.get_parent().get_name() == "Player"):
		interactable = true
		target = obj

func interactable_body_exit(body, obj):
	#Called when we exit the interactable space of an object
	if (body.get_parent().get_name() == "Player"):
		interactable = false
		target = null

func facing_direction():
	if movedir.y > 0:
		facing = "Down"
		$Sprite.play("WalkDown")
	elif movedir.y < 0:
		facing = "Up"
		$Sprite.play("WalkUp")
	elif movedir.x > 0:
		facing = "Right"
		$Sprite.play("WalkRight")
	elif movedir.x < 0:
		facing = "Left"
		$Sprite.play("WalkLeft")
	else:
		$Sprite.play("Idle" + facing)