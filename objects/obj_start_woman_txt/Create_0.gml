/// @description https://forum.gamemaker.io/index.php?threads/text-popup-when-opening-a-chest.97093/



msg = 0
alarm_set(0, 30)

seq = layer_sequence_create("textBox", 960, 700, seq_txtbox)
index = 0
wait = false
global.allow_move = false

text_store = [
	"Thank you for offering to help me,\nyoung lad!",
	"You're welcome.",
	"Alright. Here, carry some of my grocery.",
	"*Old woman gave you 3 bags of grocery*",
	"Mmm... thank you. Let's go across!",
	"Wait! The light is stlil red!"
]

color = c_black