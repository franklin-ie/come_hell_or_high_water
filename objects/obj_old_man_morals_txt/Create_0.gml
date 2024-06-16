/// @description https://forum.gamemaker.io/index.php?threads/text-popup-when-opening-a-chest.97093/



msg = 0
alarm_set(0, 30)

seq = layer_sequence_create("textBox", 960, 700, seq_txtbox)
index = 0
wait = false
global.allow_move = false

text_store = [
	"The old man's eyes are shut,\nhis body limp and weak.",
	"Would you like to save the old man?\nfor $100? Y[Y]/N[X] (keyboard/controller)"
]