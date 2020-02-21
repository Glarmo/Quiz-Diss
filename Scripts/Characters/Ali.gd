extends "res://Scripts/Object.gd"

func _ready():
	var maxDef = preload("res://Images/Terminal/maxDef.png")
	title = "Ali"
	dialogue =[["Hello, one of the principle ways you will be learning in this game is through these computers. There is one over on the right",1],
	["My job is to let you know how they work. When you interact with the computer it will tell you what the question is about and then launch you into the question itself",2],
	["These questions take the form of block coding. This means that you will be fitting in blocks of code into the right slots and then checking if the answer is correct",3],
	[maxDef,4],["This is the type signature of the max function. The type signature tells us what input the function is expecting. The '::' can be read as 'Has type'. Each of the parameters is seperated by '->' the output is the last in the line. So the max function takes two int inputs and outputs an int aswell.",5],
	["This first one should be easy, go have a go and come back when you're finished",6]]

func action(inv):
	if (search(Player_param.problems_completed, "1")):
		dialogue.append(["Not too bad for a monkey, that's all from me I'm afraid. Go back to talk to Dr Composer will you, he was just over to my left!",10])
		page = dialogue.size() - 1