/// @description https://forum.gamemaker.io/index.php?threads/text-popup-when-opening-a-chest.97093/



msg = 0
alarm_set(0, 30)

seq = layer_sequence_create("textBox", 960, 700, seq_txtbox)
index = 0
wait = false
global.allow_move = false

text_store = [
	"*You decide to help*",
	"*You open your bag and shoot out a banana\npeel*",
	"*You take out a bottle of iodine*",
	"*You put the starchy banana in iodine, and\nit turns from orange to black*",
	"*You apply the power of AP Bio to the old\nman, and he wakes.*",
		
	// Old Man
	"Thanks, folks!",
	"...",
	"You probably don't know, but I'm actually\nMr. Beast.",
	"...",
	"You don't believe me, do you?",
	"...",
	"Ok, fine. Here's 10,000 dollars.",
	"*You receive $10,000!!!\nThat's 1727.11571675 Big Macs!*",
	"Funny, you look like that guy who brought\nme to my knees..."
]

color = c_gray