extends Node2D

func _ready():
	print("starting game...")
	var player = get_node("Player/KinematicBody2D")
	var objects = get_tree().get_nodes_in_group("Interactable")
	for i in range(objects.size()):
		var currentNode = get_node(objects[i].get_path())
		var area2D = currentNode.get_node("Range")
		area2D.connect("body_entered", player, "interactable_body_enter", [currentNode])
		area2D.connect("body_exited", player, "interactable_body_exit", [currentNode])