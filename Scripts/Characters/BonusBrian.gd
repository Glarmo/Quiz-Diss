extends "res://Scripts/Object.gd"

func _ready():
	title = "Bonus Brain"
	dialogue = [["You've reached the end of the first level, congratulations! If you have any prior programming experience, or if you are simply curious, I can tell you a bit more about the Haskell language",1],
	[0,0],["Very well, go over to that blue cross and you can leave for the menu and progress to the next level",9],
	["Fanstastic, well firstly what is Haskell? Well as my grandmother used to say Haskell is a purely functional programming language. Meaning we program using functions! Most Languages around today are imperative, focusing on how the program operates whereas Haskell, and any other functional language, looks at what the program does",4],
	["The building blocks of haskell (And other functional programming languages) are functions and immutable data. You've gone over functions already in this level so what is immutable data?",5],
	["Immutable simply means it is unable to change. Imperative programming languages will contain variables (Factors we are controlling/measuring) or states that can be altered by the program or functions. For example, if I set the variable x to 3.5 I could alter the value of x later on. With functional programming this isn't possible, I would not be able to change the value of x",6],
	["The only thing a function can do is calculate its result and then output it, there are no side effects. If I set x to 3.5 I could not change it’s value, it will always be 3.5",7], 
	["This could be seen as negative but as you will come to see it has some great effects. For example if I call a function with the same arguments twice I will get the same result, this makes testing very easy as I can easily see that the function works correctly. This feature is called referential transparency",8],
	["I hope this clears up any questions about Haskell you may have had. Go on over to the blue cross and you can return to the menu",9]]
	choices = [[["Yes I'd like to know more!",3],["No, leave me be old man",2]]]
