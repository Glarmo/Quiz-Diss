extends Area2D
var p_number
var s_number
var areas
var occupied = false
var cheatSheet = [["PARTS NEEDED TO SOLVE QUESTION"],
#q1
[["1a"],["1b","1c"],["1b","1c"]],
#q2
[["2a"],["2b","2c"],["2b","2c","2d"],["2b","2c","2d"]],
#q3
[["3a","3b","3c"],["3a","3b","3c"],["3a","3b","3c"],["3d"],["3g","3f","3e","3i"],["3g","3f","3e","3i"],["3g","3f","3e","3i"],["3h"],["3g","3f","3e","3i"]],
#q4
[["4a","4b","4c","4d","4e"],["4a","4b","4c","4d","4e"],["4a","4b","4c","4d","4e"],["4a","4b","4c","4d","4e"],["4a","4b","4c","4d","4e"],["4f","4i"],["4g","4h","4j","4k"],["4g","4h","4j","4k"],["4f","4i"],["4g","4h","4j","4k"],["4g","4h","4j","4k"]],
#q5
[["5a"]],
#q6
[["6a"],["6b"],["6c"]],
#q7
[["7a"],["7b"],["7c","7e"],["7d"],["7c","7e"],["7f"],["7g"],["7h"]],
#q8
[["8a","8b"],["8a","8b"],["8c","8e","8i"],["8d"],["8c","8e","8i"],["8f"],["8g","8j"],["8h"],["8c","8e","8i"]],
#q9
[["9a"],["9b","9i","9e"],["9c"],["9d","9j"],["9b","9i","9e"],["9f"],["9g"],["9h"],["9b","9i","9e"]],
#q10
[["10a","10b","10c"],["10a","10b","10c"],["10a","10b","10c"],["10f","10j","10d","10g"],["10e"],["10f","10j","10d","10g"],["10f","10j","10d","10g"],["10h","10k"],["10i","10l"],["10f","10j","10d","10g"],["10h","10k"],["10i","10l"]],
#q11
[["11a"],["11b"],["11c"],["11d"]],
#q12
[["12a"],["12b","12e"],["12c"],["12d"],["12b","12e"]],
#q13
[["[2,4]"]],
#q14
[["14a"],["14b"],["14c"],["14d"]],
#q15
[["15a"]],
#q16
[["16a"]],
#q17
[["17a"],["17b"],["17c"],["17d"],["17e"],["17f"],["17g"]],
#q18
[["18a"],["18b"],["18c1","18c2"],["18d"],["18e"],["18f"],["18g"],["18h"]],
#q19
[["syc"]],
#q20
[["20a"],["20b"],["20c","20d","20e","20f"],["20c","20d","20e","20f"],["20c","20d","20e","20f"],["20c","20d","20e","20f"],["20g"],["20h"],["20i"],["20j"],["20k"],["20l"]],
#q21
[["14a"],["14b1","14b2"],["14c"],["14d1","14d2"],["14e"],["14f"],["14g","14j"],["14h"],["14i"],["14j","14g"],["14k"],["14l"]],
]

func _ready():
	p_number = int(get_owner().get_name())
	s_number = int(name.right(4)) - 1

func check_solution():
	areas = get_overlapping_areas()
	if (name == "TextSlot"):
		return checkAll(get_child(0).text, cheatSheet[p_number][0])
	elif (!occupied):
		return false
	else:
		for area in areas:
			var answer = area.name
			if checkAll(answer, cheatSheet[p_number][s_number]):
				return true
			else:
				#Here is when we know a mistake has been made
				#I should create a function that outputs some kind of feedback
				#Most feedback will be question specific but some can be general i.e. "Remember what x just told you!"
				print(name +"/"+ answer)
				print(cheatSheet[p_number][s_number])
				return false

#Runs through a list and checks if an item exists in it
func checkAll(answer, list):
	for solution in list:
		if answer == solution:
			return true

func filled():
	occupied = true
	$Sprite.hide()

func unfilled():
	occupied = false
	$Sprite.show()

func is_occupied():
	return occupied
