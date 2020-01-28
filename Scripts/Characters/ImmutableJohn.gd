extends "res://Scripts/Object.gd"

func _ready():
	title = "Immutable John"
	dialogue = [["Hello Madam you seem to have come at precisely the right time, I heard you talking to my brother across the bridge, so what is it you seek?",1],[0,0],
	["cake story",3],["Well I best tell you about immutable data!",4],
	["Immutable simply means it is unable to change. Imperative programming languages will contain variables (Factors we are controlling/measuring) or states that can be altered by the program or functions. For example, if I set the variable x to 3.5 I could alter the value of x later on. With functional programming this isn't possible, I would not be able to change the value of x",5],
	["The only thing a function can do is calculate its result and then output it, there are no side effects. If I set x to 3.5 I could not change it’s value, it will always be 3.5",6], ["This could be seen as negative but as you will come to see it has some great effects. For example if I call a function with the same arguments twice I will get the same result, this makes testing very easy as I can easily see that the function works correctly. This feature is called referential transparency",7],
	["Head down to Dr Composer to learn about function calls will ya!",8]]
	choices = [[["I want to know more about the computer cake!",2],["I want to learn what it means for data to be immutable",4]]]
