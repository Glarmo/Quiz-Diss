extends Area2D
var cheatSheet = [["PARTS NEEDED TO SOLVE QUESTION"],
#q1
[],
#q2
[],
#q3
[],
#q4
[],
#q5
[],
#q6
[],
#q7
[["7a"]],
#q8
[["8a"],["8b","8c"],["8b","8c"],["8d"]],
#q9
[["9a"]],
#q10
[["10a"],["8j","10c"],["8b","8c","8h","8i"]],
#q11
[["11c","11h","11e","11i"],["11a","11j","11l","11g","11k"],["11a","11j","11l","11g","11k"],["11a","11j","11l","11g","11k"],["11a","11j","11l","11g","11k"],["11a","11j","11l","11g","11k"],["11a","11j","11l","11g","11k"]],
]


func checkSol():
	var key = get_parent().get_parent().get_parent().get_name()
	var areas = get_overlapping_areas()
	for area in areas:
		var asw = area.name
		if name == "Slot1" and checkAll(asw,cheatSheet[int(key)][0]):
			return true
		elif name == "Slot2" and checkAll(asw,cheatSheet[int(key)][1]):
			return true
		elif name == "Slot3" and checkAll(asw,cheatSheet[int(key)][2]):
			return true
		elif name == "Slot4" and checkAll(asw,cheatSheet[int(key)][3]):
			return true
		elif name == "Slot5" and checkAll(asw,cheatSheet[int(key)][4]):
			return true
		elif name == "Slot6" and checkAll(asw,cheatSheet[int(key)][5]):
			return true
		else:
			print(name +"/"+ asw)
			print(cheatSheet[int(key)])
			return false

#Runs through a list and checks if an item exists in it
func checkAll(area, list):
	for a in list:
		if area == a:
			return true
