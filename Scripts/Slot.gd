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
[["5a","5b"],["5a","5b"],["5c","5f"],["5d"],["5c","5f","5e"],["5c","5f","5e"]],
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
[["[4,8]"]],
#q14
[["14a"],["14b"],["14c"],["14d"]],
#q15
[["15a"],["15b"],["15c"],["15d"],["15e"],["15f"],["15g"],["15h"]],
#q16
[["16a"],["16b"],["16c"],["16d"],["16e"],["16f"],["16g"]],
#q17
[["10"]],
#q18
[["wor"]],
#q19
[["19a"],["19b"],["19c"],["19d"],["19e","19i"],["19f"],["19g"],["19h"],["19e","19i"],["19j"]],
#q20
[["\"HKLL\""]],
#q21
[["68"]],
#q22
[["22a"],["22b","22c"],["22b","22c"],["22d"],["22e","22j","22n"],["22f","22g"],["22f","22g"],["22h"],["22i","22m"],["22e","22j","22n"],["22k","22o"],["22l"],["22i","22m"],["22e","22j","22n"],["22k","22o"]],
#q23
[["23a","23b"],["23a","23b"],["23c","23d"],["23c","23d"],["23e"]],
#q24
[["24a","24b"],["24a","24b"],["24c"],["24d"],["24e"],["24f"],["24g"]],
]

func _ready():
	p_number = int(get_owner().get_name())
	s_number = int(name.right(4)) - 1

func _process(delta):
	if (get_overlapping_areas().size() == 0 and occupied):
		unfilled()

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
