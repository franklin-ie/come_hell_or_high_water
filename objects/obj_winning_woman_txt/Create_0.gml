/// @description https://forum.gamemaker.io/index.php?threads/text-popup-when-opening-a-chest.97093/



msg = 0
alarm_set(0, 30)

seq = layer_sequence_create("textBox", 960, 700, seq_txtbox)
index = 0
wait = false
global.allow_move = false

text_store = [
	"Thank you, young lad!",
	"Now, I'll be on my merry way to go home and\nbeyond.",
	"Without your help, I wouldn't have made it\npast those nasty cars! Imagine trying to run\nover an old lady...",
	"Have some candy money, boy!",
	"You got 10000 dollars!"
]

color = c_black