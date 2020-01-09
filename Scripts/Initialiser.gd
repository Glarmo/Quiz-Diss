extends Node2D

func _ready():
	print("starting game...")
	var player = get_node("Player/KinematicBody2D")
	var objects = get_tree().get_nodes_in_group("Interactable")
	for object in objects:
		var area2D = object.get_node("Range")
		area2D.connect("body_entered", player, "interactable_body_enter", [object])
		area2D.connect("body_exited", player, "interactable_body_exit", [object])
