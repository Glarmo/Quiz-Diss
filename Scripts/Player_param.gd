extends Node

var state = "default"
var speed = 125
var problems_completed = []
var player_pos = Vector2()
var current_scene
var dialogue = []
var inv = []
var stats = File.new()
var stat_entries = []

func log_stats(num, time, error, complete):
	stat_entries.append(str("(", num, ": Time: ", time, ", Errors: ", error, ", Completed: ", complete, ")"))
	stats.open("user://stats.txt", File.WRITE)
	stats.store_string(create_entry())
	stats.close()

func create_entry():
	var long_string = "Stats:\n"
	for entry in stat_entries:
		long_string = str(long_string,"\n",entry)
	return long_string

func dsearch(title):
	var found = []
	for entry in dialogue:
		if title in entry:
			found.append(entry[1])
	return found

func tsearch():
	var found = []
	for entry in dialogue:
		if !(entry[0] in found) and entry[0].similarity("Question") < 0.8: #This prevents journal entries of the questions
			found.append(entry[0])
	return found

func get_dir():
	stats.open("user://stats.txt", File.READ)
	return stats.get_path_absolute()