extends Node2D

var title
var dialogue = [[]]
var secondDialogue = [[]]
var thirdDialogue = [[]]
var page = 0
var first_time = true
var choices = []

func action(inv):
	pass
func _ready():
	pass
func search(list, x):
	if (list.find(x) != -1):
		return true
	else:
		return false
