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
[],
#q7
[["7a"]],
#q8
[["8a"],["8b","8c"],["8b","8c"],["8d"]],
#q9
[["9a"]],
#q10
[["10a"],["10b","10c"],["10d","10e","10f","10g"]],
#q11
[["11c","11h","11e","11i"],["11a","11j","11l","11g","11k"],["11a","11j","11l","11g","11k"],["11a","11j","11l","11g","11k"],["11a","11j","11l","11g","11k"],["11a","11j","11l","11g","11k"],["11a","11j","11l","11g","11k"]],
#q12
[["12a"]],
#q13
[["13a","13b"],["13a","13b"],["13c","13d"],["13c","13d"],["13e"],["13f"],["13g"],["13h"],["13i"]],
#q14
[["14a"],["14b1","14b2"],["14c"],["14d1","14d2"],["14e"],["14f"],["14g","14j"],["14h"],["14i"],["14j","14g"],["14k"],["14l"]],
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
	if (!occupied):
		return false 
	elif (name == "TextSlot"):
		return checkAll(get_child(0).text, cheatSheet[p_number][0])
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
