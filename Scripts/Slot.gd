extends Area2D

func checkSol():
	var key = get_parent().get_parent().get_parent().get_name()
	var areas = get_overlapping_areas()
	for area in areas:
		var asw = area.name
		if name == "Slot1" and asw == (key + "a"):
			return true
		elif name == "Slot2" and asw == (key + "b"):
			return true
		elif name == "Slot3" and asw == (key + "c"):
			return true
		elif name == "Slot4" and asw == (key + "d"):
			return true
		elif name == "Slot5" and asw == (key + "e"):
			return true
		else:
			print(name +"/"+ asw)
			return false

