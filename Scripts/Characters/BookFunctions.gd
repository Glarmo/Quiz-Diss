extends "res://Scripts/Object.gd"

func _ready():
	var multi = preload("res://Images/Terminal/multiplication.png")
	var flipH = preload("res://Images/Terminal/flipH.png")
	var scaleImg = preload("res://Images/Terminal/scale.png")
	var maxImage = preload("res://Images/Terminal/max.png")
	title = "Book of Functions"
	dialogue = [["A function is a unit of code which performs some action, simple functions include things like adders and subtractors. These functions take two integer inputs perform their respective action and output the result. From these humble beginings we can build up and create more complicated functions like a function that counts the most frequent words in a book! Often programmers will talk about calling a function this simply means that the function is being used",1],
	["Here are some examples of functions:",2],[multi,3],[flipH,4],[scaleImg,5],[maxImage,6]]
