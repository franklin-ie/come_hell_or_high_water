/// @description https://forum.gamemaker.io/index.php?threads/text-popup-when-opening-a-chest.97093/



msg = 0
seq = layer_sequence_create("textBox", 960, 700, seq_txtbox)

alarm_set(0, 30)

index = 0
wait = false
global.allow_move = false

text_store = [
	"Welcome to the maze!\nPress space to continue.",
	"To win, simply come down this straight path\nto the Popeye's",
	"Good luck!"
]

color = c_black