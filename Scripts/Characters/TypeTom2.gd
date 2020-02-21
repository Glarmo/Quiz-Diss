extends "res://Scripts/Object.gd"

func _ready():
	var typeVar = preload("res://Images/Terminal/typeVariables.png")
	var fstSnd = preload("res://Images/Terminal/fstSnd.png")
	title = "Type Tom"
	dialogue = [["Hello, it's me again!",1],[0,0],
	["Telling you would shine light of day on my terrible dark secret. A secret so dark that the even now I feel Shiva's distant grip tighten on my soul as we speak",4],
	["How could you say such a hurtful thing to the well realised, thoughtful and complex character that is Type Tom. Player I curse you. You are now cursed",4],
	["Anyway, enought of that. You need to learn about type variables!",5],
	[typeVar,6],["As you can see these functions return the first and second element, respectively, of a given tuple, regardless of the type. Try and think what the type signature for these functions would looks like. It couldn't be like anything we've seen before",7],
	[fstSnd,8],["What we have here are called type variables. Like the formal parameters from earlier these type variables are replaced by the types of the input when the function is called. For example 'fst (5,'j')' the 'a' is replaced with Int and the 'b' is replaced with Char. Something you may have intuited is that 'a' and 'b' need not be different types, the function simply says that the output will be of the same type as 'a'",9],
	["We could call our type variables anything, but we use a single character for simplicity. Having type variables allows us to make general functions, like fst and snd, these functions can operate on any type. Similarly, the head function which returns the first element of a list should work on a list of any type",10],
	["You may have noticed that the formal parameter looks slightly different. This is because the input is a tuple pair. The formal parameter can be represented in many different ways but most will reflect the structure of the input type. For instance if the input was a list the formal parameter could be '(x:xs)' denoted using brackets and ':' seperating them. The ':' is used in haskell to concatenate (link) two lists together",11],
	["That's all from me at this time. You must now run the gauntlet of challenges ahead in order to be admitted to the next level. Good luck",12]]
	
	choices = [[["How did you get over here??",2],["I hate you Type Tom and everything you stand for",3]]]