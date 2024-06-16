/// @description https://forum.gamemaker.io/index.php?threads/text-popup-when-opening-a-chest.97093/



msg = 0
alarm_set(0, 30)

seq = layer_sequence_create("textBox", 960, 700, seq_txtbox)
index = 0
wait = false
global.allow_move = false

text_store = [
	"Hey! What are you trying to do?",
	"I dropped that money there.\nDon't you dare try to take it!",
	"I'm warning you, STAY AWAY"
]

color = c_black