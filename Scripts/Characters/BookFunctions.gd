extends "res://Scripts/Object.gd"

func _ready():
	var multi = preload("res://Images/Terminal/multi.png")
	var square = preload("res://Images/Terminal/square.png")
	var roundImg = preload("res://Images/Terminal/round.png")
	var maxImg = preload("res://Images/Terminal/max.png")
	title = "Book of Functions"
	dialogue = [["Welcome to Haskell Quest, this is a game that aims to teach you about the Haskell programming language. Before we start just a quick note on how you should play the game. Talk to all the characters you see! If you need to revist an explanation open your journal with 'J' to look at past dialogues. With that out of the way we're going to jump right in and talk about functions!",1],
	["A function is a unit of code which performs some action, simple functions include adders or subtractors. These functions take two integer inputs perform their respective action and output the result. From these humble beginings we can build up and create more complicated functions, like a function that counts the most frequent words in a book! Often programmers will talk about calling a function this simply means that the function is being used",2],
	["Here are some examples of functions:",3],[multi,4],[square,5],[roundImg,6],[maxImg,7],
	["In short a function takes inputs, computes something with those inputs and outputs the result. Head on over the bridge for a talk on how we compose functions",8]]
