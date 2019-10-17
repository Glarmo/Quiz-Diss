extends Area2D
var cheatSheet = [["PARTS NEEDED TO SOLVE QUESTION"],
#q1
[],
#q2
[],
#q3
[],
#q4m
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
		elif name == "Slot7" and checkAll(asw,cheatSheet[int(key)][6]):
			return true
		elif name == "Slot8" and checkAll(asw,cheatSheet[int(key)][7]):
			return true
		elif name == "Slot9" and checkAll(asw,cheatSheet[int(key)][8]):
			return true
		elif name == "Slot10" and checkAll(asw,cheatSheet[int(key)][9]):
			return true
		elif name == "Slot11" and checkAll(asw,cheatSheet[int(key)][10]):
			return true
		elif name == "Slot12" and checkAll(asw,cheatSheet[int(key)][11]):
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
