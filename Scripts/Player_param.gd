extends Node

var state = "default"
var speed = 125
var problems_completed = []
var player_pos = Vector2()
var current_scene
var dialogue = []
var inv = []

func dsearch(title):
	var found = []
	for entry in dialogue:
		if title in entry:
			found.append(entry[1])
	return found

func tsearch():
	var found = []
	for entry in dialogue:
		if !(entry[0] in found) and entry[0].similarity("Question") < 0.8:
			found.append(entry[0])
	return found